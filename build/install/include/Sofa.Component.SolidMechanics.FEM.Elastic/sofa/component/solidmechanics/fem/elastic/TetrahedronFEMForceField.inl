/******************************************************************************
*                 SOFA, Simulation Open-Framework Architecture                *
*                    (c) 2006 INRIA, USTL, UJF, CNRS, MGH                     *
*                                                                             *
* This program is free software; you can redistribute it and/or modify it     *
* under the terms of the GNU Lesser General Public License as published by    *
* the Free Software Foundation; either version 2.1 of the License, or (at     *
* your option) any later version.                                             *
*                                                                             *
* This program is distributed in the hope that it will be useful, but WITHOUT *
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or       *
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License *
* for more details.                                                           *
*                                                                             *
* You should have received a copy of the GNU Lesser General Public License    *
* along with this program. If not, see <http://www.gnu.org/licenses/>.        *
*******************************************************************************
* Authors: The SOFA Team and external contributors (see Authors.txt)          *
*                                                                             *
* Contact information: contact@sofa-framework.org                             *
******************************************************************************/
#pragma once
#include <sofa/component/solidmechanics/fem/elastic/TetrahedronFEMForceField.h>
#include <sofa/core/behavior/MultiMatrixAccessor.h>
#include <sofa/linearalgebra/RotationMatrix.h>
#include <sofa/core/visual/VisualParams.h>
#include <sofa/component/topology/container/grid/GridTopology.h>
#include <sofa/helper/decompose.h>
#include <sofa/linearalgebra/CompressedRowSparseMatrix.h>
#include <sofa/simulation/AnimateBeginEvent.h>
#include <sofa/simulation/AnimateEndEvent.h>

namespace sofa::component::solidmechanics::fem::elastic
{

using sofa::core::objectmodel::ComponentState ;

template<class DataTypes>
TetrahedronFEMForceField<DataTypes>::TetrahedronFEMForceField()
    : m_topology(nullptr)
    , _indexedElements(nullptr)
    , needUpdateTopology(false)
    , m_VonMisesColorMap(nullptr)
    , _initialPoints(initData(&_initialPoints, "initialPoints", "Initial Position"))
    , f_method(initData(&f_method,std::string("large"),"method","\"small\", \"large\" (by QR), \"polar\" or \"svd\" displacements"))
    , _poissonRatio(initData(&_poissonRatio,(Real)0.45f,"poissonRatio","FEM Poisson Ratio in Hooke's law [0,0.5["))
    , _youngModulus(initData(&_youngModulus,"youngModulus","FEM Young's Modulus in Hooke's law"))
    , _localStiffnessFactor(initData(&_localStiffnessFactor, "localStiffnessFactor","Allow specification of different stiffness per element. If there are N element and M values are specified, the youngModulus factor for element i would be localStiffnessFactor[i*M/N]"))
    , _updateStiffnessMatrix(initData(&_updateStiffnessMatrix,false,"updateStiffnessMatrix",""))
    , _assembling(initData(&_assembling,false,"computeGlobalMatrix",""))
    , _plasticMaxThreshold(initData(&_plasticMaxThreshold,(Real)0.f,"plasticMaxThreshold","Plastic Max Threshold (2-norm of the strain)"))
    , _plasticYieldThreshold(initData(&_plasticYieldThreshold,(Real)0.0001f,"plasticYieldThreshold","Plastic Yield Threshold (2-norm of the strain)"))
    , _plasticCreep(initData(&_plasticCreep,(Real)0.9f,"plasticCreep","Plastic Creep Factor * dt [0,1]. Warning this factor depends on dt."))
    , _gatherPt(initData(&_gatherPt,"gatherPt","number of dof accumulated per threads during the gather operation (Only use in GPU version)"))
    , _gatherBsize(initData(&_gatherBsize,"gatherBsize","number of dof accumulated per threads during the gather operation (Only use in GPU version)"))
    , drawHeterogeneousTetra(initData(&drawHeterogeneousTetra,false,"drawHeterogeneousTetra","Draw Heterogeneous Tetra in different color"))
    , _computeVonMisesStress(initData(&_computeVonMisesStress,0,"computeVonMisesStress","compute and display von Mises stress: 0: no computations, 1: using corotational strain, 2: using full Green strain. Set listening=1"))
    , _vonMisesPerElement(initData(&_vonMisesPerElement, "vonMisesPerElement", "von Mises Stress per element"))
    , _vonMisesPerNode(initData(&_vonMisesPerNode, "vonMisesPerNode", "von Mises Stress per node"))
    , _vonMisesStressColors(initData(&_vonMisesStressColors, "vonMisesStressColors", "Vector of colors describing the VonMises stress"))
    , _showStressColorMap(initData(&_showStressColorMap, std::string("Blue to Red"),"showStressColorMap", "Color map used to show stress values"))
    , _showStressAlpha(initData(&_showStressAlpha, 1.0f, "showStressAlpha", "Alpha for vonMises visualisation"))
    , _showVonMisesStressPerNode(initData(&_showVonMisesStressPerNode,false,"showVonMisesStressPerNode","draw points showing vonMises stress interpolated in nodes"))
    , _showVonMisesStressPerElement(initData(&_showVonMisesStressPerElement, false, "showVonMisesStressPerElement", "draw triangles showing vonMises stress interpolated in elements"))
    , _updateStiffness(initData(&_updateStiffness,false,"updateStiffness","udpate structures (precomputed in init) using stiffness parameters in each iteration (set listening=1)"))
    , l_topology(initLink("topology", "link to the tetrahedron topology container"))
{
    _poissonRatio.setRequired(true);
    _youngModulus.setRequired(true);
    _youngModulus.beginEdit()->push_back((Real)5000.);
    _youngModulus.endEdit();
    _youngModulus.unset();

    data.initPtrData(this);
    this->addAlias(&_assembling, "assembling");
    minYoung = 0.0;
    maxYoung = 0.0;

    this->addUpdateCallback("updateComputeVonMisesStress", {&_computeVonMisesStress}, [this](const core::DataTracker& )
    {
        if(_computeVonMisesStress.getValue() == 0 || _computeVonMisesStress.getValue() == 1 || _computeVonMisesStress.getValue() == 2)
        {
            if (_computeVonMisesStress.getValue() == 1 && f_method.getValue() == "small")
            {
                msg_warning() << "VonMisesStress can only be computed with full Green strain when the method is SMALL.";
                return sofa::core::objectmodel::ComponentState::Invalid;
            }
            else
            {
                msg_info() << "Correct update of " << _computeVonMisesStress.getName();
            }
        }
        else
        {
            msg_warning() << "Value of " << _computeVonMisesStress.getName() << " is invalid (must be 0, 1 or 2). ";
            return sofa::core::objectmodel::ComponentState::Invalid;
        }

        return sofa::core::objectmodel::ComponentState::Valid;
    }, {});
}


//////////////////////////////////////////////////////////////////////
////////////////////  basic computation methods  /////////////////////
//////////////////////////////////////////////////////////////////////

template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::computeStrainDisplacement( StrainDisplacement &J, Coord a, Coord b, Coord c, Coord d )
{
    // shape functions matrix
    type::Mat<2, 3, Real> M;

    M[0][0] = b[1];
    M[0][1] = c[1];
    M[0][2] = d[1];
    M[1][0] = b[2];
    M[1][1] = c[2];
    M[1][2] = d[2];
    J[0][0] = J[1][3] = J[2][5]   = - peudo_determinant_for_coef( M );
    M[0][0] = b[0];
    M[0][1] = c[0];
    M[0][2] = d[0];
    J[0][3] = J[1][1] = J[2][4]   = peudo_determinant_for_coef( M );
    M[1][0] = b[1];
    M[1][1] = c[1];
    M[1][2] = d[1];
    J[0][5] = J[1][4] = J[2][2]   = - peudo_determinant_for_coef( M );

    M[0][0] = c[1];
    M[0][1] = d[1];
    M[0][2] = a[1];
    M[1][0] = c[2];
    M[1][1] = d[2];
    M[1][2] = a[2];
    J[3][0] = J[4][3] = J[5][5]   = peudo_determinant_for_coef( M );
    M[0][0] = c[0];
    M[0][1] = d[0];
    M[0][2] = a[0];
    J[3][3] = J[4][1] = J[5][4]   = - peudo_determinant_for_coef( M );
    M[1][0] = c[1];
    M[1][1] = d[1];
    M[1][2] = a[1];
    J[3][5] = J[4][4] = J[5][2]   = peudo_determinant_for_coef( M );

    M[0][0] = d[1];
    M[0][1] = a[1];
    M[0][2] = b[1];
    M[1][0] = d[2];
    M[1][1] = a[2];
    M[1][2] = b[2];
    J[6][0] = J[7][3] = J[8][5]   = - peudo_determinant_for_coef( M );
    M[0][0] = d[0];
    M[0][1] = a[0];
    M[0][2] = b[0];
    J[6][3] = J[7][1] = J[8][4]   = peudo_determinant_for_coef( M );
    M[1][0] = d[1];
    M[1][1] = a[1];
    M[1][2] = b[1];
    J[6][5] = J[7][4] = J[8][2]   = - peudo_determinant_for_coef( M );

    M[0][0] = a[1];
    M[0][1] = b[1];
    M[0][2] = c[1];
    M[1][0] = a[2];
    M[1][1] = b[2];
    M[1][2] = c[2];
    J[9][0] = J[10][3] = J[11][5]   = peudo_determinant_for_coef( M );
    M[0][0] = a[0];
    M[0][1] = b[0];
    M[0][2] = c[0];
    J[9][3] = J[10][1] = J[11][4]   = - peudo_determinant_for_coef( M );
    M[1][0] = a[1];
    M[1][1] = b[1];
    M[1][2] = c[1];
    J[9][5] = J[10][4] = J[11][2]   = peudo_determinant_for_coef( M );
}

template<class DataTypes>
typename TetrahedronFEMForceField<DataTypes>::Real TetrahedronFEMForceField<DataTypes>::peudo_determinant_for_coef ( const type::Mat<2, 3, Real>&  M )
{
    return  M[0][1]*M[1][2] - M[1][1]*M[0][2] -  M[0][0]*M[1][2] + M[1][0]*M[0][2] + M[0][0]*M[1][1] - M[1][0]*M[0][1];
}

template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::computeStiffnessMatrix( StiffnessMatrix& S,StiffnessMatrix& SR,const MaterialStiffness &K, const StrainDisplacement &J, const Transformation& Rot )
{
    type::MatNoInit<6, 12, Real> Jt;
    Jt.transpose( J );

    type::MatNoInit<12, 12, Real> JKJt;
    JKJt = J*K*Jt;

    type::MatNoInit<12, 12, Real> RR,RRt;
    RR.clear();
    RRt.clear();
    for(int i=0; i<3; ++i)
        for(int j=0; j<3; ++j)
        {
            RR[i][j]=RR[i+3][j+3]=RR[i+6][j+6]=RR[i+9][j+9]=Rot[i][j];
            RRt[i][j]=RRt[i+3][j+3]=RRt[i+6][j+6]=RRt[i+9][j+9]=Rot[j][i];
        }

    S = RR*JKJt;
    SR = S*RRt;
}

template <class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::getElementStiffnessMatrix(Real* stiffness, unsigned int elementIndex)
{
    if(needUpdateTopology)
    {
        reinit();
        needUpdateTopology = false;
    }
    Transformation Rot;
    StiffnessMatrix JKJt,tmp;
    Rot[0][0]=Rot[1][1]=Rot[2][2]=1;
    Rot[0][1]=Rot[0][2]=0;
    Rot[1][0]=Rot[1][2]=0;
    Rot[2][0]=Rot[2][1]=0;
    computeStiffnessMatrix(JKJt,tmp,materialsStiffnesses[elementIndex], strainDisplacements[elementIndex],_initialRotations[elementIndex]);
    for(int i=0; i<12; i++)
    {
        for(int j=0; j<12; j++)
            stiffness[i*12+j]=tmp(i,j);
    }
}

template <class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::getElementStiffnessMatrix(Real* stiffness, Tetrahedron& te)
{
    if (needUpdateTopology)
    {
        reinit();
        needUpdateTopology = false;
    }
    const VecCoord X0=this->mstate->read(core::ConstVecCoordId::restPosition())->getValue();
    Index a = te[0];
    Index b = te[1];
    Index c = te[2];
    Index d = te[3];

    Transformation R_0_1;
    computeRotationLarge( R_0_1, (X0), a, b, c);

    MaterialStiffness	materialMatrix;
    StrainDisplacement	strainMatrix;
    type::fixed_array<Coord,4> rotatedInitialElements;

    rotatedInitialElements[0] = R_0_1*(X0)[a];
    rotatedInitialElements[1] = R_0_1*(X0)[b];
    rotatedInitialElements[2] = R_0_1*(X0)[c];
    rotatedInitialElements[3] = R_0_1*(X0)[d];

    rotatedInitialElements[1] -= rotatedInitialElements[0];
    rotatedInitialElements[2] -= rotatedInitialElements[0];
    rotatedInitialElements[3] -= rotatedInitialElements[0];
    rotatedInitialElements[0] = Coord(0,0,0);

    computeMaterialStiffness(materialMatrix,a,b,c,d);
    computeStrainDisplacement(strainMatrix, rotatedInitialElements[0], rotatedInitialElements[1], rotatedInitialElements[2], rotatedInitialElements[3]);

    Transformation Rot;
    StiffnessMatrix JKJt,tmp;
    Rot[0][0]=Rot[1][1]=Rot[2][2]=1;
    Rot[0][1]=Rot[0][2]=0;
    Rot[1][0]=Rot[1][2]=0;
    Rot[2][0]=Rot[2][1]=0;

    R_0_1.transpose();
    computeStiffnessMatrix(JKJt, tmp, materialMatrix, strainMatrix, R_0_1);
    for(int i=0; i<12; i++)
    {
        for(int j=0; j<12; j++)
            stiffness[i*12+j]=tmp(i,j);
    }
}


template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::computeMaterialStiffness(Index i, Index&a, Index&b, Index&c, Index&d)
{
    const VecReal& localStiffnessFactor = _localStiffnessFactor.getValue();
    Real youngModulusElement;
    if (_youngModulus.getValue().size() == _indexedElements->size()) youngModulusElement = _youngModulus.getValue()[i];
    else if (_youngModulus.getValue().size() > 0) youngModulusElement = _youngModulus.getValue()[0];
    else
    {
        setYoungModulus(500.0f);
        youngModulusElement = _youngModulus.getValue()[0];
    }
    const Real youngModulus = (localStiffnessFactor.empty() ? 1.0f : localStiffnessFactor[i*localStiffnessFactor.size()/_indexedElements->size()])*youngModulusElement;
    const Real poissonRatio = _poissonRatio.getValue();

    materialsStiffnesses[i][0][0] = materialsStiffnesses[i][1][1] = materialsStiffnesses[i][2][2] = 1;
    materialsStiffnesses[i][0][1] = materialsStiffnesses[i][0][2] = materialsStiffnesses[i][1][0]
            = materialsStiffnesses[i][1][2] = materialsStiffnesses[i][2][0] =
            materialsStiffnesses[i][2][1] = poissonRatio/(1-poissonRatio);
    materialsStiffnesses[i][0][3] = materialsStiffnesses[i][0][4] = materialsStiffnesses[i][0][5] = 0;
    materialsStiffnesses[i][1][3] = materialsStiffnesses[i][1][4] = materialsStiffnesses[i][1][5] = 0;
    materialsStiffnesses[i][2][3] = materialsStiffnesses[i][2][4] = materialsStiffnesses[i][2][5] = 0;
    materialsStiffnesses[i][3][0] = materialsStiffnesses[i][3][1] = materialsStiffnesses[i][3][2] = materialsStiffnesses[i][3][4] = materialsStiffnesses[i][3][5] = 0;
    materialsStiffnesses[i][4][0] = materialsStiffnesses[i][4][1] = materialsStiffnesses[i][4][2] = materialsStiffnesses[i][4][3] = materialsStiffnesses[i][4][5] = 0;
    materialsStiffnesses[i][5][0] = materialsStiffnesses[i][5][1] = materialsStiffnesses[i][5][2] = materialsStiffnesses[i][5][3] = materialsStiffnesses[i][5][4] = 0;
    materialsStiffnesses[i][3][3] = materialsStiffnesses[i][4][4] = materialsStiffnesses[i][5][5] = (1-2*poissonRatio)/(2*(1-poissonRatio));
    materialsStiffnesses[i] *= (youngModulus*(1-poissonRatio))/((1+poissonRatio)*(1-2*poissonRatio));


    if ( isComputeVonMisesStressMethodSet() )
    {
        elemLambda[i] = materialsStiffnesses[i][0][1];
        elemMu[i] = materialsStiffnesses[i][3][3];
    }

    // divide by 36 times volumes of the element
    const VecCoord &initialPoints=_initialPoints.getValue();
    Coord A = initialPoints[b] - initialPoints[a];
    Coord B = initialPoints[c] - initialPoints[a];
    Coord C = initialPoints[d] - initialPoints[a];
    Coord AB = cross(A, B);
    Real volumes6 = fabs( dot( AB, C ) );

    m_restVolume += volumes6/6;
    if (volumes6<0)
    {
        msg_error() << "Negative volume for tetra "<<i<<" <"<<a<<','<<b<<','<<c<<','<<d<<"> = "<<volumes6/6 ;
    }
    materialsStiffnesses[i] /= (volumes6*6); // 36*Volume in the formula
}

template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::computeMaterialStiffness(MaterialStiffness& materialMatrix, Index&a, Index&b, Index&c, Index&d)
{
    const Real youngModulus = _youngModulus.getValue()[0];
    const Real poissonRatio = _poissonRatio.getValue();

    materialMatrix[0][0] = materialMatrix[1][1] = materialMatrix[2][2] = 1;
    materialMatrix[0][1] = materialMatrix[0][2] = materialMatrix[1][0] = materialMatrix[1][2] = materialMatrix[2][0] = materialMatrix[2][1] = poissonRatio/(1-poissonRatio);
    materialMatrix[0][3] = materialMatrix[0][4] = materialMatrix[0][5] = 0;
    materialMatrix[1][3] = materialMatrix[1][4] = materialMatrix[1][5] = 0;
    materialMatrix[2][3] = materialMatrix[2][4] = materialMatrix[2][5] = 0;
    materialMatrix[3][0] = materialMatrix[3][1] = materialMatrix[3][2] = materialMatrix[3][4] = materialMatrix[3][5] = 0;
    materialMatrix[4][0] = materialMatrix[4][1] = materialMatrix[4][2] = materialMatrix[4][3] = materialMatrix[4][5] = 0;
    materialMatrix[5][0] = materialMatrix[5][1] = materialMatrix[5][2] = materialMatrix[5][3] = materialMatrix[5][4] = 0;
    materialMatrix[3][3] = materialMatrix[4][4] = materialMatrix[5][5] = (1-2*poissonRatio)/(2*(1-poissonRatio));
    materialMatrix *= (youngModulus*(1-poissonRatio))/((1+poissonRatio)*(1-2*poissonRatio));

    // divide by 36 times volumes of the element
    const VecCoord X0=this->mstate->read(core::ConstVecCoordId::restPosition())->getValue();

    Coord A = (X0)[b] - (X0)[a];
    Coord B = (X0)[c] - (X0)[a];
    Coord C = (X0)[d] - (X0)[a];
    Coord AB = cross(A, B);
    Real volumes6 = fabs( dot( AB, C ) );
    m_restVolume += volumes6/6;
    if (volumes6<0)
    {
        msg_error() << "Negative volume for tetra"<<a<<','<<b<<','<<c<<','<<d<<"> = "<<volumes6/6 ;
    }
    materialMatrix  /= (volumes6*6);
}




template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::computeForce( Displacement &F, const Displacement &Depl, VoigtTensor &plasticStrain, const MaterialStiffness &K, const StrainDisplacement &J )
{

    // Unit of K = unit of youngModulus / unit of volume = Pa / m^3 = kg m^-4 s^-2
    // Unit of J = m^2
    // Unit of JKJt =  kg s^-2
    // Unit of displacement = m
    // Unit of force = kg m s^-2

#if 0
    F = J*(K*(J.multTranspose(Depl)));
#else
    /* We have these zeros
                                  K[0][3]   K[0][4]   K[0][5]
                                  K[1][3]   K[1][4]   K[1][5]
                                  K[2][3]   K[2][4]   K[2][5]
    K[3][0]   K[3][1]   K[3][2]             K[3][4]   K[3][5]
    K[4][0]   K[4][1]   K[4][2]   K[4][3]             K[4][5]
    K[5][0]   K[5][1]   K[5][2]   K[5][3]   K[5][4]


              J[0][1]   J[0][2]             J[0][4]
    J[1][0]             J[1][2]                       J[1][5]
    J[2][0]   J[2][1]             J[2][3]
              J[3][1]   J[3][2]             J[3][4]
    J[4][0]             J[4][2]                       J[4][5]
    J[5][0]   J[5][1]             J[5][3]
              J[6][1]   J[6][2]             J[6][4]
    J[7][0]             J[7][2]                       J[7][5]
    J[8][0]   J[8][1]             J[8][3]
              J[9][1]   J[9][2]             J[9][4]
    J[10][0]            J[10][2]                      J[10][5]
    J[11][0]  J[11][1]            J[11][3]
    */


    VoigtTensor JtD;
    JtD[0] =   J[ 0][0]*Depl[ 0]+/*J[ 1][0]*Depl[ 1]+  J[ 2][0]*Depl[ 2]+*/
            J[ 3][0]*Depl[ 3]+/*J[ 4][0]*Depl[ 4]+  J[ 5][0]*Depl[ 5]+*/
            J[ 6][0]*Depl[ 6]+/*J[ 7][0]*Depl[ 7]+  J[ 8][0]*Depl[ 8]+*/
            J[ 9][0]*Depl[ 9] /*J[10][0]*Depl[10]+  J[11][0]*Depl[11]*/;
    JtD[1] = /*J[ 0][1]*Depl[ 0]+*/J[ 1][1]*Depl[ 1]+/*J[ 2][1]*Depl[ 2]+*/
            /*J[ 3][1]*Depl[ 3]+*/J[ 4][1]*Depl[ 4]+/*J[ 5][1]*Depl[ 5]+*/
            /*J[ 6][1]*Depl[ 6]+*/J[ 7][1]*Depl[ 7]+/*J[ 8][1]*Depl[ 8]+*/
            /*J[ 9][1]*Depl[ 9]+*/J[10][1]*Depl[10] /*J[11][1]*Depl[11]*/;
    JtD[2] = /*J[ 0][2]*Depl[ 0]+  J[ 1][2]*Depl[ 1]+*/J[ 2][2]*Depl[ 2]+
            /*J[ 3][2]*Depl[ 3]+  J[ 4][2]*Depl[ 4]+*/J[ 5][2]*Depl[ 5]+
            /*J[ 6][2]*Depl[ 6]+  J[ 7][2]*Depl[ 7]+*/J[ 8][2]*Depl[ 8]+
            /*J[ 9][2]*Depl[ 9]+  J[10][2]*Depl[10]+*/J[11][2]*Depl[11]  ;
    JtD[3] =   J[ 0][3]*Depl[ 0]+  J[ 1][3]*Depl[ 1]+/*J[ 2][3]*Depl[ 2]+*/
            J[ 3][3]*Depl[ 3]+  J[ 4][3]*Depl[ 4]+/*J[ 5][3]*Depl[ 5]+*/
            J[ 6][3]*Depl[ 6]+  J[ 7][3]*Depl[ 7]+/*J[ 8][3]*Depl[ 8]+*/
            J[ 9][3]*Depl[ 9]+  J[10][3]*Depl[10] /*J[11][3]*Depl[11]*/;
    JtD[4] = /*J[ 0][4]*Depl[ 0]+*/J[ 1][4]*Depl[ 1]+  J[ 2][4]*Depl[ 2]+
            /*J[ 3][4]*Depl[ 3]+*/J[ 4][4]*Depl[ 4]+  J[ 5][4]*Depl[ 5]+
            /*J[ 6][4]*Depl[ 6]+*/J[ 7][4]*Depl[ 7]+  J[ 8][4]*Depl[ 8]+
            /*J[ 9][4]*Depl[ 9]+*/J[10][4]*Depl[10]+  J[11][4]*Depl[11]  ;
    JtD[5] =   J[ 0][5]*Depl[ 0]+/*J[ 1][5]*Depl[ 1]*/ J[ 2][5]*Depl[ 2]+
            J[ 3][5]*Depl[ 3]+/*J[ 4][5]*Depl[ 4]*/ J[ 5][5]*Depl[ 5]+
            J[ 6][5]*Depl[ 6]+/*J[ 7][5]*Depl[ 7]*/ J[ 8][5]*Depl[ 8]+
            J[ 9][5]*Depl[ 9]+/*J[10][5]*Depl[10]*/ J[11][5]*Depl[11];

    // eventually remove a part of the strain to simulate plasticity
    if( _plasticMaxThreshold.getValue() > 0 )
    {
        VoigtTensor elasticStrain = JtD; // JtD is the total strain
        elasticStrain -= plasticStrain; // totalStrain = elasticStrain + plasticStrain

        if( elasticStrain.norm2() > _plasticYieldThreshold.getValue()*_plasticYieldThreshold.getValue() )
            plasticStrain += _plasticCreep.getValue() * elasticStrain;

        Real plasticStrainNorm2 = plasticStrain.norm2();
        if( plasticStrainNorm2 > _plasticMaxThreshold.getValue()*_plasticMaxThreshold.getValue() )
            plasticStrain *= _plasticMaxThreshold.getValue() / helper::rsqrt( plasticStrainNorm2 );

        // remaining elasticStrain = totatStrain - plasticStrain
        JtD -= plasticStrain;
    }



    VoigtTensor KJtD;
    KJtD[0] =   K[0][0]*JtD[0]+  K[0][1]*JtD[1]+  K[0][2]*JtD[2]
            /*K[0][3]*JtD[3]+  K[0][4]*JtD[4]+  K[0][5]*JtD[5]*/;
    KJtD[1] =   K[1][0]*JtD[0]+  K[1][1]*JtD[1]+  K[1][2]*JtD[2]
            /*K[1][3]*JtD[3]+  K[1][4]*JtD[4]+  K[1][5]*JtD[5]*/;
    KJtD[2] =   K[2][0]*JtD[0]+  K[2][1]*JtD[1]+  K[2][2]*JtD[2]
            /*K[2][3]*JtD[3]+  K[2][4]*JtD[4]+  K[2][5]*JtD[5]*/;
    KJtD[3] = /*K[3][0]*JtD[0]+  K[3][1]*JtD[1]+  K[3][2]*JtD[2]+*/
            K[3][3]*JtD[3] /*K[3][4]*JtD[4]+  K[3][5]*JtD[5]*/;
    KJtD[4] = /*K[4][0]*JtD[0]+  K[4][1]*JtD[1]+  K[4][2]*JtD[2]+*/
            /*K[4][3]*JtD[3]+*/K[4][4]*JtD[4] /*K[4][5]*JtD[5]*/;
    KJtD[5] = /*K[5][0]*JtD[0]+  K[5][1]*JtD[1]+  K[5][2]*JtD[2]+*/
            /*K[5][3]*JtD[3]+  K[5][4]*JtD[4]+*/K[5][5]*JtD[5]  ;

    F[ 0] =   J[ 0][0]*KJtD[0]+/*J[ 0][1]*KJtD[1]+  J[ 0][2]*KJtD[2]+*/
            J[ 0][3]*KJtD[3]+/*J[ 0][4]*KJtD[4]+*/J[ 0][5]*KJtD[5]  ;
    F[ 1] = /*J[ 1][0]*KJtD[0]+*/J[ 1][1]*KJtD[1]+/*J[ 1][2]*KJtD[2]+*/
            J[ 1][3]*KJtD[3]+  J[ 1][4]*KJtD[4] /*J[ 1][5]*KJtD[5]*/;
    F[ 2] = /*J[ 2][0]*KJtD[0]+  J[ 2][1]*KJtD[1]+*/J[ 2][2]*KJtD[2]+
            /*J[ 2][3]*KJtD[3]+*/J[ 2][4]*KJtD[4]+  J[ 2][5]*KJtD[5]  ;
    F[ 3] =   J[ 3][0]*KJtD[0]+/*J[ 3][1]*KJtD[1]+  J[ 3][2]*KJtD[2]+*/
            J[ 3][3]*KJtD[3]+/*J[ 3][4]*KJtD[4]+*/J[ 3][5]*KJtD[5]  ;
    F[ 4] = /*J[ 4][0]*KJtD[0]+*/J[ 4][1]*KJtD[1]+/*J[ 4][2]*KJtD[2]+*/
            J[ 4][3]*KJtD[3]+  J[ 4][4]*KJtD[4] /*J[ 4][5]*KJtD[5]*/;
    F[ 5] = /*J[ 5][0]*KJtD[0]+  J[ 5][1]*KJtD[1]+*/J[ 5][2]*KJtD[2]+
            /*J[ 5][3]*KJtD[3]+*/J[ 5][4]*KJtD[4]+  J[ 5][5]*KJtD[5]  ;
    F[ 6] =   J[ 6][0]*KJtD[0]+/*J[ 6][1]*KJtD[1]+  J[ 6][2]*KJtD[2]+*/
            J[ 6][3]*KJtD[3]+/*J[ 6][4]*KJtD[4]+*/J[ 6][5]*KJtD[5]  ;
    F[ 7] = /*J[ 7][0]*KJtD[0]+*/J[ 7][1]*KJtD[1]+/*J[ 7][2]*KJtD[2]+*/
            J[ 7][3]*KJtD[3]+  J[ 7][4]*KJtD[4] /*J[ 7][5]*KJtD[5]*/;
    F[ 8] = /*J[ 8][0]*KJtD[0]+  J[ 8][1]*KJtD[1]+*/J[ 8][2]*KJtD[2]+
            /*J[ 8][3]*KJtD[3]+*/J[ 8][4]*KJtD[4]+  J[ 8][5]*KJtD[5]  ;
    F[ 9] =   J[ 9][0]*KJtD[0]+/*J[ 9][1]*KJtD[1]+  J[ 9][2]*KJtD[2]+*/
            J[ 9][3]*KJtD[3]+/*J[ 9][4]*KJtD[4]+*/J[ 9][5]*KJtD[5]  ;
    F[10] = /*J[10][0]*KJtD[0]+*/J[10][1]*KJtD[1]+/*J[10][2]*KJtD[2]+*/
            J[10][3]*KJtD[3]+  J[10][4]*KJtD[4] /*J[10][5]*KJtD[5]*/;
    F[11] = /*J[11][0]*KJtD[0]+  J[11][1]*KJtD[1]+*/J[11][2]*KJtD[2]+
            /*J[11][3]*KJtD[3]+*/J[11][4]*KJtD[4]+  J[11][5]*KJtD[5]  ;

#endif
}

template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::computeForce( Displacement &F, const Displacement &Depl, const MaterialStiffness &K, const StrainDisplacement &J, SReal fact )
{

    // Unit of K = unit of youngModulus / unit of volume = Pa / m^3 = kg m^-4 s^-2
    // Unit of J = m^2
    // Unit of JKJt =  kg s^-2
    // Unit of displacement = m
    // Unit of force = kg m s^-2

#if 0
    F = J*(K*(J.multTranspose(Depl)));
    F *= fact;
#else
    /* We have these zeros
                                  K[0][3]   K[0][4]   K[0][5]
                                  K[1][3]   K[1][4]   K[1][5]
                                  K[2][3]   K[2][4]   K[2][5]
    K[3][0]   K[3][1]   K[3][2]             K[3][4]   K[3][5]
    K[4][0]   K[4][1]   K[4][2]   K[4][3]             K[4][5]
    K[5][0]   K[5][1]   K[5][2]   K[5][3]   K[5][4]


              J[0][1]   J[0][2]             J[0][4]
    J[1][0]             J[1][2]                       J[1][5]
    J[2][0]   J[2][1]             J[2][3]
              J[3][1]   J[3][2]             J[3][4]
    J[4][0]             J[4][2]                       J[4][5]
    J[5][0]   J[5][1]             J[5][3]
              J[6][1]   J[6][2]             J[6][4]
    J[7][0]             J[7][2]                       J[7][5]
    J[8][0]   J[8][1]             J[8][3]
              J[9][1]   J[9][2]             J[9][4]
    J[10][0]            J[10][2]                      J[10][5]
    J[11][0]  J[11][1]            J[11][3]
    */

    type::VecNoInit<6,Real> JtD;
    JtD[0] =   J[ 0][0]*Depl[ 0]+/*J[ 1][0]*Depl[ 1]+  J[ 2][0]*Depl[ 2]+*/
            J[ 3][0]*Depl[ 3]+/*J[ 4][0]*Depl[ 4]+  J[ 5][0]*Depl[ 5]+*/
            J[ 6][0]*Depl[ 6]+/*J[ 7][0]*Depl[ 7]+  J[ 8][0]*Depl[ 8]+*/
            J[ 9][0]*Depl[ 9] /*J[10][0]*Depl[10]+  J[11][0]*Depl[11]*/;
    JtD[1] = /*J[ 0][1]*Depl[ 0]+*/J[ 1][1]*Depl[ 1]+/*J[ 2][1]*Depl[ 2]+*/
            /*J[ 3][1]*Depl[ 3]+*/J[ 4][1]*Depl[ 4]+/*J[ 5][1]*Depl[ 5]+*/
            /*J[ 6][1]*Depl[ 6]+*/J[ 7][1]*Depl[ 7]+/*J[ 8][1]*Depl[ 8]+*/
            /*J[ 9][1]*Depl[ 9]+*/J[10][1]*Depl[10] /*J[11][1]*Depl[11]*/;
    JtD[2] = /*J[ 0][2]*Depl[ 0]+  J[ 1][2]*Depl[ 1]+*/J[ 2][2]*Depl[ 2]+
            /*J[ 3][2]*Depl[ 3]+  J[ 4][2]*Depl[ 4]+*/J[ 5][2]*Depl[ 5]+
            /*J[ 6][2]*Depl[ 6]+  J[ 7][2]*Depl[ 7]+*/J[ 8][2]*Depl[ 8]+
            /*J[ 9][2]*Depl[ 9]+  J[10][2]*Depl[10]+*/J[11][2]*Depl[11]  ;
    JtD[3] =   J[ 0][3]*Depl[ 0]+  J[ 1][3]*Depl[ 1]+/*J[ 2][3]*Depl[ 2]+*/
            J[ 3][3]*Depl[ 3]+  J[ 4][3]*Depl[ 4]+/*J[ 5][3]*Depl[ 5]+*/
            J[ 6][3]*Depl[ 6]+  J[ 7][3]*Depl[ 7]+/*J[ 8][3]*Depl[ 8]+*/
            J[ 9][3]*Depl[ 9]+  J[10][3]*Depl[10] /*J[11][3]*Depl[11]*/;
    JtD[4] = /*J[ 0][4]*Depl[ 0]+*/J[ 1][4]*Depl[ 1]+  J[ 2][4]*Depl[ 2]+
            /*J[ 3][4]*Depl[ 3]+*/J[ 4][4]*Depl[ 4]+  J[ 5][4]*Depl[ 5]+
            /*J[ 6][4]*Depl[ 6]+*/J[ 7][4]*Depl[ 7]+  J[ 8][4]*Depl[ 8]+
            /*J[ 9][4]*Depl[ 9]+*/J[10][4]*Depl[10]+  J[11][4]*Depl[11]  ;
    JtD[5] =   J[ 0][5]*Depl[ 0]+/*J[ 1][5]*Depl[ 1]*/ J[ 2][5]*Depl[ 2]+
            J[ 3][5]*Depl[ 3]+/*J[ 4][5]*Depl[ 4]*/ J[ 5][5]*Depl[ 5]+
            J[ 6][5]*Depl[ 6]+/*J[ 7][5]*Depl[ 7]*/ J[ 8][5]*Depl[ 8]+
            J[ 9][5]*Depl[ 9]+/*J[10][5]*Depl[10]*/ J[11][5]*Depl[11];

    type::VecNoInit<6,Real> KJtD;
    KJtD[0] =   K[0][0]*JtD[0]+  K[0][1]*JtD[1]+  K[0][2]*JtD[2]
            /*K[0][3]*JtD[3]+  K[0][4]*JtD[4]+  K[0][5]*JtD[5]*/;
    KJtD[1] =   K[1][0]*JtD[0]+  K[1][1]*JtD[1]+  K[1][2]*JtD[2]
            /*K[1][3]*JtD[3]+  K[1][4]*JtD[4]+  K[1][5]*JtD[5]*/;
    KJtD[2] =   K[2][0]*JtD[0]+  K[2][1]*JtD[1]+  K[2][2]*JtD[2]
            /*K[2][3]*JtD[3]+  K[2][4]*JtD[4]+  K[2][5]*JtD[5]*/;
    KJtD[3] = /*K[3][0]*JtD[0]+  K[3][1]*JtD[1]+  K[3][2]*JtD[2]+*/
            K[3][3]*JtD[3] /*K[3][4]*JtD[4]+  K[3][5]*JtD[5]*/;
    KJtD[4] = /*K[4][0]*JtD[0]+  K[4][1]*JtD[1]+  K[4][2]*JtD[2]+*/
            /*K[4][3]*JtD[3]+*/K[4][4]*JtD[4] /*K[4][5]*JtD[5]*/;
    KJtD[5] = /*K[5][0]*JtD[0]+  K[5][1]*JtD[1]+  K[5][2]*JtD[2]+*/
            /*K[5][3]*JtD[3]+  K[5][4]*JtD[4]+*/K[5][5]*JtD[5]  ;

    KJtD *= fact;

    F[ 0] =   J[ 0][0]*KJtD[0]+/*J[ 0][1]*KJtD[1]+  J[ 0][2]*KJtD[2]+*/
            J[ 0][3]*KJtD[3]+/*J[ 0][4]*KJtD[4]+*/J[ 0][5]*KJtD[5]  ;
    F[ 1] = /*J[ 1][0]*KJtD[0]+*/J[ 1][1]*KJtD[1]+/*J[ 1][2]*KJtD[2]+*/
            J[ 1][3]*KJtD[3]+  J[ 1][4]*KJtD[4] /*J[ 1][5]*KJtD[5]*/;
    F[ 2] = /*J[ 2][0]*KJtD[0]+  J[ 2][1]*KJtD[1]+*/J[ 2][2]*KJtD[2]+
            /*J[ 2][3]*KJtD[3]+*/J[ 2][4]*KJtD[4]+  J[ 2][5]*KJtD[5]  ;
    F[ 3] =   J[ 3][0]*KJtD[0]+/*J[ 3][1]*KJtD[1]+  J[ 3][2]*KJtD[2]+*/
            J[ 3][3]*KJtD[3]+/*J[ 3][4]*KJtD[4]+*/J[ 3][5]*KJtD[5]  ;
    F[ 4] = /*J[ 4][0]*KJtD[0]+*/J[ 4][1]*KJtD[1]+/*J[ 4][2]*KJtD[2]+*/
            J[ 4][3]*KJtD[3]+  J[ 4][4]*KJtD[4] /*J[ 4][5]*KJtD[5]*/;
    F[ 5] = /*J[ 5][0]*KJtD[0]+  J[ 5][1]*KJtD[1]+*/J[ 5][2]*KJtD[2]+
            /*J[ 5][3]*KJtD[3]+*/J[ 5][4]*KJtD[4]+  J[ 5][5]*KJtD[5]  ;
    F[ 6] =   J[ 6][0]*KJtD[0]+/*J[ 6][1]*KJtD[1]+  J[ 6][2]*KJtD[2]+*/
            J[ 6][3]*KJtD[3]+/*J[ 6][4]*KJtD[4]+*/J[ 6][5]*KJtD[5]  ;
    F[ 7] = /*J[ 7][0]*KJtD[0]+*/J[ 7][1]*KJtD[1]+/*J[ 7][2]*KJtD[2]+*/
            J[ 7][3]*KJtD[3]+  J[ 7][4]*KJtD[4] /*J[ 7][5]*KJtD[5]*/;
    F[ 8] = /*J[ 8][0]*KJtD[0]+  J[ 8][1]*KJtD[1]+*/J[ 8][2]*KJtD[2]+
            /*J[ 8][3]*KJtD[3]+*/J[ 8][4]*KJtD[4]+  J[ 8][5]*KJtD[5]  ;
    F[ 9] =   J[ 9][0]*KJtD[0]+/*J[ 9][1]*KJtD[1]+  J[ 9][2]*KJtD[2]+*/
            J[ 9][3]*KJtD[3]+/*J[ 9][4]*KJtD[4]+*/J[ 9][5]*KJtD[5]  ;
    F[10] = /*J[10][0]*KJtD[0]+*/J[10][1]*KJtD[1]+/*J[10][2]*KJtD[2]+*/
            J[10][3]*KJtD[3]+  J[10][4]*KJtD[4] /*J[10][5]*KJtD[5]*/;
    F[11] = /*J[11][0]*KJtD[0]+  J[11][1]*KJtD[1]+*/J[11][2]*KJtD[2]+
            /*J[11][3]*KJtD[3]+*/J[11][4]*KJtD[4]+  J[11][5]*KJtD[5]  ;
#endif
}

//////////////////////////////////////////////////////////////////////
////////////////////  small displacements method  ////////////////////
//////////////////////////////////////////////////////////////////////

template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::initSmall(Index i, Index&a, Index&b, Index&c, Index&d)
{
    const VecCoord &initialPoints=_initialPoints.getValue();
    computeStrainDisplacement( strainDisplacements[i], initialPoints[a], initialPoints[b], initialPoints[c], initialPoints[d] );
}

template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::accumulateForceSmall( Vector& f, const Vector & p, typename VecElement::const_iterator elementIt, Index elementIndex )
{
    const VecCoord &initialPoints=_initialPoints.getValue();
    Element index = *elementIt;
    Index a = index[0];
    Index b = index[1];
    Index c = index[2];
    Index d = index[3];

    // displacements
    Displacement D;
    D[0] = 0;
    D[1] = 0;
    D[2] = 0;
    D[3] =  initialPoints[b][0] - initialPoints[a][0] - p[b][0]+p[a][0];
    D[4] =  initialPoints[b][1] - initialPoints[a][1] - p[b][1]+p[a][1];
    D[5] =  initialPoints[b][2] - initialPoints[a][2] - p[b][2]+p[a][2];
    D[6] =  initialPoints[c][0] - initialPoints[a][0] - p[c][0]+p[a][0];
    D[7] =  initialPoints[c][1] - initialPoints[a][1] - p[c][1]+p[a][1];
    D[8] =  initialPoints[c][2] - initialPoints[a][2] - p[c][2]+p[a][2];
    D[9] =  initialPoints[d][0] - initialPoints[a][0] - p[d][0]+p[a][0];
    D[10] = initialPoints[d][1] - initialPoints[a][1] - p[d][1]+p[a][1];
    D[11] = initialPoints[d][2] - initialPoints[a][2] - p[d][2]+p[a][2];

    // compute force on element
    Displacement F;
    if(!_assembling.getValue())
    {
        computeForce( F, D, _plasticStrains[elementIndex],
                      materialsStiffnesses[elementIndex],
                      strainDisplacements[elementIndex] );
    }
    else if( _plasticMaxThreshold.getValue() <= 0 )
    {
        Transformation Rot;
        Rot[0][0]=Rot[1][1]=Rot[2][2]=1;
        Rot[0][1]=Rot[0][2]=0;
        Rot[1][0]=Rot[1][2]=0;
        Rot[2][0]=Rot[2][1]=0;


        StiffnessMatrix JKJt,tmp;
        computeStiffnessMatrix(JKJt,tmp,materialsStiffnesses[elementIndex], strainDisplacements[elementIndex],Rot);

        //erase the stiffness matrix at each time step
        if(elementIndex==0)
        {
            for(Size i=0; i<_stiffnesses.size(); ++i)
            {
                _stiffnesses[i].resize(0);
            }
        }

        for(int i=0; i<12; ++i)
        {
            Index row = index[i/3]*3+i%3;

            for(int j=0; j<12; ++j)
            {
                if(JKJt[i][j]!=0)
                {
                    Index col = index[j/3]*3+j%3;
                    // search if the vertex is already take into account by another element
                    typename CompressedValue::iterator result = _stiffnesses[row].end();
                    for(typename CompressedValue::iterator it=_stiffnesses[row].begin(); it!=_stiffnesses[row].end()&&result==_stiffnesses[row].end(); ++it)
                    {
                        if( (*it).first == col )
                            result = it;
                    }

                    if( result==_stiffnesses[row].end() )
                        _stiffnesses[row].push_back( Col_Value(col,JKJt[i][j] )  );
                    else
                        (*result).second += JKJt[i][j];
                }
            }
        }

        F = JKJt * D;
    }
    else
    {
        msg_error() << "Support for assembling system matrix when using plasticity.";
        return;
    }

    f[a] += Deriv( F[0], F[1], F[2] );
    f[b] += Deriv( F[3], F[4], F[5] );
    f[c] += Deriv( F[6], F[7], F[8] );
    f[d] += Deriv( F[9], F[10], F[11] );

}

// getPotentialEnergy only for small method and if assembling is false
template<class DataTypes>
inline SReal TetrahedronFEMForceField<DataTypes>::getPotentialEnergy(const core::MechanicalParams*, const DataVecCoord&   x) const
{
    unsigned int i;
    typename VecElement::const_iterator it;
    SReal energyPotential = 0;
    const VecCoord &initialPoints=_initialPoints.getValue();
    const VecCoord &p            = x.getValue();

    switch(method)
    {
    case SMALL :
    {

        for(it=_indexedElements->begin(), i = 0 ; it!=_indexedElements->end(); ++it,++i)
        {
            Element index = *it;
            Index a = index[0];
            Index b = index[1];
            Index c = index[2];
            Index d = index[3];

            // displacements
            Displacement D;
            D[0] = 0;
            D[1] = 0;
            D[2] = 0;
            D[3] =  initialPoints[b][0] - initialPoints[a][0] - p[b][0]+p[a][0];
            D[4] =  initialPoints[b][1] - initialPoints[a][1] - p[b][1]+p[a][1];
            D[5] =  initialPoints[b][2] - initialPoints[a][2] - p[b][2]+p[a][2];
            D[6] =  initialPoints[c][0] - initialPoints[a][0] - p[c][0]+p[a][0];
            D[7] =  initialPoints[c][1] - initialPoints[a][1] - p[c][1]+p[a][1];
            D[8] =  initialPoints[c][2] - initialPoints[a][2] - p[c][2]+p[a][2];
            D[9] =  initialPoints[d][0] - initialPoints[a][0] - p[d][0]+p[a][0];
            D[10] = initialPoints[d][1] - initialPoints[a][1] - p[d][1]+p[a][1];
            D[11] = initialPoints[d][2] - initialPoints[a][2] - p[d][2]+p[a][2];

            if(!_assembling.getValue())
            {

                // compute force on element
                Displacement F;

                // ComputeForce without the case of  plasticity simulation when  _plasticMaxThreshold.getValue() > 0
                // This case actually modifies  the member plasticStrain and getPotentialEnergy is a const fonction.
                MaterialStiffness K = materialsStiffnesses[i];
                StrainDisplacement J = strainDisplacements[i];

                /// The following may be doing F = J*(K*(J.multTranspose(D))) ?
                VoigtTensor JtD;
                JtD[0] = J[ 0][0]*D[ 0]+ J[ 3][0]*D[ 3]+ J[ 6][0]*D[ 6]+ J[ 9][0]*D[ 9];
                JtD[1] = J[ 1][1]*D[ 1]+ J[ 4][1]*D[ 4]+ J[ 7][1]*D[ 7]+ J[10][1]*D[10];
                JtD[2] = J[ 2][2]*D[ 2]+ J[ 5][2]*D[ 5]+ J[ 8][2]*D[ 8]+ J[11][2]*D[11];
                JtD[3] = J[ 0][3]*D[ 0]+ J[ 1][3]*D[ 1]+ J[ 3][3]*D[ 3]+ J[ 4][3]*D[ 4]+
                        J[ 6][3]*D[ 6]+ J[ 7][3]*D[ 7]+ J[ 9][3]*D[ 9]+ J[10][3]*D[10];
                JtD[4] = J[ 1][4]*D[ 1]+ J[ 2][4]*D[ 2]+ J[ 4][4]*D[ 4]+ J[ 5][4]*D[ 5]+
                        J[ 7][4]*D[ 7]+ J[ 8][4]*D[ 8]+ J[10][4]*D[10]+ J[11][4]*D[11];
                JtD[5] = J[ 0][5]*D[ 0]+ J[ 2][5]*D[ 2]+ J[ 3][5]*D[ 3]+ J[ 5][5]*D[ 5]+
                        J[ 6][5]*D[ 6]+ J[ 8][5]*D[ 8]+ J[ 9][5]*D[ 9]+ J[11][5]*D[11];


                VoigtTensor KJtD;
                KJtD[0] = K[0][0]*JtD[0]+  K[0][1]*JtD[1]+  K[0][2]*JtD[2];
                KJtD[1] = K[1][0]*JtD[0]+  K[1][1]*JtD[1]+  K[1][2]*JtD[2];
                KJtD[2] = K[2][0]*JtD[0]+  K[2][1]*JtD[1]+  K[2][2]*JtD[2];
                KJtD[3] = K[3][3]*JtD[3] ;
                KJtD[4] = K[4][4]*JtD[4];
                KJtD[5] = K[5][5]*JtD[5]  ;

                F[ 0] = J[ 0][0]*KJtD[0]+ J[ 0][3]*KJtD[3]+ J[ 0][5]*KJtD[5];
                F[ 1] = J[ 1][1]*KJtD[1]+ J[ 1][3]*KJtD[3]+ J[ 1][4]*KJtD[4];
                F[ 2] = J[ 2][2]*KJtD[2]+ J[ 2][4]*KJtD[4]+ J[ 2][5]*KJtD[5];
                F[ 3] = J[ 3][0]*KJtD[0]+ J[ 3][3]*KJtD[3]+ J[ 3][5]*KJtD[5];
                F[ 4] = J[ 4][1]*KJtD[1]+ J[ 4][3]*KJtD[3]+ J[ 4][
                        4]*KJtD[4];
                F[ 5] = J[ 5][2]*KJtD[2]+ J[ 5][4]*KJtD[4]+ J[ 5][5]*KJtD[5];
                F[ 6] = J[ 6][0]*KJtD[0]+ J[ 6][3]*KJtD[3]+ J[ 6][5]*KJtD[5];
                F[ 7] = J[ 7][1]*KJtD[1]+ J[ 7][3]*KJtD[3]+ J[ 7][4]*KJtD[4];
                F[ 8] = J[ 8][2]*KJtD[2]+ J[ 8][4]*KJtD[4]+ J[ 8][5]*KJtD[5];
                F[ 9] = J[ 9][0]*KJtD[0]+ J[ 9][3]*KJtD[3]+ J[ 9][5]*KJtD[5];
                F[10] = J[10][1]*KJtD[1]+ J[10][3]*KJtD[3]+ J[10][4]*KJtD[4];
                F[11] = J[11][2]*KJtD[2]+ J[11][4]*KJtD[4]+ J[11][5]*KJtD[5];

                // Compute potentialEnergy
                energyPotential += dot(Deriv( F[0], F[1], F[2] ) ,-Deriv( D[0], D[1], D[2]));
                energyPotential += dot(Deriv( F[3], F[4], F[5] ) ,-Deriv( D[3], D[4], D[5] ));
                energyPotential += dot(Deriv( F[6], F[7], F[8] ) ,-Deriv( D[6], D[7], D[8] ));
                energyPotential += dot(Deriv( F[9], F[10], F[11]),-Deriv( D[9], D[10], D[11] ));
            }
        }
        energyPotential/=-2.0;
        break;
    }
    }

    return energyPotential;
}

template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::applyStiffnessSmall( Vector& f, const Vector& x, Index i, Index a, Index b, Index c, Index d, SReal fact )
{
    Displacement X;

    X[0] = x[a][0];
    X[1] = x[a][1];
    X[2] = x[a][2];

    X[3] = x[b][0];
    X[4] = x[b][1];
    X[5] = x[b][2];

    X[6] = x[c][0];
    X[7] = x[c][1];
    X[8] = x[c][2];

    X[9] = x[d][0];
    X[10] = x[d][1];
    X[11] = x[d][2];

    Displacement F;
    computeForce( F, X, materialsStiffnesses[i], strainDisplacements[i], fact );

    f[a] += Deriv( -F[0], -F[1],  -F[2] );
    f[b] += Deriv( -F[3], -F[4],  -F[5] );
    f[c] += Deriv( -F[6], -F[7],  -F[8] );
    f[d] += Deriv( -F[9], -F[10], -F[11] );
}

//////////////////////////////////////////////////////////////////////
////////////////////  large displacements method  ////////////////////
//////////////////////////////////////////////////////////////////////

template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::computeRotationLarge( Transformation &r, const Vector &p, const Index &a, const Index &b, const Index &c)
{
    // first vector on first edge
    // second vector in the plane of the two first edges
    // third vector orthogonal to first and second

    const Coord edgex = (p[b]-p[a]).normalized();
          Coord edgey = p[c]-p[a];
    const Coord edgez = cross( edgex, edgey ).normalized();
                edgey = cross( edgez, edgex ); //edgey is unit vector because edgez and edgex are orthogonal unit vectors

    r[0][0] = edgex[0];
    r[0][1] = edgex[1];
    r[0][2] = edgex[2];
    r[1][0] = edgey[0];
    r[1][1] = edgey[1];
    r[1][2] = edgey[2];
    r[2][0] = edgez[0];
    r[2][1] = edgez[1];
    r[2][2] = edgez[2];

    // TODO handle degenerated cases like in the SVD method
}

//HACK get rotation for fast contact handling with simplified compliance
template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::getRotation(Mat33& R, unsigned int nodeIdx)
{ 
    if(method == SMALL)
    {
        R[0][0] = 1.0 ; R[1][1] = 1.0 ; R[2][2] = 1.0 ;
        R[0][1] = 0.0 ; R[0][2] = 0.0 ;
        R[1][0] = 0.0 ; R[1][2] = 0.0 ;
        R[2][0] = 0.0 ; R[2][1] = 0.0 ;
        msg_warning() << "getRotation called but no rotation computed because case== SMALL";
        return;
    }

    core::topology::BaseMeshTopology::TetrahedraAroundVertex liste_tetra = m_topology->getTetrahedraAroundVertex(nodeIdx);

    R[0][0] = 0.0 ; R[0][1] = 0.0 ; R[0][2] = 0.0 ;
    R[1][0] = 0.0 ; R[1][1] = 0.0 ;  R[1][2] = 0.0 ;
    R[2][0] = 0.0 ; R[2][1] = 0.0 ; R[2][2] = 0.0 ;

    std::size_t numTetra=liste_tetra.size();
    if (numTetra==0)
    {
        if (!_rotationIdx.empty())
        {
            Transformation R0t;
            R0t.transpose(_initialRotations[_rotationIdx[nodeIdx]]);
            R = rotations[_rotationIdx[nodeIdx]] * R0t;
        }
        else
        {
            R[0][0] = R[1][1] = R[2][2] = 1.0 ;
            R[0][1] = R[0][2] = R[1][0] = R[1][2] = R[2][0] = R[2][1] = 0.0 ;
        }
        return;
    }

    for (unsigned int ti=0; ti<numTetra; ti++)
    {
        Transformation R0t;
        R0t.transpose(_initialRotations[liste_tetra[ti]]);
        R += rotations[liste_tetra[ti]] * R0t;
    }

    // on "moyenne"
    R[0][0] = R[0][0]/numTetra ; R[0][1] = R[0][1]/numTetra ; R[0][2] = R[0][2]/numTetra ;
    R[1][0] = R[1][0]/numTetra ; R[1][1] = R[1][1]/numTetra ; R[1][2] = R[1][2]/numTetra ;
    R[2][0] = R[2][0]/numTetra ; R[2][1] = R[2][1]/numTetra ; R[2][2] = R[2][2]/numTetra ;

    type::Mat<3,3,Real> Rmoy;
    helper::Decompose<Real>::polarDecomposition( R, Rmoy );

    R = Rmoy;
}

template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::initLarge(Index i, Index&a, Index&b, Index&c, Index&d)
{
    // Rotation matrix (initial Tetrahedre/world)
    // first vector on first edge
    // second vector in the plane of the two first edges
    // third vector orthogonal to first and second

    const VecCoord &initialPoints=_initialPoints.getValue();
    Transformation R_0_1;
    computeRotationLarge( R_0_1, initialPoints, a, b, c);
    _initialRotations[i].transpose(R_0_1);
    rotations[i] = _initialRotations[i];

    //save the element index as the node index
    _rotationIdx[a] = i;
    _rotationIdx[b] = i;
    _rotationIdx[c] = i;
    _rotationIdx[d] = i;

    _rotatedInitialElements[i][0] = R_0_1*initialPoints[a];
    _rotatedInitialElements[i][1] = R_0_1*initialPoints[b];
    _rotatedInitialElements[i][2] = R_0_1*initialPoints[c];
    _rotatedInitialElements[i][3] = R_0_1*initialPoints[d];

    _rotatedInitialElements[i][1] -= _rotatedInitialElements[i][0];
    _rotatedInitialElements[i][2] -= _rotatedInitialElements[i][0];
    _rotatedInitialElements[i][3] -= _rotatedInitialElements[i][0];
    _rotatedInitialElements[i][0] = Coord(0,0,0);

    computeStrainDisplacement(strainDisplacements[i],_rotatedInitialElements[i][0],
            _rotatedInitialElements[i][1],_rotatedInitialElements[i][2],
            _rotatedInitialElements[i][3] );
}

template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::accumulateForceLarge( Vector& f, const Vector & p,
                                                                       typename VecElement::const_iterator elementIt, Index elementIndex )
{
    Element index = *elementIt;

    // Rotation matrix (deformed and displaced Tetrahedron/world)
    Transformation R_0_2;
    computeRotationLarge( R_0_2, p, index[0],index[1],index[2]);

    rotations[elementIndex].transpose(R_0_2);

    // positions of the deformed and displaced Tetrahedron in its frame
    type::fixed_array<Coord,4> deforme;
    for(int i=0; i<4; ++i)
        deforme[i] = R_0_2*p[index[i]];

    deforme[1][0] -= deforme[0][0];
    deforme[2][0] -= deforme[0][0];
    deforme[2][1] -= deforme[0][1];
    deforme[3] -= deforme[0];

    // displacement
    Displacement D;
    D[0] = 0;
    D[1] = 0;
    D[2] = 0;
    D[3] = _rotatedInitialElements[elementIndex][1][0] - deforme[1][0];
    D[4] = 0;
    D[5] = 0;
    D[6] = _rotatedInitialElements[elementIndex][2][0] - deforme[2][0];
    D[7] = _rotatedInitialElements[elementIndex][2][1] - deforme[2][1];
    D[8] = 0;
    D[9] = _rotatedInitialElements[elementIndex][3][0] - deforme[3][0];
    D[10] = _rotatedInitialElements[elementIndex][3][1] - deforme[3][1];
    D[11] =_rotatedInitialElements[elementIndex][3][2] - deforme[3][2];

    Displacement F;
    if(_updateStiffnessMatrix.getValue())
    {
        strainDisplacements[elementIndex][0][0]   = ( - deforme[2][1]*deforme[3][2] );
        strainDisplacements[elementIndex][1][1] = ( deforme[2][0]*deforme[3][2] - deforme[1][0]*deforme[3][2] );
        strainDisplacements[elementIndex][2][2]   = ( deforme[2][1]*deforme[3][0] - deforme[2][0]*deforme[3][1] + deforme[1][0]*deforme[3][1] - deforme[1][0]*deforme[2][1] );

        strainDisplacements[elementIndex][3][0]   = ( deforme[2][1]*deforme[3][2] );
        strainDisplacements[elementIndex][4][1]  = ( - deforme[2][0]*deforme[3][2] );
        strainDisplacements[elementIndex][5][2]   = ( - deforme[2][1]*deforme[3][0] + deforme[2][0]*deforme[3][1] );

        strainDisplacements[elementIndex][7][1]  = ( deforme[1][0]*deforme[3][2] );
        strainDisplacements[elementIndex][8][2]   = ( - deforme[1][0]*deforme[3][1] );

        strainDisplacements[elementIndex][11][2] = ( deforme[1][0]*deforme[2][1] );
    }

    if(!_assembling.getValue())
    {
        // compute force on element
        computeForce( F, D, _plasticStrains[elementIndex], materialsStiffnesses[elementIndex], strainDisplacements[elementIndex] );
        for(int i=0; i<12; i+=3)
            f[index[i/3]] += rotations[elementIndex] * Deriv( F[i], F[i+1],  F[i+2] );
    }
    else if( _plasticMaxThreshold.getValue() <= 0 )
    {
        strainDisplacements[elementIndex][6][0] = 0;
        strainDisplacements[elementIndex][9][0] = 0;
        strainDisplacements[elementIndex][10][1] = 0;

        StiffnessMatrix RJKJt, RJKJtRt;
        computeStiffnessMatrix(RJKJt,RJKJtRt,materialsStiffnesses[elementIndex], strainDisplacements[elementIndex],rotations[elementIndex]);

        //erase the stiffness matrix at each time step
        if(elementIndex==0)
        {
            for(unsigned int i=0; i<_stiffnesses.size(); ++i)
            {
                _stiffnesses[i].resize(0);
            }
        }

        for(int i=0; i<12; ++i)
        {
            Index row = index[i/3]*3+i%3;
            for(int j=0; j<12; ++j)
            {
                Index col = index[j/3]*3+j%3;

                // search if the vertex is already take into account by another element
                typename CompressedValue::iterator result = _stiffnesses[row].end();
                for(typename CompressedValue::iterator it=_stiffnesses[row].begin(); it!=_stiffnesses[row].end()&&result==_stiffnesses[row].end(); ++it)
                {
                    if( (*it).first == col )
                    {
                        result = it;
                    }
                }

                if( result==_stiffnesses[row].end() )
                {
                    _stiffnesses[row].push_back( Col_Value(col,RJKJtRt[i][j] )  );
                }
                else
                {
                    (*result).second += RJKJtRt[i][j];
                }
            }
        }

        F = RJKJt*D;

        for(int i=0; i<12; i+=3)
            f[index[i/3]] += Deriv( F[i], F[i+1],  F[i+2] );
    }
    else
    {
        dmsg_error() << "Support for assembling system matrix when using plasticity." ;
    }
}

//////////////////////////////////////////////////////////////////////
////////////////////  polar decomposition method  ////////////////////
//////////////////////////////////////////////////////////////////////


template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::initPolar(Index i, Index& a, Index&b, Index&c, Index&d)
{
    const VecCoord &initialPoints=_initialPoints.getValue();
    Transformation A;
    A[0] = initialPoints[b]-initialPoints[a];
    A[1] = initialPoints[c]-initialPoints[a];
    A[2] = initialPoints[d]-initialPoints[a];
    //_initialTransformation[i] = A;

    Transformation R_0_1;
    helper::Decompose<Real>::polarDecomposition( A, R_0_1 );

    _initialRotations[i].transpose( R_0_1 );
    rotations[i] = _initialRotations[i];

    //save the element index as the node index
    _rotationIdx[a] = i;
    _rotationIdx[b] = i;
    _rotationIdx[c] = i;
    _rotationIdx[d] = i;

    _rotatedInitialElements[i][0] = R_0_1*initialPoints[a];
    _rotatedInitialElements[i][1] = R_0_1*initialPoints[b];
    _rotatedInitialElements[i][2] = R_0_1*initialPoints[c];
    _rotatedInitialElements[i][3] = R_0_1*initialPoints[d];

    computeStrainDisplacement( strainDisplacements[i],_rotatedInitialElements[i][0],
                                _rotatedInitialElements[i][1],_rotatedInitialElements[i][2],_rotatedInitialElements[i][3] );

}

template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::accumulateForcePolar( Vector& f, const Vector & p, typename VecElement::const_iterator elementIt, Index elementIndex )
{
    Element index = *elementIt;

    Transformation A;
    A[0] = p[index[1]]-p[index[0]];
    A[1] = p[index[2]]-p[index[0]];
    A[2] = p[index[3]]-p[index[0]];

    Transformation R_0_2;
    helper::Decompose<Real>::polarDecomposition( A, R_0_2 );

    rotations[elementIndex].transpose( R_0_2 );

    // positions of the deformed and displaced Tetrahedre in its frame
    type::fixed_array<Coord, 4>  deforme;
    for(int i=0; i<4; ++i)
        deforme[i] = R_0_2 * p[index[i]];

    // displacement
    Displacement D;
    D[0] = _rotatedInitialElements[elementIndex][0][0] - deforme[0][0];
    D[1] = _rotatedInitialElements[elementIndex][0][1] - deforme[0][1];
    D[2] = _rotatedInitialElements[elementIndex][0][2] - deforme[0][2];
    D[3] = _rotatedInitialElements[elementIndex][1][0] - deforme[1][0];
    D[4] = _rotatedInitialElements[elementIndex][1][1] - deforme[1][1];
    D[5] = _rotatedInitialElements[elementIndex][1][2] - deforme[1][2];
    D[6] = _rotatedInitialElements[elementIndex][2][0] - deforme[2][0];
    D[7] = _rotatedInitialElements[elementIndex][2][1] - deforme[2][1];
    D[8] = _rotatedInitialElements[elementIndex][2][2] - deforme[2][2];
    D[9] = _rotatedInitialElements[elementIndex][3][0] - deforme[3][0];
    D[10] = _rotatedInitialElements[elementIndex][3][1] - deforme[3][1];
    D[11] = _rotatedInitialElements[elementIndex][3][2] - deforme[3][2];



    Displacement F;
    if(_updateStiffnessMatrix.getValue())
    {
        // shape functions matrix
        computeStrainDisplacement( strainDisplacements[elementIndex], deforme[0],deforme[1],deforme[2],deforme[3] );
    }

    if(!_assembling.getValue())
    {
        computeForce( F, D, _plasticStrains[elementIndex], materialsStiffnesses[elementIndex], strainDisplacements[elementIndex] );
        for(int i=0; i<12; i+=3)
            f[index[i/3]] += rotations[elementIndex] * Deriv( F[i], F[i+1],  F[i+2] );
    }
    else
    {
        dmsg_error() << "Support for assembling system matrix when using polar method.";
    }
}



//////////////////////////////////////////////////////////////////////
////////////////////  svd decomposition method  ////////////////////
//////////////////////////////////////////////////////////////////////

template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::initSVD(Index i, Index& a, Index&b, Index&c, Index&d )
{
    const VecCoord &initialPoints=_initialPoints.getValue();
    Transformation A;
    A[0] = initialPoints[b]-initialPoints[a];
    A[1] = initialPoints[c]-initialPoints[a];
    A[2] = initialPoints[d]-initialPoints[a];
    const bool canInvert = _initialTransformation[i].invert( A );
    assert(canInvert);
    SOFA_UNUSED(canInvert);

    Transformation R_0_1;
    helper::Decompose<Real>::polarDecomposition( A, R_0_1 );

    _initialRotations[i].transpose( R_0_1 );
    rotations[i] = _initialRotations[i];

    //save the element index as the node index
    _rotationIdx[a] = i;
    _rotationIdx[b] = i;
    _rotationIdx[c] = i;
    _rotationIdx[d] = i;

    _rotatedInitialElements[i][0] = R_0_1*initialPoints[a];
    _rotatedInitialElements[i][1] = R_0_1*initialPoints[b];
    _rotatedInitialElements[i][2] = R_0_1*initialPoints[c];
    _rotatedInitialElements[i][3] = R_0_1*initialPoints[d];

    computeStrainDisplacement( strainDisplacements[i],_rotatedInitialElements[i][0], _rotatedInitialElements[i][1],_rotatedInitialElements[i][2],_rotatedInitialElements[i][3] );
}




template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::accumulateForceSVD( Vector& f, const Vector & p, typename VecElement::const_iterator elementIt, Index elementIndex )
{
    if( _assembling.getValue() )
    {
        dmsg_error() << "Support for assembling system matrix when using SVD method.";
        return;
    }

    Element index = *elementIt;

    Transformation A;
    A[0] = p[index[1]]-p[index[0]];
    A[1] = p[index[2]]-p[index[0]];
    A[2] = p[index[3]]-p[index[0]];

    type::Mat<3,3,Real> R_0_2;

    type::Mat<3,3,Real> F = A * _initialTransformation[elementIndex];

    if(type::determinant(F) < 1e-6 ) // inverted or too flat element -> SVD decomposition + handle degenerated cases
    {
        helper::Decompose<Real>::polarDecomposition_stable( F, R_0_2 );
        R_0_2 = R_0_2.multTransposed( _initialRotations[elementIndex] );
    }
    else // not inverted & not degenerated -> classical polar
    {
        helper::Decompose<Real>::polarDecomposition( A, R_0_2 );
    }

    rotations[elementIndex].transpose( R_0_2 );

    // positions of the deformed and displaced tetrahedron in its frame
    type::fixed_array<Coord, 4>  deforme;
    for(int i=0; i<4; ++i)
        deforme[i] = R_0_2 * p[index[i]];

    // displacement
    Displacement D;
    D[0]  = _rotatedInitialElements[elementIndex][0][0] - deforme[0][0];
    D[1]  = _rotatedInitialElements[elementIndex][0][1] - deforme[0][1];
    D[2]  = _rotatedInitialElements[elementIndex][0][2] - deforme[0][2];
    D[3]  = _rotatedInitialElements[elementIndex][1][0] - deforme[1][0];
    D[4]  = _rotatedInitialElements[elementIndex][1][1] - deforme[1][1];
    D[5]  = _rotatedInitialElements[elementIndex][1][2] - deforme[1][2];
    D[6]  = _rotatedInitialElements[elementIndex][2][0] - deforme[2][0];
    D[7]  = _rotatedInitialElements[elementIndex][2][1] - deforme[2][1];
    D[8]  = _rotatedInitialElements[elementIndex][2][2] - deforme[2][2];
    D[9]  = _rotatedInitialElements[elementIndex][3][0] - deforme[3][0];
    D[10] = _rotatedInitialElements[elementIndex][3][1] - deforme[3][1];
    D[11] = _rotatedInitialElements[elementIndex][3][2] - deforme[3][2];

    if( _updateStiffnessMatrix.getValue() )
    {
        computeStrainDisplacement( strainDisplacements[elementIndex], deforme[0], deforme[1], deforme[2], deforme[3] );
    }

    Displacement Forces;
    computeForce( Forces, D, _plasticStrains[elementIndex], materialsStiffnesses[elementIndex], strainDisplacements[elementIndex] );
    for( int i=0 ; i<12 ; i+=3 )
    {
        f[index[i/3]] += rotations[elementIndex] * Deriv( Forces[i], Forces[i+1],  Forces[i+2] );
    }
}



///////////////////////////////////////////////////////////////////////////////////////
////////////////  specific methods for corotational large, polar, svd  ////////////////
///////////////////////////////////////////////////////////////////////////////////////

template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::applyStiffnessCorotational( Vector& f, const Vector& x, Index i, Index a, Index b, Index c, Index d, SReal fact )
{
    Displacement X;

    // rotate by rotations[i] transposed
    X[0]  = rotations[i][0][0] * x[a][0] + rotations[i][1][0] * x[a][1] + rotations[i][2][0] * x[a][2];
    X[1]  = rotations[i][0][1] * x[a][0] + rotations[i][1][1] * x[a][1] + rotations[i][2][1] * x[a][2];
    X[2]  = rotations[i][0][2] * x[a][0] + rotations[i][1][2] * x[a][1] + rotations[i][2][2] * x[a][2];

    X[3]  = rotations[i][0][0] * x[b][0] + rotations[i][1][0] * x[b][1] + rotations[i][2][0] * x[b][2];
    X[4]  = rotations[i][0][1] * x[b][0] + rotations[i][1][1] * x[b][1] + rotations[i][2][1] * x[b][2];
    X[5]  = rotations[i][0][2] * x[b][0] + rotations[i][1][2] * x[b][1] + rotations[i][2][2] * x[b][2];

    X[6]  = rotations[i][0][0] * x[c][0] + rotations[i][1][0] * x[c][1] + rotations[i][2][0] * x[c][2];
    X[7]  = rotations[i][0][1] * x[c][0] + rotations[i][1][1] * x[c][1] + rotations[i][2][1] * x[c][2];
    X[8]  = rotations[i][0][2] * x[c][0] + rotations[i][1][2] * x[c][1] + rotations[i][2][2] * x[c][2];

    X[9]  = rotations[i][0][0] * x[d][0] + rotations[i][1][0] * x[d][1] + rotations[i][2][0] * x[d][2];
    X[10] = rotations[i][0][1] * x[d][0] + rotations[i][1][1] * x[d][1] + rotations[i][2][1] * x[d][2];
    X[11] = rotations[i][0][2] * x[d][0] + rotations[i][1][2] * x[d][1] + rotations[i][2][2] * x[d][2];

    Displacement F;

    computeForce( F, X, materialsStiffnesses[i], strainDisplacements[i], fact );


    // rotate by rotations[i]
    f[a][0] -= rotations[i][0][0] *  F[0] +  rotations[i][0][1] * F[1]  + rotations[i][0][2] * F[2];
    f[a][1] -= rotations[i][1][0] *  F[0] +  rotations[i][1][1] * F[1]  + rotations[i][1][2] * F[2];
    f[a][2] -= rotations[i][2][0] *  F[0] +  rotations[i][2][1] * F[1]  + rotations[i][2][2] * F[2];

    f[b][0] -= rotations[i][0][0] *  F[3] +  rotations[i][0][1] * F[4]  + rotations[i][0][2] * F[5];
    f[b][1] -= rotations[i][1][0] *  F[3] +  rotations[i][1][1] * F[4]  + rotations[i][1][2] * F[5];
    f[b][2] -= rotations[i][2][0] *  F[3] +  rotations[i][2][1] * F[4]  + rotations[i][2][2] * F[5];

    f[c][0] -= rotations[i][0][0] *  F[6] +  rotations[i][0][1] * F[7]  + rotations[i][0][2] * F[8];
    f[c][1] -= rotations[i][1][0] *  F[6] +  rotations[i][1][1] * F[7]  + rotations[i][1][2] * F[8];
    f[c][2] -= rotations[i][2][0] *  F[6] +  rotations[i][2][1] * F[7]  + rotations[i][2][2] * F[8];

    f[d][0] -= rotations[i][0][0] *  F[9] +  rotations[i][0][1] * F[10] + rotations[i][0][2] * F[11];
    f[d][1]	-= rotations[i][1][0] *  F[9] +  rotations[i][1][1] * F[10] + rotations[i][1][2] * F[11];
    f[d][2]	-= rotations[i][2][0] *  F[9] +  rotations[i][2][1] * F[10] + rotations[i][2][2] * F[11];

}


//////////////////////////////////////////////////////////////////////
////////////////  generic main computations methods  /////////////////
//////////////////////////////////////////////////////////////////////

template <class DataTypes>
TetrahedronFEMForceField<DataTypes>::~TetrahedronFEMForceField()
{
    // Need to unaffect a vector to the pointer
    if (m_topology == nullptr && _indexedElements != nullptr)
        delete _indexedElements;

    if (m_VonMisesColorMap != nullptr)
        delete m_VonMisesColorMap;
}



template <class DataTypes>
void TetrahedronFEMForceField<DataTypes>::init()
{
    this->d_componentState.setValue(ComponentState::Invalid) ;

    const VecReal& youngModulus = _youngModulus.getValue();
    minYoung=youngModulus[0];
    maxYoung=youngModulus[0];
    for (unsigned i=0; i<youngModulus.size(); i++)
    {
        if (youngModulus[i]<minYoung) minYoung=youngModulus[i];
        if (youngModulus[i]>maxYoung) maxYoung=youngModulus[i];
    }

    const Real& poissonRatio = _poissonRatio.getValue();
    if (poissonRatio < 0 || poissonRatio >= 0.5)
    {
        _poissonRatio.setValue((poissonRatio < 0)? 0.0 : 0.499);
        msg_warning() << "FEM Poisson's Ratio in Hooke's law should be in [0,0.5[. Clamping the value to " << poissonRatio << ".";
    }

    if (_updateStiffness.getValue() || isComputeVonMisesStressMethodSet())
    {
        this->f_listening.setValue(true);
    }

    // ParallelDataThrd is used to build the matrix asynchronusly (when listening = true)
    // This feature is activated when callin handleEvent with ParallelizeBuildEvent
    // At init parallelDataSimu == parallelDataThrd (and it's the case since handleEvent is called)

    this->core::behavior::ForceField<DataTypes>::init();

    /// Take the user provide topology.
    if (l_topology.empty())
    {
        msg_info() << "link to Topology container should be set to ensure right behavior. First Topology found in current context will be used.";
        l_topology.set(this->getContext()->getMeshTopologyLink());
    }

    m_topology = l_topology.get();
    msg_info() << "Topology path used: '" << l_topology.getLinkedPath() << "'";

    /// If not possible try to find one in the current context.
    if (m_topology == nullptr)
    {
        msg_error() << "No topology component found at path: " << l_topology.getLinkedPath() << ", nor in current context: " << this->getContext()->name << " object must have a mesh topology. The component is inactivated.  "
            "To remove this error message please add a topology component to your scene.";
        this->d_componentState.setValue(sofa::core::objectmodel::ComponentState::Invalid);

        // Need to affect a vector to the pointer even if it is empty.
        if (_indexedElements == nullptr)
            _indexedElements = new VecElement();

        return;
    }

    
    if (m_topology->getNbTetrahedra()<=0 && m_topology->getNbHexahedra()<=0)
    {
        msg_error()     << " object must have a tetrahedric topology. The component is inactivated.  "
                           "To remove this error message please add a tetrahedric topology component to your scene.";

        // Need to affect a vector to the pointer even if it is empty.
        if (_indexedElements == nullptr)
            _indexedElements = new VecElement();

        this->d_componentState.setValue(sofa::core::objectmodel::ComponentState::Invalid);

        return;
    }

    if (!m_topology->getTetrahedra().empty())
    {
        _indexedElements = & (m_topology->getTetrahedra());
    }
    else
    {
        core::topology::BaseMeshTopology::SeqTetrahedra* tetrahedra = new core::topology::BaseMeshTopology::SeqTetrahedra;
        auto nbcubes = m_topology->getNbHexahedra();

        // These values are only correct if the mesh is a grid topology
        int nx = 2;
        int ny = 1;
        {
            auto* grid = dynamic_cast<topology::container::grid::GridTopology*>(m_topology);
            if (grid != nullptr)
            {
                nx = grid->getNx()-1;
                ny = grid->getNy()-1;
            }
        }

        // Tesselation of each cube into 6 tetrahedra
        tetrahedra->reserve(size_t(nbcubes)*6);
        for (sofa::Size i=0; i<nbcubes; i++)
        {
            core::topology::BaseMeshTopology::Hexa c = m_topology->getHexahedron(i);
            if (!((i%nx)&1))
            {
                // swap all points on the X edges
                std::swap(c[0],c[1]);
                std::swap(c[3],c[2]);
                std::swap(c[4],c[5]);
                std::swap(c[7],c[6]);
            }
            if (((i/nx)%ny)&1)
            {
                // swap all points on the Y edges
                std::swap(c[0],c[3]);
                std::swap(c[1],c[2]);
                std::swap(c[4],c[7]);
                std::swap(c[5],c[6]);
            }
            if ((i/(nx*ny))&1)
            {
                // swap all points on the Z edges
                std::swap(c[0],c[4]);
                std::swap(c[1],c[5]);
                std::swap(c[2],c[6]);
                std::swap(c[3],c[7]);
            }
            typedef core::topology::BaseMeshTopology::Tetra Tetra;
            tetrahedra->push_back(Tetra(c[0],c[5],c[1],c[6]));
            tetrahedra->push_back(Tetra(c[0],c[1],c[3],c[6]));
            tetrahedra->push_back(Tetra(c[1],c[3],c[6],c[2]));
            tetrahedra->push_back(Tetra(c[6],c[3],c[0],c[7]));
            tetrahedra->push_back(Tetra(c[6],c[7],c[0],c[5]));
            tetrahedra->push_back(Tetra(c[7],c[5],c[4],c[0]));
        }
       _indexedElements = tetrahedra;
    }

    this->d_componentState.setValue(ComponentState::Valid) ;

    reinit(); // compute per-element stiffness matrices and other precomputed values

    msg_info() << "Init done with "<<_indexedElements->size()<<" tetras.";
}


template <class DataTypes>
void TetrahedronFEMForceField<DataTypes>::reset()
{
    for( unsigned i=0 ; i < _plasticStrains.size() ; ++i )
    {
        _plasticStrains[i].clear();
    }
}


template <class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::reinit()
{
    if(this->d_componentState.getValue() == ComponentState::Invalid)
        return ;

    if (!this->mstate || !m_topology){
        // Need to affect a vector to the pointer even if it is empty.
        if (_indexedElements == nullptr)
            _indexedElements = new VecElement();

        return;
    }

    if (!m_topology->getTetrahedra().empty())
    {
        _indexedElements = & (m_topology->getTetrahedra());
    }

    setMethod(f_method.getValue() );
    const VecCoord& p = this->mstate->read(core::ConstVecCoordId::restPosition())->getValue();
    _initialPoints.setValue(p);
    strainDisplacements.resize( _indexedElements->size() );
    materialsStiffnesses.resize(_indexedElements->size() );
    _plasticStrains.resize(     _indexedElements->size() );
    if(_assembling.getValue())
    {
        _stiffnesses.resize( _initialPoints.getValue().size()*3 );
    }

    // initialization of structures for vonMises stress computations
    if ( isComputeVonMisesStressMethodSet() )
    {
        elemLambda.resize( _indexedElements->size() );
        elemMu.resize( _indexedElements->size() );

        helper::WriteAccessor<Data<type::vector<Real> > > vME =  _vonMisesPerElement;
        vME.resize(_indexedElements->size());

        helper::WriteAccessor<Data<type::vector<Real> > > vMN =  _vonMisesPerNode;
        vMN.resize(this->mstate->getSize());

        prevMaxStress = -1.0;
        updateVonMisesStress = true;

        if (m_VonMisesColorMap == nullptr)
        {
            m_VonMisesColorMap = new helper::ColorMap(256, _showStressColorMap.getValue());
        }

        if (_computeVonMisesStress.getValue() == 1 && method == SMALL)
        {
            msg_warning() << "(init) VonMisesStress can only be computed with full Green strain when the method is SMALL.";
            this->d_componentState.setValue(sofa::core::objectmodel::ComponentState::Invalid);
        }
    }

    m_restVolume = 0;

    unsigned int i;
    typename VecElement::const_iterator it;
    switch(method)
    {
    case SMALL :
    {
        for(it = _indexedElements->begin(), i = 0 ; it != _indexedElements->end() ; ++it, ++i)
        {
            Index a = (*it)[0];
            Index b = (*it)[1];
            Index c = (*it)[2];
            Index d = (*it)[3];
            this->computeMaterialStiffness(i,a,b,c,d);
            this->initSmall(i,a,b,c,d);
        }
        break;
    }
    case LARGE :
    {
        rotations.resize( _indexedElements->size() );
        _initialRotations.resize( _indexedElements->size() );
        _rotationIdx.resize(m_topology->getNbPoints());
        _rotatedInitialElements.resize(_indexedElements->size());
        for(it = _indexedElements->begin(), i = 0 ; it != _indexedElements->end() ; ++it, ++i)
        {
            Index a = (*it)[0];
            Index b = (*it)[1];
            Index c = (*it)[2];
            Index d = (*it)[3];
            computeMaterialStiffness(i,a,b,c,d);
            initLarge(i,a,b,c,d);
        }
        break;
    }
    case POLAR :
    {
        rotations.resize( _indexedElements->size() );
        _initialRotations.resize( _indexedElements->size() );
        _rotationIdx.resize(m_topology->getNbPoints());
        _rotatedInitialElements.resize(_indexedElements->size());
        unsigned int i=0;
        typename VecElement::const_iterator it;
        for(it = _indexedElements->begin(), i = 0 ; it != _indexedElements->end() ; ++it, ++i)
        {
            Index a = (*it)[0];
            Index b = (*it)[1];
            Index c = (*it)[2];
            Index d = (*it)[3];
            computeMaterialStiffness(i,a,b,c,d);
            initPolar(i,a,b,c,d);
        }
        break;
    }
    case SVD :
    {
        rotations.resize( _indexedElements->size() );
        _initialRotations.resize( _indexedElements->size() );
        _rotationIdx.resize(m_topology->getNbPoints());
        _rotatedInitialElements.resize(_indexedElements->size());
        _initialTransformation.resize(_indexedElements->size());
        unsigned int i=0;
        typename VecElement::const_iterator it;
        for(it = _indexedElements->begin(), i = 0 ; it != _indexedElements->end() ; ++it, ++i)
        {
            Index a = (*it)[0];
            Index b = (*it)[1];
            Index c = (*it)[2];
            Index d = (*it)[3];
            computeMaterialStiffness(i,a,b,c,d);
            initSVD(i,a,b,c,d);
        }
        break;
    }
    }

    if ( isComputeVonMisesStressMethodSet() )
    {
        elemDisplacements.resize(  _indexedElements->size() );

        helper::ReadAccessor<Data<VecCoord> > X0 =  _initialPoints;

        elemShapeFun.resize(_indexedElements->size());
        for(it = _indexedElements->begin(), i = 0 ; it != _indexedElements->end() ; ++it, ++i)
        {
            Mat44 matVert;

            for (Index k = 0; k < 4; k++) {
                Index ix = (*it)[k];
                matVert[k][0] = 1.0;
                for (Index l = 1; l < 4; l++)
                    matVert[k][l] = X0[ix][l-1];
            }

            const bool canInvert = type::invertMatrix(elemShapeFun[i], matVert);
            assert(canInvert);
            SOFA_UNUSED(canInvert);
        }
        computeVonMisesStress();
    }
}


template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::addForce (const core::MechanicalParams* /*mparams*/, DataVecDeriv& d_f, const DataVecCoord& d_x, const DataVecDeriv& /* d_v */)
{
    VecDeriv& f = *d_f.beginEdit();
    const VecCoord& p = d_x.getValue();


    f.resize(p.size());

    if (needUpdateTopology)
    {
        reinit();
        needUpdateTopology = false;
    }

    unsigned int i;
    typename VecElement::const_iterator it;
    switch(method)
    {
    case SMALL :
    {
        for(it=_indexedElements->begin(), i = 0 ; it!=_indexedElements->end(); ++it,++i)
        {
            accumulateForceSmall( f, p, it, i );
        }
        break;
    }
    case LARGE :
    {
        for(it=_indexedElements->begin(), i = 0 ; it!=_indexedElements->end(); ++it,++i)
        {

            accumulateForceLarge( f, p, it, i );
        }
        break;
    }
    case POLAR :
    {
        for(it=_indexedElements->begin(), i = 0 ; it!=_indexedElements->end(); ++it,++i)
        {
            accumulateForcePolar( f, p, it, i );
        }
        break;
    }
    case SVD :
    {
        for(it=_indexedElements->begin(), i = 0 ; it!=_indexedElements->end(); ++it,++i)
        {
            accumulateForceSVD( f, p, it, i );
        }
        break;
    }
    }
    d_f.endEdit();

    updateVonMisesStress = true;
}

template<class DataTypes>
inline void TetrahedronFEMForceField<DataTypes>::addDForce(const core::MechanicalParams* mparams, DataVecDeriv& d_df, const DataVecDeriv& d_dx)
{
    VecDeriv& df = *d_df.beginEdit();
    const VecDeriv& dx = d_dx.getValue();
    Real kFactor = (Real)sofa::core::mechanicalparams::kFactorIncludingRayleighDamping(mparams, this->rayleighStiffness.getValue());

    df.resize(dx.size());
    unsigned int i;
    typename VecElement::const_iterator it;

    if( method == SMALL )
    {
        for(it = _indexedElements->begin(), i = 0 ; it != _indexedElements->end() ; ++it, ++i)
        {
            Index a = (*it)[0];
            Index b = (*it)[1];
            Index c = (*it)[2];
            Index d = (*it)[3];

            applyStiffnessSmall( df,dx, i, a,b,c,d, kFactor );
        }
    }
    else
    {
        for(it = _indexedElements->begin(), i = 0 ; it != _indexedElements->end() ; ++it, ++i)
        {
            Index a = (*it)[0];
            Index b = (*it)[1];
            Index c = (*it)[2];
            Index d = (*it)[3];

            applyStiffnessCorotational( df,dx, i, a,b,c,d, kFactor );
        }
    }

    d_df.endEdit();
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::computeBBox(const core::ExecParams*, bool onlyVisible)
{
    if( !onlyVisible ) return;

    if (!this->mstate) return;
    helper::ReadAccessor<DataVecCoord> x = this->mstate->read(core::VecCoordId::position());

    static const Real max_real = std::numeric_limits<Real>::max();
    static const Real min_real = std::numeric_limits<Real>::lowest();
    Real maxBBox[3] = {min_real,min_real,min_real};
    Real minBBox[3] = {max_real,max_real,max_real};
    for (size_t i=0; i<x.size(); i++)
    {
        for (int c=0; c<3; c++)
        {
            if (x[i][c] > maxBBox[c]) maxBBox[c] = (Real)x[i][c];
            else if (x[i][c] < minBBox[c]) minBBox[c] = (Real)x[i][c];
        }
    }

    this->f_bbox.setValue(sofa::type::TBoundingBox<Real>(minBBox,maxBBox));
}

template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::draw(const core::visual::VisualParams* vparams)
{
    if(this->d_componentState.getValue() == ComponentState::Invalid)
        return ;

    if (!vparams->displayFlags().getShowForceFields()) return;
    if (!this->mstate) return;

    if(needUpdateTopology)
    {
        reinit();
        needUpdateTopology = false;
    }

    bool drawVonMisesStress = (_showVonMisesStressPerNode.getValue() || _showVonMisesStressPerElement.getValue()) && isComputeVonMisesStressMethodSet();

    const auto stateLifeCycle = vparams->drawTool()->makeStateLifeCycle();

    if (vparams->displayFlags().getShowWireFrame())
    {
        vparams->drawTool()->setPolygonMode(0, true);
    }

    vparams->drawTool()->disableLighting();

    const VecCoord& x = this->mstate->read(core::ConstVecCoordId::position())->getValue();
    const VecReal& youngModulus = _youngModulus.getValue();

    bool heterogeneous = false;
    if (drawHeterogeneousTetra.getValue() && drawVonMisesStress)
    {
        minYoung=youngModulus[0];
        maxYoung=youngModulus[0];
        for (unsigned i=0; i<youngModulus.size(); i++)
        {
            if (youngModulus[i]<minYoung) minYoung=youngModulus[i];
            if (youngModulus[i]>maxYoung) maxYoung=youngModulus[i];
        }
        heterogeneous = (fabs(minYoung-maxYoung) > 1e-8);
    }


    Real minVM = (Real)1e20, maxVM = (Real)-1e20;
    Real minVMN = (Real)1e20, maxVMN = (Real)-1e20;
    helper::ReadAccessor<Data<type::vector<Real> > > vM =  _vonMisesPerElement;
    helper::ReadAccessor<Data<type::vector<Real> > > vMN =  _vonMisesPerNode;

    // vonMises stress
    if (drawVonMisesStress)
    {
        for (size_t i = 0; i < vM.size(); i++)
        {
            minVM = (vM[i] < minVM) ? vM[i] : minVM;
            maxVM = (vM[i] > maxVM) ? vM[i] : maxVM;
        }
        if (maxVM < prevMaxStress)
        {
            maxVM = prevMaxStress;
        }
        for (size_t i = 0; i < vMN.size(); i++)
        {
            minVMN = (vMN[i] < minVMN) ? vMN[i] : minVMN;
            maxVMN = (vMN[i] > maxVMN) ? vMN[i] : maxVMN;
        }
        maxVM *= _showStressAlpha.getValue();
        maxVMN *= _showStressAlpha.getValue();


        if (_showVonMisesStressPerNode.getValue())
        {
            // Draw nodes (if node option enabled)
            std::vector<sofa::type::RGBAColor> nodeColors(x.size());
            std::vector<type::Vec3> pts(x.size());
            helper::ColorMap::evaluator<Real> evalColor = m_VonMisesColorMap->getEvaluator(minVMN, maxVMN);
            for (size_t nd = 0; nd < x.size(); nd++) {
                pts[nd] = x[nd];
                nodeColors[nd] = evalColor(vMN[nd]);
            }
            vparams->drawTool()->drawPoints(pts, 10, nodeColors);
        }
    }


    // Draw elements (if not "node only")
    std::vector< type::Vec3 > points;
    std::vector< sofa::type::RGBAColor > colorVector;
    typename VecElement::const_iterator it;
    int i;
    for(it = _indexedElements->begin(), i = 0 ; it != _indexedElements->end() ; ++it, ++i)
    {
        Index a = (*it)[0];
        Index b = (*it)[1];
        Index c = (*it)[2];
        Index d = (*it)[3];
        Coord center = (x[a] + x[b] + x[c] + x[d]) * 0.125;

        Coord pa = x[a];
        Coord pb = x[b];
        Coord pc = x[c];
        Coord pd = x[d];

        if ( ! vparams->displayFlags().getShowWireFrame() )
        {
            pa = (pa + center) * Real(0.6667);
            pb = (pb + center) * Real(0.6667);
            pc = (pc + center) * Real(0.6667);
            pd = (pd + center) * Real(0.6667);
        }

        // create corresponding colors
        sofa::type::RGBAColor color[4];
        if (drawVonMisesStress && _showVonMisesStressPerElement.getValue())
        {
            if(heterogeneous)
            {
                float col = (float)((youngModulus[i] - minYoung) / (maxYoung - minYoung));
                float fac = col * 0.5f;
                color[0] = sofa::type::RGBAColor(col       , 0.0f - fac, 1.0f - col, 1.0f);
                color[1] = sofa::type::RGBAColor(col       , 0.5f - fac, 1.0f - col, 1.0f);
                color[2] = sofa::type::RGBAColor(col       , 1.0f - fac, 1.0f - col, 1.0f);
                color[3] = sofa::type::RGBAColor(col + 0.5f, 1.0f - fac, 1.0f - col, 1.0f);
            }
            else
            {
                helper::ColorMap::evaluator<Real> evalColor = m_VonMisesColorMap->getEvaluator(minVM, maxVM);
                auto col = sofa::type::RGBAColor::fromVec4(evalColor(vM[i]));
                col[3] = 1.0f;
                color[0] = col;
                color[1] = col;
                color[2] = col;
                color[3] = col;
            }
        }
        else if (!drawVonMisesStress)
        {
            color[0] = sofa::type::RGBAColor(0.0, 0.0, 1.0, 1.0);
            color[1] = sofa::type::RGBAColor(0.0, 0.5, 1.0, 1.0);
            color[2] = sofa::type::RGBAColor(0.0, 1.0, 1.0, 1.0);
            color[3] = sofa::type::RGBAColor(0.5, 1.0, 1.0, 1.0);
        }

        // create 4 triangles per tetrahedron with corresponding colors
        points.insert(points.end(), { pa, pb, pc });
        colorVector.insert(colorVector.end(), { color[0], color[0], color[0] });

        points.insert(points.end(), { pb, pc, pd });
        colorVector.insert(colorVector.end(), { color[1], color[1], color[1] });

        points.insert(points.end(), { pc, pd, pa });
        colorVector.insert(colorVector.end(), { color[2], color[2], color[2] });

        points.insert(points.end(), { pd, pa, pb });
        colorVector.insert(colorVector.end(), { color[3], color[3], color[3] });
    }
    vparams->drawTool()->drawTriangles(points, colorVector);


    ////////////// DRAW ROTATIONS //////////////
    if (vparams->displayFlags().getShowNormals())
    {
        const VecCoord& x = this->mstate->read(core::ConstVecCoordId::position())->getValue();
        std::vector< type::Vec3 > points[3];
        for(unsigned ii = 0; ii<  x.size() ; ii++)
        {
            Coord a = x[ii];
            Transformation R;
            getRotation(R, ii);
            Deriv v;
            // x
            v.x() =1.0; v.y()=0.0; v.z()=0.0;
            Coord b = a + R*v;
            points[0].push_back(a);
            points[0].push_back(b);
            // y
            v.x() =0.0; v.y()=1.0; v.z()=0.0;
            b = a + R*v;
            points[1].push_back(a);
            points[1].push_back(b);
            // z
            v.x() =0.0; v.y()=0.0; v.z()=1.0;
            b = a + R*v;
            points[2].push_back(a);
            points[2].push_back(b);
        }

        vparams->drawTool()->drawLines(points[0], 5, sofa::type::RGBAColor::red());
        vparams->drawTool()->drawLines(points[1], 5, sofa::type::RGBAColor::green());
        vparams->drawTool()->drawLines(points[2], 5, sofa::type::RGBAColor::blue());
    }


}


template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::addKToMatrix(const core::MechanicalParams* mparams, const sofa::core::behavior::MultiMatrixAccessor* matrix )
{
    sofa::core::behavior::MultiMatrixAccessor::MatrixRef r = matrix->getMatrix(this->mstate);
    if (r)
        addKToMatrix(r.matrix, sofa::core::mechanicalparams::kFactorIncludingRayleighDamping(mparams, this->rayleighStiffness.getValue()), r.offset);
    else dmsg_error() << "The function addKToMatrix found no valid matrix accessor." ;
}


template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::addKToMatrix(sofa::linearalgebra::BaseMatrix *mat, SReal k, unsigned int &offset)
{
    int IT = 0;
    StiffnessMatrix JKJt,tmp;

    Transformation Rot;
    Rot.identity(); //set the transformation to identity

    constexpr auto S = DataTypes::deriv_total_size; // size of node blocks
    constexpr auto N = Element::size();

    for(auto it = _indexedElements->begin() ; it != _indexedElements->end() ; ++it,++IT)
    {
        if (method == SMALL)
            computeStiffnessMatrix(JKJt,tmp,materialsStiffnesses[IT], strainDisplacements[IT],Rot);
        else
            computeStiffnessMatrix(JKJt,tmp,materialsStiffnesses[IT], strainDisplacements[IT],rotations[IT]);

        type::Mat<S, S, double> tmpBlock[4][4];
        for (sofa::Index n1=0; n1 < N; n1++)
        {
            for(sofa::Index i=0; i < S; i++)
            {
                for (sofa::Index n2=0; n2 < N; n2++)
                {
                    for (sofa::Index j=0; j < S; j++)
                    {
                        tmpBlock[n1][n2][i][j] = - tmp[n1*S+i][n2*S+j]*k;
                    }
                }
            }
        }

        for (sofa::Index n1=0; n1 < N; n1++)
        {
            for (sofa::Index n2=0; n2 < N; n2++)
            {
                mat->add(offset + (*it)[n1] * S, offset + (*it)[n2] * S, tmpBlock[n1][n2]);
            }
        }
    }
}

template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::handleEvent(core::objectmodel::Event *event)
{
    if (sofa::simulation::AnimateBeginEvent::checkEventType(event)) {
        if (_updateStiffness.getValue()) {
            unsigned int i;
            typename VecElement::const_iterator it;
            for(it = _indexedElements->begin(), i = 0 ; it != _indexedElements->end() ; ++it, ++i)
            {
                Index a = (*it)[0];
                Index b = (*it)[1];
                Index c = (*it)[2];
                Index d = (*it)[3];
                this->computeMaterialStiffness(i,a,b,c,d);
            }
        }
    }
    if (sofa::simulation::AnimateEndEvent::checkEventType(event)) {
        if ( isComputeVonMisesStressMethodSet() && updateVonMisesStress )
        {
            computeVonMisesStress();
        }
    }
}

template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::getRotations(VecReal& vecR)
{
    std::size_t nbdof = this->mstate->getSize();
    for (Index i=0; i<nbdof; ++i)
    {

        getRotation(*(Transformation*)&(vecR[i*9]),i);
    }
}

template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::getRotations(linearalgebra::BaseMatrix * rotations,int offset)
{
    std::size_t nbdof = this->mstate->getSize();

    if (linearalgebra::RotationMatrix<float> * diag = dynamic_cast<linearalgebra::RotationMatrix<float> *>(rotations))
    {
        Transformation R;
        for (unsigned int e=0; e<nbdof; ++e)
        {
            getRotation(R,e);
            for(int j=0; j<3; j++)
            {
                for(int i=0; i<3; i++)
                {
                    const Index ind = e * 9 + j * 3 + i;
                    diag->getVector()[ind] = (float)R[j][i];
                }
            }
        }
    }
    else if (linearalgebra::RotationMatrix<double> * diag = dynamic_cast<linearalgebra::RotationMatrix<double> *>(rotations))
    {
        Transformation R;
        for (unsigned int e=0; e<nbdof; ++e)
        {
            getRotation(R,e);
            for(int j=0; j<3; j++)
            {
                for(int i=0; i<3; i++)
                {
                    const Index ind = e * 9 + j * 3 + i;
                    diag->getVector()[ind] = R[j][i];
                }
            }
        }
    }
    else
    {
        for (unsigned int i=0; i<nbdof; ++i)
        {
            Transformation t;
            getRotation(t,i);
            int e = offset+i*3;
            rotations->set(e+0,e+0,t[0][0]); rotations->set(e+0,e+1,t[0][1]); rotations->set(e+0,e+2,t[0][2]);
            rotations->set(e+1,e+0,t[1][0]); rotations->set(e+1,e+1,t[1][1]); rotations->set(e+1,e+2,t[1][2]);
            rotations->set(e+2,e+0,t[2][0]); rotations->set(e+2,e+1,t[2][1]); rotations->set(e+2,e+2,t[2][2]);
        }
    }
}


template<class DataTypes>
const type::vector< typename TetrahedronFEMForceField<DataTypes>::Mat33 >& TetrahedronFEMForceField<DataTypes>::getRotations()
{
    const auto nbDOFs = this->mstate->getSize();

    m_rotations.resize(nbDOFs);

    for (sofa::Size i = 0; i < nbDOFs; ++i)
    {
        getRotation(m_rotations[i], i);
    }

    return m_rotations;
}

template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::setYoungModulus(Real val)
{
    VecReal newY;
    newY.resize(1);
    newY[0] = val;
    _youngModulus.setValue(newY);
}

template<class DataTypes>
const typename TetrahedronFEMForceField<DataTypes>::Transformation& TetrahedronFEMForceField<DataTypes>::getActualTetraRotation(unsigned int index)
{
    if (index < rotations.size())
        return rotations[index];

    msg_warning() << "Method getActualTetraRotation called with element index: " << index
        << " which is out of bounds: [0, " << rotations.size() << "]. Returning default empty array of coordinates.";
    return InvalidTransform;
}

template<class DataTypes>
const typename TetrahedronFEMForceField<DataTypes>::Transformation& TetrahedronFEMForceField<DataTypes>::getInitialTetraRotation(unsigned int index)
{ 
    if (index < _initialRotations.size())
        return _initialRotations[index];

    msg_warning() << "Method getInitialTetraRotation called with element index: " << index
        << " which is out of bounds: [0, " << _initialRotations.size() << "]. Returning default empty array of coordinates.";
    return InvalidTransform;
}

template<class DataTypes>
const typename TetrahedronFEMForceField<DataTypes>::MaterialStiffness& TetrahedronFEMForceField<DataTypes>::getMaterialStiffness(TetrahedronID tetraId)
{
    if (tetraId != sofa::InvalidID && tetraId < materialsStiffnesses.size())
        return materialsStiffnesses[tetraId];

    msg_warning() << "Method getMaterialStiffness called with element index: " << tetraId
        << " which is out of bounds: [0, " << materialsStiffnesses.size() << "]. Returning default empty array of coordinates.";
    return InvalidMaterialStiffness;
}

template<class DataTypes>
const typename TetrahedronFEMForceField<DataTypes>::StrainDisplacement& TetrahedronFEMForceField<DataTypes>::getStrainDisplacement(TetrahedronID tetraId)
{
    if (tetraId != sofa::InvalidID && tetraId < strainDisplacements.size())
        return strainDisplacements[tetraId];

    msg_warning() << "Method getStrainDisplacement called with element index: " << tetraId
        << " which is out of bounds: [0, " << strainDisplacements.size() << "]. Returning default empty array of coordinates.";
    return InvalidStrainDisplacement;
}


template<class DataTypes>
const type::fixed_array<typename TetrahedronFEMForceField<DataTypes>::Coord, 4>& TetrahedronFEMForceField<DataTypes>::getRotatedInitialElements(TetrahedronID tetraId)
{
    if (tetraId != sofa::InvalidID && tetraId < _rotatedInitialElements.size())
        return _rotatedInitialElements[tetraId];

    msg_warning() << "Method getRotatedInitialElements called with element index: " << tetraId
        << " which is out of bounds: [0, " << _rotatedInitialElements.size() << "]. Returning default empty array of coordinates.";
    return InvalidCoords;
}


template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::setMethod(std::string methodName)
{
    if (methodName == "small")	this->setMethod(SMALL);
    else if (methodName  == "polar")	this->setMethod(POLAR);
    else if (methodName  == "svd")	this->setMethod(SVD);
    else
    {
        if (methodName != "large")
            msg_error() << "Unknown method: large method will be used. Remark: Available method are \"small\", \"polar\", \"large\", \"svd\" ";
        this->setMethod(LARGE);
    }
}

template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::setMethod(int val)
{
    method = val;
    switch(val)
    {
    case SMALL: f_method.setValue("small"); break;
    case POLAR: f_method.setValue("polar"); break;
    case SVD:   f_method.setValue("svd"); break;
    default   : f_method.setValue("large");
    }
}


template<class DataTypes>
void TetrahedronFEMForceField<DataTypes>::computeVonMisesStress()
{
    if(this->d_componentState.getValue() == ComponentState::Invalid)
        return ;

    if ( ! isComputeVonMisesStressMethodSet() )
    {
        msg_warning() << "Cannot compute von Mises Stress. "
                      << "Value of " << _computeVonMisesStress.getName() << " is invalid. "
                      << "TetrahedronFEMForceField state is now Invalid.";
        this->d_componentState.setValue(sofa::core::objectmodel::ComponentState::Invalid);
        return;
    }

    typename core::behavior::MechanicalState<DataTypes>* mechanicalObject;
    this->getContext()->get(mechanicalObject);
    const VecCoord& X = mechanicalObject->read(core::ConstVecCoordId::position())->getValue();

    helper::ReadAccessor<Data<VecCoord> > X0 =  _initialPoints;

    VecCoord U;
    U.resize(X.size());
    for (Index i = 0; i < X0.size(); i++)
        U[i] = X[i] - X0[i];

    typename VecElement::const_iterator it;
    Index el;
    helper::WriteAccessor<Data<type::vector<Real> > > vME =  _vonMisesPerElement;
    for(it = _indexedElements->begin(), el = 0 ; it != _indexedElements->end() ; ++it, ++el)
    {
        type::Vec<6,Real> vStrain;
        Mat33 gradU;

        if (_computeVonMisesStress.getValue() == 2) {
            Mat44& shf = elemShapeFun[el];

            /// compute gradU
            for (Index k = 0; k < 3; k++) {
                for (Index l = 0; l < 3; l++)  {
                    gradU[k][l] = 0.0;
                    for (Index m = 0; m < 4; m++)
                        gradU[k][l] += shf[l+1][m] * U[(*it)[m]][k];
                }
            }

            Mat33 strain = ((Real)0.5)*(gradU + gradU.transposed() + gradU.transposed()*gradU);

            for (Index i = 0; i < 3; i++)
                vStrain[i] = strain[i][i];
            vStrain[3] = strain[1][2];
            vStrain[4] = strain[0][2];
            vStrain[5] = strain[0][1];
        }

        if (_computeVonMisesStress.getValue() == 1) {
            Element index = *it;
            Index elementIndex = el;

            // Rotation matrix (deformed and displaced Tetrahedron/world)
            Transformation R_0_2;
            Displacement D;
            if (method == LARGE) {
                computeRotationLarge( R_0_2, X, index[0],index[1],index[2]);
                rotations[elementIndex].transpose(R_0_2);

                // positions of the deformed and displaced Tetrahedron in its frame
                type::fixed_array<Coord,4> deforme;
                for(int i=0; i<4; ++i)
                    deforme[i] = R_0_2*X[index[i]];

                deforme[1][0] -= deforme[0][0];
                deforme[2][0] -= deforme[0][0];
                deforme[2][1] -= deforme[0][1];
                deforme[3] -= deforme[0];

                // displacement
                D[0] = 0;
                D[1] = 0;
                D[2] = 0;
                D[3] = _rotatedInitialElements[elementIndex][1][0] - deforme[1][0];
                D[4] = 0;
                D[5] = 0;
                D[6] = _rotatedInitialElements[elementIndex][2][0] - deforme[2][0];
                D[7] = _rotatedInitialElements[elementIndex][2][1] - deforme[2][1];
                D[8] = 0;
                D[9] = _rotatedInitialElements[elementIndex][3][0] - deforme[3][0];
                D[10] = _rotatedInitialElements[elementIndex][3][1] - deforme[3][1];
                D[11] =_rotatedInitialElements[elementIndex][3][2] - deforme[3][2];
            }
            else // POLAR / SVD
            {
                Transformation A;
                A[0] = X[index[1]]-X[index[0]];
                A[1] = X[index[2]]-X[index[0]];
                A[2] = X[index[3]]-X[index[0]];

                helper::Decompose<Real>::polarDecomposition( A, R_0_2 );

                rotations[elementIndex].transpose(R_0_2);

                // positions of the deformed and displaced Tetrahedron in its frame
                type::fixed_array<Coord,4> deforme;
                for(int i=0; i<4; ++i)
                    deforme[i] = R_0_2*X[index[i]];

                D[0] = _rotatedInitialElements[elementIndex][0][0] - deforme[0][0];
                D[1] = _rotatedInitialElements[elementIndex][0][1] - deforme[0][1];
                D[2] = _rotatedInitialElements[elementIndex][0][2] - deforme[0][2];
                D[3] = _rotatedInitialElements[elementIndex][1][0] - deforme[1][0];
                D[4] = _rotatedInitialElements[elementIndex][1][1] - deforme[1][1];
                D[5] = _rotatedInitialElements[elementIndex][1][2] - deforme[1][2];
                D[6] = _rotatedInitialElements[elementIndex][2][0] - deforme[2][0];
                D[7] = _rotatedInitialElements[elementIndex][2][1] - deforme[2][1];
                D[8] = _rotatedInitialElements[elementIndex][2][2] - deforme[2][2];
                D[9] = _rotatedInitialElements[elementIndex][3][0] - deforme[3][0];
                D[10] = _rotatedInitialElements[elementIndex][3][1] - deforme[3][1];
                D[11] = _rotatedInitialElements[elementIndex][3][2] - deforme[3][2];
            }

            Mat44& shf = elemShapeFun[el];

            /// compute gradU
            for (Index k = 0; k < 3; k++) {
                for (Index l = 0; l < 3; l++)  {
                    gradU[k][l] = 0.0;
                    for (Index m = 0; m < 4; m++)
                        gradU[k][l] += shf[l+1][m] * D[3*m+k];
                }
            }

            Mat33 strain = Real(0.5)*(gradU + gradU.transposed());

            for (Index i = 0; i < 3; i++)
                vStrain[i] = strain[i][i];
            vStrain[3] = strain[1][2];
            vStrain[4] = strain[0][2];
            vStrain[5] = strain[0][1];
        }

        Real lambda=elemLambda[el];
        Real mu = elemMu[el];

        /// stress
        VoigtTensor s;

        Real traceStrain = 0.0;
        for (Index k = 0; k < 3; k++) {
            traceStrain += vStrain[k];
            s[k] = vStrain[k]*2*mu;
        }

        for (Index k = 3; k < 6; k++)
            s[k] = vStrain[k]*2*mu;

        for (Index k = 0; k < 3; k++)
            s[k] += lambda*traceStrain;


        vME[el] = helper::rsqrt(s[0]*s[0] + s[1]*s[1] + s[2]*s[2] - s[0]*s[1] - s[1]*s[2] - s[2]*s[0] + 3*s[3]*s[3] + 3*s[4]*s[4] + 3*s[5]*s[5]);
        if (vME[el] < 1e-10)
            vME[el] = 0.0;
    }

    const VecCoord& dofs = this->mstate->read(core::ConstVecCoordId::position())->getValue();
    helper::WriteAccessor<Data<type::vector<Real> > > vMN =  _vonMisesPerNode;

    /// compute the values of vonMises stress in nodes
    for(Index dof = 0; dof < dofs.size(); dof++) {
        core::topology::BaseMeshTopology::TetrahedraAroundVertex tetrasAroundDOF = m_topology->getTetrahedraAroundVertex(dof);

        vMN[dof] = 0.0;
        for (size_t at = 0; at < tetrasAroundDOF.size(); at++)
            vMN[dof] += vME[tetrasAroundDOF[at]];
        if (!tetrasAroundDOF.empty())
            vMN[dof] /= Real(tetrasAroundDOF.size());
    }

    updateVonMisesStress=false;

    helper::WriteAccessor<Data<type::vector<type::Vec4f> > > vonMisesStressColors(_vonMisesStressColors);
    vonMisesStressColors.clear();
    type::vector<unsigned int> vonMisesStressColorsCoeff;

    Real minVM = (Real)1e20, maxVM = (Real)-1e20;

    for (size_t i = 0; i < vME.size(); i++) {
        minVM = (vME[i] < minVM) ? vME[i] : minVM;
        maxVM = (vME[i] > maxVM) ? vME[i] : maxVM;
    }

    if (maxVM < prevMaxStress)
        maxVM = prevMaxStress;

    maxVM*=_showStressAlpha.getValue();
    vonMisesStressColors.resize(m_topology->getNbPoints());
    vonMisesStressColorsCoeff.resize(m_topology->getNbPoints());
    std::fill(vonMisesStressColorsCoeff.begin(), vonMisesStressColorsCoeff.end(), 0);

    unsigned int i = 0;
    for(it = _indexedElements->begin() ; it != _indexedElements->end() ; ++it, ++i)
    {
        helper::ColorMap::evaluator<Real> evalColor = m_VonMisesColorMap->getEvaluator(minVM, maxVM);
        type::Vec4f col = evalColor(vME[i]);
        Tetrahedron tetra = (*_indexedElements)[i];

        for(unsigned int j=0 ; j<4 ; j++)
        {
            vonMisesStressColors[tetra[j]] += (col);
            vonMisesStressColorsCoeff[tetra[j]] ++;
        }
    }

    for(unsigned int i=0 ; i<vonMisesStressColors.size() ; i++)
    {
        if(vonMisesStressColorsCoeff[i] != 0)
        {
            vonMisesStressColors[i] /= vonMisesStressColorsCoeff[i];
        }
    }
}

template<class DataTypes>
bool TetrahedronFEMForceField<DataTypes>::isComputeVonMisesStressMethodSet()
{
    return _computeVonMisesStress.getValue() == 1 || _computeVonMisesStress.getValue() == 2;
}


} //namespace sofa::component::solidmechanics::fem::elastic
