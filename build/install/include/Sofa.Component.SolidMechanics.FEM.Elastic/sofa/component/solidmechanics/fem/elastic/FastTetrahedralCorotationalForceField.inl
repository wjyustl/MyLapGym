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

#include <sofa/component/solidmechanics/fem/elastic/FastTetrahedralCorotationalForceField.h>
#include <sofa/core/visual/VisualParams.h>
#include <sofa/helper/decompose.h>
#include <sofa/core/behavior/MultiMatrixAccessor.h>
#include <sofa/core/topology/Topology.h>
#include <sofa/core/topology/TopologyData.inl>

namespace sofa::component::solidmechanics::fem::elastic
{

using sofa::core::topology::edgesInTetrahedronArray;

template< class DataTypes>
void FastTetrahedralCorotationalForceField<DataTypes>::createTetrahedronRestInformation(Index tetrahedronIndex,
        TetrahedronRestInformation &my_tinfo,
        const core::topology::BaseMeshTopology::Tetrahedron &,
        const sofa::type::vector<Index> &,
        const sofa::type::vector<SReal> &)
{
    const std::vector< Tetrahedron > &tetrahedronArray=this->m_topology->getTetrahedra() ;

    unsigned int j,k,l,m,n;
    typename DataTypes::Real lambda=getLambda();
    typename DataTypes::Real mu=getMu();
    typename DataTypes::Real volume,val;
    typename DataTypes::Coord point[4]; //shapeVector[4];
    const typename DataTypes::VecCoord restPosition=this->mstate->read(core::ConstVecCoordId::restPosition())->getValue();

    ///describe the indices of the 4 tetrahedron vertices
    const Tetrahedron &t= tetrahedronArray[tetrahedronIndex];
//    BaseMeshTopology::EdgesInTetrahedron te=m_topology->getEdgesInTetrahedron(tetrahedronIndex);


    // store the point position
    for(j=0; j<4; ++j)
        point[j]=(restPosition)[t[j]];
    /// compute 6 times the rest volume
    volume=dot(cross(point[1]-point[0],point[2]-point[0]),point[0]-point[3]);
    /// store the rest volume
    my_tinfo.restVolume=volume/6;
    mu*=fabs(volume)/6;
    lambda*=fabs(volume)/6;

    // store shape vectors at the rest configuration
    for(j=0; j<4; ++j)
    {
        if ((j%2)==0)
            my_tinfo.shapeVector[j]=cross(point[(j+2)%4] - point[(j+1)%4],point[(j+3)%4] - point[(j+1)%4])/volume;
        else
            my_tinfo.shapeVector[j]= -cross(point[(j+2)%4] - point[(j+1)%4],point[(j+3)%4] - point[(j+1)%4])/volume;
    }

    /// compute the vertex stiffness of the linear elastic material, needed for addKToMatrix
    for(j=0; j<4; ++j)
    {
        // the linear stiffness matrix using shape vectors and Lame coefficients
        val=mu*dot(my_tinfo.shapeVector[j],my_tinfo.shapeVector[j]);
        for(m=0; m<3; ++m)
        {
            for(n=m; n<3; ++n)
            {
                my_tinfo.linearDfDxDiag[j][m][n]=lambda*my_tinfo.shapeVector[j][n]*my_tinfo.shapeVector[j][m]+
                        mu*my_tinfo.shapeVector[j][n]*my_tinfo.shapeVector[j][m];

                if (m==n)
                {
                    my_tinfo.linearDfDxDiag[j][m][m]+=Real(val);
                } else
                    my_tinfo.linearDfDxDiag[j][n][m]=my_tinfo.linearDfDxDiag[j][m][n];
            }
        }
    }

    /// compute the edge stiffness of the linear elastic material
    for(j=0; j<6; ++j)
    {
        core::topology::BaseMeshTopology::Edge e=this->m_topology->getLocalEdgesInTetrahedron(j);
        k=e[0];
        l=e[1];

        // store the rest edge vector
        my_tinfo.restEdgeVector[j]=point[l]-point[k];

        // the linear stiffness matrix using shape vectors and Lame coefficients
        val=mu*dot(my_tinfo.shapeVector[l],my_tinfo.shapeVector[k]);
        for(m=0; m<3; ++m)
        {
            for(n=0; n<3; ++n)
            {
                my_tinfo.linearDfDx[j][m][n]=lambda*my_tinfo.shapeVector[k][n]*my_tinfo.shapeVector[l][m]+
                        mu*my_tinfo.shapeVector[l][n]*my_tinfo.shapeVector[k][m];

                if (m==n)
                {
                    my_tinfo.linearDfDx[j][m][m]+=Real(val);
                }
            }
        }
    }
    if (m_decompositionMethod ==QR_DECOMPOSITION) {
        // compute the rotation matrix of the initial tetrahedron for the QR decomposition
        computeQRRotation(my_tinfo.restRotation,my_tinfo.restEdgeVector);
    } else 	if (m_decompositionMethod ==POLAR_DECOMPOSITION_MODIFIED) {
        Mat3x3NoInit Transformation;
        Transformation[0]=point[1]-point[0];
        Transformation[1]=point[2]-point[0];
        Transformation[2]=point[3]-point[0];
        helper::Decompose<Real>::polarDecomposition( Transformation, my_tinfo.restRotation );
    }
}

template <class DataTypes> 
FastTetrahedralCorotationalForceField<DataTypes>::FastTetrahedralCorotationalForceField()
    : pointInfo(initData(&pointInfo, "pointInfo", "Internal point data"))
    , edgeInfo(initData(&edgeInfo, "edgeInfo", "Internal edge data"))
    , tetrahedronInfo(initData(&tetrahedronInfo, "tetrahedronInfo", "Internal tetrahedron data"))
    , _initialPoints(0)
    , f_method(initData(&f_method,std::string("qr"),"method"," method for rotation computation :\"qr\" (by QR) or \"polar\" or \"polar2\" or \"none\" (Linear elastic) "))
    , f_poissonRatio(initData(&f_poissonRatio,Real(0.3),"poissonRatio","Poisson ratio in Hooke's law"))
    , f_youngModulus(initData(&f_youngModulus,Real(1000.),"youngModulus","Young modulus in Hooke's law"))
    , lambda(0)
    , mu(0)
    , f_drawing(initData(&f_drawing, true, "drawing", " draw the forcefield if true"))
    , drawColor1(initData(&drawColor1, sofa::type::RGBAColor(0.0f, 0.0f, 1.0f, 1.0f), "drawColor1", " draw color for faces 1"))
    , drawColor2(initData(&drawColor2, sofa::type::RGBAColor(0.0f, 0.5f, 1.0f, 1.0f), "drawColor2", " draw color for faces 2"))
    , drawColor3(initData(&drawColor3, sofa::type::RGBAColor(0.0f, 1.0f, 1.0f, 1.0f), "drawColor3", " draw color for faces 3"))
    , drawColor4(initData(&drawColor4, sofa::type::RGBAColor(0.5f, 1.0f, 1.0f, 1.0f), "drawColor4", " draw color for faces 4"))
    , l_topology(initLink("topology", "link to the topology container"))
    , m_topology(nullptr)
    , updateMatrix(true)
{
    f_poissonRatio.setRequired(true);
    f_youngModulus.setRequired(true);
}

template <class DataTypes> 
FastTetrahedralCorotationalForceField<DataTypes>::~FastTetrahedralCorotationalForceField()
{

}

template <class DataTypes> 
void FastTetrahedralCorotationalForceField<DataTypes>::init()
{
    this->Inherited::init();

    if (l_topology.empty())
    {
        msg_info() << "link to Topology container should be set to ensure right behavior. First Topology found in current context will be used.";
        l_topology.set(this->getContext()->getMeshTopologyLink());
    }

    m_topology = l_topology.get();
    msg_info() << "Topology path used: '" << l_topology.getLinkedPath() << "'";

    if (m_topology == nullptr)
    {
        msg_error() << "No topology component found at path: " << l_topology.getLinkedPath() << ", nor in current context: " << this->getContext()->name;
        sofa::core::objectmodel::BaseObject::d_componentState.setValue(sofa::core::objectmodel::ComponentState::Invalid);
        return;
    }

    if (m_topology->getNbTetrahedra() == 0)
    {
        msg_warning() << "No tetrahedra found in linked Topology.";
    }

    updateLameCoefficients();

    const std::string& method = f_method.getValue();
    if (method == "polar")
        m_decompositionMethod = POLAR_DECOMPOSITION;
     else if ((method == "qr") || (method == "large"))
        m_decompositionMethod = QR_DECOMPOSITION;
    else if (method == "polar2")
        m_decompositionMethod = POLAR_DECOMPOSITION_MODIFIED;
     else if ((method == "none") || (method == "linear"))
        m_decompositionMethod = LINEAR_ELASTIC;
    else
    {
        msg_error() << "cannot recognize method " << method << ". Must be either qr, polar, polar2 or none";
    }

    /// prepare to store info in the edge array
    helper::WriteOnlyAccessor< Data< VecMat3x3 > > edgeInf = edgeInfo;
    edgeInf.resize(m_topology->getNbEdges());
    edgeInfo.createTopologyHandler(m_topology);

    /// prepare to store info in the point array
    helper::WriteOnlyAccessor< Data< VecMat3x3 > > pointInf = pointInfo;
    pointInf.resize(m_topology->getNbPoints());
    pointInfo.createTopologyHandler(m_topology);

    if (_initialPoints.size() == 0)
    {
        // get restPosition
        const VecCoord& p = this->mstate->read(core::ConstVecCoordId::restPosition())->getValue();
        _initialPoints=p;
    }


    /// initialize the data structure associated with each tetrahedron
    helper::WriteOnlyAccessor< Data< VecTetrahedronRestInformation > > tetrahedronInf = tetrahedronInfo;
    tetrahedronInf.resize(m_topology->getNbTetrahedra());
    
    for (Index i=0; i<m_topology->getNbTetrahedra(); ++i)
    {
        createTetrahedronRestInformation(i,tetrahedronInf[i],m_topology->getTetrahedron(i),
                (const type::vector< Index > )0,
                (const type::vector< SReal >)0);
    }

    /// set the call back function upon creation of a tetrahedron
    tetrahedronInfo.createTopologyHandler(m_topology);
    tetrahedronInfo.setCreationCallback([this](Index tetrahedronIndex, TetrahedronRestInformation& tetraInfo,
        const core::topology::BaseMeshTopology::Tetrahedron& tetra,
        const sofa::type::vector< Index >& ancestors,
        const sofa::type::vector< SReal >& coefs)
    {
        createTetrahedronRestInformation(tetrahedronIndex, tetraInfo, tetra, ancestors, coefs);
    });

    updateTopologyInformation();

    // init extra data storage
    m_data.reinit(this);
}


template <class DataTypes>
void FastTetrahedralCorotationalForceField<DataTypes>::updateTopologyInformation()
{
    sofa::Size nbTetrahedra=m_topology->getNbTetrahedra();

    helper::WriteOnlyAccessor< Data< VecTetrahedronRestInformation > > tetrahedronInf = tetrahedronInfo;

    for(Index i=0; i<nbTetrahedra; i++ )
    {
        TetrahedronRestInformation& tetinfo = tetrahedronInf[i];
        /// describe the jth edge index of triangle no i
        const core::topology::BaseMeshTopology::EdgesInTetrahedron &tea= m_topology->getEdgesInTetrahedron(i);
        /// describe the jth vertex index of triangle no i
        const core::topology::BaseMeshTopology::Tetrahedron &ta= m_topology->getTetrahedron(i);

        for (unsigned int j=0; j<6; ++j)
        {
            /// store the information about the orientation of the edge : 1 if the edge orientation matches the orientation in getLocalEdgesInTetrahedron
            /// ie edgesInTetrahedronArray[6][2] = {{0,1}, {0,2}, {0,3}, {1,2}, {1,3}, {2,3}};
            if (ta[m_topology->getLocalEdgesInTetrahedron(j)[0]] == m_topology->getEdge(tea[j])[0])
                tetinfo.edgeOrientation[j] = 1;
            else
                tetinfo.edgeOrientation[j]= -1;
        }
    }    
}

template<class DataTypes>
void FastTetrahedralCorotationalForceField<DataTypes>::computeQRRotation( Mat3x3 &r, const Coord *dp)
{
    // first vector on first edge
    // second vector in the plane of the two first edges
    // third vector orthogonal to first and second

    const Coord edgex = dp[0].normalized();
          Coord edgey = dp[1];
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
}

template <class DataTypes>
void FastTetrahedralCorotationalForceField<DataTypes>::addForce(const sofa::core::MechanicalParams* /*mparams*/, DataVecDeriv &  dataF, const DataVecCoord &  dataX , const DataVecDeriv & /*dataV*/ )
{
    VecDeriv& f        = *(dataF.beginEdit());
    const VecCoord& x  =   dataX.getValue()  ;


    unsigned int j,k,l;
    int nbTetrahedra=m_topology->getNbTetrahedra();
    int i;

    helper::WriteOnlyAccessor< Data< VecTetrahedronRestInformation > > tetrahedronInf = tetrahedronInfo;


    Coord displ[6],sv;
    Mat3x3NoInit deformationGradient,S,R;
    const auto& tetrahedra = m_topology->getTetrahedra();

    Coord tetraVertex[4];
    for(i=0; i<nbTetrahedra; i++ )
    {
        TetrahedronRestInformation& tetraInfo = tetrahedronInf[i];
        const core::topology::BaseMeshTopology::Tetrahedron &tetra = tetrahedra[i];
        
        for (int j = 0; j < 4; ++j)
            tetraVertex[j] = x[tetra[j]];

        // compute current tetrahedron displacement
        for (j=0; j<6; ++j)
        {
            displ[j] = tetraVertex[edgesInTetrahedronArray[j][1]] - tetraVertex[edgesInTetrahedronArray[j][0]];
        }

        if (m_decompositionMethod == POLAR_DECOMPOSITION)
        {
            // compute the deformation gradient
            // deformation gradient = sum of tensor product between vertex position and shape vector
            // optimize by using displacement with first vertex
            sv= tetraInfo.shapeVector[1];
            for (k=0; k<3; ++k)
            {
                for (l=0; l<3; ++l)
                {
                    deformationGradient[k][l]= displ[0][k]*sv[l];
                }
            }
            for (j=1; j<3; ++j)
            {
                sv= tetraInfo.shapeVector[j+1];
                for (k=0; k<3; ++k)
                {
                    for (l=0; l<3; ++l)
                    {
                        deformationGradient[k][l]+= displ[j][k]*sv[l];
                    }
                }
            }
            // polar decomposition of the transformation
            helper::Decompose<Real>::polarDecomposition(deformationGradient,R);
        }
        else if (m_decompositionMethod == QR_DECOMPOSITION)
        {
            /// perform QR decomposition
            computeQRRotation(S, displ);
            R=S.multTranspose(tetraInfo.restRotation);
        } 
        else if (m_decompositionMethod == POLAR_DECOMPOSITION_MODIFIED) 
        {
            S[0]= displ[0];
            S[1]= displ[1];
            S[2]= displ[2];
            helper::Decompose<Real>::polarDecomposition( S, R );
            R=R.transposed()*tetraInfo.restRotation;
        }  
        else if (m_decompositionMethod == LINEAR_ELASTIC) 
        {
            R.identity();
        }
        // store transpose of rotation
        tetraInfo.rotation=R.transposed();
        Coord force[4];


        for (j=0; j<6; ++j)
        {
            // displacement in the rest configuration
            displ[j]=tetraInfo.rotation* displ[j]-tetraInfo.restEdgeVector[j];

            // force on first vertex in the rest configuration
            force[edgesInTetrahedronArray[j][1]]+=tetraInfo.linearDfDx[j]* displ[j];

            // force on second vertex in the rest configuration
            force[edgesInTetrahedronArray[j][0]]-=tetraInfo.linearDfDx[j].multTranspose(displ[j]);
        }
        for (j=0; j<4; ++j)
        {
            f[tetra[j]]+=R*force[j];
        }
    }

    updateMatrix=true; // next time assemble the matrix

    dataF.endEdit();
}


template <class DataTypes>
void FastTetrahedralCorotationalForceField<DataTypes>::addDForce(const sofa::core::MechanicalParams* mparams, DataVecDeriv&   datadF , const DataVecDeriv&   datadX )
{
    dmsg_info() << "[" << this->getName() << "]: calling addDForce " ;
    VecDeriv& df       = *(datadF.beginEdit());
    const VecCoord& dx =   datadX.getValue()  ;
    Real kFactor = (Real)sofa::core::mechanicalparams::kFactorIncludingRayleighDamping(mparams, this->rayleighStiffness.getValue());

    unsigned int j;
    int i;
    int nbEdges=m_topology->getNbEdges();

    if (updateMatrix==true)
    {
        // the matrix must be stored in edges
        helper::WriteOnlyAccessor< Data< VecTetrahedronRestInformation > > tetrahedronInf = tetrahedronInfo;
        helper::WriteOnlyAccessor< Data< VecMat3x3 > > edgeDfDx = edgeInfo;

        int nbTetrahedra=m_topology->getNbTetrahedra();
        Mat3x3NoInit tmp;

        updateMatrix=false;

        // reset all edge matrices
        for(unsigned int j=0; j<edgeDfDx.size(); j++)
        {
            edgeDfDx[j].clear();
        }

        for(i=0; i<nbTetrahedra; i++ )
        {
            TetrahedronRestInformation& tetinfo = tetrahedronInf[i];
            const core::topology::BaseMeshTopology::EdgesInTetrahedron &tea = m_topology->getEdgesInTetrahedron(i);

            for (j=0; j<6; ++j)
            {
                unsigned int edgeID = tea[j];

                // test if the tetrahedron edge has the same orientation as the global edge
                tmp=tetinfo.linearDfDx[j]*tetinfo.rotation;

                if (tetinfo.edgeOrientation[j]==1)
                {
                    // store the two edge matrices since the stiffness matrix is not symmetric
                    edgeDfDx[edgeID] += tetinfo.rotation.multTranspose(tmp);
                }
                else
                {
                    edgeDfDx[edgeID] += tmp.multTranspose(tetinfo.rotation);
                }
            }
        }
    }

    const VecMat3x3& edgeDfDx = edgeInfo.getValue();
    Coord deltax;

    const auto& edges = m_topology->getEdges();
    // use the already stored matrix
    for (i = 0; i < nbEdges; i++)
    {
        const core::topology::BaseMeshTopology::Edge& edge = edges[i];

        deltax = (dx[edge[1]] - dx[edge[0]]) * kFactor;
        df[edge[1]] += edgeDfDx[i] * deltax;
        df[edge[0]] -= edgeDfDx[i].multTranspose(deltax);
    }

    datadF.endEdit();
}

template<class DataTypes>
void FastTetrahedralCorotationalForceField<DataTypes>::addKToMatrix(const core::MechanicalParams* mparams, const sofa::core::behavior::MultiMatrixAccessor* matrix )
{
    sofa::core::behavior::MultiMatrixAccessor::MatrixRef r = matrix->getMatrix(this->mstate);
    if (r)
        addKToMatrix(r.matrix, sofa::core::mechanicalparams::kFactorIncludingRayleighDamping(mparams, this->rayleighStiffness.getValue()), r.offset);
    else
        msg_error() << "addKToMatrix found no valid matrix accessor.";
}


template<class DataTypes>
void FastTetrahedralCorotationalForceField<DataTypes>::addKToMatrix(sofa::linearalgebra::BaseMatrix *mat, SReal kFactor, unsigned int &offset)
{
    dmsg_info() << "[" << this->getName() << "]: calling addKToMatrix " ;

    unsigned int j;
    int i, matCol, matRow;
    int nbEdges=m_topology->getNbEdges();
    int nbPoints=m_topology->getNbPoints();
    int nbTetrahedra=m_topology->getNbTetrahedra();

    helper::WriteOnlyAccessor< Data< VecTetrahedronRestInformation > > tetrahedronInf = tetrahedronInfo;
    helper::WriteOnlyAccessor< Data< VecMat3x3 > > edgeDfDx = edgeInfo;
    helper::WriteOnlyAccessor< Data< VecMat3x3 > > pointDfDx = pointInfo;

    Mat3x3NoInit tmp;
    if (updateMatrix==true) {
        /// if not done in addDForce: update off-diagonal blocks ("edges") of each element matrix
        updateMatrix=false;
        // reset all edge matrices
        for(j=0; j<edgeDfDx.size(); j++)
        {
            edgeDfDx[j].clear();
        }

        for(i=0; i<nbTetrahedra; i++ )
        {
            TetrahedronRestInformation& tetinfo = tetrahedronInf[i];
            const core::topology::BaseMeshTopology::EdgesInTetrahedron &tea = m_topology->getEdgesInTetrahedron(i);

            for (j=0; j<6; ++j)
            {
                unsigned int edgeID = tea[j];

                // test if the tetrahedron edge has the same orientation as the global edge
                tmp=tetinfo.linearDfDx[j]*tetinfo.rotation;

                if (tetinfo.edgeOrientation[j]==1) {
                    // store the two edge matrices since the stiffness sub-matrix is not symmetric
                    edgeDfDx[edgeID] += tetinfo.rotation.transposed()*tmp;
                }
                else {
                    edgeDfDx[edgeID] += tmp.transposed()*tetinfo.rotation;
                }

            }
        }
    }

    /// must update point data since these are not computed in addDForce
    for (j=0; j < pointDfDx.size(); j++)
        pointDfDx[j].clear();

    for(i=0; i<nbTetrahedra; i++ ) {
        TetrahedronRestInformation& tetinfo = tetrahedronInf[i];
        const core::topology::BaseMeshTopology::Tetrahedron& t = m_topology->getTetrahedron(i);

        for (j = 0; j < 4; ++j) {
            unsigned int Id = t[j];
            
            tmp = tetinfo.rotation.transposed() * tetinfo.linearDfDxDiag[j] * tetinfo.rotation;
            pointDfDx[Id] += tmp;
        }
    }

    /// construct the diagonal blocks from point data
    for (i=0; i<nbPoints; i++) {
        tmp = pointDfDx[i];

        for (int m = 0; m < 3; m++) {
            matRow = offset + 3*i + m;
            for (int n = 0; n < 3; n++) {
                matCol = offset + 3*i + n;
                mat->add(matRow, matCol, -kFactor*tmp[m][n]);
            }
        }
    }

    /// construct the off-diagonal blocks from edge data
    for(i=0; i<nbEdges; i++ )
    {
        tmp = edgeDfDx[i];

        const core::topology::BaseMeshTopology::Edge& edge = m_topology->getEdge(i);

        for (int m = 0; m < 3; m++) {
            matRow = offset + 3*edge[0] + m;
            for (int n = 0; n < 3; n++) {
                matCol = offset + 3*edge[1] + n;
                mat->add(matRow, matCol, -kFactor*tmp[n][m]);
                mat->add(matCol, matRow, -kFactor*tmp[n][m]);

            }
        }
    }

}

template<class DataTypes>
void FastTetrahedralCorotationalForceField<DataTypes>::updateLameCoefficients()
{
    lambda= f_youngModulus.getValue()*f_poissonRatio.getValue()/((1-2*f_poissonRatio.getValue())*(1+f_poissonRatio.getValue()));
    mu = f_youngModulus.getValue()/(2*(1+f_poissonRatio.getValue()));

}


template<class DataTypes>
void FastTetrahedralCorotationalForceField<DataTypes>::draw(const core::visual::VisualParams* vparams)
{
    if (!vparams->displayFlags().getShowForceFields()) return;
    if (!this->mstate) return;
    if (!f_drawing.getValue()) return;

    const auto stateLifeCycle = vparams->drawTool()->makeStateLifeCycle();

    const VecCoord& x = this->mstate->read(core::ConstVecCoordId::position())->getValue();

    if (vparams->displayFlags().getShowWireFrame())
        vparams->drawTool()->setPolygonMode(0, true);


    std::vector< type::Vec3 > points[4];
    for (size_t i = 0; i<m_topology->getNbTetrahedra(); ++i)
    {
        const core::topology::BaseMeshTopology::Tetrahedron t = m_topology->getTetrahedron(i);

        Index a = t[0];
        Index b = t[1];
        Index c = t[2];
        Index d = t[3];
        Coord center = (x[a] + x[b] + x[c] + x[d])*0.125;
        Coord pa = (x[a] + center)*(Real)0.666667;
        Coord pb = (x[b] + center)*(Real)0.666667;
        Coord pc = (x[c] + center)*(Real)0.666667;
        Coord pd = (x[d] + center)*(Real)0.666667;

        // 		glColor4f(0,0,1,1);
        points[0].push_back(pa);
        points[0].push_back(pb);
        points[0].push_back(pc);

        // 		glColor4f(0,0.5,1,1);
        points[1].push_back(pb);
        points[1].push_back(pc);
        points[1].push_back(pd);

        // 		glColor4f(0,1,1,1);
        points[2].push_back(pc);
        points[2].push_back(pd);
        points[2].push_back(pa);

        // 		glColor4f(0.5,1,1,1);
        points[3].push_back(pd);
        points[3].push_back(pa);
        points[3].push_back(pb);
    }

    vparams->drawTool()->drawTriangles(points[0], drawColor1.getValue());
    vparams->drawTool()->drawTriangles(points[1], drawColor2.getValue());
    vparams->drawTool()->drawTriangles(points[2], drawColor3.getValue());
    vparams->drawTool()->drawTriangles(points[3], drawColor4.getValue());

    if (vparams->displayFlags().getShowWireFrame())
        vparams->drawTool()->setPolygonMode(0, false);



}

} // namespace sofa::component::solidmechanics::fem::elastic
