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

#include <sofa/core/topology/BaseMeshTopology.h>
#include <sofa/component/constraint/projective/ProjectToPointConstraint.h>
#include <sofa/linearalgebra/SparseMatrix.h>
#include <sofa/core/visual/VisualParams.h>
#include <sofa/simulation/Simulation.h>
#include <iostream>
#include <sofa/type/vector_algorithm.h>
#include <sofa/core/behavior/MultiMatrixAccessor.h>


namespace sofa::component::constraint::projective
{

template <class DataTypes>
ProjectToPointConstraint<DataTypes>::ProjectToPointConstraint()
    : core::behavior::ProjectiveConstraintSet<DataTypes>(nullptr)
    , f_indices( initData(&f_indices,"indices","Indices of the points to project") )
    , f_point( initData(&f_point,"point","Target of the projection") )
    , f_fixAll( initData(&f_fixAll,false,"fixAll","filter all the DOF to implement a fixed object") )
    , f_drawSize( initData(&f_drawSize,(SReal)0.0,"drawSize","0 -> point based rendering, >0 -> radius of spheres") )
    , l_topology(initLink("topology", "link to the topology container"))
    , data(new ProjectToPointConstraintInternalData<DataTypes>())    
{
    f_indices.beginEdit()->push_back(0);
    f_indices.endEdit();
}


template <class DataTypes>
ProjectToPointConstraint<DataTypes>::~ProjectToPointConstraint()
{
    delete data;
}

template <class DataTypes>
void ProjectToPointConstraint<DataTypes>::clearConstraints()
{
    f_indices.beginEdit()->clear();
    f_indices.endEdit();
}

template <class DataTypes>
void ProjectToPointConstraint<DataTypes>::addConstraint(Index index)
{
    f_indices.beginEdit()->push_back(index);
    f_indices.endEdit();
}

template <class DataTypes>
void ProjectToPointConstraint<DataTypes>::removeConstraint(Index index)
{
    sofa::type::removeValue(*f_indices.beginEdit(),index);
    f_indices.endEdit();
}

// -- Constraint interface


template <class DataTypes>
void ProjectToPointConstraint<DataTypes>::init()
{
    this->core::behavior::ProjectiveConstraintSet<DataTypes>::init();

    if (l_topology.empty())
    {
        msg_info() << "link to Topology container should be set to ensure right behavior. First Topology found in current context will be used.";
        l_topology.set(this->getContext()->getMeshTopologyLink());
    }

    if (sofa::core::topology::BaseMeshTopology* _topology = l_topology.get())
    {
        msg_info() << "Topology path used: '" << l_topology.getLinkedPath() << "'";

        // Initialize topological changes support
        f_indices.createTopologyHandler(_topology);
    }
    else
    {
        msg_info() << "No topology component found at path: " << l_topology.getLinkedPath() << ", nor in current context: " << this->getContext()->name;
    }

    const SetIndexArray & indices = f_indices.getValue();

    std::stringstream sstream;
    const Index maxIndex=this->mstate->getSize();
    for (unsigned int i=0; i<indices.size(); ++i)
    {
        const Index index=indices[i];
        if (index >= maxIndex)
        {
            sstream << "Index " << index << " not valid!\n";
            removeConstraint(index);
        }
    }
    msg_error_when(!sstream.str().empty()) << sstream.str();

    reinit();
}

template <class DataTypes>
void  ProjectToPointConstraint<DataTypes>::reinit()
{

    // get the indices sorted
    SetIndexArray tmp = f_indices.getValue();
    std::sort(tmp.begin(),tmp.end());
}

template <class DataTypes>
void ProjectToPointConstraint<DataTypes>::projectMatrix( sofa::linearalgebra::BaseMatrix* M, unsigned offset )
{
    const unsigned blockSize = DataTypes::deriv_total_size;

    // clears the rows and columns associated with fixed particles
    for (const auto id : f_indices.getValue())
    {
        M->clearRowsCols( offset + id * blockSize, offset + (id+1) * blockSize );
    }
}

template <class DataTypes>
void ProjectToPointConstraint<DataTypes>::projectResponse(const core::MechanicalParams* mparams, DataVecDeriv& resData)
{
    SOFA_UNUSED(mparams);

    helper::WriteAccessor<DataVecDeriv> res ( resData );
    const SetIndexArray & indices = f_indices.getValue();
    if( f_fixAll.getValue() )
    {
        // fix everything
        typename VecDeriv::iterator it;
        for( it = res.begin(); it != res.end(); ++it )
        {
            *it = Deriv();
        }
    }
    else
    {
        for (SetIndexArray::const_iterator it = indices.begin();
                it != indices.end();
                ++it)
        {
            res[*it] = Deriv();
        }
    }
}

template <class DataTypes>
void ProjectToPointConstraint<DataTypes>::projectJacobianMatrix(const core::MechanicalParams* mparams, DataMatrixDeriv& cData)
{
    SOFA_UNUSED(mparams);

    helper::WriteAccessor<DataMatrixDeriv> c ( cData );
    const SetIndexArray & indices = f_indices.getValue();

    MatrixDerivRowIterator rowIt = c->begin();
    MatrixDerivRowIterator rowItEnd = c->end();

    if( f_fixAll.getValue() )
    {
        // fix everything
        while (rowIt != rowItEnd)
        {
            rowIt.row().clear();
            ++rowIt;
        }
    }
    else
    {
        while (rowIt != rowItEnd)
        {
            for (SetIndexArray::const_iterator it = indices.begin();
                    it != indices.end();
                    ++it)
            {
                rowIt.row().erase(*it);
            }
            ++rowIt;
        }
    }
}

template <class DataTypes>
void ProjectToPointConstraint<DataTypes>::projectVelocity(const core::MechanicalParams* mparams , DataVecDeriv& vData)
{
    projectResponse(mparams, vData);
}

template <class DataTypes>
void ProjectToPointConstraint<DataTypes>::projectPosition(const core::MechanicalParams* mparams, DataVecCoord& xData)
{
    SOFA_UNUSED(mparams);

    helper::WriteAccessor<DataVecCoord> res ( xData );
    const SetIndexArray & indices = f_indices.getValue();
    if( f_fixAll.getValue() )
    {
        // fix everything
        typename VecCoord::iterator it;
        for( it = res.begin(); it != res.end(); ++it )
        {
            *it = f_point.getValue();
        }
    }
    else
    {
        for (SetIndexArray::const_iterator it = indices.begin();
                it != indices.end();
                ++it)
        {
            res[*it] = f_point.getValue();
        }
    }
}

template <class DataTypes>
void ProjectToPointConstraint<DataTypes>::applyConstraint(const core::MechanicalParams* mparams, const sofa::core::behavior::MultiMatrixAccessor* matrix)
{
    SOFA_UNUSED(mparams);
    if(const core::behavior::MultiMatrixAccessor::MatrixRef r = matrix->getMatrix(this->mstate.get()))
    {
        const unsigned int N = Deriv::size();
        const SetIndexArray & indices = f_indices.getValue();

        for (SetIndexArray::const_iterator it = indices.begin(); it != indices.end(); ++it)
        {
            // Reset Fixed Row and Col
            for (unsigned int c=0; c<N; ++c)
                r.matrix->clearRowCol(r.offset + N * (*it) + c);
            // Set Fixed Vertex
            for (unsigned int c=0; c<N; ++c)
                r.matrix->set(r.offset + N * (*it) + c, r.offset + N * (*it) + c, 1.0);
        }
    }
}

template <class DataTypes>
void ProjectToPointConstraint<DataTypes>::applyConstraint(const core::MechanicalParams* mparams, linearalgebra::BaseVector* vector, const sofa::core::behavior::MultiMatrixAccessor* matrix)
{
    SOFA_UNUSED(mparams);
    const int o = matrix->getGlobalOffset(this->mstate.get());
    if (o >= 0)
    {
        const unsigned int offset = (unsigned int)o;
        const unsigned int N = Deriv::size();

        const SetIndexArray & indices = f_indices.getValue();
        for (SetIndexArray::const_iterator it = indices.begin(); it != indices.end(); ++it)
        {
            for (unsigned int c=0; c<N; ++c)
                vector->clear(offset + N * (*it) + c);
        }
    }
}




template <class DataTypes>
void ProjectToPointConstraint<DataTypes>::draw(const core::visual::VisualParams* vparams)
{
    if (!vparams->displayFlags().getShowBehaviorModels()) return;
    if (!this->isActive()) return;
    const VecCoord& x = this->mstate->read(core::ConstVecCoordId::position())->getValue();
    const SetIndexArray & indices = f_indices.getValue();

    const auto stateLifeCycle = vparams->drawTool()->makeStateLifeCycle();

    if( f_drawSize.getValue() == 0) // old classical drawing by points
    {
        std::vector< sofa::type::Vec3 > points;
        sofa::type::Vec3 point;
        if( f_fixAll.getValue() )
            for (unsigned i=0; i<x.size(); i++ )
            {
                point = DataTypes::getCPos(x[i]);
                points.push_back(point);
            }
        else
            for (unsigned int index : indices)
            {
                point = DataTypes::getCPos(x[index]);
                points.push_back(point);
            }
        vparams->drawTool()->drawPoints(points, 10, sofa::type::RGBAColor(1,0.5,0.5,1));
    }
    else // new drawing by spheres
    {
        std::vector< sofa::type::Vec3 > points;
        sofa::type::Vec3 point;
        if(f_fixAll.getValue())
            for (unsigned i=0; i<x.size(); i++ )
            {
                point = DataTypes::getCPos(x[i]);
                points.push_back(point);
            }
        else
            for (unsigned int index : indices)
            {
                point = DataTypes::getCPos(x[index]);
                points.push_back(point);
            }
        vparams->drawTool()->drawSpheres(points, (float)f_drawSize.getValue(), sofa::type::RGBAColor(1.0f,0.35f,0.35f,1.0f));
    }


}

} // namespace sofa::component::constraint::projective



