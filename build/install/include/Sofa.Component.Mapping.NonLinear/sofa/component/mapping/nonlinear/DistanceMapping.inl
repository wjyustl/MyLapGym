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

#include <sofa/component/mapping/nonlinear/DistanceMapping.h>
#include <sofa/core/ConstraintParams.h>
#include <sofa/core/MechanicalParams.h>
#include <sofa/core/visual/VisualParams.h>
#include <sofa/core/ConstraintParams.h>
#include <iostream>
#include <sofa/simulation/Node.h>
#include <sofa/defaulttype/MapMapSparseMatrixEigenUtils.h>
#include <sofa/core/behavior/BaseForceField.h>
#include <sofa/core/behavior/MechanicalState.h>
namespace sofa::component::mapping::nonlinear
{

static const SReal s_null_distance_epsilon = std::numeric_limits<SReal>::epsilon();


template <class TIn, class TOut>
DistanceMapping<TIn, TOut>::DistanceMapping()
    : Inherit()
    , f_computeDistance(initData(&f_computeDistance, false, "computeDistance", "if 'computeDistance = true', then rest length of each element equal 0, otherwise rest length is the initial lenght of each of them"))
    , f_restLengths(initData(&f_restLengths, "restLengths", "Rest lengths of the connections"))
    , d_showObjectScale(initData(&d_showObjectScale, Real(0), "showObjectScale", "Scale for object display"))
    , d_color(initData(&d_color,sofa::type::RGBAColor(1,1,0,1), "showColor", "Color for object display. (default=[1.0,1.0,0.0,1.0])"))
    , d_geometricStiffness(initData(&d_geometricStiffness, 2u, "geometricStiffness", "0 -> no GS, 1 -> exact GS, 2 -> stabilized GS (default)"))
    , l_topology(initLink("topology", "link to the topology container"))
{
}

template <class TIn, class TOut>
DistanceMapping<TIn, TOut>::~DistanceMapping()
{
}


template <class TIn, class TOut>
void DistanceMapping<TIn, TOut>::init()
{
    if (l_topology.empty())
    {
        msg_warning() << "link to Topology container should be set to ensure right behavior. First Topology found in current context will be used.";
        l_topology.set(this->getContext()->getMeshTopologyLink());
    }

    msg_info() << "Topology path used: '" << l_topology.getLinkedPath() << "'";

    if (l_topology->getNbEdges() < 1)
    {
        msg_error() << "No topology component containg edges found at path: " << l_topology.getLinkedPath() << ", nor in current context: " << this->getContext()->name;
        sofa::core::objectmodel::BaseObject::d_componentState.setValue(sofa::core::objectmodel::ComponentState::Invalid);
        return;
    }

    const SeqEdges& links = l_topology->getEdges();
    typename core::behavior::MechanicalState<In>::ReadVecCoord pos = this->getFromModel()->readPositions();

    this->getToModel()->resize( links.size() );
    jacobian.resizeBlocks(links.size(),pos.size());

    directions.resize(links.size());
    invlengths.resize(links.size());

    // only used for warning message
    bool compliance = ((simulation::Node*)(this->getContext()))->forceField.size() && ((simulation::Node*)(this->getContext()))->forceField[0]->isCompliance.getValue();

    // compute the rest lengths if they are not known
    if( f_restLengths.getValue().size() != links.size() )
    {
        helper::WriteOnlyAccessor< Data<type::vector<Real> > > restLengths(f_restLengths);
        restLengths.resize( links.size() );
        if(!(f_computeDistance.getValue()))
        {
            for(unsigned i=0; i<links.size(); i++ )
            {
                restLengths[i] = (pos[links[i][0]] - pos[links[i][1]]).norm();

                msg_error_when(restLengths[i] <= s_null_distance_epsilon && compliance) << "Null rest Length cannot be used for stable compliant constraint, prefer to use a DifferenceMapping for this dof " << i << " if used with a compliance";
            }
        }
        else
        {
            msg_error_when(compliance) << "Null rest Lengths cannot be used for stable compliant constraint, prefer to use a DifferenceMapping if those dofs are used with a compliance";
            for(unsigned i=0; i<links.size(); i++ )
                restLengths[i] = (Real)0.;
        }
    }
    else if (compliance) // for warning message
    {
        helper::ReadAccessor< Data<type::vector<Real> > > restLengths(f_restLengths);
        std::stringstream sstream;
        for (unsigned i = 0; i < links.size(); i++)
            if (restLengths[i] <= s_null_distance_epsilon) 
                sstream << "Null rest Length cannot be used for stable compliant constraint, prefer to use a DifferenceMapping for this dof " << i << " if used with a compliance \n";
        msg_error_when(!sstream.str().empty()) << sstream.str();
    }

    baseMatrices.resize( 1 );
    baseMatrices[0] = &jacobian;

    this->Inherit::init();  // applies the mapping, so after the Data init
}

template <class TIn, class TOut>
void DistanceMapping<TIn, TOut>::computeCoordPositionDifference( Direction& r, const InCoord& a, const InCoord& b )
{
    r = TIn::getCPos(b)-TIn::getCPos(a);
}

template <class TIn, class TOut>
void DistanceMapping<TIn, TOut>::apply(const core::MechanicalParams * /*mparams*/ , Data<OutVecCoord>& dOut, const Data<InVecCoord>& dIn)
{
    helper::WriteOnlyAccessor< Data<OutVecCoord> >  out = dOut;
    helper::ReadAccessor< Data<InVecCoord> >  in = dIn;
    helper::ReadAccessor<Data<type::vector<Real> > > restLengths(f_restLengths);
    const SeqEdges& links = l_topology->getEdges();

    jacobian.clear();

    for(unsigned i=0; i<links.size(); i++ )
    {
        Direction& gap = directions[i];

        // gap = in[links[i][1]] - in[links[i][0]] (only for position)
        computeCoordPositionDifference( gap, in[links[i][0]], in[links[i][1]] );

        Real gapNorm = gap.norm();
        out[i] = gapNorm - restLengths[i];  // output

        // normalize
        if( gapNorm>s_null_distance_epsilon )
        {
            invlengths[i] = 1/gapNorm;
            gap *= invlengths[i];
        }
        else
        {
            invlengths[i] = 0;

            // arbritary vector mapping all directions
            Real p = 1.0f/std::sqrt((Real)In::spatial_dimensions);
            for( unsigned i=0;i<In::spatial_dimensions;++i)
                gap[i]=p;
        }

        // insert in increasing column order
        if( links[i][1]<links[i][0])
        {
            jacobian.beginRow(i);
            for(unsigned k=0; k<In::spatial_dimensions; k++ )
            {
                jacobian.insertBack( i, links[i][1]*Nin+k, gap[k] );
            }
            for(unsigned k=0; k<In::spatial_dimensions; k++ )
            {
                jacobian.insertBack( i, links[i][0]*Nin+k, -gap[k] );
            }
        }
        else
        {
            jacobian.beginRow(i);
            for(unsigned k=0; k<In::spatial_dimensions; k++ )
            {
                jacobian.insertBack( i, links[i][0]*Nin+k, -gap[k] );
            }
            for(unsigned k=0; k<In::spatial_dimensions; k++ )
            {
                jacobian.insertBack( i, links[i][1]*Nin+k, gap[k] );
            }
        }
    }

    jacobian.compress();
}


template <class TIn, class TOut>
void DistanceMapping<TIn, TOut>::applyJ(const core::MechanicalParams * /*mparams*/ , Data<OutVecDeriv>& dOut, const Data<InVecDeriv>& dIn)
{
    if( jacobian.rowSize() )
    {
        auto dOutWa = sofa::helper::getWriteOnlyAccessor(dOut);
        auto dInRa = sofa::helper::getReadAccessor(dIn);
        jacobian.mult(dOutWa.wref(),dInRa.ref());
    }
}

template <class TIn, class TOut>
void DistanceMapping<TIn, TOut>::applyJT(const core::MechanicalParams * /*mparams*/ , Data<InVecDeriv>& dIn, const Data<OutVecDeriv>& dOut)
{
    if( jacobian.rowSize() )
    {
        auto dOutRa = sofa::helper::getReadAccessor(dOut);
        auto dInWa = sofa::helper::getWriteOnlyAccessor(dIn);
        jacobian.addMultTranspose(dInWa.wref(),dOutRa.ref());
    }
}

template <class TIn, class TOut>
void DistanceMapping<TIn, TOut>::applyDJT(const core::MechanicalParams* mparams, core::MultiVecDerivId parentDfId, core::ConstMultiVecDerivId )
{
    const unsigned& geometricStiffness = d_geometricStiffness.getValue();
    if( !geometricStiffness ) return;

    helper::WriteAccessor<Data<InVecDeriv> > parentForce (*parentDfId[this->fromModel.get()].write());
    helper::ReadAccessor<Data<InVecDeriv> > parentDisplacement (*mparams->readDx(this->fromModel.get()));  // parent displacement
    const SReal& kfactor = mparams->kFactor();
    helper::ReadAccessor<Data<OutVecDeriv> > childForce (*mparams->readF(this->toModel.get()));

    if( K.compressedMatrix.nonZeros() )
    {
        K.addMult( parentForce.wref(), parentDisplacement.ref(), (typename In::Real)kfactor );
    }
    else
    {
        const SeqEdges& links = l_topology->getEdges();

        for(unsigned i=0; i<links.size(); i++ )
        {
            // force in compression (>0) can lead to negative eigen values in geometric stiffness
            // this results in a undefinite implicit matrix that causes instabilies
            // if stabilized GS (geometricStiffness==2) -> keep only force in extension
            if( childForce[i][0] < 0 || geometricStiffness==1 )
            {
                sofa::type::Mat<Nin,Nin,Real> b;  // = (I - uu^T)
                for(unsigned j=0; j<In::spatial_dimensions; j++)
                {
                    for(unsigned k=0; k<In::spatial_dimensions; k++)
                    {
                        if( j==k )
                            b[j][k] = 1.f - directions[i][j]*directions[i][k];
                        else
                            b[j][k] =    - directions[i][j]*directions[i][k];
                    }
                }
                // (I - uu^T)*f/l*kfactor  --  do not forget kfactor !
                b *= (Real)(childForce[i][0] * invlengths[i] * kfactor);
                // note that computing a block is not efficient here, but it
                // would make sense for storing a stiffness matrix

                InDeriv dx = parentDisplacement[links[i][1]] - parentDisplacement[links[i][0]];
                InDeriv df;
                for(unsigned j=0; j<Nin; j++)
                {
                    for(unsigned k=0; k<Nin; k++)
                    {
                        df[j]+=b[j][k]*dx[k];
                    }
                }
                parentForce[links[i][0]] -= df;
                parentForce[links[i][1]] += df;
            }
        }
    }
}

template <class TIn, class TOut>
void DistanceMapping<TIn, TOut>::applyJT(const core::ConstraintParams* cparams, Data<InMatrixDeriv>& in, const Data<OutMatrixDeriv>& out)
{
    SOFA_UNUSED(cparams);
    const OutMatrixDeriv& childMat  = sofa::helper::getReadAccessor(out).ref();
    InMatrixDeriv&        parentMat = sofa::helper::getWriteAccessor(in).wref();
    addMultTransposeEigen(parentMat, jacobian.compressedMatrix, childMat);
}


template <class TIn, class TOut>
const sofa::linearalgebra::BaseMatrix* DistanceMapping<TIn, TOut>::getJ()
{
    return &jacobian;
}

template <class TIn, class TOut>
const type::vector<sofa::linearalgebra::BaseMatrix*>* DistanceMapping<TIn, TOut>::getJs()
{
    return &baseMatrices;
}



template <class TIn, class TOut>
void DistanceMapping<TIn, TOut>::updateK(const core::MechanicalParams *mparams, core::ConstMultiVecDerivId childForceId )
{
    SOFA_UNUSED(mparams);
    const unsigned& geometricStiffness = d_geometricStiffness.getValue();
    if( !geometricStiffness ) { K.resize(0,0); return; }


    helper::ReadAccessor<Data<OutVecDeriv> > childForce( *childForceId[this->toModel.get()].read() );    
    const SeqEdges& links = l_topology->getEdges();

    unsigned int size = this->fromModel->getSize();
    K.resizeBlocks(size,size);
    for(size_t i=0; i<links.size(); i++)
    {
        // force in compression (>0) can lead to negative eigen values in geometric stiffness
        // this results in a undefinite implicit matrix that causes instabilies
        // if stabilized GS (geometricStiffness==2) -> keep only force in extension
        if( childForce[i][0] < 0 || geometricStiffness==1 )
        {
            sofa::type::Mat<Nin,Nin,Real> b;  // = (I - uu^T)

            for(unsigned j=0; j<In::spatial_dimensions; j++)
            {
                for(unsigned k=0; k<In::spatial_dimensions; k++)
                {
                    if( j==k )
                        b[j][k] = 1.f - directions[i][j]*directions[i][k];
                    else
                        b[j][k] =     - directions[i][j]*directions[i][k];
                }
            }
            b *= childForce[i][0] * invlengths[i];  // (I - uu^T)*f/l

            // Note that 'links' is not sorted so the matrix can not be filled-up in order
            K.addBlock(links[i][0],links[i][0],b);
            K.addBlock(links[i][0],links[i][1],-b);
            K.addBlock(links[i][1],links[i][0],-b);
            K.addBlock(links[i][1],links[i][1],b);
        }
    }
    K.compress();
}

template <class TIn, class TOut>
const linearalgebra::BaseMatrix* DistanceMapping<TIn, TOut>::getK()
{
    return &K;
}

template <class TIn, class TOut>
void DistanceMapping<TIn, TOut>::draw(const core::visual::VisualParams* vparams)
{
    if( !vparams->displayFlags().getShowMechanicalMappings() ) return;

    const auto stateLifeCycle = vparams->drawTool()->makeStateLifeCycle();

    typename core::behavior::MechanicalState<In>::ReadVecCoord pos = this->getFromModel()->readPositions();
    const SeqEdges& links = l_topology->getEdges();

    if( d_showObjectScale.getValue() == 0 )
    {
        vparams->drawTool()->disableLighting();
        type::vector< type::Vec3 > points;
        for(std::size_t i=0; i<links.size(); i++ )
        {
            points.push_back( sofa::type::Vec3( TIn::getCPos(pos[links[i][0]]) ) );
            points.push_back( sofa::type::Vec3( TIn::getCPos(pos[links[i][1]]) ));
        }
        vparams->drawTool()->drawLines ( points, 1, d_color.getValue() );
    }
    else
    {
        vparams->drawTool()->enableLighting();
        for(std::size_t i=0; i<links.size(); i++ )
        {
            type::Vec3 p0 = TIn::getCPos(pos[links[i][0]]);
            type::Vec3 p1 = TIn::getCPos(pos[links[i][1]]);
            vparams->drawTool()->drawCylinder( p0, p1, (float)d_showObjectScale.getValue(), d_color.getValue() );
        }
    }

}

///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////




template <class TIn, class TOut>
DistanceMultiMapping<TIn, TOut>::DistanceMultiMapping()
    : Inherit()
    , f_computeDistance(initData(&f_computeDistance, false, "computeDistance", "if 'computeDistance = true', then rest length of each element equal 0, otherwise rest length is the initial lenght of each of them"))
    , f_restLengths(initData(&f_restLengths, "restLengths", "Rest lengths of the connections"))
    , d_showObjectScale(initData(&d_showObjectScale, Real(0), "showObjectScale", "Scale for object display"))
    , d_color(initData(&d_color, sofa::type::RGBAColor(1,1,0,1), "showColor", "Color for object display. (default=[1.0,1.0,0.0,1.0])"))
    , d_indexPairs(initData(&d_indexPairs, "indexPairs", "list of couples (parent index + index in the parent)"))
    , d_geometricStiffness(initData(&d_geometricStiffness, (unsigned)2, "geometricStiffness", "0 -> no GS, 1 -> exact GS, 2 -> stabilized GS (default)"))
    , l_topology(initLink("topology", "link to the topology container"))
{
}

template <class TIn, class TOut>
DistanceMultiMapping<TIn, TOut>::~DistanceMultiMapping()
{
    release();
}


template <class TIn, class TOut>
void DistanceMultiMapping<TIn, TOut>::addPoint( const core::BaseState* from, int index)
{

    // find the index of the parent state
    unsigned i;
    for(i=0; i<this->fromModels.size(); i++)
        if(this->fromModels.get(i)==from )
            break;
    if(i==this->fromModels.size())
    {
        msg_error() << "SubsetMultiMapping<TIn, TOut>::addPoint, parent " << from->getName() << " not found !";
        assert(0);
    }

    addPoint(i, index);
}

template <class TIn, class TOut>
void DistanceMultiMapping<TIn, TOut>::addPoint( int from, int index)
{
    assert((size_t)from<this->fromModels.size());
    type::vector<type::Vec2i>& indexPairsVector = *d_indexPairs.beginEdit();
    indexPairsVector.push_back(type::Vec2i(from,index));
    d_indexPairs.endEdit();
}


template <class TIn, class TOut>
void DistanceMultiMapping<TIn, TOut>::init()
{
    if (l_topology.empty())
    {
        msg_warning() << "link to Topology container should be set to ensure right behavior. First Topology found in current context will be used.";
        l_topology.set(this->getContext()->getMeshTopologyLink());

    }

    msg_info() << "Topology path used: '" << l_topology.getLinkedPath() << "'";
    
    if (l_topology->getNbEdges() < 1)
    {
        msg_error() << "No Topology component containing edges found at path: " << l_topology.getLinkedPath() << ", nor in current context: " << this->getContext()->name;
        sofa::core::objectmodel::BaseObject::d_componentState.setValue(sofa::core::objectmodel::ComponentState::Invalid);
        return;
    }

    const SeqEdges& links = l_topology->getEdges();

    this->getToModels()[0]->resize( links.size() );

    const type::vector<type::Vec2i>& pairs = d_indexPairs.getValue();

    // only used for warning message
    bool compliance = ((simulation::Node*)(this->getContext()))->forceField.size() && ((simulation::Node*)(this->getContext()))->forceField[0]->isCompliance.getValue();

    // compute the rest lengths if they are not known
    if( f_restLengths.getValue().size() != links.size() )
    {
        helper::WriteAccessor< Data<type::vector<Real> > > restLengths(f_restLengths);
        restLengths.resize( links.size() );
        if(!(f_computeDistance.getValue()))
        {
            for(unsigned i=0; i<links.size(); i++ )
            {
                const type::Vec2i& pair0 = pairs[ links[i][0] ];
                const type::Vec2i& pair1 = pairs[ links[i][1] ];

                const InCoord& pos0 = this->getFromModels()[pair0[0]]->readPositions()[pair0[1]];
                const InCoord& pos1 = this->getFromModels()[pair1[0]]->readPositions()[pair1[1]];

                restLengths[i] = (pos0 - pos1).norm();

                msg_error_when(restLengths[i] == 0 && compliance) << "Null rest Length cannot be used for stable compliant constraint, prefer to use a DifferenceMapping for this dof " << i << " if used with a compliance";
            }
        }
        else
        {
            msg_error_when(compliance) << "Null rest Lengths cannot be used for stable compliant constraint, prefer to use a DifferenceMapping if those dofs are used with a compliance";
            for(unsigned i=0; i<links.size(); i++ )
                restLengths[i] = (Real)0.;
        }
    }
    else if( compliance ) // manually set // for warning message
    {
        helper::ReadAccessor< Data<type::vector<Real> > > restLengths(f_restLengths);
        std::stringstream sstream;
        for(unsigned i=0; i<links.size(); i++ )
            if( restLengths[i]<=s_null_distance_epsilon ) sstream <<"Null rest Length cannot be used for stable compliant constraint, prefer to use a DifferenceMapping for this dof "<<i<<" if used with a compliance \n";
        msg_error_when(!sstream.str().empty()) << sstream.str();
    }

    alloc();

    this->Inherit::init();  // applies the mapping, so after the Data init
}

template <class TIn, class TOut>
void DistanceMultiMapping<TIn, TOut>::computeCoordPositionDifference( Direction& r, const InCoord& a, const InCoord& b )
{
    r = TIn::getCPos(b)-TIn::getCPos(a);
}

template <class TIn, class TOut>
void DistanceMultiMapping<TIn, TOut>::apply(const type::vector<OutVecCoord*>& outPos, const vecConstInVecCoord& inPos)
{
    OutVecCoord& out = *outPos[0];

    const type::vector<type::Vec2i>& pairs = d_indexPairs.getValue();
    helper::ReadAccessor<Data<type::vector<Real> > > restLengths(f_restLengths);
    const SeqEdges& links = l_topology->getEdges();


    unsigned totalInSize = 0;
    for( unsigned i=0 ; i<this->getFromModels().size() ; ++i )
    {
        size_t insize = inPos[i]->size();
        static_cast<SparseMatrixEigen*>(baseMatrices[i])->resizeBlocks(out.size(),insize);
        totalInSize += insize;
    }
//    fullJ.resizeBlocks( out.size(), totalInSize  );
    K.resizeBlocks( totalInSize, totalInSize  );

    directions.resize(out.size());
    invlengths.resize(out.size());

    for(unsigned i=0; i<links.size(); i++ )
    {
        Direction& gap = directions[i];

        const type::Vec2i& pair0 = pairs[ links[i][0] ];
        const type::Vec2i& pair1 = pairs[ links[i][1] ];

        const InCoord& pos0 = (*inPos[pair0[0]])[pair0[1]];
        const InCoord& pos1 = (*inPos[pair1[0]])[pair1[1]];

        // gap = pos1-pos0 (only for position)
        computeCoordPositionDifference( gap, pos0, pos1 );

        Real gapNorm = gap.norm();
        out[i] = gapNorm - restLengths[i];  // output

        // normalize
        if( gapNorm>s_null_distance_epsilon )
        {
            invlengths[i] = 1/gapNorm;
            gap *= invlengths[i];
        }
        else
        {
            invlengths[i] = 0;

            // arbritary vector mapping all directions
            Real p = 1.0f/std::sqrt((Real)In::spatial_dimensions);
            for( unsigned i=0;i<In::spatial_dimensions;++i)
                gap[i]=p;
        }

        SparseMatrixEigen* J0 = static_cast<SparseMatrixEigen*>(baseMatrices[pair0[0]]);
        SparseMatrixEigen* J1 = static_cast<SparseMatrixEigen*>(baseMatrices[pair1[0]]);

        J0->beginRow(i);
        J1->beginRow(i);
        for(unsigned k=0; k<In::spatial_dimensions; k++ )
        {
            J0->insertBack( i, pair0[1]*Nin+k, -gap[k] );
            J1->insertBack( i, pair1[1]*Nin+k,  gap[k] );
        }

    }


    for( unsigned i=0 ; i<baseMatrices.size() ; ++i )
    {
        baseMatrices[i]->compress();
    }

}


template <class TIn, class TOut>
void DistanceMultiMapping<TIn, TOut>::applyJ(const type::vector<OutVecDeriv*>& outDeriv, const type::vector<const  InVecDeriv*>& inDeriv)
{
    unsigned n = baseMatrices.size();
    unsigned i = 0;

    // let the first valid jacobian set its contribution    out = J_0 * in_0
    for( ; i < n ; ++i ) {
        const SparseMatrixEigen& J = *static_cast<SparseMatrixEigen*>(baseMatrices[i]);
        if( J.rowSize() > 0 ) {
            J.mult(*outDeriv[0], *inDeriv[i]);
            break;
        }
    }

    ++i;

    // the next valid jacobians will add their contributions    out += J_i * in_i
    for( ; i < n ; ++i ) {
        const SparseMatrixEigen& J = *static_cast<SparseMatrixEigen*>(baseMatrices[i]);
        if( J.rowSize() > 0 )
            J.addMult(*outDeriv[0], *inDeriv[i]);
    }
}

template <class TIn, class TOut>
void DistanceMultiMapping<TIn, TOut>::applyJT(const type::vector< InVecDeriv*>& outDeriv, const type::vector<const OutVecDeriv*>& inDeriv)
{
    for( unsigned i = 0, n = baseMatrices.size(); i < n; ++i) {
        const SparseMatrixEigen& J = *static_cast<SparseMatrixEigen*>(baseMatrices[i]);
        if( J.rowSize() > 0 )
            J.addMultTranspose(*outDeriv[i], *inDeriv[0]);
    }
}

template <class TIn, class TOut>
void DistanceMultiMapping<TIn, TOut>::applyDJT(const core::MechanicalParams* mparams, core::MultiVecDerivId parentDfId, core::ConstMultiVecDerivId)
{
    // NOT OPTIMIZED AT ALL, but will do the job for now

    const unsigned& geometricStiffness = d_geometricStiffness.getValue();
    if( !geometricStiffness ) return;

    const SReal kfactor = mparams->kFactor();
    const OutVecDeriv& childForce = this->getToModels()[0]->readForces().ref();
    const SeqEdges& links = l_topology->getEdges();
    const type::vector<type::Vec2i>& pairs = d_indexPairs.getValue();

    unsigned size = this->getFromModels().size();

    type::vector<InVecDeriv*> parentForce( size );
    type::vector<const InVecDeriv*> parentDisplacement( size );
    for( unsigned i=0; i< size ; i++ )
    {
        core::State<In>* fromModel = this->getFromModels()[i];
        parentForce[i] = parentDfId[fromModel].write()->beginEdit();
        parentDisplacement[i] = &mparams->readDx(fromModel)->getValue();
    }


    for(unsigned i=0; i<links.size(); i++ )
    {
        // force in compression (>0) can lead to negative eigen values in geometric stiffness
        // this results in a undefinite implicit matrix that causes instabilies
        // if stabilized GS (geometricStiffness==2) -> keep only force in extension
        if( childForce[i][0] < 0 || geometricStiffness==1 )
        {
            const type::Vec2i& pair0 = pairs[ links[i][0] ];
            const type::Vec2i& pair1 = pairs[ links[i][1] ];


            InVecDeriv& parentForce0 = *parentForce[pair0[0]];
            InVecDeriv& parentForce1 = *parentForce[pair1[0]];
            const InVecDeriv& parentDisplacement0 = *parentDisplacement[pair0[0]];
            const InVecDeriv& parentDisplacement1 = *parentDisplacement[pair1[0]];


            type::Mat<Nin,Nin,Real> b;  // = (I - uu^T)
            for(unsigned j=0; j<In::spatial_dimensions; j++)
            {
                for(unsigned k=0; k<In::spatial_dimensions; k++)
                {
                    if( j==k )
                        b[j][k] = 1.f - directions[i][j]*directions[i][k];
                    else
                        b[j][k] =     - directions[i][j]*directions[i][k];
                }
            }
            // (I - uu^T)*f/l*kfactor  --  do not forget kfactor !
            b *= (Real)(childForce[i][0] * invlengths[i] * kfactor);
            // note that computing a block is not efficient here, but it would
            // make sense for storing a stiffness matrix

            InDeriv dx = parentDisplacement1[pair1[1]] - parentDisplacement0[pair0[1]];
            InDeriv df;
            for(unsigned j=0; j<Nin; j++)
            {
                for(unsigned k=0; k<Nin; k++)
                {
                    df[j]+=b[j][k]*dx[k];
                }
            }
            parentForce0[pair0[1]] -= df;
            parentForce1[pair1[1]] += df;
        }
    }

    for( unsigned i=0; i< size ; i++ )
    {
        core::State<In>* fromModel = this->getFromModels()[i];
        parentDfId[fromModel].write()->endEdit();
    }
}




template <class TIn, class TOut>
const type::vector<sofa::linearalgebra::BaseMatrix*>* DistanceMultiMapping<TIn, TOut>::getJs()
{
    return &baseMatrices;
}

template <class TIn, class TOut>
void DistanceMultiMapping<TIn, TOut>::updateK(const core::MechanicalParams* /*mparams*/, core::ConstMultiVecDerivId childForceId )
{
    const unsigned& geometricStiffness = d_geometricStiffness.getValue();
    if( !geometricStiffness ) { K.resize(0,0); return; }

    helper::ReadAccessor<Data<OutVecDeriv> > childForce( *childForceId[(const core::State<TOut>*)this->getToModels()[0]].read() );
    const SeqEdges& links = l_topology->getEdges();
    const type::vector<type::Vec2i>& pairs = d_indexPairs.getValue();

    for(size_t i=0; i<links.size(); i++)
    {
        // force in compression (>0) can lead to negative eigen values in geometric stiffness
        // this results in a undefinite implicit matrix that causes instabilies
        // if stabilized GS (geometricStiffness==2) -> keep only force in extension
        if( childForce[i][0] < 0 || geometricStiffness==1 )
        {

            type::Mat<Nin,Nin,Real> b;  // = (I - uu^T)
            for(unsigned j=0; j<In::spatial_dimensions; j++)
            {
                for(unsigned k=0; k<In::spatial_dimensions; k++)
                {
                    if( j==k )
                        b[j][k] = 1.f - directions[i][j] * directions[i][k];
                    else
                        b[j][k] =     - directions[i][j] * directions[i][k];
                }
            }
            b *= childForce[i][0] * invlengths[i];  // (I - uu^T)*f/l


            const type::Vec2i& pair0 = pairs[ links[i][0] ];
            const type::Vec2i& pair1 = pairs[ links[i][1] ];

            // TODO optimize (precompute base Index per mechanicalobject)
            size_t globalIndex0 = 0;
            for( int i=0 ; i<pair0[0] ; ++i )
            {
                size_t insize = this->getFromModels()[i]->getSize();
                globalIndex0 += insize;
            }
            globalIndex0 += pair0[1];

            size_t globalIndex1 = 0;
            for( int i=0 ; i<pair1[0] ; ++i )
            {
                size_t insize = this->getFromModels()[i]->getSize();
                globalIndex1 += insize;
            }
            globalIndex1 += pair1[1];

            K.addBlock(globalIndex0,globalIndex0,b);
            K.addBlock(globalIndex0,globalIndex1,-b);
            K.addBlock(globalIndex1,globalIndex0,-b);
            K.addBlock(globalIndex1,globalIndex1,b);
        }
    }
    K.compress();
}


template <class TIn, class TOut>
const linearalgebra::BaseMatrix* DistanceMultiMapping<TIn, TOut>::getK()
{
    return &K;
}

template <class TIn, class TOut>
void DistanceMultiMapping<TIn, TOut>::draw(const core::visual::VisualParams* vparams)
{
    if( !vparams->displayFlags().getShowMechanicalMappings() ) return;

    const SeqEdges& links = l_topology->getEdges();

    const type::vector<type::Vec2i>& pairs = d_indexPairs.getValue();

    if( d_showObjectScale.getValue() == 0 )
    {
        type::vector< type::Vec3 > points;
        for(unsigned i=0; i<links.size(); i++ )
        {
            const type::Vec2i& pair0 = pairs[ links[i][0] ];
            const type::Vec2i& pair1 = pairs[ links[i][1] ];

            const InCoord& pos0 = this->getFromModels()[pair0[0]]->readPositions()[pair0[1]];
            const InCoord& pos1 = this->getFromModels()[pair1[0]]->readPositions()[pair1[1]];

            points.push_back( type::Vec3( TIn::getCPos(pos0) ) );
            points.push_back( type::Vec3( TIn::getCPos(pos1) ) );
        }
        vparams->drawTool()->drawLines ( points, 1, d_color.getValue() );
    }
    else
    {
        for(unsigned i=0; i<links.size(); i++ )
        {
            const type::Vec2i& pair0 = pairs[ links[i][0] ];
            const type::Vec2i& pair1 = pairs[ links[i][1] ];

            const InCoord& pos0 = this->getFromModels()[pair0[0]]->readPositions()[pair0[1]];
            const InCoord& pos1 = this->getFromModels()[pair1[0]]->readPositions()[pair1[1]];

            type::Vec3 p0 = TIn::getCPos(pos0);
            type::Vec3 p1 = TIn::getCPos(pos1);
            vparams->drawTool()->drawCylinder( p0, p1, (float)d_showObjectScale.getValue(), d_color.getValue() );
        }
    }
}

} // namespace sofa::component::mapping::nonlinear
