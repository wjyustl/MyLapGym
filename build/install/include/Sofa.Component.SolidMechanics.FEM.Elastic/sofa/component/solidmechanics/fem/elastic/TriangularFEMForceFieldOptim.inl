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
#include <sofa/component/solidmechanics/fem/elastic/TriangularFEMForceFieldOptim.h>
#include <sofa/core/behavior/BlocMatrixWriter.h>
#include <sofa/core/visual/VisualParams.h>
#include <sofa/core/topology/TopologyData.inl>
#include <limits>


namespace sofa::component::solidmechanics::fem::elastic
{

// --------------------------------------------------------------------------------------
// --- constructor
// --------------------------------------------------------------------------------------
template <class DataTypes>
TriangularFEMForceFieldOptim<DataTypes>::TriangularFEMForceFieldOptim()
    : d_triangleInfo(initData(&d_triangleInfo, "triangleInfo", "Internal triangle data (persistent)"))
    , d_triangleState(initData(&d_triangleState, "triangleState", "Internal triangle data (time-dependent)"))
    , d_poisson(initData(&d_poisson,(Real)(0.3),"poissonRatio","Poisson ratio in Hooke's law"))
    , d_young(initData(&d_young,(Real)(1000.0),"youngModulus","Young modulus in Hooke's law"))
    , d_damping(initData(&d_damping,(Real)0.,"damping","Ratio damping/stiffness"))
    , d_restScale(initData(&d_restScale,(Real)1.,"restScale","Scale factor applied to rest positions (to simulate pre-stretched materials)"))
    , d_showStressVector(initData(&d_showStressVector,false,"showStressVector","Flag activating rendering of stress directions within each triangle"))
    , d_showStressMaxValue(initData(&d_showStressMaxValue,(Real)0.0,"showStressMaxValue","Max value for rendering of stress values"))
    , l_topology(initLink("topology", "link to the topology container"))
    , drawPrevMaxStress((Real)-1.0)
    , m_topology(nullptr)
{
    d_poisson.setRequired(true);
    d_young.setRequired(true);
}


template <class DataTypes>
TriangularFEMForceFieldOptim<DataTypes>::~TriangularFEMForceFieldOptim()
{

}


// --------------------------------------------------------------------------------------
// --- Initialization stage
// --------------------------------------------------------------------------------------
template <class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::init()
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

    // Create specific handler for TriangleData
    d_triangleInfo.createTopologyHandler(m_topology);
    d_triangleInfo.setCreationCallback([this](Index triangleIndex, TriangleInfo& ti,
        const core::topology::BaseMeshTopology::Triangle& t,
        const sofa::type::vector< Index >& ancestors,
        const sofa::type::vector< SReal >& coefs)
    {
        createTriangleInfo(triangleIndex, ti, t, ancestors, coefs);
    });

    d_triangleState.createTopologyHandler(m_topology);
    d_triangleState.setCreationCallback([this](Index triangleIndex, TriangleState& ti,
        const core::topology::BaseMeshTopology::Triangle& t,
        const sofa::type::vector< Index >& ancestors,
        const sofa::type::vector< SReal >& coefs)
    {
        createTriangleState(triangleIndex, ti, t, ancestors, coefs);
    });

    if (m_topology->getNbTriangles() == 0)
    {
        msg_warning() << "No triangles found in linked Topology.";
        if (m_topology->getNbQuads() != 0)
        {
            msg_warning() << "The topology only contains quads while this forcefield only supports triangles." << msgendl;
        }
    }

    reinit();
}

template <class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::parse( sofa::core::objectmodel::BaseObjectDescription* arg )
{
    const char* method = arg->getAttribute("method");
    if (method && *method && std::string(method) != std::string("large"))
    {
        msg_warning() << "Attribute method was specified as \""<<method<<"\" while this version only implements the \"large\" method. Ignoring...";
    }
    Inherited::parse(arg);
}

// --------------------------------------------------------------------------------------
// --- Compute the initial info of the triangles
// --------------------------------------------------------------------------------------
template<class DataTypes>
inline void TriangularFEMForceFieldOptim<DataTypes>::computeTriangleRotation(Transformation& result, Coord eab, Coord eac)
{
    result[0] = eab;
    Coord n = eab.cross(eac);
    result[1] = n.cross(eab);
    result[0].normalize();
    result[1].normalize();
}
template <class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::initTriangleInfo(Index i, TriangleInfo& ti, const Triangle t, const VecCoord& x0)
{
    if (t[0] >= x0.size() || t[1] >= x0.size() || t[2] >= x0.size())
    {
        msg_error() << "INVALID point index >= " << x0.size() << " in triangle " << i << " : " << t
            << " | nb points: " << m_topology->getNbPoints()
            << " | nb triangles: " << m_topology->getNbTriangles() << msgendl;

        return;
    }
    Coord a  = x0[t[0]];
    Coord ab = x0[t[1]]-a;
    Coord ac = x0[t[2]]-a;
    if (this->d_restScale.isSet())
    {
        const Real restScale = this->d_restScale.getValue();
        ab *= restScale;
        ac *= restScale;
    }
    // equivalent to computeRotationLarge but in 2D == do not store the ortogonal vector are framex ^ framey
    computeTriangleRotation(ti.init_frame, ab, ac);

    // compute initial position in local space A[0, 0] B[x, 0] C[x, y]
    ti.bx = ti.init_frame[0] * ab;
    ti.cx = ti.init_frame[0] * ac;
    ti.cy = ti.init_frame[1] * ac;
    ti.ss_factor = ((Real)0.5)/(ti.bx*ti.cy);
}

template <class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::initTriangleState(Index i, TriangleState& ts, const Triangle t, const VecCoord& x)
{
    if (t[0] >= x.size() || t[1] >= x.size() || t[2] >= x.size())
    {
        msg_error() << "INVALID point index >= " << x.size() << " in triangle " << i << " : " << t
            << " | nb points: " << m_topology->getNbPoints()
            << " | nb triangles: " << m_topology->getNbTriangles() << msgendl;

        return;
    }
    Coord a  = x[t[0]];
    Coord ab = x[t[1]]-a;
    Coord ac = x[t[2]]-a;
    computeTriangleRotation(ts.frame, ab, ac);

    ts.stress.clear();
}


// --------------------------------------------------------------------------------------
// ---  Topology Creation/Destruction functions
// --------------------------------------------------------------------------------------

template< class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::createTriangleInfo(Index triangleIndex, TriangleInfo& ti, const Triangle& t, const sofa::type::vector<Index>&, const sofa::type::vector<SReal>&)
{
    initTriangleInfo(triangleIndex, ti, t, this->mstate->read(core::ConstVecCoordId::restPosition())->getValue());
}

template< class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::createTriangleState(Index triangleIndex, TriangleState& ti, const Triangle& t, const sofa::type::vector<Index>&, const sofa::type::vector<SReal>&)
{
    initTriangleState(triangleIndex, ti, t, this->mstate->read(core::ConstVecCoordId::position())->getValue());
}

// --------------------------------------------------------------------------------------
// --- Re-initialization (called when we change a parameter through the GUI)
// --------------------------------------------------------------------------------------
template <class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::reinit()
{
    // Compute material-dependent constants
    // mu = (1-p)*y/(1-p^2) = (1-p)*y/((1-p)(1+p)) = y/(1+p)
    const Real youngModulus = d_young.getValue();
    const Real poissonRatio = d_poisson.getValue();
    mu = (youngModulus) / (1+poissonRatio);
    gamma = (youngModulus * poissonRatio) / (1-poissonRatio*poissonRatio);

    /// prepare to store info in the triangle array
    const unsigned int nbTriangles = m_topology->getNbTriangles();
    const VecElement& triangles = m_topology->getTriangles();
    const  VecCoord& x = this->mstate->read(core::ConstVecCoordId::position())->getValue();
    const  VecCoord& x0 = this->mstate->read(core::ConstVecCoordId::restPosition())->getValue();
    VecTriangleInfo& triangleInf = *(d_triangleInfo.beginEdit());
    VecTriangleState& triangleSta = *(d_triangleState.beginEdit());
    triangleInf.resize(nbTriangles);
    triangleSta.resize(nbTriangles);

    for (unsigned int i=0; i<nbTriangles; ++i)
    {
        initTriangleInfo(i, triangleInf[i], triangles[i], x0);
        initTriangleState(i, triangleSta[i], triangles[i], x);
    }
    d_triangleInfo.endEdit();
    d_triangleState.endEdit();

    data.reinit(this);
}



template <class DataTypes>
SReal TriangularFEMForceFieldOptim<DataTypes>::getPotentialEnergy(const core::MechanicalParams* /* mparams */, const DataVecCoord& /* x */) const
{
    msg_warning()<<"TriangularFEMForceFieldOptim::getPotentialEnergy-not-implemented !!!"<<msgendl;
    return 0;
}


// --------------------------------------------------------------------------------------
// --- AddForce and AddDForce methods
// --------------------------------------------------------------------------------------
template <class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::addForce(const core::MechanicalParams* /* mparams */, DataVecDeriv& d_f, const DataVecCoord& d_x, const DataVecDeriv& /* d_v */)
{
    sofa::helper::WriteAccessor< core::objectmodel::Data< VecDeriv > > f = d_f;
    sofa::helper::ReadAccessor< core::objectmodel::Data< VecCoord > > x = d_x;
    sofa::helper::WriteAccessor< core::objectmodel::Data< VecTriangleState > > triState = d_triangleState;
    sofa::helper::ReadAccessor< core::objectmodel::Data< VecTriangleInfo > > triInfo = d_triangleInfo;

    const unsigned int nbTriangles = m_topology->getNbTriangles();
    const VecElement& triangles = m_topology->getTriangles();
    const Real gamma = this->gamma;
    const Real mu = this->mu;

    f.resize(x.size());

    for ( Index i=0; i<nbTriangles; i+=1)
    {
        Triangle t = triangles[i];
        const TriangleInfo& ti = triInfo[i];
        TriangleState& ts = triState[i];
        Coord a = x[t[0]];
        Coord ab = x[t[1]] -a;
        Coord ac = x[t[2]] -a;

        computeTriangleRotation(ts.frame, ab, ac);

        // Displacement in local space (rest pos - current pos), dby == 0
        Real dbx = ti.bx - ts.frame[0] * ab;
        Real dcx = ti.cx - ts.frame[0] * ac;
        Real dcy = ti.cy - ts.frame[1] * ac;

        /// Full StrainDisplacement matrix.
        // | beta1  0       beta2  0        beta3  0      |
        // | 0      gamma1  0      gamma2   0      gamma3 | / (2 * A)
        // | gamma1 beta1   gamma2 beta2    gamma3 beta3 |

        // As no displacement for Pa nor in Pb[y], Beta1, gamma1 and beta3 are not considered. Therefor we obtain:
        // | beta2  0        beta3  0      |
        // | 0      gamma2   0      gamma3 | / (2 * A)
        // | gamma2 beta2    gamma3 beta3 |

        // |   cy     0     0      0   |
        // |   0     -cx    0      bx  |
        // |  -cx     cy    bx     0   |

        // Directly apply division by determinant(Area = det * 0.5 in local space; det = bx * cy)
        // |   1/bx        0        0        0   |
        // |   0       -cx/(bx*cy)  0       1/cy |
        // | -cx/(bx*cy)  1/bx     1/cy      0   |

        // StrainDisplacement:
        // beta2 = ti.cy;
        // gamma2 = -ti.cx;
        // gamma3 = ti.bx;

        // Strain = StrainDisplacement * Displacement
        type::Vec<3,Real> strain (
            ti.cy * dbx,                   // ( cy,   0,  0,  0) * (dbx, dby(0), dcx, dcy)
            ti.bx * dcy,                   // (  0, -cx,  0, bx) * (dbx, dby(0), dcx, dcy)
            ti.bx * dcx - ti.cx * dbx);    // ( -cx, cy, bx,  0) * (dbx, dby(0), dcx, dcy)

        // Stress = K * Strain
        Real gammaXY = gamma * (strain[0] + strain[1]);
        type::Vec<3,Real> stress (
            mu*strain[0] + gammaXY,      // (gamma+mu, gamma   ,    0) * strain
            mu*strain[1] + gammaXY,      // (gamma   , gamma+mu,    0) * strain
            (Real)(0.5)*mu*strain[2]);   // (       0,        0, mu/2) * strain

        stress *= ti.ss_factor;

        Deriv fb = ts.frame[0] * (ti.cy * stress[0] - ti.cx * stress[2])  // (cy,   0, -cx) * stress
                + ts.frame[1] * (ti.cy * stress[2] - ti.cx * stress[1]);  // ( 0, -cx,  cy) * stress
        Deriv fc = ts.frame[0] * (ti.bx * stress[2])                      // ( 0,   0,  bx) * stress
                + ts.frame[1] * (ti.bx * stress[1]);                      // ( 0,  bx,   0) * stress
        Deriv fa = -fb-fc;

        f[t[0]] += fa;
        f[t[1]] += fb;
        f[t[2]] += fc;

        // store data for re-use
        ts.stress = stress;
    }
}

// --------------------------------------------------------------------------------------
// ---
// --------------------------------------------------------------------------------------
template <class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::addDForce(const core::MechanicalParams* mparams, DataVecDeriv& d_df, const DataVecDeriv& d_dx)
{
    sofa::helper::WriteAccessor< core::objectmodel::Data< VecDeriv > > df = d_df;
    sofa::helper::ReadAccessor< core::objectmodel::Data< VecCoord > > dx = d_dx;
    sofa::helper::ReadAccessor< core::objectmodel::Data< VecTriangleState > > triState = d_triangleState;
    sofa::helper::ReadAccessor< core::objectmodel::Data< VecTriangleInfo > > triInfo = d_triangleInfo;

    const unsigned int nbTriangles = m_topology->getNbTriangles();
    const VecElement& triangles = m_topology->getTriangles();
    const Real gamma = this->gamma;
    const Real mu = this->mu;
    const Real kFactor = (Real)sofa::core::mechanicalparams::kFactorIncludingRayleighDamping(mparams, this->rayleighStiffness.getValue());

    df.resize(dx.size());

    for ( Index i=0; i<nbTriangles; i+=1)
    {
        Triangle t = triangles[i];
        const TriangleInfo& ti = triInfo[i];
        const TriangleState& ts = triState[i];
        Deriv da  = dx[t[0]];
        Deriv dab = dx[t[1]]-da;
        Deriv dac = dx[t[2]]-da;

        Real dbx = ts.frame[0]*dab;
        Real dby = ts.frame[1]*dab;
        Real dcx = ts.frame[0]*dac;
        Real dcy = ts.frame[1]*dac;

        // Strain = StrainDisplacement * Displacement
        type::Vec<3, Real> dstrain(
            ti.cy * dbx,                                // ( cy,   0,  0,  0) * (dbx, dby, dcx, dcy)
            ti.bx * dcy - ti.cx * dby,                  // (  0, -cx,  0, bx) * (dbx, dby, dcx, dcy)
            ti.bx * dcx - ti.cx * dbx + ti.cy * dby);   // ( -cx, cy, bx,  0) * (dbx, dby, dcx, dcy)


        // Stress = K * Strain
        Real gammaXY = gamma*(dstrain[0]+dstrain[1]);
        type::Vec<3,Real> dstress (
            mu*dstrain[0] + gammaXY,        // (gamma+mu, gamma   ,    0) * dstrain
            mu*dstrain[1] + gammaXY,        // (gamma   , gamma+mu,    0) * dstrain
            (Real)(0.5)*mu*dstrain[2]);     // (       0,        0, mu/2) * dstrain

        dstress *= ti.ss_factor * kFactor;
        Deriv dfb = ts.frame[0] * (ti.cy * dstress[0] - ti.cx * dstress[2])  // (cy,   0, -cx) * stress
            + ts.frame[1] * (ti.cy * dstress[2] - ti.cx * dstress[1]);       // ( 0, -cx,  cy) * stress
        Deriv dfc = ts.frame[0] * (ti.bx * dstress[2])                       // ( 0,   0,  bx) * stress
            + ts.frame[1] * (ti.bx * dstress[1]);                            // ( 0,  bx,   0) * stress
        Deriv dfa = -dfb - dfc;

        df[t[0]] -= dfa;
        df[t[1]] -= dfb;
        df[t[2]] -= dfc;
    }
}


// --------------------------------------------------------------------------------------
// ---
// --------------------------------------------------------------------------------------

template <class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::addKToMatrix(const core::MechanicalParams* mparams, const sofa::core::behavior::MultiMatrixAccessor* matrix)
{
    sofa::core::behavior::MultiMatrixAccessor::MatrixRef r = matrix->getMatrix(this->mstate);

    sofa::helper::ReadAccessor< core::objectmodel::Data< VecTriangleState > > triState = d_triangleState;
    sofa::helper::ReadAccessor< core::objectmodel::Data< VecTriangleInfo > > triInfo = d_triangleInfo;
    const Real kFactor = (Real)sofa::core::mechanicalparams::kFactorIncludingRayleighDamping(mparams, this->rayleighStiffness.getValue());
    const unsigned int nbTriangles = m_topology->getNbTriangles();
    const VecElement& triangles = m_topology->getTriangles();
    const Real gamma = this->gamma;
    const Real mu = this->mu;

    constexpr auto S = DataTypes::deriv_total_size;

    for ( Index i=0; i<nbTriangles; i+=1)
    {
        Triangle t = triangles[i];
        const TriangleInfo& ti = triInfo[i];
        const TriangleState& ts = triState[i];
        sofa::type::MatNoInit<3,4,Real> KJt;
        const Real factor = -kFactor * ti.ss_factor;
        const Real fG = factor * gamma;
        const Real fGM = factor * (gamma+mu);
        const Real fM_2 = factor * (0.5f*mu);
        KJt[0][0] = fGM  *  ti.cy ;    KJt[0][1] = fG   *(-ti.cx);    KJt[0][2] = 0;    KJt[0][3] = fG   *ti.bx;
        KJt[1][0] = fG   *  ti.cy ;    KJt[1][1] = fGM  *(-ti.cx);    KJt[1][2] = 0;    KJt[1][3] = fGM  *ti.bx;
        KJt[2][0] = fM_2 *(-ti.cx);    KJt[2][1] = fM_2 *( ti.cy);    KJt[2][2] = fM_2 *ti.bx;    KJt[2][3] = 0;

        sofa::type::MatNoInit<2,2,Real> JKJt11, JKJt12, JKJt22;
        JKJt11[0][0] = ti.cy*KJt[0][0] - ti.cx*KJt[2][0];
        JKJt11[0][1] = ti.cy*KJt[0][1] - ti.cx*KJt[2][1];
        JKJt11[1][0] = JKJt11[0][1]; //ti.cy*KJt[2][0] - ti.cx*KJt[1][0];
        JKJt11[1][1] = ti.cy*KJt[2][1] - ti.cx*KJt[1][1];

        JKJt12[0][0] = -ti.cx*KJt[2][2];
        JKJt12[0][1] =  ti.cy*KJt[0][3];
        JKJt12[1][0] =  ti.cy*KJt[2][2];
        JKJt12[1][1] = -ti.cx*KJt[1][3];

        JKJt22[0][0] = ti.bx*KJt[2][2];
        JKJt22[0][1] = 0; //ti.bx*KJt[2][3];
        JKJt22[1][0] = 0; //ti.bx*KJt[1][2];
        JKJt22[1][1] = ti.bx*KJt[1][3];

        sofa::type::MatNoInit<2,2,Real> JKJt00, JKJt01, JKJt02;
        // fA = -fB-fC, dxB/dxA = -1, dxC/dxA = -1
        // dfA/dxA = -dfB/dxA - dfC/dxA
        //         = -dfB/dxB * dxB/dxA -dfB/dxC * dxC/dxA   -dfC/dxB * dxB/dxA -dfC/dxC * dxC/dxA
        //         = dfB/dxB + dfB/dxC + dfC/dxB + dfC/dxC
        JKJt00 = JKJt11+JKJt12+JKJt22+JKJt12.transposed();
        // dfA/dxB = -dfB/dxB -dfC/dxB
        JKJt01 = -JKJt11-JKJt12.transposed();
        // dfA/dxC = -dfB/dxC -dfC/dxC
        JKJt02 = -JKJt12-JKJt22;

        Transformation frame = ts.frame;

        r.matrix->add(r.offset + S * t[0], r.offset + S * t[0], frame.multTranspose(JKJt00*frame));

        const MatBloc M01 = frame.multTranspose(JKJt01*frame);
        r.matrix->add(r.offset + S * t[0], r.offset + S * t[1], M01);
        r.matrix->add(r.offset + S * t[1], r.offset + S * t[0], M01.transposed());

        const MatBloc M02 = frame.multTranspose(JKJt02*frame);
        r.matrix->add(r.offset + S * t[0], r.offset + S * t[2], M02);
        r.matrix->add(r.offset + S * t[2], r.offset + S * t[0], M02.transposed());
        r.matrix->add(r.offset + S * t[1], r.offset + S * t[1], frame.multTranspose(JKJt11*frame));

        const MatBloc M12 = frame.multTranspose(JKJt12*frame);
        r.matrix->add(r.offset + S * t[1], r.offset + S * t[2], M12);
        r.matrix->add(r.offset + S * t[2], r.offset + S * t[1], M12.transposed());
        r.matrix->add(r.offset + S * t[2], r.offset + S * t[2], frame.multTranspose(JKJt22*frame));
    }
}

template<class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::getTriangleVonMisesStress(Index i, Real& stressValue)
{
    const Deriv& s = d_triangleState.getValue()[i].stress;
    Real vonMisesStress = sofa::helper::rsqrt(s[0]*s[0] - s[0]*s[1] + s[1]*s[1] + 3*s[2]);
    stressValue = vonMisesStress;
}

template<class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::getTrianglePrincipalStress(Index i, Real& stressValue, Deriv& stressDirection)
{
    Real stressValue2;
    Deriv stressDirection2;
    getTrianglePrincipalStress(i, stressValue, stressDirection, stressValue2, stressDirection2);
}

template<class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::getTrianglePrincipalStress(Index i, Real& stressValue, Deriv& stressDirection, Real& stressValue2, Deriv& stressDirection2)
{
    const TriangleState& ts = d_triangleState.getValue()[i];
    Deriv s = ts.stress;

    // If A = [ a b ] is a real symmetric 2x2 matrix
    //        [ b d ]
    // the eigen values are :
    //   L1,L2 = (T +- sqrt(T^2 - 4*D))/2
    // with T = trace(A) = a+d
    // and D = det(A) = ad-b^2
    // and the eigen vectors are [ b   L-a ]
    //         ( or equivalently [ L-d   b ] )

    Real tr = (s[0]+s[1]);
    Real det = s[0]*s[1]-s[2]*s[2];
    Real deltaV2 = tr*tr-4*det;
    Real deltaV = helper::rsqrt(std::max((Real)0.0,deltaV2));
    Real eval1, eval2;
    type::Vec<2,Real> evec1, evec2;
    eval1 = (tr + deltaV)/2;
    eval2 = (tr - deltaV)/2;
    if (s[2] == 0)
    {
        if (s[0] > s[1])
        {
            evec1[0] = 1; evec1[1] = 0;
            evec2[0] = 0; evec2[1] = 1;
        }
        else
        {
            evec1[0] = 0; evec1[1] = 1;
            evec2[0] = 1; evec2[1] = 0;
        }
    }
    else
    {
        evec1[0] = s[2]; evec1[1] = eval1-s[0];
        evec2[0] = s[2]; evec2[1] = eval2-s[0];
    }
    Deriv edir1 = ts.frame.multTranspose(evec1);
    Deriv edir2 = ts.frame.multTranspose(evec2);
    edir1.normalize();
    edir2.normalize();

    if (helper::rabs(eval1) > helper::rabs(eval2))
    {
        stressValue  = eval1;  stressDirection  = edir1;
        stressValue2 = eval2;  stressDirection2 = edir2;
    }
    else
    {
        stressValue  = eval2;  stressDirection  = edir2;
        stressValue2 = eval1;  stressDirection2 = edir1;
    }
}

template<class DataTypes>
type::fixed_array <typename TriangularFEMForceFieldOptim<DataTypes>::Coord, 3> TriangularFEMForceFieldOptim<DataTypes>::getRotatedInitialElement(Index elemId)
{
    sofa::helper::ReadAccessor< core::objectmodel::Data< VecTriangleInfo > > triInfo = d_triangleInfo;
    type::fixed_array <Coord, 3> positions;
    if (elemId >= triInfo.size())
    {
        msg_warning() << "Method getRotatedInitialElement called with element index: " << elemId
            << " which is out of bounds: [0, " << triInfo.size() << "]. Returning default empty array of coordinates.";
        return positions;
    }

    const TriangleInfo& ti = triInfo[elemId];
    positions[0] = Coord(0, 0, 0);
    positions[1] = Coord(ti.bx, 0, 0);
    positions[2] = Coord(ti.cx, ti.cy, 0);

    return positions;
}


template<class DataTypes>
typename TriangularFEMForceFieldOptim<DataTypes>::Transformation TriangularFEMForceFieldOptim<DataTypes>::getRotationMatrix(Index elemId)
{
    sofa::helper::ReadAccessor< core::objectmodel::Data< VecTriangleState > > triState = d_triangleState;
    if (elemId < triState.size())
        return triState[elemId].frame;

    msg_warning() << "Method getRotationMatrix called with element index: "
        << elemId << " which is out of bounds: [0, " << triState.size() << "]. Returning default empty rotation.";
    return Transformation();
}


template<class DataTypes>
typename TriangularFEMForceFieldOptim<DataTypes>::MaterialStiffness TriangularFEMForceFieldOptim<DataTypes>::getMaterialStiffness(Index elemId)
{
    sofa::helper::ReadAccessor< core::objectmodel::Data< VecTriangleInfo > > triInfo = d_triangleInfo;
    if (elemId >= triInfo.size())
    {
        msg_warning() << "Method getMaterialStiffness called with element index: "
            << elemId << " which is out of bounds: [0, " << triInfo.size() << "]. Returning default empty matrix.";
        return MaterialStiffness();
    }

    // (gamma+mu, gamma   ,    0)
    // (gamma   , gamma+mu,    0)
    // (       0,        0, mu/2)
    const Real gamma = this->gamma;
    const Real mu = this->mu;

    MaterialStiffness mat;
    mat[0][0] = mat[1][1] = gamma + mu;
    mat[0][1] = mat[1][0] = gamma;
    mat[2][2] = (Real)(0.5) * mu;

    return mat;
}


template<class DataTypes>
sofa::type::Vec3 TriangularFEMForceFieldOptim<DataTypes>::getStrainDisplacementFactors(Index elemId)
{
    sofa::helper::ReadAccessor< core::objectmodel::Data< VecTriangleInfo > > triInfo = d_triangleInfo;
    if (elemId >= triInfo.size())
    {
        msg_warning() << "Method getStrainDisplacementFactors called with element index: "
            << elemId << " which is out of bounds: [0, " << triInfo.size() << "]. Returning default empty displacements.";
        return type::Vec< 3, Real>();
    }

    const TriangleInfo& ti = triInfo[elemId];
    return type::Vec< 3, Real>(ti.cy, -ti.cx, ti.bx);
}

template<class DataTypes>
typename TriangularFEMForceFieldOptim<DataTypes>::Real TriangularFEMForceFieldOptim<DataTypes>::getTriangleFactor(Index elemId)
{
    sofa::helper::ReadAccessor< core::objectmodel::Data< VecTriangleInfo > > triInfo = d_triangleInfo;
    if (elemId >= triInfo.size())
    {
        msg_warning() << "Method getTriangleFactor called with element index: "
            << elemId << " which is out of bounds: [0, " << triInfo.size() << "]. Returning 0.";
        return Real(0);
    }

    return triInfo[elemId].ss_factor;
}


// --------------------------------------------------------------------------------------
// --- Display methods
// --------------------------------------------------------------------------------------

template<class DataTypes>
void TriangularFEMForceFieldOptim<DataTypes>::draw(const core::visual::VisualParams* vparams)
{
    if (!m_topology || !this->mstate) return;

    if (!vparams->displayFlags().getShowForceFields())
        return;

    using type::Vec3;
    using type::Vec3i;
    using type::Vec4f;

    const VecCoord& x = this->mstate->read(core::ConstVecCoordId::position())->getValue();
    unsigned int nbTriangles=m_topology->getNbTriangles();
    const VecElement& triangles = m_topology->getTriangles();

    sofa::helper::ReadAccessor< core::objectmodel::Data< VecTriangleState > > triState = d_triangleState;
    sofa::helper::ReadAccessor< core::objectmodel::Data< VecTriangleInfo > > triInfo = d_triangleInfo;
    const bool showStressValue = this->d_showStressValue.getValue();
    const bool showStressVector = this->d_showStressVector.getValue();
    if (showStressValue || showStressVector)
    {
        Real minStress = 0;
        Real maxStress = 0;
        std::vector<Real> stresses;
        std::vector<std::pair<int,Real> > pstresses;
        std::vector<Deriv> stressVectors;
        std::vector<Real> stresses2;
        std::vector<Deriv> stressVectors2;
        stresses.resize(nbTriangles);
        stressVectors.resize(nbTriangles);
        stresses2.resize(nbTriangles);
        stressVectors2.resize(nbTriangles);

        if (showStressValue)
        {
            pstresses.resize(x.size());
        }
        for (unsigned int i=0; i<nbTriangles; i++)
        {
            getTrianglePrincipalStress(i,stresses[i],stressVectors[i],stresses2[i],stressVectors2[i]);

            if ( stresses[i] < minStress ) minStress = stresses[i];
            if ( stresses[i] > maxStress ) maxStress = stresses[i];
            if ( stresses2[i] < minStress ) minStress = stresses2[i];
            if ( stresses2[i] > maxStress ) maxStress = stresses2[i];
            if (showStressValue)
            {
                Real maxs = std::min(stresses[i],stresses2[i]);
                Triangle t = triangles[i];
                for (const auto p : t)
                {
                    pstresses[p].first += 1;
                    pstresses[p].second += helper::rabs(maxs);
                }
            }
        }
        maxStress = std::max(-minStress, maxStress);
        minStress = 0;
        if (drawPrevMaxStress > maxStress)
        {
            maxStress = drawPrevMaxStress;
        }
        else
        {
            drawPrevMaxStress = maxStress;
            msg_info() << "max stress = " << maxStress;
        }
        if (d_showStressMaxValue.isSet())
        {
            maxStress = d_showStressMaxValue.getValue();
        }
        if (showStressVector && maxStress > 0)
        {
            std::vector< Vec3 > points[2];
            for (unsigned int i=0; i<nbTriangles; i++)
            {
                Triangle t = triangles[i];
                Vec3 a = x[t[0]];
                Vec3 b = x[t[1]];
                Vec3 c = x[t[2]];
                Vec3 d1 = stressVectors[i];
                Real s1 = stresses[i];
                Vec3 d2 = stressVectors2[i];
                Real s2 = stresses2[i];
                Vec3 center = (a+b+c)/3;
                Vec3 n = cross(b-a,c-a);
                Real fact = (Real)helper::rsqrt(n.norm())*(Real)0.5;
                int g1 = (s1 < 0) ? 1 : 0;
                int g2 = (s2 < 0) ? 1 : 0;
                d1 *= fact*helper::rsqrt(helper::rabs(s1)/maxStress);
                d2 *= fact*helper::rsqrt(helper::rabs(s2)/maxStress);
                points[g1].push_back(center - d1);
                points[g1].push_back(center + d1);
                points[g2].push_back(center - d2);
                points[g2].push_back(center + d2);
            }
            vparams->drawTool()->drawLines(points[0], 2, sofa::type::RGBAColor::yellow());
            vparams->drawTool()->drawLines(points[1], 2, sofa::type::RGBAColor::magenta());
        }
    }
    else
    {
        std::vector< Vec3 > points[4];

        constexpr sofa::type::RGBAColor c0 = sofa::type::RGBAColor::red();
        constexpr sofa::type::RGBAColor c1 = sofa::type::RGBAColor::green();
        constexpr sofa::type::RGBAColor c2(1,0.5,0,1);
        constexpr sofa::type::RGBAColor c3 = sofa::type::RGBAColor::blue();

        points[0].reserve(nbTriangles*2);
        points[1].reserve(nbTriangles*2);
        points[2].reserve(nbTriangles*6);
        points[3].reserve(nbTriangles*6);
        for (unsigned int i=0; i<nbTriangles; ++i)
        {
            Triangle t = triangles[i];
            const TriangleInfo& ti = triInfo[i];
            const TriangleState& ts = triState[i];
            Coord a = x[t[0]];
            Coord b = x[t[1]];
            Coord c = x[t[2]];
            Coord fx = ts.frame[0];
            Coord fy = ts.frame[1];
            Vec3 center = (a+b+c)*(1.0_sreal/3.0_sreal);
            Real scale = (Real)(sqrt((b-a).cross(c-a).norm()*0.25f));
            points[0].push_back(center);
            points[0].push_back(center + ts.frame[0] * scale);
            points[1].push_back(center);
            points[1].push_back(center + ts.frame[1] * scale);
            Coord a0 = center - fx * (ti.bx/3 + ti.cx/3) - fy * (ti.cy/3);
            Coord b0 = a0 + fx * ti.bx;
            Coord c0 = a0 + fx * ti.cx + fy * ti.cy;
            points[2].push_back(a0);
            points[2].push_back(b0);
            points[2].push_back(b0);
            points[2].push_back(c0);
            points[2].push_back(c0);
            points[2].push_back(a0);
            points[3].push_back(a0);
            points[3].push_back(a );
            points[3].push_back(b0);
            points[3].push_back(b );
            points[3].push_back(c0);
            points[3].push_back(c );
        }

        vparams->drawTool()->drawLines(points[0], 1, c0);
        vparams->drawTool()->drawLines(points[1], 1, c1);
        vparams->drawTool()->drawLines(points[2], 1, c2);
        vparams->drawTool()->drawLines(points[3], 1, c3);
    }
}

} // namespace sofa::component::solidmechanics::fem::elastic
