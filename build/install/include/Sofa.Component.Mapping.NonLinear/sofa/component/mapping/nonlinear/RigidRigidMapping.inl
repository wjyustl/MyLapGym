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
#include <sofa/component/mapping/nonlinear/RigidRigidMapping.h>
#include <sofa/core/visual/VisualParams.h>

#include <sofa/defaulttype/VecTypes.h>
#include <sofa/defaulttype/RigidTypes.h>

#include <sofa/helper/io/XspLoader.h>
#include <sofa/helper/io/SphereLoader.h>
#include <sofa/helper/io/Mesh.h>

#include <sofa/core/MechanicalParams.h>
#include <cstring>

namespace sofa::component::mapping::nonlinear
{

template <class TIn, class TOut>
RigidRigidMapping<TIn,TOut>::RigidRigidMapping()
    : Inherit(),
      points(initData(&points, "initialPoints", "Initial position of the points")),
      repartition(initData(&repartition,"repartition","number of child frames per parent frame. \n"
                           "If empty, all the children are attached to the parent with index \n"
                           "given in the \"index\" attribute. If one value, each parent frame drives \n"
                           "the given number of children frames. Otherwise, the values are the number \n"
                           "of child frames driven by each parent frame. ")),
      index(initData(&index,sofa::Index(0),"index","input frame index")),
      fileRigidRigidMapping(initData(&fileRigidRigidMapping,"filename","Xsp file where to load rigidrigid mapping description")),
      axisLength(initData( &axisLength, 0.7, "axisLength", "axis length for display")),
      indexFromEnd( initData ( &indexFromEnd,false,"indexFromEnd","input DOF index starts from the end of input DOFs vector") ),
      globalToLocalCoords ( initData ( &globalToLocalCoords,"globalToLocalCoords","are the output DOFs initially expressed in global coordinates" ) )
{
    this->addAlias(&fileRigidRigidMapping,"fileRigidRigidMapping");
}


template <class TIn, class TOut>
class RigidRigidMapping<TIn, TOut>::Loader :
        public helper::io::XspLoaderDataHook,
        public helper::io::SphereLoaderDataHook
{
public:
    RigidRigidMapping<TIn, TOut>* dest;
    Loader(RigidRigidMapping<TIn, TOut>* dest) : dest(dest) {}

    void addMass(SReal px, SReal py, SReal pz, SReal, SReal, SReal, SReal, SReal, bool, bool) override
    {
        OutCoord c;
        Out::set(c,px,py,pz);
        dest->points.beginEdit()->push_back(c);
        dest->points.endEdit();
    }

    void addSphere(SReal px, SReal py, SReal pz, SReal) override
    {
        OutCoord c;
        Out::set(c,px,py,pz);
        dest->points.beginEdit()->push_back(c);
        dest->points.endEdit();
    }
};

template <class TIn, class TOut>
void RigidRigidMapping<TIn, TOut>::load(const char *filename)
{
    OutVecCoord& pts = *points.beginEdit();
    pts.resize(0);

    if (strlen(filename)>4 && !strcmp(filename+strlen(filename)-4,".xs3"))
    {
        Loader loader(this);
        sofa::helper::io::XspLoader::Load(filename, loader);
    }
    else if (strlen(filename)>4 && !strcmp(filename+strlen(filename)-4,".sph"))
    {
        Loader loader(this);
        sofa::helper::io::SphereLoader::Load(filename, loader);
    }
    else if (strlen(filename)>0)
    {
        // Default to mesh loader
        helper::io::Mesh* mesh = helper::io::Mesh::Create(filename);
        if (mesh!=nullptr)
        {
            pts.resize(mesh->getVertices().size());
            for (sofa::Index i=0; i<mesh->getVertices().size(); i++)
            {
                Out::set(pts[i], mesh->getVertices()[i][0], mesh->getVertices()[i][1], mesh->getVertices()[i][2]);
            }
            delete mesh;
        }
    }

    points.endEdit();
}

template <class TIn, class TOut>
void RigidRigidMapping<TIn, TOut>::init()
{

    if (!fileRigidRigidMapping.getValue().empty())
        this->load(fileRigidRigidMapping.getFullPath().c_str());

    if (this->points.getValue().empty() && this->toModel!=nullptr)
    {
        const OutVecCoord& x =this->toModel->read(core::ConstVecCoordId::position())->getValue();
        OutVecCoord& pts = *points.beginEdit();

        pts.resize(x.size());
        sofa::Index i=0, cpt=0;

        if(globalToLocalCoords.getValue() == true)
        {
            const typename In::VecCoord& xfrom =this->fromModel->read(core::ConstVecCoordId::position())->getValue();
            switch (repartition.getValue().size())
            {
            case 0 :
                for (i = 0; i < x.size(); i++)
                {
                    // pts[i] = x[i] - xfrom[0];
                    pts[i].getCenter() = xfrom[index.getValue()].getOrientation().inverse().rotate( x[i].getCenter() - xfrom[index.getValue()].getCenter() ) ;
                    pts[i].getOrientation() = xfrom[index.getValue()].getOrientation().inverse() * x[i].getOrientation() ;
                }
                break;
            case 1 :
                for (i=0; i<xfrom.size(); i++)
                    for(sofa::Index j=0; j<repartition.getValue()[0]; j++,cpt++)
                        pts[cpt] = x[cpt] - xfrom[i];
                break;
            default :
                for (i=0; i<xfrom.size(); i++)
                    for(sofa::Index j=0; j<repartition.getValue()[i]; j++,cpt++)
                        pts[cpt] = x[cpt] - xfrom[i];
                break;
            }
        }
        else
        {
            for (i=0; i<x.size(); i++)
                pts[i] = x[i];
        }

        points.endEdit();
    }

    this->Inherit::init();
}

template <class TIn, class TOut>
void RigidRigidMapping<TIn, TOut>::clear()
{
    (*this->points.beginEdit()).clear();
    this->points.endEdit();
}

template <class TIn, class TOut>
void RigidRigidMapping<TIn, TOut>::setRepartition(sofa::Size value)
{
    type::vector<sofa::Size>& rep = *this->repartition.beginEdit();
    rep.clear();
    rep.push_back(value);
    this->repartition.endEdit();
}

template <class TIn, class TOut>
void RigidRigidMapping<TIn, TOut>::setRepartition(sofa::type::vector<sofa::Size> values)
{
    type::vector<sofa::Size>& rep = *this->repartition.beginEdit();
    rep.clear();
    rep.reserve(values.size());
    auto it = values.begin();
    while (it != values.end())
    {
        rep.push_back(*it);
        it++;
    }
    this->repartition.endEdit();
}

template <class TIn, class TOut>
void RigidRigidMapping<TIn, TOut>::apply(const core::MechanicalParams * /*mparams*/, Data<OutVecCoord>& dOut, const Data<InVecCoord>& dIn)
{
    helper::WriteAccessor< Data<OutVecCoord> > out = dOut;
    helper::ReadAccessor< Data<InVecCoord> > in = dIn;

    sofa::Index cptOut;
    sofa::Size val;

    out.resize(points.getValue().size());
    pointsR0.resize(points.getValue().size());

    switch (repartition.getValue().size())
    {
    case 0 : //no value specified : simple rigid mapping
        if (!indexFromEnd.getValue())
        {
            in[index.getValue()].writeRotationMatrix(rotation);
            for(sofa::Index i=0; i<points.getValue().size(); i++)
            {
                pointsR0[i].getCenter() = rotation*(points.getValue()[i]).getCenter();
                out[i] = in[index.getValue()].mult(points.getValue()[i]);
            }
        }
        else
        {
            in[in.size() - 1 - index.getValue()].writeRotationMatrix(rotation);
            for(sofa::Index i=0; i<points.getValue().size(); i++)
            {
                pointsR0[i].getCenter() = rotation*(points.getValue()[i]).getCenter();
                out[i] = in[in.size() - 1 - index.getValue()].mult(points.getValue()[i]);
            }
        }
        break;

    case 1 : //one value specified : uniform repartition.getValue() mapping on the input dofs
        val = repartition.getValue()[0];
        cptOut=0;

        for (sofa::Index ifrom=0 ; ifrom<in.size() ; ifrom++)
        {
            in[ifrom].writeRotationMatrix(rotation);
            for(sofa::Index ito=0; ito<val; ito++)
            {
                pointsR0[cptOut].getCenter() = rotation*(points.getValue()[cptOut]).getCenter();
                out[cptOut] = in[ifrom].mult(points.getValue()[cptOut]);
                cptOut++;
            }
        }
        break;

    default: //n values are specified : heterogen repartition.getValue() mapping on the input dofs
        if (repartition.getValue().size() != in.size())
        {
            msg_error()<<"Mapping dofs repartition is not correct: repartition.getValue().size() = " << repartition.getValue().size() << " while in.size() = " << in.size();
            return;
        }
        cptOut=0;

        for (sofa::Index ifrom=0 ; ifrom<in.size() ; ifrom++)
        {
            in[ifrom].writeRotationMatrix(rotation);
            for(sofa::Index ito=0; ito<repartition.getValue()[ifrom]; ito++)
            {
                pointsR0[cptOut].getCenter() = rotation*(points.getValue()[cptOut]).getCenter();
                out[cptOut] = in[ifrom].mult(points.getValue()[cptOut]);
                cptOut++;
            }
        }
        break;
    }
}

template <class TIn, class TOut>
void RigidRigidMapping<TIn, TOut>::applyJ(const core::MechanicalParams * /*mparams*/, Data<OutVecDeriv>& dOut, const Data<InVecDeriv>& dIn)
{
    helper::WriteAccessor< Data<OutVecDeriv> > childVelocities = dOut;
    helper::ReadAccessor< Data<InVecDeriv> > parentVelocities = dIn;

    Vector v,omega;
    childVelocities.resize(points.getValue().size());
    sofa::Index cptchildVelocities;
    sofa::Size val;

    switch (repartition.getValue().size())
    {
    case 0:
        if (!indexFromEnd.getValue())
        {
            v = getVCenter(parentVelocities[index.getValue()]);
            omega = getVOrientation(parentVelocities[index.getValue()]);

            for( size_t i=0 ; i< childVelocities.size() ; ++i)
            {
                getVCenter(childVelocities[i]) =  v + cross(omega,pointsR0[i].getCenter());
                getVOrientation(childVelocities[i]) = omega;
            }
        }
        else
        {
            v = getVCenter(parentVelocities[parentVelocities.size() - 1 - index.getValue()]);
            omega = getVOrientation(parentVelocities[parentVelocities.size() - 1 - index.getValue()]);

            for( size_t i=0 ; i< childVelocities.size() ; ++i)
            {
                getVCenter(childVelocities[i]) =  v + cross(omega,pointsR0[i].getCenter());
                getVOrientation(childVelocities[i]) = omega;
            }
        }
        break;

    case 1:
        val = repartition.getValue()[0];
        cptchildVelocities=0;
        for (sofa::Index ifrom=0 ; ifrom<parentVelocities.size(); ifrom++)
        {
            v = getVCenter(parentVelocities[ifrom]);
            omega = getVOrientation(parentVelocities[ifrom]);

            for(sofa::Index ito=0; ito<val; ito++,cptchildVelocities++)
            {
                getVCenter(childVelocities[cptchildVelocities]) =  v + cross(omega,(pointsR0[cptchildVelocities]).getCenter());
                getVOrientation(childVelocities[cptchildVelocities]) = omega;
            }
        }
        break;

    default:
        if (repartition.getValue().size() != parentVelocities.size())
        {
            msg_error()<<"Mapping dofs repartition is not correct: repartition.getValue().size() = " << repartition.getValue().size() << " while parentVelocities.size() = " << parentVelocities.size();
            return;
        }
        cptchildVelocities=0;
        for (sofa::Index ifrom=0 ; ifrom<parentVelocities.size(); ifrom++)
        {
            v = getVCenter(parentVelocities[ifrom]);
            omega = getVOrientation(parentVelocities[ifrom]);

            for(sofa::Index ito=0; ito<repartition.getValue()[ifrom]; ito++,cptchildVelocities++)
            {
                getVCenter(childVelocities[cptchildVelocities]) =  v + cross(omega,(pointsR0[cptchildVelocities]).getCenter());
                getVOrientation(childVelocities[cptchildVelocities]) = omega;
            }
        }
        break;
    }

}


template <class TIn, class TOut>
void RigidRigidMapping<TIn, TOut>::applyJT(const core::MechanicalParams * /*mparams*/, Data<InVecDeriv>& dOut, const Data<OutVecDeriv>& dIn)
{
    helper::WriteAccessor< Data<InVecDeriv> > parentForces = dOut;
    helper::ReadAccessor< Data<OutVecDeriv> > childForces = dIn;

    Vector v,omega;
    sofa::Index childrenPerParent;
    sofa::Index childIndex = 0;
    sofa::Index parentIndex;

    switch(repartition.getValue().size())
    {
    case 0 :
        for( ; childIndex< childForces.size() ; ++childIndex)
        {
            // out = Jt in
            // Jt = [ I     ]
            //      [ -OM^t ]
            // -OM^t = OM^

            Vector f = getVCenter(childForces[childIndex]);
            v += f;
            omega += getVOrientation(childForces[childIndex]) + cross(f,-pointsR0[childIndex].getCenter());
        }

        parentIndex = indexFromEnd.getValue() ? sofa::Index(parentForces.size()-1-index.getValue()) : index.getValue();
        getVCenter(parentForces[parentIndex]) += v;
        getVOrientation(parentForces[parentIndex]) += omega;
        break;
    case 1 :
        childrenPerParent = repartition.getValue()[0];
        for(parentIndex=0; parentIndex<parentForces.size(); parentIndex++)
        {
            v=Vector();
            omega=Vector();
            for(sofa::Index i=0; i<childrenPerParent; i++, childIndex++)
            {
                Vector f = getVCenter(childForces[childIndex]);
                v += f;
                omega += getVOrientation(childForces[childIndex]) + cross(f,-pointsR0[childIndex].getCenter());
            }
            getVCenter(parentForces[parentIndex]) += v;
            getVOrientation(parentForces[parentIndex]) += omega;
        }
        break;
    default :
        if (repartition.getValue().size() != parentForces.size())
        {
            msg_error() <<"Mapping dofs repartition is not correct: repartition.getValue().size() = " << repartition.getValue().size() << " while parentForces.size() = " << parentForces.size();
            return;
        }
        for(parentIndex=0; parentIndex<parentForces.size(); parentIndex++)
        {
            v=Vector();
            omega=Vector();
            for(sofa::Index i=0; i<repartition.getValue()[parentIndex]; i++, childIndex++)
            {
                Vector f = getVCenter(childForces[childIndex]);
                v += f;
                omega += getVOrientation(childForces[childIndex]) + cross(f,-pointsR0[childIndex].getCenter());
            }
            getVCenter(parentForces[parentIndex]) += v;
            getVOrientation(parentForces[parentIndex]) += omega;
        }
        break;
    }

}



template <class TIn, class TOut>
void RigidRigidMapping<TIn, TOut>::applyDJT(const core::MechanicalParams* mparams, core::MultiVecDerivId parentForceChangeId, core::ConstMultiVecDerivId )
{
    helper::ReadAccessor<Data<OutVecDeriv> > childForces (*mparams->readF(this->toModel.get()));
    helper::WriteAccessor<Data<InVecDeriv> > parentForces (*parentForceChangeId[this->fromModel.get()].write());
    helper::ReadAccessor<Data<InVecDeriv> > parentDisplacements (*mparams->readDx(this->fromModel.get()));
    Real kfactor = (Real)mparams->kFactor();

    sofa::Index childrenPerParent;
    sofa::Index childIndex = 0;
    sofa::Index parentIndex;

    switch(repartition.getValue().size())
    {
    case 0 :
        parentIndex = indexFromEnd.getValue() ? sofa::Index(parentForces.size()-1-index.getValue()) : index.getValue();
        for( ; childIndex< childForces.size() ; ++childIndex)
        {
            typename TIn::AngularVector& parentTorque = getVOrientation(parentForces[parentIndex]);
            const typename TIn::AngularVector& parentRotation = getVOrientation(parentDisplacements[parentIndex]);
            parentTorque -=  TIn::crosscross( getLinear(childForces[childIndex]), parentRotation, pointsR0[childIndex].getCenter()) * kfactor;
        }

        break;
    case 1 :
        childrenPerParent = repartition.getValue()[0];
        for(parentIndex=0; parentIndex<parentForces.size(); parentIndex++)
        {            
            for( size_t i=0 ; i<childrenPerParent ; ++i, ++childIndex)
            {
                typename TIn::AngularVector& parentTorque = getVOrientation(parentForces[parentIndex]);
                const typename TIn::AngularVector& parentRotation = getVOrientation(parentDisplacements[parentIndex]);
                parentTorque -=  TIn::crosscross( getLinear(childForces[childIndex]), parentRotation, pointsR0[childIndex].getCenter()) * kfactor;
            }
        }
        break;
    default :
        if (repartition.getValue().size() != parentForces.size())
        {
            msg_error() <<"Mapping dofs repartition is not correct: repartition.getValue().size() = " << repartition.getValue().size() << " while parentForces.size() = " << parentForces.size();
            return;
        }
        for(parentIndex=0; parentIndex<parentForces.size(); parentIndex++)
        {
            for( size_t i=0 ; i<repartition.getValue()[parentIndex] ; i++, childIndex++)
            {
                typename TIn::AngularVector& parentTorque = getVOrientation(parentForces[parentIndex]);
                const typename TIn::AngularVector& parentRotation = getVOrientation(parentDisplacements[parentIndex]);
                parentTorque -=  TIn::crosscross( getLinear(childForces[childIndex]), parentRotation, pointsR0[childIndex].getCenter()) * kfactor;
            }
        }
        break;
    }

}






template <class TIn, class TOut>
void RigidRigidMapping<TIn, TOut>::applyJT(const core::ConstraintParams * /*cparams*/, Data<InMatrixDeriv>& dOut, const Data<OutMatrixDeriv>& dIn)
{
    InMatrixDeriv& out = *dOut.beginEdit();
    const OutMatrixDeriv& in = dIn.getValue();

    switch (repartition.getValue().size())
    {
    case 0:
    {
        typename Out::MatrixDeriv::RowConstIterator rowItEnd = in.end();

        for (typename Out::MatrixDeriv::RowConstIterator rowIt = in.begin(); rowIt != rowItEnd; ++rowIt)
        {
            Vector v, omega;

            typename Out::MatrixDeriv::ColConstIterator colItEnd = rowIt.end();

            for (typename Out::MatrixDeriv::ColConstIterator colIt = rowIt.begin(); colIt != colItEnd; ++colIt)
            {
                const OutDeriv data = colIt.val();
                // out = Jt in
                // Jt = [ I     ]
                //      [ -OM^t ]
                // -OM^t = OM^
                Vector f = getVCenter(data);
                v += f;
                omega += getVOrientation(data) + cross(f,-pointsR0[colIt.index()].getCenter());
            }

            const InDeriv result(v, omega);
            typename In::MatrixDeriv::RowIterator o = out.writeLine(rowIt.index());

            if (!indexFromEnd.getValue())
            {
                o.addCol(index.getValue(), result);
            }
            else
            {
                // Commented by PJ. Bug??
                // o.addCol(out.size() - 1 - index.getValue(), result);
                const sofa::Size numDofs = this->getFromModel()->getSize();
                o.addCol(numDofs - 1 - index.getValue(), result);
            }
        }

        break;
    }
    case 1:
    {
        const sofa::Size numDofs = this->getFromModel()->getSize();
        const sofa::Size val = repartition.getValue()[0];

        typename Out::MatrixDeriv::RowConstIterator rowItEnd = in.end();

        for (typename Out::MatrixDeriv::RowConstIterator rowIt = in.begin(); rowIt != rowItEnd; ++rowIt)
        {
            sofa::Index cpt = 0;

            typename Out::MatrixDeriv::ColConstIterator colIt = rowIt.begin();
            typename Out::MatrixDeriv::ColConstIterator colItEnd = rowIt.end();

            for (sofa::Index ito = 0; ito < numDofs; ito++)
            {
                Vector v, omega;
                bool needToInsert = false;

                for (sofa::Index r = 0; r < val && colIt != colItEnd; r++, cpt++)
                {
                    if (colIt.index() != cpt)
                        continue;

                    needToInsert = true;
                    const OutDeriv data = colIt.val();
                    Vector f = getVCenter(data);
                    v += f;
                    omega += getVOrientation(data) + cross(f,-pointsR0[cpt].getCenter());

                    ++colIt;
                }

                if (needToInsert)
                {
                    const InDeriv result(v, omega);

                    typename In::MatrixDeriv::RowIterator o = out.writeLine(rowIt.index());
                    o.addCol(ito, result);
                }
            }
        }

        break;
    }
    default:
    {
        const sofa::Size numDofs = this->getFromModel()->getSize();

        typename Out::MatrixDeriv::RowConstIterator rowItEnd = in.end();

        for (typename Out::MatrixDeriv::RowConstIterator rowIt = in.begin(); rowIt != rowItEnd; ++rowIt)
        {
            sofa::Index cpt = 0;

            typename Out::MatrixDeriv::ColConstIterator colIt = rowIt.begin();
            typename Out::MatrixDeriv::ColConstIterator colItEnd = rowIt.end();

            for (sofa::Index ito = 0; ito < numDofs; ito++)
            {
                Vector v, omega;
                bool needToInsert = false;

                for (sofa::Index r = 0; r < repartition.getValue()[ito] && colIt
                        != colItEnd; r++, cpt++)
                {
                    if (colIt.index() != cpt)
                        continue;

                    needToInsert = true;

                    const OutDeriv data = colIt.val();
                    const Vector f = getVCenter(data);
                    v += f;
                    omega += getVOrientation(data) + cross(f, -pointsR0[cpt].getCenter());

                    ++colIt;
                }

                if (needToInsert)
                {
                    const InDeriv result(v, omega);

                    typename In::MatrixDeriv::RowIterator o = out.writeLine(rowIt.index());
                    o.addCol(ito, result);
                }
            }
        }

        break;
    }
    }

    dOut.endEdit();
}


template <class TIn, class TOut>
void RigidRigidMapping<TIn, TOut>::computeAccFromMapping(const core::MechanicalParams *mparams, Data<OutVecDeriv>& dAcc_out, const Data<InVecDeriv>& dV_in, const Data<InVecDeriv>& dAcc_in)
{
    const InVecDeriv& v_in = dV_in.getValue();
    //	const InVecDeriv& acc_in = dAcc_in.getValue();

    {
        OutVecDeriv& acc_out = *dAcc_out.beginEdit();
        acc_out.clear();
        acc_out.resize(points.getValue().size());
        dAcc_out.endEdit();
    }

    // current acceleration on acc_in is applied on the child (when more than one mapping)
    applyJ(mparams, dAcc_out, dAcc_in);

    OutVecDeriv& acc_out = *dAcc_out.beginEdit();

    // computation of the acceleration due to the current velocity
    // a+= w^(w^OM)

    Vector omega;
    sofa::Index cptchildV;
    sofa::Size val;

    switch (repartition.getValue().size())
    {
    case 0:

        if (!indexFromEnd.getValue())
        {
            omega = getVOrientation(v_in[index.getValue()]);
        }
        else
        {
            omega = getVOrientation(v_in[v_in.size() - 1 - index.getValue()]);
        }

        for(sofa::Index i=0; i<points.getValue().size(); i++)
        {
            getVCenter(acc_out[i]) +=   cross(omega, cross(omega,pointsR0[i].getCenter()) );
        }
        break;

    case 1:
        val = repartition.getValue()[0];
        cptchildV=0;
        for (sofa::Index ifrom=0 ; ifrom<v_in.size() ; ifrom++)
        {
            omega = getVOrientation(v_in[ifrom]);

            for(sofa::Index ito=0; ito<val; ito++)
            {
                getVCenter(acc_out[cptchildV]) +=  cross(omega, cross(omega,(pointsR0[cptchildV]).getCenter()) );
                cptchildV++;
            }
        }
        break;

    default:
        if (repartition.getValue().size() != v_in.size())
        {
            msg_error() <<"Mapping dofs repartition is not correct: repartition.getValue().size() = " << repartition.getValue().size() << " while v_in.size() = " << v_in.size();
            dAcc_out.endEdit();
            return;
        }
        cptchildV=0;
        for (sofa::Index ifrom=0 ; ifrom<v_in.size() ; ifrom++)
        {
            omega = getVOrientation(v_in[ifrom]);

            for(sofa::Index ito=0; ito<repartition.getValue()[ifrom]; ito++)
            {
                getVCenter(acc_out[cptchildV]) += cross(omega, cross(omega,(pointsR0[cptchildV]).getCenter()) );
                cptchildV++;
            }
        }
        break;
    }

    dAcc_out.endEdit();
}

template <class TIn, class TOut>
void RigidRigidMapping<TIn, TOut>::draw(const core::visual::VisualParams* vparams)
{
	if (!getShow(this,vparams)) return;

    const typename Out::VecCoord& x =this->toModel->read(core::ConstVecCoordId::position())->getValue();
    const type::Vec3& sizes = type::Vec3(axisLength.getValue(), axisLength.getValue(), axisLength.getValue());
    for (sofa::Index i=0; i<x.size(); i++)
    {
        vparams->drawTool()->drawFrame(x[i].getCenter(), x[i].getOrientation(), sizes);
    }
}

template <class TIn, class TOut>
bool RigidRigidMapping<TIn, TOut>::getShow(const core::objectmodel::BaseObject* /*m*/, const core::visual::VisualParams* vparams) const { return vparams->displayFlags().getShowMechanicalMappings(); }

template <class TIn, class TOut>
bool RigidRigidMapping<TIn, TOut>::getShow(const core::BaseMapping* /*m*/, const core::visual::VisualParams* vparams) const { return vparams->displayFlags().getShowMechanicalMappings(); }


} // namespace sofa::component::mapping::nonlinear
