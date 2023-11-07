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
#include <sofa/component/solidmechanics/spring/RestShapeSpringsForceField.h>

#include <sofa/core/behavior/MultiMatrixAccessor.h>
#include <sofa/core/visual/VisualParams.h>
#include <sofa/defaulttype/VecTypes.h>
#include <sofa/defaulttype/RigidTypes.h>
#include <sofa/type/RGBAColor.h>

#include <string_view>
#include <type_traits>

namespace // anonymous
{
    // Boiler-plate code to test if a type implements a method
    // explanation https://stackoverflow.com/a/30848101
    
    template <typename...>
    using void_t = void;

    // Primary template handles all types not supporting the operation.
    template <typename, template <typename> class, typename = void_t<>>
    struct detect : std::false_type {};

    // Specialization recognizes/validates only types supporting the archetype.
    template <typename T, template <typename> class Op>
    struct detect<T, Op, void_t<Op<T>>> : std::true_type {};

    // Actual test if DataType::Coord implements getOrientation() (hence is a RigidType)
    template <typename T>
    using isRigid_t = decltype(std::declval<typename T::Coord>().getOrientation());

    template <typename T>
    using isRigidType = detect<T, isRigid_t>;
} // anonymous

namespace sofa::component::solidmechanics::spring
{

using helper::WriteAccessor;
using helper::ReadAccessor;
using core::behavior::BaseMechanicalState;
using core::behavior::MultiMatrixAccessor;
using core::behavior::ForceField;
using linearalgebra::BaseMatrix;
using core::VecCoordId;
using core::MechanicalParams;
using type::Vec3;
using type::Vec4f;
using type::vector;
using core::visual::VisualParams;

template<class DataTypes>
RestShapeSpringsForceField<DataTypes>::RestShapeSpringsForceField()
    : d_points(initData(&d_points, "points", "points controlled by the rest shape springs"))
    , d_stiffness(initData(&d_stiffness, "stiffness", "stiffness values between the actual position and the rest shape position"))
    , d_angularStiffness(initData(&d_angularStiffness, "angularStiffness", "angularStiffness assigned when controlling the rotation of the points"))
    , d_pivotPoints(initData(&d_pivotPoints, "pivot_points", "global pivot points used when translations instead of the rigid mass centers"))
    , d_external_points(initData(&d_external_points, "external_points", "points from the external Mechancial State that define the rest shape springs"))
    , d_recompute_indices(initData(&d_recompute_indices, true, "recompute_indices", "Recompute indices (should be false for BBOX)"))
    , d_drawSpring(initData(&d_drawSpring,false,"drawSpring","draw Spring"))
    , d_springColor(initData(&d_springColor, sofa::type::RGBAColor::green(), "springColor","spring color. (default=[0.0,1.0,0.0,1.0])"))
    , l_restMState(initLink("external_rest_shape", "rest_shape can be defined by the position of an external Mechanical State"))
    , l_topology(initLink("topology", "Link to be set to the topology container in the component graph"))
{
}

template<class DataTypes>
void RestShapeSpringsForceField<DataTypes>::parse(core::objectmodel::BaseObjectDescription *arg)
{
    const char* attr = arg->getAttribute("external_rest_shape") ;
    if( attr != nullptr && attr[0] != '@')
    {
        msg_error() << "RestShapeSpringsForceField have changed since 17.06. The parameter 'external_rest_shape' is now a Link. To fix your scene you need to add and '@' in front of the provided path. See PR#315" ;
    }

    Inherit::parse(arg) ;
}

template<class DataTypes>
void RestShapeSpringsForceField<DataTypes>::bwdInit()
{
    ForceField<DataTypes>::init();

    if (d_stiffness.getValue().empty())
    {
        msg_info() << "No stiffness is defined, assuming equal stiffness on each node, k = 100.0 ";

        VecReal stiffs;
        stiffs.push_back(100.0);
        d_stiffness.setValue(stiffs);
    }

    if (l_restMState.get() == nullptr)
    {
        useRestMState = false;
        msg_info() << "no external rest shape used";

        if(!l_restMState.empty())
        {
            msg_warning() << "external_rest_shape in node " << this->getContext()->getName() << " not found";
        }
    }
    else
    {
        msg_info() << "external rest shape used";
        useRestMState = true;
    }

    if (l_topology.empty())
    {
        msg_info() << "link to Topology container should be set to ensure right behavior. First Topology found in current context will be used.";
        l_topology.set(this->getContext()->getMeshTopologyLink());
    }

    if (sofa::core::topology::BaseMeshTopology* _topology = l_topology.get())
    {
        msg_info() << "Topology path used: '" << l_topology.getLinkedPath() << "'";

        // Initialize topological changes support
        d_points.createTopologyHandler(_topology);
    }
    else
    {
        msg_info() << "Cannot find the topology: topological changes will not be supported";
    }

    recomputeIndices();

    BaseMechanicalState* state = this->getContext()->getMechanicalState();
    if(!state)
    {
        msg_warning() << "MechanicalState of the current context returns null pointer";
    }
    else
    {
        assert(state);
        matS.resize(state->getMatrixSize(),state->getMatrixSize());
    }

    /// Compile time condition to check if we are working with a Rigid3Types or a type that does not
    /// need the Angular Stiffness parameters.
    //if constexpr (isRigid())
    if constexpr (isRigidType<DataTypes>())
    {
        sofa::helper::ReadAccessor<Data<VecReal>> s = d_stiffness;
        sofa::helper::WriteOnlyAccessor<Data<VecReal>> as = d_angularStiffness;

        if (as.size() < s.size())
        {
            msg_info() << "'stiffness' is larger than 'angularStiffness', add the default value (100.0) to the missing entries.";

            for(size_t i = as.size();i<s.size();i++)
            {
                as.push_back(100.0);
            }
        }else if (as.size() > s.size())
        {
            msg_info() << "'stiffness' is smaller than 'angularStiffness', clamp the extra values in angularStiffness.";
            as.resize(s.size());
        }
    }

    lastUpdatedStep = -1.0;
}


template<class DataTypes>
void RestShapeSpringsForceField<DataTypes>::reinit()
{
    if (!checkOutOfBoundsIndices())
    {
        m_indices.clear();
    }
    else
    {
        msg_info() << "Indices successfully checked";
    }

    if (d_stiffness.getValue().empty())
    {
        msg_info() << "No stiffness is defined, assuming equal stiffness on each node, k = 100.0 " ;

        VecReal stiffs;
        stiffs.push_back(100.0);
        d_stiffness.setValue(stiffs);
    }
    else
    {
        const VecReal &k = d_stiffness.getValue();
        if ( k.size() != m_indices.size() )
        {
            msg_warning() << "Size of stiffness vector is not correct (" << k.size() << "), should be either 1 or " << m_indices.size() << msgendl
                          << "First value of stiffness will be used";
        }
    }

}

template<class DataTypes>
void RestShapeSpringsForceField<DataTypes>::recomputeIndices()
{
    m_indices.clear();
    m_ext_indices.clear();

    for (const sofa::Index i : d_points.getValue())
    {
        m_indices.push_back(i);
    }

    for (const sofa::Index i : d_external_points.getValue())
    {
        m_ext_indices.push_back(i);
    }

    if (m_indices.empty())
    {
        // no point are defined, default case: points = all points
        msg_info() << "No point are defined. Change to default case: points = all points";
        for (sofa::Index i = 0; i < this->mstate->getSize(); i++)
        {
            m_indices.push_back(i);
        }
    }

    if (m_ext_indices.empty())
    {
        if (useRestMState)
        {
            for (sofa::Index i = 0; i < getExtPosition()->getValue().size(); i++)
            {
                m_ext_indices.push_back(i);
            }
        }
        else
        {
            for (const sofa::Index i : m_indices)
            {
                m_ext_indices.push_back(i);
            }
        }
    }

    if (!checkOutOfBoundsIndices())
    {
        msg_error() << "The dimension of the source and the targeted points are different ";
        m_indices.clear();
    }
    else
    {
        msg_info() << "Indices successfully checked";
    }
}

template<class DataTypes>
bool RestShapeSpringsForceField<DataTypes>::checkOutOfBoundsIndices()
{
    if (!checkOutOfBoundsIndices(m_indices, this->mstate->getSize()))
    {
        msg_error() << "Out of Bounds m_indices detected. ForceField is not activated.";
        return false;
    }
    if (!checkOutOfBoundsIndices(m_ext_indices, sofa::Size(getExtPosition()->getValue().size())))
    {
        msg_error() << "Out of Bounds m_ext_indices detected. ForceField is not activated.";
        return false;
    }
    if (m_indices.size() != m_ext_indices.size())
    {
        msg_error() << "Dimensions of the source and the targeted points are different. ForceField is not activated.";
        return false;
    }
    return true;
}

template<class DataTypes>
bool RestShapeSpringsForceField<DataTypes>::checkOutOfBoundsIndices(const VecIndex &indices, const sofa::Size dimension)
{
    for (sofa::Index i = 0; i < indices.size(); i++)
    {
        if (indices[i] >= dimension)
        {
            return false;
        }
    }
    return true;
}

template<class DataTypes>
const typename RestShapeSpringsForceField<DataTypes>::DataVecCoord* RestShapeSpringsForceField<DataTypes>::getExtPosition() const
{
    return (useRestMState ? l_restMState->read(VecCoordId::position()) : this->mstate->read(VecCoordId::restPosition()));
}

template<class DataTypes>
void RestShapeSpringsForceField<DataTypes>::addForce(const MechanicalParams*  mparams , DataVecDeriv& f, const DataVecCoord& x, const DataVecDeriv&  v )
{
    SOFA_UNUSED(mparams);
    SOFA_UNUSED(v);

    WriteAccessor< DataVecDeriv > f1 = f;
    ReadAccessor< DataVecCoord > p1 = x;
    ReadAccessor< DataVecCoord > p0 = *getExtPosition();
    const VecReal& k = d_stiffness.getValue();
    const VecReal& k_a = d_angularStiffness.getValue();

    f1.resize(p1.size());

    if (d_recompute_indices.getValue())
    {
        recomputeIndices();
    }

    for (sofa::Index i = 0; i < m_indices.size(); i++)
    {
        const sofa::Index index = m_indices[i];
        sofa::Index ext_index = m_indices[i];
        if (useRestMState)
            ext_index = m_ext_indices[i];

        const auto stiffness = k[static_cast<std::size_t>(i < k.size()) * i];

        // rigid case
        if constexpr (isRigidType<DataTypes>())
        {
            // translation
            if (i >= m_pivots.size())
            {
                CPos dx = p1[index].getCenter() - p0[ext_index].getCenter();
                getVCenter(f1[index]) -= dx * stiffness;
            }
            else
            {
                CPos localPivot = p0[ext_index].getOrientation().inverseRotate(m_pivots[i] - p0[ext_index].getCenter());
                CPos rotatedPivot = p1[index].getOrientation().rotate(localPivot);
                CPos pivot2 = p1[index].getCenter() + rotatedPivot;
                CPos dx = pivot2 - m_pivots[i];
                getVCenter(f1[index]) -= dx * stiffness;
            }

            // rotation
            type::Quat<Real> dq = p1[index].getOrientation() * p0[ext_index].getOrientation().inverse();
            dq.normalize();

            type::Vec<3, Real> dir{type::NOINIT};
            Real angle = 0.;

            if (dq[3] < 0.)
            {
                dq = dq * -1.0;
            }

            if (dq[3] < 1.0)
                dq.quatToAxis(dir, angle);

            const auto angularStiffness = k_a[static_cast<std::size_t>(i < k_a.size()) * i];
            getVOrientation(f1[index]) -= dir * angle * angularStiffness;
        }
        else // non-rigid implementation 
        {
            const sofa::Index index = m_indices[i];
            const sofa::Index ext_index = m_ext_indices[i];

            Deriv dx = p1[index] - p0[ext_index];
            f1[index] -= dx * stiffness;
        }
    }
}

template<class DataTypes>
void RestShapeSpringsForceField<DataTypes>::addDForce(const MechanicalParams* mparams, DataVecDeriv& df, const DataVecDeriv& dx)
{
    WriteAccessor< DataVecDeriv > df1 = df;
    ReadAccessor< DataVecDeriv > dx1 = dx;
    Real kFactor = (Real)sofa::core::mechanicalparams::kFactorIncludingRayleighDamping(mparams, this->rayleighStiffness.getValue());
    const VecReal& k = d_stiffness.getValue();
    const VecReal& k_a = d_angularStiffness.getValue();

    for (unsigned int i = 0; i < m_indices.size(); i++)
    {
        const sofa::Index curIndex = m_indices[i];
        const auto stiffness = k[static_cast<std::size_t>(i < k.size()) * i];

        if constexpr (isRigidType<DataTypes>())
        {
            const auto angularStiffness = k_a[static_cast<std::size_t>(i < k_a.size()) * i];

            getVCenter(df1[curIndex]) -= getVCenter(dx1[curIndex]) * stiffness * kFactor;
            getVOrientation(df1[curIndex]) -= getVOrientation(dx1[curIndex]) * angularStiffness * kFactor;
        }
        else
        {
            df1[m_indices[i]] -= dx1[m_indices[i]] * stiffness * kFactor;
        }
    }


}

template<class DataTypes>
void RestShapeSpringsForceField<DataTypes>::draw(const VisualParams *vparams)
{
    if (!vparams->displayFlags().getShowForceFields() || !d_drawSpring.getValue())
        return;  /// \todo put this in the parent class

    const auto stateLifeCycle = vparams->drawTool()->makeStateLifeCycle();
    vparams->drawTool()->setLightingEnabled(false);

    ReadAccessor< DataVecCoord > p0 = *getExtPosition();
    ReadAccessor< DataVecCoord > p  = this->mstate->read(VecCoordId::position());

    const VecIndex& indices = m_indices;
    const VecIndex& ext_indices = (useRestMState ? m_ext_indices : m_indices);

    std::vector<Vec3> vertices;

    for (sofa::Index i=0; i<indices.size(); i++)
    {
        const sofa::Index index = indices[i];
        const sofa::Index ext_index = ext_indices[i];

        Vec3 v0(0.0, 0.0, 0.0);
        Vec3 v1(0.0, 0.0, 0.0);
        for(sofa::Index j=0 ; j< std::min(DataTypes::spatial_dimensions, static_cast<sofa::Size>(3)) ; j++)
        {
            v0[j] = (DataTypes::getCPos(p[index]))[j];
            v1[j] = (DataTypes::getCPos(p0[ext_index]))[j];
        }

        vertices.push_back(v0);
        vertices.push_back(v1);
    }

    //todo(dmarchal) because of https://github.com/sofa-framework/sofa/issues/64
    vparams->drawTool()->drawLines(vertices,5, d_springColor.getValue());

}

template<class DataTypes>
void RestShapeSpringsForceField<DataTypes>::addKToMatrix(const MechanicalParams* mparams, const MultiMatrixAccessor* matrix )
{
    MultiMatrixAccessor::MatrixRef mref = matrix->getMatrix(this->mstate);
    BaseMatrix* mat = mref.matrix;
    unsigned int offset = mref.offset;
    Real kFact = (Real)sofa::core::mechanicalparams::kFactorIncludingRayleighDamping(mparams, this->rayleighStiffness.getValue());

    const VecReal& k = d_stiffness.getValue();
    const VecReal& k_a = d_angularStiffness.getValue();

    constexpr sofa::Size space_size = Deriv::spatial_dimensions; // == total_size if DataTypes = VecTypes
    constexpr sofa::Size total_size = Deriv::total_size;

    sofa::Index curIndex = 0;

    for (sofa::Index index = 0; index < m_indices.size(); index++)
    {
        curIndex = m_indices[index];

        // translation
        const auto vt = -kFact * k[(index < k.size()) * index];
        for (int i = 0; i < space_size; i++)
        {
            mat->add(offset + total_size * curIndex + i, offset + total_size * curIndex + i, vt);
        }

        // rotation (if applicable)
        if constexpr (isRigidType<DataTypes>())
        {
            const auto vr = -kFact * k_a[(index < k_a.size()) * index];
            for (int i = space_size; i < total_size; i++)
            {
                mat->add(offset + total_size * curIndex + i, offset + total_size * curIndex + i, vr);
            }
        }
    }
}

} // namespace sofa::component::solidmechanics::spring
