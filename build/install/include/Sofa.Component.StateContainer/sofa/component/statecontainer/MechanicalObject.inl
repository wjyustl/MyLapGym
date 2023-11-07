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
#include <sofa/component/statecontainer/MechanicalObject.h>

#include <sofa/core/ConstraintParams.h>
#include <sofa/core/behavior/MechanicalState.inl>
#include <sofa/linearalgebra/SparseMatrix.h>
#include <sofa/core/ConstraintParams.h>
#include <sofa/core/visual/VisualParams.h>
#include <sofa/core/topology/BaseTopology.h>
#include <sofa/core/topology/TopologyChange.h>
#include <sofa/defaulttype/DataTypeInfo.h>
#include <sofa/helper/accessor.h>
#include <sofa/simulation/Node.h>
#include <sofa/defaulttype/DataTypeOperations.h>

#ifdef SOFA_DUMP_VISITOR_INFO
#include <sofa/simulation/Visitor.h>
#endif

#include <algorithm>
#include <cassert>

namespace
{

template<class V>
void renumber(V* v, V* tmp, const sofa::type::vector< sofa::Index > &index )
{
    if (v == nullptr)
        return;

    if (v->empty())
        return;

    *tmp = *v;
    for (std::size_t i = 0; i < v->size(); ++i)
        (*v)[i] = (*tmp)[index[i]];
}

} // anonymous namespace


namespace sofa::component::statecontainer
{

template <class DataTypes>
MechanicalObject<DataTypes>::MechanicalObject()
    : x(initData(&x, "position", "position coordinates of the degrees of freedom"))
    , v(initData(&v, "velocity", "velocity coordinates of the degrees of freedom"))
    , f(initData(&f, "force", "force vector of the degrees of freedom"))
    , x0(initData(&x0, "rest_position", "rest position coordinates of the degrees of freedom"))
    , externalForces(initData(&externalForces, "externalForce", "externalForces vector of the degrees of freedom"))
    , dx(initData(&dx, "derivX", "dx vector of the degrees of freedom"))
    , xfree(initData(&xfree, "free_position", "free position coordinates of the degrees of freedom"))
    , vfree(initData(&vfree, "free_velocity", "free velocity coordinates of the degrees of freedom"))
    , c(initData(&c, "constraint", "constraints applied to the degrees of freedom"))
    , m(initData(&m, "mappingJacobian", "mappingJacobian applied to the degrees of freedom"))
    , reset_position(initData(&reset_position, "reset_position", "reset position coordinates of the degrees of freedom"))
    , reset_velocity(initData(&reset_velocity, "reset_velocity", "reset velocity coordinates of the degrees of freedom"))
    , restScale(initData(&restScale, 1.0_sreal, "restScale", "optional scaling of rest position coordinates (to simulated pre-existing internal tension).(default = 1.0)"))
    , d_useTopology(initData(&d_useTopology, true, "useTopology", "Shall this object rely on any active topology to initialize its size and positions"))
    , showObject(initData(&showObject, (bool) false, "showObject", "Show objects. (default=false)"))
    , showObjectScale(initData(&showObjectScale, 0.1f, "showObjectScale", "Scale for object display. (default=0.1)"))
    , showIndices(initData(&showIndices, (bool) false, "showIndices", "Show indices. (default=false)"))
    , showIndicesScale(initData(&showIndicesScale, 0.02f, "showIndicesScale", "Scale for indices display. (default=0.02)"))
    , showVectors(initData(&showVectors, (bool) false, "showVectors", "Show velocity. (default=false)"))
    , showVectorsScale(initData(&showVectorsScale, 0.0001f, "showVectorsScale", "Scale for vectors display. (default=0.0001)"))
    , drawMode(initData(&drawMode,0,"drawMode","The way vectors will be drawn:\n- 0: Line\n- 1:Cylinder\n- 2: Arrow.\n\nThe DOFS will be drawn:\n- 0: point\n- >1: sphere. (default=0)"))
    , d_color(initData(&d_color, type::RGBAColor::white(), "showColor", "Color for object display. (default=[1 1 1 1])"))
    , translation(initData(&translation, Vector3(), "translation", "Translation of the DOFs"))
    , rotation(initData(&rotation, Vector3(), "rotation", "Rotation of the DOFs"))
    , scale(initData(&scale, Vector3(1_sreal, 1_sreal, 1_sreal), "scale3d", "Scale of the DOFs in 3 dimensions"))
    , translation2(initData(&translation2, Vector3(), "translation2", "Translation of the DOFs, applied after the rest position has been computed"))
    , rotation2(initData(&rotation2, Vector3(), "rotation2", "Rotation of the DOFs, applied the after the rest position has been computed"))
    , d_size(initData(&d_size, 0, "size", "Size of the vectors"))
    , l_topology(initLink("topology","Link to the topology relevant for this object"))
    , f_reserve(initData(&f_reserve, 0, "reserve", "Size to reserve when creating vectors. (default=0)"))
    , m_gnuplotFileX(nullptr)
    , m_gnuplotFileV(nullptr)
{
    m_initialized = false;

    data = MechanicalObjectInternalData<DataTypes>(this);


    x               .setGroup("Vector");
    v               .setGroup("Vector");
    f               .setGroup("Vector");
    externalForces  .setGroup("Vector");
    dx              .setGroup("Vector");
    xfree           .setGroup("Vector");
    vfree           .setGroup("Vector");
    x0              .setGroup("Vector");
    c               .setGroup("Vector");
    reset_position  .setGroup("Vector");
    reset_velocity  .setGroup("Vector");

    translation     .setGroup("Transformation");
    translation2    .setGroup("Transformation");
    rotation        .setGroup("Transformation");
    rotation2       .setGroup("Transformation");
    scale           .setGroup("Transformation");

    setVecCoord(core::VecCoordId::position(), &x);
    setVecCoord(core::VecCoordId::freePosition(), &xfree);
    setVecCoord(core::VecCoordId::restPosition(), &x0);
    setVecCoord(core::VecCoordId::resetPosition(), &reset_position);
    setVecDeriv(core::VecDerivId::velocity(), &v);
    setVecDeriv(core::VecDerivId::force(), &f);
    setVecDeriv(core::VecDerivId::externalForce(), &externalForces);
    setVecDeriv(core::VecDerivId::dx(), &dx);
    setVecDeriv(core::VecDerivId::freeVelocity(), &vfree);
    setVecDeriv(core::VecDerivId::resetVelocity(), &reset_velocity);
    setVecMatrixDeriv(core::MatrixDerivId::constraintJacobian(), &c);
    setVecMatrixDeriv(core::MatrixDerivId::mappingJacobian(), &m);

    // These vectors are set as modified as they are mandatory in the MechanicalObject.
    x               .forceSet();
    //  x0              .forceSet();
    v               .forceSet();
    //    dx              .forceSet();
    f               .forceSet();
    externalForces  .forceSet();

    // there is no need for a common user to watch at these vectors
    //    dx.setDisplayed( false );
    //    freePosition.setDisplayed( false );
    //    freeVelocity.setDisplayed( false );

    // do not forget to delete these in the destructor
    //    write(VecDerivId::dforce())->forceSet();

    // What is exactly the need for allocating null vectors?
    // if sofa crashes because of a wrong access to the null vector
    // I would suspect a bug in your algo rather than the need for allocating it
    //    write(VecCoordId::null())->forceSet();
    //    write(VecDerivId::null())->forceSet();

    // default size is 1
    resize(1);
}


template <class DataTypes>
MechanicalObject<DataTypes>::~MechanicalObject()
{
    if (m_gnuplotFileV != nullptr)
        delete m_gnuplotFileV;

    if (m_gnuplotFileX != nullptr)
        delete m_gnuplotFileX;

    for(unsigned i=core::VecCoordId::V_FIRST_DYNAMIC_INDEX; i<vectorsCoord.size(); i++)
        if( vectorsCoord[i] != nullptr ) { delete vectorsCoord[i]; vectorsCoord[i]=nullptr; }
    if( vectorsCoord[core::VecCoordId::null().getIndex()] != nullptr )
    { delete vectorsCoord[core::VecCoordId::null().getIndex()]; vectorsCoord[core::VecCoordId::null().getIndex()] = nullptr; }

    for(unsigned i=core::VecDerivId::V_FIRST_DYNAMIC_INDEX; i<vectorsDeriv.size(); i++)
        if( vectorsDeriv[i] != nullptr )  { delete vectorsDeriv[i]; vectorsDeriv[i]=nullptr; }
    if( vectorsDeriv[core::VecDerivId::null().getIndex()] != nullptr )
    { delete vectorsDeriv[core::VecDerivId::null().getIndex()]; vectorsDeriv[core::VecDerivId::null().getIndex()] = nullptr; }
    if( core::VecDerivId::dforce().getIndex()<vectorsDeriv.size() && vectorsDeriv[core::VecDerivId::dforce().getIndex()] != nullptr )
    { delete vectorsDeriv[core::VecDerivId::dforce().getIndex()]; vectorsDeriv[core::VecDerivId::dforce().getIndex()] = nullptr; }

    for(unsigned i=core::MatrixDerivId::V_FIRST_DYNAMIC_INDEX; i<vectorsMatrixDeriv.size(); i++)
        if( vectorsMatrixDeriv[i] != nullptr )  { delete vectorsMatrixDeriv[i]; vectorsMatrixDeriv[i]=nullptr; }
}


template <class DataTypes>
void MechanicalObject<DataTypes>::initGnuplot(const std::string path)
{
    if( !this->getName().empty() )
    {
        if (m_gnuplotFileX != nullptr)
            delete m_gnuplotFileX;

        if (m_gnuplotFileV != nullptr)
            delete m_gnuplotFileV;

        m_gnuplotFileX = new std::ofstream( (path + this->getName()+"_x.txt").c_str() );
        m_gnuplotFileV = new std::ofstream( (path + this->getName()+"_v.txt").c_str() );
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::exportGnuplot(SReal time)
{
    if( m_gnuplotFileX!=nullptr )
    {
        (*m_gnuplotFileX) << time <<"\t"<< read(core::ConstVecCoordId::position())->getValue() << std::endl;
    }

    if( m_gnuplotFileV!=nullptr )
    {
        (*m_gnuplotFileV) << time <<"\t"<< read(core::ConstVecDerivId::velocity())->getValue() << std::endl;
    }
}

template <class DataTypes>
MechanicalObject<DataTypes> &MechanicalObject<DataTypes>::operator = (const MechanicalObject& obj)
{
    resize(obj.getSize());

    return *this;
}


template <class DataTypes>
void MechanicalObject<DataTypes>::parse ( sofa::core::objectmodel::BaseObjectDescription* arg )
{
    Inherited::parse(arg);

    if (arg->getAttribute("size") != nullptr)
    {
        int newsize = arg->getAttributeAsInt("size", 1) ;
        if(newsize>=0)
        {
            resize(newsize) ;
        }
        else
        {
            msg_warning(this) << "The attribute 'size' cannot have a negative value.  "
                                 "The value "<<newsize<<" is ignored. Current value is " <<getSize()<< ".  "
                                 "To remove this warning you need to fix your scene.";
        }
    }

    if (arg->getAttribute("scale") != nullptr)
    {
        SReal s = (SReal)arg->getAttributeAsFloat("scale", 1.0);
        scale.setValue(Vector3(s, s, s));
    }

    if (arg->getAttribute("sx") != nullptr || arg->getAttribute("sy") != nullptr || arg->getAttribute("sz") != nullptr)
    {
        scale.setValue(Vector3((SReal)arg->getAttributeAsFloat("sx",1.0),
                               (SReal)arg->getAttributeAsFloat("sy",1.0),
                               (SReal)arg->getAttributeAsFloat("sz",1.0)));
    }

    if (arg->getAttribute("rx") != nullptr || arg->getAttribute("ry") != nullptr || arg->getAttribute("rz") != nullptr)
    {
        rotation.setValue(Vector3((SReal)arg->getAttributeAsFloat("rx",0.0),
                                  (SReal)arg->getAttributeAsFloat("ry",0.0),
                                  (SReal)arg->getAttributeAsFloat("rz",0.0)));
    }

    if (arg->getAttribute("dx") != nullptr || arg->getAttribute("dy") != nullptr || arg->getAttribute("dz") != nullptr)
    {
        translation.setValue(Vector3((Real)arg->getAttributeAsFloat("dx",0.0),
                                     (Real)arg->getAttributeAsFloat("dy",0.0),
                                     (Real)arg->getAttributeAsFloat("dz",0.0)));
    }

    if (arg->getAttribute("rx2") != nullptr || arg->getAttribute("ry2") != nullptr || arg->getAttribute("rz2") != nullptr)
    {
        rotation2.setValue(Vector3((SReal)arg->getAttributeAsFloat("rx2",0.0),
                                   (SReal)arg->getAttributeAsFloat("ry2",0.0),
                                   (SReal)arg->getAttributeAsFloat("rz2",0.0)));
    }

    if (arg->getAttribute("dx2") != nullptr || arg->getAttribute("dy2") != nullptr || arg->getAttribute("dz2") != nullptr)
    {
        translation2.setValue(Vector3((Real)arg->getAttributeAsFloat("dx2",0.0),
                                      (Real)arg->getAttributeAsFloat("dy2",0.0),
                                      (Real)arg->getAttributeAsFloat("dz2",0.0)));
    }

    if (arg->getAttribute("isToPrint")!=nullptr)
    {
        msg_deprecated() << "The 'isToPrint' data field has been deprecated in SOFA v19.06 due to lack of consistency in how it should work." << msgendl
                            "Please contact sofa-dev team in case you need similar.";
    }


}


template <class DataTypes>
void MechanicalObject<DataTypes>::handleStateChange()
{
    if (!l_topology) return;

    using sofa::core::topology::TopologyChange;
    using sofa::core::topology::TopologyChangeType;
    using sofa::core::topology::PointsAdded;
    using sofa::core::topology::PointsMoved;
    using sofa::core::topology::PointsRemoved;
    using sofa::core::topology::PointsRenumbering;
    sofa::core::topology::GeometryAlgorithms *geoAlgo = nullptr;
    this->getContext()->get(geoAlgo, sofa::core::objectmodel::BaseContext::Local);

    std::list< const TopologyChange * >::const_iterator itBegin = l_topology->beginStateChange();
    std::list< const TopologyChange * >::const_iterator itEnd = l_topology->endStateChange();

    while( itBegin != itEnd )
    {
        TopologyChangeType changeType = (*itBegin)->getChangeType();

        switch( changeType )
        {
        case core::topology::POINTSADDED:
        {
            using sofa::type::vector;
            const PointsAdded &pointsAdded = *static_cast< const PointsAdded * >( *itBegin );

            Size prevSizeMechObj = getSize();
            Size nbPoints = Size(pointsAdded.getNbAddedVertices());

            if (Size(pointsAdded.pointIndexArray.size()) != nbPoints)
            {
                msg_error() << "TOPO STATE EVENT POINTSADDED SIZE MISMATCH: "
                            << nbPoints << " != " << pointsAdded.pointIndexArray.size();
            }
            for (unsigned int i=0; i<pointsAdded.pointIndexArray.size(); ++i)
            {
                Index p1 = prevSizeMechObj + i;
                Index p2 = pointsAdded.pointIndexArray[i];
                if (p1 != p2)
                {
                    dmsg_error(this) << "TOPO STATE EVENT POINTSADDED INDEX " << i << " MISMATCH: "
                                     << p1 << " != " << p2 << ".\n";
                }
            }

            const auto& ancestors = pointsAdded.ancestorsList;
            auto coefs     = pointsAdded.coefs;

            resize(prevSizeMechObj + nbPoints);

            if (!ancestors.empty() )
            {
                vector< vector< double > > coefs2;
                coefs2.resize(ancestors.size());

                for (unsigned int i = 0; i < ancestors.size(); ++i)
                {
                    coefs2[i].resize(ancestors[i].size());

                    for (unsigned int j = 0; j < ancestors[i].size(); ++j)
                    {
                        // constructng default coefs if none were defined
                        if (coefs == (const vector< vector< SReal > >)0 || coefs[i].size() == 0)
                            coefs2[i][j] = 1.0f / ancestors[i].size();
                        else
                            coefs2[i][j] = coefs[i][j];
                    }
                }

                for (unsigned int i = 0; i < ancestors.size(); ++i)
                {
                    computeWeightedValue( prevSizeMechObj + i, ancestors[i], coefs2[i] );
                }
            }

            if (!pointsAdded.ancestorElems.empty() && (geoAlgo != nullptr))
            {
                type::vector< core::VecCoordId > coordVecs;
                type::vector< core::VecDerivId > derivVecs;

                for (unsigned int k = 0; k < vectorsCoord.size(); k++)
                {
                    if (vectorsCoord[k] != nullptr)
                    {
                        const VecCoord &vecCoord = vectorsCoord[k]->getValue();

                        if (vecCoord.size() != 0)
                        {
                            coordVecs.push_back(k);
                        }
                    }
                }

                for (unsigned int k = 0; k < vectorsDeriv.size(); k++)
                {
                    if (vectorsDeriv[k] != nullptr)
                    {
                        const VecDeriv &vecDeriv = vectorsDeriv[k]->getValue();

                        if (vecDeriv.size() != 0)
                        {
                            derivVecs.push_back(k);
                        }
                    }
                }

                geoAlgo->initPointsAdded(pointsAdded.pointIndexArray, pointsAdded.ancestorElems, coordVecs, derivVecs);
            }

            break;
        }
        case core::topology::POINTSREMOVED:
        {
            const auto& tab = ( static_cast< const PointsRemoved * >( *itBegin ) )->getArray();

            unsigned int prevSizeMechObj   = getSize();
            unsigned int lastIndexMech = prevSizeMechObj - 1;
            for (unsigned int i = 0; i < tab.size(); ++i)
            {
                replaceValue(lastIndexMech, tab[i] );

                --lastIndexMech;
            }
            resize( Size(prevSizeMechObj - tab.size()) );
            break;
        }
        case core::topology::POINTSMOVED:
        {
            using sofa::type::vector;

            const auto& indicesList = ( static_cast <const PointsMoved *> (*itBegin))->indicesList;
            const auto& ancestors = ( static_cast< const PointsMoved * >( *itBegin ) )->ancestorsList;
            const auto& coefs = ( static_cast< const PointsMoved * >( *itBegin ) )->baryCoefsList;

            if (ancestors.size() != indicesList.size() || ancestors.empty())
            {
                msg_error() << "Error ! MechanicalObject::POINTSMOVED topological event, bad inputs (inputs don't share the same size or are empty).";
                break;
            }

            vector< vector < double > > coefs2;
            coefs2.resize (coefs.size());

            for (unsigned int i = 0; i<ancestors.size(); ++i)
            {
                coefs2[i].resize(ancestors[i].size());

                for (unsigned int j = 0; j < ancestors[i].size(); ++j)
                {
                    // constructng default coefs if none were defined
                    if (coefs == (const vector< vector< SReal > >)0 || coefs[i].size() == 0)
                        coefs2[i][j] = 1.0f / ancestors[i].size();
                    else
                        coefs2[i][j] = coefs[i][j];
                }
            }

            for (unsigned int i = 0; i < indicesList.size(); ++i)
            {
                computeWeightedValue( indicesList[i], ancestors[i], coefs2[i] );
            }

            break;
        }
        case core::topology::POINTSRENUMBERING:
        {
            const auto &tab = ( static_cast< const PointsRenumbering * >( *itBegin ) )->getIndexArray();

            renumberValues( tab );
            break;
        }
        default:
            // Ignore events that are not Point-related.
            break;
        }

        ++itBegin;
    }
    //#endif
}

template <class DataTypes>
void MechanicalObject<DataTypes>::replaceValue (const Index inputIndex, const Index outputIndex)
{
    //const unsigned int maxIndex = std::max(inputIndex, outputIndex);
    const Index maxIndex = inputIndex<outputIndex ? outputIndex : inputIndex;
    const Size vecCoordSize = Size(vectorsCoord.size());
    for (unsigned int i = 0; i < vecCoordSize; i++)
    {
        if (vectorsCoord[i] != nullptr)
        {
            VecCoord& vector = *(vectorsCoord[i]->beginEdit());

            if (vector.size() > maxIndex)
                vector[outputIndex] = vector[inputIndex];

            vectorsCoord[i]->endEdit();
        }
    }

    const Size vecDerivSize = Size(vectorsDeriv.size());
    for (Index i = 0; i < vecDerivSize; i++)
    {
        if (vectorsDeriv[i] != nullptr)
        {
            VecDeriv& vector = *(vectorsDeriv[i]->beginEdit());

            if (vector.size() > maxIndex)
                vector[outputIndex] = vector[inputIndex];

            vectorsDeriv[i]->endEdit();
        }
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::swapValues (const Index idx1, const Index idx2)
{
    //const unsigned int maxIndex = std::max(idx1, idx2);
    const unsigned int maxIndex = idx1<idx2 ? idx2 : idx1;

    Coord tmp;
    Deriv tmp2;
    unsigned int i;
    for (i=0; i<vectorsCoord.size(); i++)
    {
        if(vectorsCoord[i] != nullptr)
        {
            VecCoord& vector = *vectorsCoord[i]->beginEdit();
            if(vector.size() > maxIndex)
            {
                tmp = vector[idx1];
                vector[idx1] = vector[idx2];
                vector[idx2] = tmp;
            }
            vectorsCoord[i]->endEdit();
        }
    }
    for (i=0; i<vectorsDeriv.size(); i++)
    {
        if(vectorsDeriv[i] != nullptr)
        {
            VecDeriv& vector = *vectorsDeriv[i]->beginEdit();
            if(vector.size() > maxIndex)
            {
                tmp2 = vector[idx1];
                vector[idx1] = vector[idx2];
                vector[idx2] = tmp2;
            }
            vectorsDeriv[i]->endEdit();
        }
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::renumberValues( const sofa::type::vector< Index > &index )
{
    VecDeriv dtmp;
    VecCoord ctmp;

    for (unsigned int i = 0; i < vectorsCoord.size(); ++i)
    {
        if (vectorsCoord[i] != nullptr)
        {
            renumber(vectorsCoord[i]->beginEdit(), &ctmp, index);
            vectorsCoord[i]->endEdit();
        }
    }

    for (unsigned int i = 0; i < vectorsDeriv.size(); ++i)
    {
        if (vectorsDeriv[i] != nullptr)
        {
            renumber(vectorsDeriv[i]->beginEdit(), &dtmp, index);
            vectorsDeriv[i]->endEdit();
        }
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::resize(const Size size)
{
    if(size>0)
    {
        if (d_size.getValue() != static_cast<int>(size))
            d_size.setValue(static_cast<int>(size));

        for (unsigned int i = 0; i < vectorsCoord.size(); i++)
        {
            if (vectorsCoord[i] != nullptr && vectorsCoord[i]->isSet())
            {
                if (vectorsCoord[i]->getValue().size() == size)
                    continue;

                vectorsCoord[i]->beginEdit()->resize(size);
                vectorsCoord[i]->endEdit();
            }
        }

        for (unsigned int i = 0; i < vectorsDeriv.size(); i++)
        {
            if (vectorsDeriv[i] != nullptr && vectorsDeriv[i]->isSet())
            {
                if (vectorsDeriv[i]->getValue().size() == size)
                    continue;

                vectorsDeriv[i]->beginEdit()->resize(size);
                vectorsDeriv[i]->endEdit();
            }
        }
    }
    else // clear
    {
        d_size.setValue(0);
        for (unsigned int i = 0; i < vectorsCoord.size(); i++)
        {
            if (vectorsCoord[i] != nullptr && vectorsCoord[i]->isSet())
            {
                vectorsCoord[i]->beginEdit()->clear();
                vectorsCoord[i]->endEdit();
            }
        }

        for (unsigned int i = 0; i < vectorsDeriv.size(); i++)
        {
            if (vectorsDeriv[i] != nullptr && vectorsDeriv[i]->isSet())
            {
                vectorsDeriv[i]->beginEdit()->clear();
                vectorsDeriv[i]->endEdit();
            }
        }
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::reserve(const Size size)
{
    if (size == 0) return;

    for (unsigned int i = 0; i < vectorsCoord.size(); i++)
    {
        if (vectorsCoord[i] != nullptr && vectorsCoord[i]->isSet())
        {
            vectorsCoord[i]->beginEdit()->reserve(size);
            vectorsCoord[i]->endEdit();
        }
    }

    for (unsigned int i = 0; i < vectorsDeriv.size(); i++)
    {
        if (vectorsDeriv[i] != nullptr && vectorsDeriv[i]->isSet())
        {
            vectorsDeriv[i]->beginEdit()->reserve(size);
            vectorsDeriv[i]->endEdit();
        }
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::applyTranslation (const SReal dx, const SReal dy, const SReal dz)
{
    helper::WriteAccessor< Data<VecCoord> > x_wA = *this->write(core::VecCoordId::position());

    for (unsigned int i = 0; i < x_wA.size(); i++)
    {
        DataTypes::add(x_wA[i], dx, dy, dz);
    }
}

//Apply Rotation from Euler angles (in degree!)
template <class DataTypes>
void MechanicalObject<DataTypes>::applyRotation (const SReal rx, const SReal ry, const SReal rz)
{
    sofa::type::Quat<SReal> q =
            type::Quat< SReal >::createQuaterFromEuler(sofa::type::Vec3(rx, ry, rz) * M_PI / 180.0);
    applyRotation(q);
}

template <class DataTypes>
void MechanicalObject<DataTypes>::applyRotation (const type::Quat<SReal> q)
{
    helper::WriteAccessor< Data<VecCoord> > x_wA = *this->write(core::VecCoordId::position());

    for (unsigned int i = 0; i < x_wA.size(); i++)
    {
        sofa::type::Vec<3,Real> pos;
        DataTypes::get(pos[0], pos[1], pos[2], x_wA[i]);
        sofa::type::Vec<3,Real> newposition = q.rotate(pos);
        DataTypes::set(x_wA[i], newposition[0], newposition[1], newposition[2]);
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::applyScale(const SReal sx,const SReal sy,const SReal sz)
{
    helper::WriteAccessor< Data<VecCoord> > x_wA = this->writePositions();

    const sofa::type::Vec<3,Real> s((Real)sx, (Real)sy, (Real)sz);
    for (unsigned int i=0; i<x_wA.size(); ++i)
    {
        for (unsigned int j=0; j< std::min(3u, (unsigned int)DataTypes::Coord::total_size); ++j)
            x_wA[i][j] = x_wA[i][j] * s[j];
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::getIndicesInSpace(sofa::type::vector<Index>& indices, Real xmin, Real xmax, Real ymin, Real ymax, Real zmin, Real zmax) const
{
    helper::ReadAccessor< Data<VecCoord> > x_rA = this->readPositions();

    for( unsigned i=0; i<x_rA.size(); ++i )
    {
        Real x=0.0,y=0.0,z=0.0;
        DataTypes::get(x,y,z,x_rA[i]);
        if( x >= xmin && x <= xmax && y >= ymin && y <= ymax && z >= zmin && z <= zmax )
        {
            indices.push_back(i);
        }
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::computeWeightedValue( const Index i, const sofa::type::vector< Index >& ancestors, const sofa::type::vector< double >& coefs)
{
    // HD interpolate position, speed,force,...
    // assume all coef sum to 1.0
    Index j;

    const Size ancestorsSize = Size(ancestors.size());

    type::vector< Coord > ancestorsCoord(ancestorsSize);
    type::vector< Deriv > ancestorsDeriv(ancestorsSize);
    type::vector< Real > ancestorsCoefs(ancestorsSize);

    for (Index k = 0; k < vectorsCoord.size(); k++)
    {
        if (vectorsCoord[k] != nullptr)
        {
            VecCoord &vecCoord = *(vectorsCoord[k]->beginEdit());

            if (vecCoord.size() != 0)
            {
                for (j = 0; j < ancestorsSize; ++j)
                {
                    ancestorsCoord[j] = vecCoord[ancestors[j]];
                    ancestorsCoefs[j] = (Real)coefs[j];
                }

                vecCoord[i] = DataTypes::interpolate(ancestorsCoord, ancestorsCoefs);
            }

            vectorsCoord[k]->endEdit();
        }
    }

    for (Index k = 0; k < vectorsDeriv.size(); k++)
    {
        if (vectorsDeriv[k] != nullptr)
        {
            VecDeriv &vecDeriv = *(vectorsDeriv[k]->beginEdit());

            if (vecDeriv.size() != 0)
            {
                for (j = 0; j < ancestorsSize; ++j)
                {
                    ancestorsDeriv[j] = vecDeriv[ancestors[j]];
                    ancestorsCoefs[j] = (Real)coefs[j];
                }

                vecDeriv[i] = DataTypes::interpolate(ancestorsDeriv, ancestorsCoefs);
            }

            vectorsDeriv[k]->endEdit();
        }
    }
}

// Force the position of a point (and force its velocity to zero value)
template <class DataTypes>
void MechanicalObject<DataTypes>::forcePointPosition(const Index i, const sofa::type::vector< double >& m_x)
{
    helper::WriteAccessor< Data<VecCoord> > x_wA = this->writePositions();
    helper::WriteAccessor< Data<VecDeriv> > v_wA = this->writeVelocities();

    DataTypes::set(x_wA[i], m_x[0], m_x[1], m_x[2]);
    DataTypes::set(v_wA[i], (Real) 0.0, (Real) 0.0, (Real) 0.0);
}

template <class DataTypes>
void MechanicalObject<DataTypes>::copyToBaseVector(linearalgebra::BaseVector * dest, core::ConstVecId src, unsigned int &offset)
{
    if (src.type == sofa::core::V_COORD)
    {
        helper::ReadAccessor< Data<VecCoord> > vSrc = *this->read(sofa::core::ConstVecCoordId(src));
        const unsigned int coordDim = sofa::defaulttype::DataTypeInfo<Coord>::size();

        for (unsigned int i = 0; i < vSrc.size(); i++)
        {
            for (unsigned int j = 0; j < coordDim; j++)
            {
                Real tmp = (Real)0.0;
                sofa::defaulttype::DataTypeInfo<Coord>::getValue(vSrc[i], j, tmp);
                dest->set(offset + i * coordDim + j, tmp);
            }
        }

        offset += unsigned(vSrc.size() * coordDim);
    }
    else
    {
        helper::ReadAccessor< Data<VecDeriv> > vSrc = *this->read(sofa::core::ConstVecDerivId(src));
        const unsigned int derivDim = defaulttype::DataTypeInfo<Deriv>::size();

        for (unsigned int i = 0; i < vSrc.size(); i++)
        {
            for (unsigned int j = 0; j < derivDim; j++)
            {
                Real tmp;
                sofa::defaulttype::DataTypeInfo<Deriv>::getValue(vSrc[i], j, tmp);
                dest->set(offset + i * derivDim + j, tmp);
            }
        }

        offset += unsigned(vSrc.size() * derivDim);
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::copyFromBaseVector(sofa::core::VecId dest, const linearalgebra::BaseVector *src, unsigned int &offset)
{
    if (dest.type == sofa::core::V_COORD)
    {
        helper::WriteOnlyAccessor< Data<VecCoord> > vDest = *this->write(sofa::core::VecCoordId(dest));
        const unsigned int coordDim = defaulttype::DataTypeInfo<Coord>::size();

        for (unsigned int i = 0; i < vDest.size(); i++)
        {
            for (unsigned int j = 0; j < coordDim; j++)
            {
                Real tmp;
                tmp = (Real)src->element(offset + i * coordDim + j);
                sofa::defaulttype::DataTypeInfo<Coord>::setValue(vDest[i], j, tmp);
            }
        }

        offset += unsigned(vDest.size() * coordDim);
    }
    else
    {
        helper::WriteOnlyAccessor< Data<VecDeriv> > vDest = *this->write(sofa::core::VecDerivId(dest));
        const unsigned int derivDim = sofa::defaulttype::DataTypeInfo<Deriv>::size();

        for (unsigned int i = 0; i < vDest.size(); i++)
        {
            for (unsigned int j = 0; j < derivDim; j++)
            {
                Real tmp;
                tmp = (Real)src->element(offset + i * derivDim + j);
                defaulttype::DataTypeInfo<Deriv>::setValue(vDest[i], j, tmp);
            }
        }

        offset += unsigned(vDest.size() * derivDim);
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::addToBaseVector(linearalgebra::BaseVector* dest, sofa::core::ConstVecId src, unsigned int &offset)
{
    if (src.type == sofa::core::V_COORD)
    {
        helper::ReadAccessor< Data<VecCoord> > vSrc = *this->read(core::ConstVecCoordId(src));
        const unsigned int coordDim = defaulttype::DataTypeInfo<Coord>::size();

        for (unsigned int i = 0; i < vSrc.size(); i++)
        {
            for (unsigned int j = 0; j < coordDim; j++)
            {
                Real tmp = (Real)0.0;
                defaulttype::DataTypeInfo<Coord>::getValue(vSrc[i], j, tmp);
                dest->add(offset + i * coordDim + j, tmp);
            }
        }

        offset += unsigned(vSrc.size() * coordDim);
    }
    else
    {
        helper::ReadAccessor< Data<VecDeriv> > vSrc = *this->read(core::ConstVecDerivId(src));
        const unsigned int derivDim = defaulttype::DataTypeInfo<Deriv>::size();

        for (unsigned int i = 0; i < vSrc.size(); i++)
        {
            for (unsigned int j = 0; j < derivDim; j++)
            {
                Real tmp;
                defaulttype::DataTypeInfo<Deriv>::getValue(vSrc[i], j, tmp);
                dest->add(offset + i * derivDim + j, tmp);
            }
        }

        offset += unsigned(vSrc.size() * derivDim);
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::addFromBaseVectorSameSize(sofa::core::VecId dest, const linearalgebra::BaseVector *src, unsigned int &offset)
{
    if (dest.type == sofa::core::V_COORD)
    {
        helper::WriteAccessor< Data<VecCoord> > vDest = *this->write(core::VecCoordId(dest));
        const unsigned int coordDim = defaulttype::DataTypeInfo<Coord>::size();

        for (unsigned int i = 0; i < vDest.size(); i++)
        {
            for (unsigned int j = 0; j < coordDim; j++)
            {
                Real tmp = (Real)0.0;
                defaulttype::DataTypeInfo<Coord>::getValue(vDest[i], j, tmp);
                defaulttype::DataTypeInfo<Coord>::setValue(vDest[i], j, tmp + src->element(offset + i * coordDim + j));
            }
        }

        offset += unsigned(vDest.size() * coordDim);
    }
    else
    {
        helper::WriteAccessor< Data<VecDeriv> > vDest = *this->write(core::VecDerivId(dest));
        const unsigned int derivDim = defaulttype::DataTypeInfo<Deriv>::size();

        for (unsigned int i = 0; i < vDest.size(); i++)
        {
            for (unsigned int j = 0; j < derivDim; j++)
            {
                Real tmp = (Real)0.0;
                defaulttype::DataTypeInfo<Deriv>::getValue(vDest[i], j, tmp);
                defaulttype::DataTypeInfo<Deriv>::setValue(vDest[i], j, tmp + src->element(offset + i * derivDim + j));
            }
        }

        offset += unsigned(vDest.size() * derivDim);
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::addFromBaseVectorDifferentSize(sofa::core::VecId dest, const linearalgebra::BaseVector* src, unsigned int &offset )
{
    if (dest.type == sofa::core::V_COORD)
    {
        helper::WriteAccessor< Data<VecCoord> > vDest = *this->write(core::VecCoordId(dest));
        const unsigned int coordDim = defaulttype::DataTypeInfo<Coord>::size();
        const unsigned int nbEntries = src->size()/coordDim;
        for (unsigned int i=0; i<nbEntries; i++)
        {
            for (unsigned int j=0; j<coordDim; ++j)
            {
                Real tmp = (Real)0.0;
                defaulttype::DataTypeInfo<Coord>::getValue(vDest[i+offset],j,tmp);
                defaulttype::DataTypeInfo<Coord>::setValue(vDest[i+offset],j, tmp + src->element(i*coordDim+j));
            }
        }
        offset += nbEntries;
    }
    else
    {
        helper::WriteAccessor< Data<VecDeriv> > vDest = *this->write(core::VecDerivId(dest));

        const unsigned int derivDim = defaulttype::DataTypeInfo<Deriv>::size();
        const unsigned int nbEntries = src->size()/derivDim;
        for (unsigned int i=0; i<nbEntries; i++)
        {
            for (unsigned int j=0; j<derivDim; ++j)
            {
                Real tmp = (Real)0.0;
                defaulttype::DataTypeInfo<Deriv>::getValue(vDest[i+offset],j,tmp);
                defaulttype::DataTypeInfo<Deriv>::setValue(vDest[i+offset],j, tmp + src->element(i*derivDim+j));
            }
        }
        offset += nbEntries;
    }


}


template <class DataTypes>
void MechanicalObject<DataTypes>::init()
{
    if (!l_topology && d_useTopology.getValue())
    {
        l_topology.set( this->getContext()->getMeshTopology(sofa::simulation::Node::Local) );
    }

    if (l_topology)
    {
        msg_info() << "Initialization with topology " << l_topology->getTypeName() << " " << l_topology->getName() ;
    }

    // Make sure the sizes of the vectors and the arguments of the scene matches
    const std::vector<std::pair<const std::string, const Size>> vector_sizes = {
        {x.getName(),                x.getValue().size()},
        {v.getName(),                v.getValue().size()},
        {f.getName(),                f.getValue().size()},
        {externalForces.getName(),   externalForces.getValue().size()},
        {dx.getName(),               dx.getValue().size()},
        {xfree.getName(),            xfree.getValue().size()},
        {vfree.getName(),            vfree.getValue().size()},
        {x0.getName(),               x0.getValue().size()},
        {reset_position.getName(),   reset_position.getValue().size()},
        {reset_velocity.getName(),   reset_velocity.getValue().size()}
    };

    // Get the maximum size of all argument's vectors
    auto maxElement = std::max_element(vector_sizes.begin(), vector_sizes.end(),
                                       [] (const std::pair<const std::string, const Size> &a, const std::pair<const std::string, const Size> &b) {
        return a.second < b.second;
    });

    if (maxElement != vector_sizes.end()) {
        Size maxSize = (*maxElement).second;

        // Resize the mechanical object size to match the maximum size of argument's vectors
        if (getSize() < maxSize)
            resize(maxSize);

        // Print a warning if one or more vector don't match the maximum size
        bool allSizeAreEqual = true;
        for (const std::pair<const std::string, const Size>& vector_size : vector_sizes) {
            const Size& size = vector_size.second;
            if (size > 1 && size != maxSize) {
                allSizeAreEqual = false;
                break;
            }
        }

        if (!allSizeAreEqual) {
            std::string message_warning = "One or more of the state vectors passed as argument don't match the size of the others : ";
            for (const std::pair<const std::string, const Size>& vector_size : vector_sizes) {
                const std::string & name = vector_size.first;
                const Size& size = vector_size.second;
                if (size <= 1) continue;
                message_warning += name + "(size " + std::to_string(size) + ") ";
            }
            msg_warning() << message_warning;
        }
    }

    Data<VecCoord>* x_wAData = this->write(sofa::core::VecCoordId::position());
    Data<VecDeriv>* v_wAData = this->write(sofa::core::VecDerivId::velocity());
    VecCoord& x_wA = *x_wAData->beginEdit();
    VecDeriv& v_wA = *v_wAData->beginEdit();

    //case if X0 has been set but not X
    if (read(core::ConstVecCoordId::restPosition())->getValue().size() > x_wA.size())
    {
        vOp(core::execparams::defaultInstance(), core::VecId::position(), core::VecId::restPosition());
    }

    // the given position and velocity vectors are empty
    // note that when a vector is not  explicitly specified, its size won't change (1 by default)
    if( x_wA.size() <= 1 && v_wA.size() <= 1 )
    {
        // if a topology is present, implicitly copy position from it
        if (l_topology && l_topology->hasPos() )
        {
            int nbp = l_topology->getNbPoints();

            // copy the last specified velocity to all points
            if (v_wA.size() >= 1 && v_wA.size() < (unsigned)nbp)
            {
                auto i = v_wA.size();
                Deriv v1 = v_wA[i-1];
                v_wA.resize(nbp);
                while (i < v_wA.size())
                    v_wA[i++] = v1;
            }
            this->resize(nbp);
            for (int i=0; i<nbp; i++)
            {
                x_wA[i] = Coord();
                DataTypes::set(x_wA[i], l_topology->getPX(i), l_topology->getPY(i), l_topology->getPZ(i));
            }
        }
        else if( x_wA.size() == 0 )
        {
            // special case when the user manually explicitly defined an empty position vector
            // (e.g. linked to an empty vector)
            resize(0);
        }
    }
    else if ((int) x_wA.size() != d_size.getValue() || (int) v_wA.size() != d_size.getValue())
    {
        // X and/or V were user-specified
        // copy the last specified velocity to all points

        const Size xSize = Size(x_wA.size());
        const Size vSize = Size(v_wA.size());

        if (vSize >= 1 && vSize < xSize)
        {
            auto i = vSize;
            Deriv v1 = v_wA[i-1];
            v_wA.resize(xSize);
            while (i < xSize)
                v_wA[i++] = v1;
        }

        resize(xSize > v_wA.size() ? xSize : Size(v_wA.size()));
    }

    x_wAData->endEdit();
    v_wAData->endEdit();

    reinit();

    // storing X0 must be done after reinit() that possibly applies transformations
    if( read(core::ConstVecCoordId::restPosition())->getValue().size()!=x_wA.size() )
    {
        // storing X0 from X
        if( restScale.getValue()!=1 )
            vOp(core::execparams::defaultInstance(), core::VecId::restPosition(), core::ConstVecId::null(), core::VecId::position(), restScale.getValue());
        else
            vOp(core::execparams::defaultInstance(), core::VecId::restPosition(), core::VecId::position());
    }


    const Vector3& _rotation2 = rotation2.getValue();
    const Vector3& _translation2 = translation2.getValue();
    this->applyRotation(_rotation2[0],_rotation2[1],_rotation2[2]);
    this->applyTranslation(_translation2[0],_translation2[1],_translation2[2]);

    m_initialized = true;

    if (f_reserve.getValue() > 0)
        reserve(f_reserve.getValue());

}

template <class DataTypes>
void MechanicalObject<DataTypes>::reinit()
{
    const Vector3& _scale = scale.getValue();
    const Vector3& _rotation = rotation.getValue();
    const Vector3& _translation = translation.getValue();

    this->applyScale(_scale[0],_scale[1],_scale[2]);
    this->applyRotation(_rotation[0],_rotation[1],_rotation[2]);
    this->applyTranslation(_translation[0],_translation[1],_translation[2]);
}

template <class DataTypes>
void MechanicalObject<DataTypes>::storeResetState()
{
    // store a reset state only for independent dofs (mapped dofs are deduced from independent dofs)
    if( !isIndependent() ) return;

    // Save initial state for reset button
    vOp(core::execparams::defaultInstance(), core::VecId::resetPosition(), core::VecId::position());

    // we only store a resetVelocity if the velocity is not zero
    helper::ReadAccessor< Data<VecDeriv> > v = *this->read(core::VecDerivId::velocity());
    bool zero = true;
    for (unsigned int i=0; i<v.size(); ++i)
    {
        const Deriv& vi = v[i];
        for (unsigned int j=0; j<vi.size(); ++j)
            if (vi[j] != 0) zero = false;
        if (!zero) break;
    }
    if (!zero)
        vOp(core::execparams::defaultInstance(), core::VecId::resetVelocity(), core::VecId::velocity());
}


template <class DataTypes>
void MechanicalObject<DataTypes>::reset()
{
    // resetting force for every dofs, even mapped ones
    vOp(core::execparams::defaultInstance(), core::VecId::force());

    if (!reset_position.isSet()) // mapped states are deduced from independent ones
        return;

    vOp(core::execparams::defaultInstance(), core::VecId::position(), core::VecId::resetPosition());

    if (!reset_velocity.isSet())
    {
        vOp(core::execparams::defaultInstance(), core::VecId::velocity());
    }
    else
    {
        vOp(core::execparams::defaultInstance(), core::VecId::velocity(), core::VecId::resetVelocity());
    }

    if( xfree.isSet() ) vOp(core::execparams::defaultInstance(), core::VecId::freePosition(), core::VecId::position());
    if( vfree.isSet() ) vOp(core::execparams::defaultInstance(), core::VecId::freeVelocity(), core::VecId::velocity());
}


template <class DataTypes>
void MechanicalObject<DataTypes>::writeVec(core::ConstVecId v, std::ostream &out)
{
    switch (v.type)
    {
    case sofa::core::V_COORD:
        out << this->read(core::ConstVecCoordId(v))->getValue();
        break;
    case sofa::core::V_DERIV:
        out << this->read(core::ConstVecDerivId(v))->getValue();
        break;
    case sofa::core::V_MATDERIV:
        out << this->read(core::ConstMatrixDerivId(v))->getValue();
        break;
    default:
        break;
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::readVec(core::VecId v, std::istream &in)
{
    Size i = 0;

    switch (v.type)
    {
    case sofa::core::V_COORD:
    {
        Coord coord;
        helper::WriteOnlyAccessor< Data< VecCoord > > vec = *this->write(core::VecCoordId(v));

        while (in >> coord)
        {
            if (i >= getSize())
                resize(i+1);
            vec[i++] = coord;
        }

        break;
    }
    case sofa::core::V_DERIV:
    {
        Deriv deriv;
        helper::WriteOnlyAccessor< Data< VecDeriv > > vec = *this->write(core::VecDerivId(v));

        while (in >> deriv)
        {
            if (i >= getSize())
                resize(i+1);
            vec[i++] = deriv;
        }

        break;
    }
    case sofa::core::V_MATDERIV:
        //TODO
        break;
    default:
        break;
    }

    if (i < getSize())
        resize(i);
}

template <class DataTypes>
SReal MechanicalObject<DataTypes>::compareVec(core::ConstVecId v, std::istream &in)
{
    std::string ref,cur;
    getline(in, ref);

    std::ostringstream out;

    switch (v.type)
    {
    case sofa::core::V_COORD:
        out << this->read(core::ConstVecCoordId(v))->getValue();
        break;
    case sofa::core::V_DERIV:
        out << this->read(core::ConstVecDerivId(v))->getValue();
        break;
    case sofa::core::V_MATDERIV:
        out << this->read(core::ConstMatrixDerivId(v))->getValue();
        break;
    default:
        break;
    }

    cur = out.str();

    SReal error=0;
    std::istringstream compare_ref(ref);
    std::istringstream compare_cur(cur);

    Real value_ref, value_cur;
    unsigned int count=0;
    while (compare_ref >> value_ref && compare_cur >> value_cur )
    {
        error += fabs(value_ref-value_cur);
        count ++;
    }
    if( count == 0 ) return 0; //both vector are empy, so we return 0;

    return error/count;
}

template <class DataTypes>
void MechanicalObject<DataTypes>::writeState(std::ostream& out)
{
    writeVec(core::VecId::position(),out);
    out << " ";
    writeVec(core::VecId::velocity(),out);
}

template <class DataTypes>
void MechanicalObject<DataTypes>::beginIntegration(SReal /*dt*/)
{
}

template <class DataTypes>
void MechanicalObject<DataTypes>::endIntegration(const core::ExecParams* /*params*/ , SReal /*dt*/    )
{
    {
        this->externalForces.beginEdit()->clear();
        this->externalForces.endEdit();
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::accumulateForce(const core::ExecParams* params, core::VecDerivId fId)
{
    SOFA_UNUSED(params);

    {
        helper::ReadAccessor< Data<VecDeriv> > extForces_rA( *this->read(core::ConstVecDerivId::externalForce()) );

        if (!extForces_rA.empty())
        {
            helper::WriteAccessor< Data<VecDeriv> > f_wA ( *this->write(fId) );

            for (unsigned int i=0; i < extForces_rA.size(); i++)
            {
                if( extForces_rA[i] != Deriv() )
                {
                    f_wA[i] += extForces_rA[i];
                }
            }
        }
    }
}

template <class DataTypes>
Data<typename MechanicalObject<DataTypes>::VecCoord>* MechanicalObject<DataTypes>::write(core::VecCoordId v)
{

    if (v.index >= vectorsCoord.size())
    {
        vectorsCoord.resize(v.index + 1, 0);
    }

    if (vectorsCoord[v.index] == nullptr)
    {
        vectorsCoord[v.index] = new Data< VecCoord >;
        vectorsCoord[v.index]->setName(v.getName());
        const auto group = v.getGroup();
        if (!group.empty())
        {
            vectorsCoord[v.index]->setGroup(group);
        }
        else
        {
            vectorsCoord[v.index]->setGroup("Vector");
        }
        this->addData(vectorsCoord[v.index]);
        if (f_reserve.getValue() > 0)
        {
            vectorsCoord[v.index]->beginWriteOnly()->reserve(f_reserve.getValue());
            vectorsCoord[v.index]->endEdit();
        }
        if (vectorsCoord[v.index]->getValue().size() != getSize())
        {
            vectorsCoord[v.index]->beginWriteOnly()->resize( getSize() );
            vectorsCoord[v.index]->endEdit();
        }
    }
    Data<typename MechanicalObject<DataTypes>::VecCoord>* d = vectorsCoord[v.index];
#if !defined(NDEBUG)
    const typename MechanicalObject<DataTypes>::VecCoord& val = d->getValue();
    if (!val.empty() && val.size() != (unsigned int)this->getSize())
    {
        msg_error() << "Writing to State vector " << v << " with incorrect size : " << val.size() << " != " << this->getSize();
    }
#endif
    return d;
}



template <class DataTypes>
const Data<typename MechanicalObject<DataTypes>::VecCoord>* MechanicalObject<DataTypes>::read(core::ConstVecCoordId v) const
{
    if (v.isNull())
    {
        msg_error() << "Accessing null VecCoord";
    }

    if (v.index < vectorsCoord.size() && vectorsCoord[v.index] != nullptr)
    {
        const Data<typename MechanicalObject<DataTypes>::VecCoord>* d = vectorsCoord[v.index];
#if !defined(NDEBUG)
        const typename MechanicalObject<DataTypes>::VecCoord& val = d->getValue();
        if (!val.empty() && val.size() != (unsigned int)this->getSize())
        {
            msg_error() << "Accessing State vector " << v << " with incorrect size : " << val.size() << " != " << this->getSize();
        }
#endif
        return d;
    }
    else
    {
        msg_error() << "Vector " << v << " does not exist";
        return nullptr;
    }
}

template <class DataTypes>
Data<typename MechanicalObject<DataTypes>::VecDeriv>* MechanicalObject<DataTypes>::write(core::VecDerivId v)
{

    if (v.index >= vectorsDeriv.size())
    {
        vectorsDeriv.resize(v.index + 1, 0);
    }

    if (vectorsDeriv[v.index] == nullptr)
    {
        vectorsDeriv[v.index] = new Data< VecDeriv >;
        vectorsDeriv[v.index]->setName(v.getName());
        const auto group = v.getGroup();
        if (!group.empty())
        {
            vectorsDeriv[v.index]->setGroup(group);
        }
        else
        {
            vectorsDeriv[v.index]->setGroup("Vector");
        }
        this->addData(vectorsDeriv[v.index]);
        if (f_reserve.getValue() > 0)
        {
            vectorsDeriv[v.index]->beginWriteOnly()->reserve(f_reserve.getValue());
            vectorsDeriv[v.index]->endEdit();
        }
        if (vectorsDeriv[v.index]->getValue().size() != getSize())
        {
            vectorsDeriv[v.index]->beginWriteOnly()->resize( getSize() );
            vectorsDeriv[v.index]->endEdit();
        }
    }
    Data<typename MechanicalObject<DataTypes>::VecDeriv>* d = vectorsDeriv[v.index];

#if !defined(NDEBUG)
    const typename MechanicalObject<DataTypes>::VecDeriv& val = d->getValue();
    if (!val.empty() && val.size() != (unsigned int)this->getSize())
    {
        msg_error() << "Writing to State vector " << v << " with incorrect size : " << val.size() << " != " << this->getSize();
    }
#endif
    return d;
}

template <class DataTypes>
const Data<typename MechanicalObject<DataTypes>::VecDeriv>* MechanicalObject<DataTypes>::read(core::ConstVecDerivId v) const
{

    if (v.index < vectorsDeriv.size())
    {
        const Data<typename MechanicalObject<DataTypes>::VecDeriv>* d = vectorsDeriv[v.index];

#if defined(SOFA_DEBUG) || !defined(NDEBUG)
        if(d!=NULL)
        {
            const typename MechanicalObject<DataTypes>::VecDeriv& val = d->getValue();
            if (!val.empty() && val.size() != (unsigned int)this->getSize())
            {
                msg_error() << "Accessing State vector " << v << " with incorrect size : " << val.size() << " != " << this->getSize();
            }
        }
#endif // defined(SOFA_DEBUG) || !defined(NDEBUG)

        return d;
    }
    else
    {
        msg_error() << "Vector " << v << "does not exist";
        return nullptr;
    }
}

template <class DataTypes>
Data<typename MechanicalObject<DataTypes>::MatrixDeriv>* MechanicalObject<DataTypes>::write(core::MatrixDerivId v)
{

    if (v.index >= vectorsMatrixDeriv.size())
    {
        vectorsMatrixDeriv.resize(v.index + 1, 0);
    }

    if (vectorsMatrixDeriv[v.index] == nullptr)
    {
        vectorsMatrixDeriv[v.index] = new Data< MatrixDeriv >;
        vectorsMatrixDeriv[v.index]->setName(v.getName());
        const auto group = v.getGroup();
        if (!group.empty())
        {
            vectorsMatrixDeriv[v.index]->setGroup(group);
        }
        else
        {
            vectorsMatrixDeriv[v.index]->setGroup("Vector");
        }
        this->addData(vectorsMatrixDeriv[v.index]);
    }

    return vectorsMatrixDeriv[v.index];
}

template <class DataTypes>
const Data<typename MechanicalObject<DataTypes>::MatrixDeriv>* MechanicalObject<DataTypes>::read(core::ConstMatrixDerivId v) const
{

    if (v.index < vectorsMatrixDeriv.size())
        return vectorsMatrixDeriv[v.index];
    else
    {
        msg_error() << "Vector " << v << "does not exist";
        return nullptr;
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::setVecCoord(core::ConstVecCoordId vecId, Data< VecCoord > *v)
{
    const auto index = vecId.getIndex();
    if (index >= vectorsCoord.size())
    {
        vectorsCoord.resize(index + 1, 0);
    }

    vectorsCoord[index] = v;

    const auto group = vecId.getGroup();
    if (!group.empty())
    {
        v->setGroup(group);
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::setVecDeriv(core::ConstVecDerivId vecId, Data< VecDeriv > *v)
{
    const auto index = vecId.getIndex();
    if (index >= vectorsDeriv.size())
    {
        vectorsDeriv.resize(index + 1, 0);
    }

    vectorsDeriv[index] = v;

    const auto group = vecId.getGroup();
    if (!group.empty())
    {
        v->setGroup(group);
    }
}


template <class DataTypes>
void MechanicalObject<DataTypes>::setVecMatrixDeriv(core::ConstMatrixDerivId vecId, Data < MatrixDeriv > *m)
{
    const auto index = vecId.getIndex();
    if (index >= vectorsMatrixDeriv.size())
    {
        vectorsMatrixDeriv.resize(index + 1, 0);
    }

    vectorsMatrixDeriv[index] = m;

    const auto group = vecId.getGroup();
    if (!group.empty())
    {
        m->setGroup(group);
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::vAvail(const core::ExecParams* /* params */, core::VecCoordId& v)
{
    for (unsigned int i = v.index; i < vectorsCoord.size(); ++i)
    {
        if (vectorsCoord[i] && vectorsCoord[i]->isSet())
            v.index = i+1;
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::vAvail(const core::ExecParams* /* params */, core::VecDerivId& v)
{
    for (unsigned int i = v.index; i < vectorsDeriv.size(); ++i)
    {
        if (vectorsDeriv[i] && vectorsDeriv[i]->isSet())
            v.index = i+1;
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::vAlloc(const core::ExecParams* params, core::VecCoordId v, const core::VecIdProperties& properties)
{
    SOFA_UNUSED(params);

    if (v.index >= sofa::core::VecCoordId::V_FIRST_DYNAMIC_INDEX)
    {
        Data<VecCoord>* vec_d = this->write(v);
        vec_d->beginEdit()->resize(d_size.getValue());
        vec_d->endEdit();

        setVecIdProperties(v, properties, vec_d);
    }

    //vOp(v); // clear vector
}

template <class DataTypes>
void MechanicalObject<DataTypes>::vAlloc(const core::ExecParams* params, core::VecDerivId v, const core::VecIdProperties& properties)
{
    SOFA_UNUSED(params);

    if (v.index >= sofa::core::VecDerivId::V_FIRST_DYNAMIC_INDEX)
    {
        Data<VecDeriv>* vec_d = this->write(v);
        vec_d->beginEdit()->resize(d_size.getValue());
        vec_d->endEdit();

        setVecIdProperties(v, properties, vec_d);
    }

    //vOp(v); // clear vector
}

template <class DataTypes>
void MechanicalObject<DataTypes>::vRealloc(const core::ExecParams* params, core::VecCoordId v, const core::VecIdProperties& properties)
{
    SOFA_UNUSED(params);

    Data<VecCoord>* vec_d = this->write(v);

    if ( !vec_d->isSet() /*&& v.index >= sofa::core::VecCoordId::V_FIRST_DYNAMIC_INDEX*/ )
    {
        vec_d->beginEdit()->resize(d_size.getValue());
        vec_d->endEdit();
    }

    setVecIdProperties(v, properties, vec_d);
}

template <class DataTypes>
void MechanicalObject<DataTypes>::vRealloc(const core::ExecParams* params, core::VecDerivId v, const core::VecIdProperties& properties)
{
    SOFA_UNUSED(params);

    Data<VecDeriv>* vec_d = this->write(v);

    if ( !vec_d->isSet() /*&& v.index >= sofa::core::VecDerivId::V_FIRST_DYNAMIC_INDEX*/ )
    {
        vec_d->beginEdit()->resize(d_size.getValue());
        vec_d->endEdit();
    }

    setVecIdProperties(v, properties, vec_d);
}

template <class DataTypes>
template <core::VecType vtype, core::VecAccess vaccess>
void MechanicalObject<DataTypes>::setVecIdProperties(core::TVecId<vtype, vaccess> v, const core::VecIdProperties& properties, core::BaseData* vec_d)
{
    if (!properties.label.empty())
    {
        vec_d->setName(properties.label + core::VecTypeLabels.at(vtype));
        vec_d->setHelp("VecId: " + v.getName());
    }
    if (!properties.group.empty())
    {
        vec_d->setGroup(properties.group);
    }
    else
    {
        const auto group = v.getGroup();
        if (!group.empty())
        {
            vec_d->setGroup(group);
        }
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::vFree(const core::ExecParams* params, core::VecCoordId vId)
{
    SOFA_UNUSED(params);

    if (vId.index >= sofa::core::VecCoordId::V_FIRST_DYNAMIC_INDEX)
    {
        Data< VecCoord >* vec_d = this->write(vId);

        VecCoord *vec = vec_d->beginEdit();
        vec->resize(0);
        vec_d->endEdit();

        vec_d->unset();
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::vFree(const core::ExecParams* params, core::VecDerivId vId)
{
    SOFA_UNUSED(params);

    if (vId.index >= sofa::core::VecDerivId::V_FIRST_DYNAMIC_INDEX)
    {
        Data< VecDeriv >* vec_d = this->write(vId);

        VecDeriv *vec = vec_d->beginEdit();
        vec->resize(0);
        vec_d->endEdit();

        vec_d->unset();
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::vInit(const core::ExecParams* params
                                        , core::VecCoordId vId
                                        , core::ConstVecCoordId vSrcId)
{
    Data< VecCoord >* vec_d = this->write(vId);

    if (!vec_d->isSet() || vec_d->getValue().empty())
    {
        vec_d->forceSet();
        vOp(params, vId, vSrcId);
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::vInit(const core::ExecParams* params,
                                        core::VecDerivId vId,
                                        core::ConstVecDerivId vSrcId)
{
    Data< VecDeriv >* vec_d = this->write(vId);

    if (!vec_d->isSet() || vec_d->getValue().empty())
    {
        vec_d->forceSet();
        vOp(params, vId, vSrcId);
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::vOp(const core::ExecParams* params, core::VecId v,
                                      core::ConstVecId a,
                                      core::ConstVecId b, SReal f)
{
    SOFA_UNUSED(params);

    if(v.isNull())
    {
        // ERROR
        msg_error() << "Invalid vOp operation 1 ("<<v<<','<<a<<','<<b<<','<<f<<")";
        return;
    }
    if (a.isNull())
    {
        if (b.isNull())
        {
            // v = 0
            if (v.type == sofa::core::V_COORD)
            {
                helper::WriteOnlyAccessor< Data<VecCoord> >vv( *this->write(core::VecCoordId(v)) );
                vv.resize(d_size.getValue());

                sofa::defaulttype::resetDataTypeVec(vv.wref());
            }
            else
            {
                helper::WriteOnlyAccessor< Data<VecDeriv> >vv( *this->write(core::VecDerivId(v)) );
                vv.resize(d_size.getValue());

                sofa::defaulttype::resetDataTypeVec(vv.wref());
            }
        }
        else
        {
            if (b.type != v.type)
            {
                // ERROR
                msg_error() << "Invalid vOp operation 2 ("<<v<<','<<a<<','<<b<<','<<f<<")";
                return;
            }
            if (v == b)
            {
                // v *= f
                if (v.type == sofa::core::V_COORD)
                {
                    helper::WriteAccessor< Data<VecCoord> >vv( *this->write(core::VecCoordId(v)) );
                    for (unsigned int i=0; i<vv.size(); i++)
                        vv[i] *= (Real)f;
                }
                else
                {
                    helper::WriteAccessor< Data<VecDeriv> >vv( *this->write(core::VecDerivId(v)) );
                    for (unsigned int i=0; i<vv.size(); i++)
                        vv[i] *= (Real)f;
                }
            }
            else
            {
                // v = b*f
                if (v.type == sofa::core::V_COORD)
                {
                    helper::WriteAccessor< Data<VecCoord> >vv( *this->write(core::VecCoordId(v)) );
                    helper::ReadAccessor< Data<VecCoord> > vb( *this->read(core::ConstVecCoordId(b)) );
                    vv.resize(vb.size());
                    for (unsigned int i=0; i<vv.size(); i++)
                        vv[i] = vb[i] * (Real)f;
                }
                else
                {
                    helper::WriteAccessor< Data<VecDeriv> >vv( *this->write(core::VecDerivId(v)) );
                    helper::ReadAccessor< Data<VecDeriv> > vb( *this->read(core::ConstVecDerivId(b)) );
                    vv.resize(vb.size());
                    for (unsigned int i=0; i<vv.size(); i++)
                        vv[i] = vb[i] * (Real)f;
                }
            }
        }
    }
    else
    {
        if (a.type != v.type)
        {
            // ERROR
            msg_error() << "Invalid vOp operation 3 ("<<v<<','<<a<<','<<b<<','<<f<<")";
            return;
        }
        if (b.isNull())
        {
            // v = a
            if (v.type == sofa::core::V_COORD)
            {
                helper::WriteOnlyAccessor< Data<VecCoord> > vv(*this->write(core::VecCoordId(v)) );
                helper::ReadAccessor< Data<VecCoord> > va(*this->read(core::ConstVecCoordId(a)) );
                vv.wref() = va.ref();
            }
            else
            {
                helper::WriteOnlyAccessor< Data<VecDeriv> > vv(*this->write(core::VecDerivId(v)) );
                helper::ReadAccessor< Data<VecDeriv> > va(*this->read(core::ConstVecDerivId(a)) );
                vv.wref() = va.ref();
            }
        }
        else
        {
            if (v == a)
            {
                if (f==1.0)
                {
                    // v += b
                    if (v.type == sofa::core::V_COORD)
                    {
                        helper::WriteAccessor< Data<VecCoord> > vv(*this->write(core::VecCoordId(v)) );
                        if (b.type == sofa::core::V_COORD)
                        {
                            helper::ReadAccessor< Data<VecCoord> > vb(*this->read(core::ConstVecCoordId(b)) );

                            if (vb.size() > vv.size())
                                vv.resize(vb.size());

                            for (unsigned int i=0; i<vb.size(); i++)
                                vv[i] += vb[i];
                        }
                        else
                        {
                            helper::ReadAccessor< Data<VecDeriv> > vb( *this->read(core::ConstVecDerivId(b)) );

                            if (vb.size() > vv.size())
                                vv.resize(vb.size());

                            for (unsigned int i=0; i<vb.size(); i++)
                                vv[i] += vb[i];
                        }
                    }
                    else if (b.type == sofa::core::V_DERIV)
                    {
                        helper::WriteAccessor< Data<VecDeriv> >vv( *this->write(core::VecDerivId(v)) );
                        helper::ReadAccessor< Data<VecDeriv> > vb( *this->read(core::ConstVecDerivId(b)) );

                        if (vb.size() > vv.size())
                            vv.resize(vb.size());

                        for (unsigned int i=0; i<vb.size(); i++)
                            vv[i] += vb[i];
                    }
                    else
                    {
                        // ERROR
                        msg_error() << "Invalid vOp operation 4 ("<<v<<','<<a<<','<<b<<','<<f<<")";
                        return;
                    }
                }
                else
                {
                    // v += b*f
                    if (v.type == sofa::core::V_COORD)
                    {
                        helper::WriteAccessor< Data<VecCoord> >vv( *this->write(core::VecCoordId(v)) );
                        if (b.type == sofa::core::V_COORD)
                        {
                            helper::ReadAccessor< Data<VecCoord> > vb( *this->read(core::ConstVecCoordId(b)) );

                            if (vb.size() > vv.size())
                                vv.resize(vb.size());

                            for (unsigned int i=0; i<vb.size(); i++)
                                vv[i] += vb[i]*(Real)f;
                        }
                        else
                        {
                            helper::ReadAccessor< Data<VecDeriv> > vb( *this->read(core::ConstVecDerivId(b)) );

                            if (vb.size() > vv.size())
                                vv.resize(vb.size());

                            for (unsigned int i=0; i<vb.size(); i++)
                                vv[i] += vb[i]*(Real)f;
                        }
                    }
                    else if (b.type == sofa::core::V_DERIV)
                    {
                        helper::WriteAccessor< Data<VecDeriv> >vv( *this->write(core::VecDerivId(v)) );
                        helper::ReadAccessor< Data<VecDeriv> > vb( *this->read(core::ConstVecDerivId(b)) );

                        if (vb.size() > vv.size())
                            vv.resize(vb.size());

                        for (unsigned int i=0; i<vb.size(); i++)
                            vv[i] += vb[i]*(Real)f;
                    }
                    else
                    {
                        // ERROR
                        msg_error() << "Invalid vOp operation 5 ("<<v<<','<<a<<','<<b<<','<<f<<")";
                        return;
                    }
                }
            }
            else if (v == b)
            {
                if (f==1.0)
                {
                    // v += a
                    if (v.type == sofa::core::V_COORD)
                    {
                        helper::WriteAccessor< Data<VecCoord> >vv( *this->write(core::VecCoordId(v)) );
                        if (a.type == sofa::core::V_COORD)
                        {
                            helper::ReadAccessor< Data<VecCoord> > va( *this->read(core::ConstVecCoordId(a)) );

                            if (va.size() > vv.size())
                                vv.resize(va.size());

                            for (unsigned int i=0; i<va.size(); i++)
                                vv[i] += va[i];
                        }
                        else
                        {
                            helper::ReadAccessor< Data<VecDeriv> > va( *this->read(core::ConstVecDerivId(a)) );

                            if (va.size() > vv.size())
                                vv.resize(va.size());

                            for (unsigned int i=0; i<va.size(); i++)
                                vv[i] += va[i];
                        }
                    }
                    else if (a.type == sofa::core::V_DERIV)
                    {
                        helper::WriteAccessor< Data<VecDeriv> >vv( *this->write(core::VecDerivId(v)) );
                        helper::ReadAccessor< Data<VecDeriv> > va( *this->read(core::ConstVecDerivId(a)) );

                        if (va.size() > vv.size())
                            vv.resize(va.size());

                        for (unsigned int i=0; i<va.size(); i++)
                            vv[i] += va[i];
                    }
                    else
                    {
                        // ERROR
                        msg_error() << "Invalid vOp operation 6 ("<<v<<','<<a<<','<<b<<','<<f<<")";
                        return;
                    }
                }
                else
                {
                    // v = a+v*f
                    if (v.type == sofa::core::V_COORD)
                    {
                        helper::WriteOnlyAccessor< Data<VecCoord> >vv( *this->write(core::VecCoordId(v)) );
                        helper::ReadAccessor< Data<VecCoord> > va( *this->read(core::ConstVecCoordId(a)) );
                        vv.resize(va.size());
                        for (unsigned int i=0; i<vv.size(); i++)
                        {
                            vv[i] *= (Real)f;
                            vv[i] += va[i];
                        }
                    }
                    else
                    {
                        helper::WriteOnlyAccessor< Data<VecDeriv> >vv( *this->write(core::VecDerivId(v)) );
                        helper::ReadAccessor< Data<VecDeriv> > va( *this->read(core::ConstVecDerivId(a)) );
                        vv.resize(va.size());
                        for (unsigned int i=0; i<vv.size(); i++)
                        {
                            vv[i] *= (Real)f;
                            vv[i] += va[i];
                        }
                    }
                }
            }
            else
            {
                if (f==1.0)
                {
                    // v = a+b
                    if (v.type == sofa::core::V_COORD)
                    {
                        helper::WriteOnlyAccessor< Data<VecCoord> >vv( *this->write(core::VecCoordId(v)) );
                        helper::ReadAccessor< Data<VecCoord> > va( *this->read(core::ConstVecCoordId(a)) );
                        vv.resize(va.size());
                        if (b.type == sofa::core::V_COORD)
                        {
                            helper::ReadAccessor< Data<VecCoord> > vb( *this->read(core::ConstVecCoordId(b)) );
                            for (unsigned int i=0; i<vv.size(); i++)
                            {
                                vv[i] = va[i];
                                vv[i] += vb[i];
                            }
                        }
                        else
                        {
                            helper::ReadAccessor< Data<VecDeriv> > vb( *this->read(core::ConstVecDerivId(b)) );
                            for (unsigned int i=0; i<vv.size(); i++)
                            {
                                vv[i] = va[i];
                                vv[i] += vb[i];
                            }
                        }
                    }
                    else if (b.type == sofa::core::V_DERIV)
                    {
                        helper::WriteOnlyAccessor< Data<VecDeriv> >vv( *this->write(core::VecDerivId(v)) );
                        helper::ReadAccessor< Data<VecDeriv> > va( *this->read(core::ConstVecDerivId(a)) );
                        helper::ReadAccessor< Data<VecDeriv> > vb( *this->read(core::ConstVecDerivId(b)) );
                        vv.resize(va.size());
                        for (unsigned int i=0; i<vv.size(); i++)
                        {
                            vv[i] = va[i];
                            vv[i] += vb[i];
                        }
                    }
                    else
                    {
                        // ERROR
                        msg_error() << "Invalid vOp operation 7 ("<<v<<','<<a<<','<<b<<','<<f<<")";
                        return;
                    }
                }
                else
                {
                    // v = a+b*f
                    if (v.type == sofa::core::V_COORD)
                    {
                        helper::WriteOnlyAccessor< Data<VecCoord> >vv( *this->write(core::VecCoordId(v)) );
                        helper::ReadAccessor< Data<VecCoord> > va( *this->read(core::ConstVecCoordId(a)) );
                        vv.resize(va.size());
                        if (b.type == sofa::core::V_COORD)
                        {
                            helper::ReadAccessor< Data<VecCoord> > vb( *this->read(core::ConstVecCoordId(b)) );
                            for (unsigned int i=0; i<vv.size(); i++)
                            {
                                vv[i] = va[i];
                                vv[i] += vb[i]*(Real)f;
                            }
                        }
                        else
                        {
                            helper::ReadAccessor< Data<VecDeriv> > vb( *this->read(core::ConstVecDerivId(b)) );
                            for (unsigned int i=0; i<vv.size(); i++)
                            {
                                vv[i] = va[i];
                                vv[i] += vb[i]*(Real)f;
                            }
                        }
                    }
                    else if (b.type == sofa::core::V_DERIV)
                    {
                        helper::WriteOnlyAccessor< Data<VecDeriv> >vv( *this->write(core::VecDerivId(v)) );
                        helper::ReadAccessor< Data<VecDeriv> > va( *this->read(core::ConstVecDerivId(a)) );
                        helper::ReadAccessor< Data<VecDeriv> > vb( *this->read(core::ConstVecDerivId(b)) );
                        vv.resize(va.size());
                        for (unsigned int i=0; i<vv.size(); i++)
                        {
                            vv[i] = va[i];
                            vv[i] += vb[i]*(Real)f;
                        }
                    }
                    else
                    {
                        // ERROR
                        msg_error() << "Invalid vOp operation 8 ("<<v<<','<<a<<','<<b<<','<<f<<")";
                        return;
                    }
                }
            }
        }
    }

}

template <class DataTypes>
void MechanicalObject<DataTypes>::vMultiOp(const core::ExecParams* params, const VMultiOp& ops)
{
    // optimize common integration case: v += a*dt, x += v*dt
    if (ops.size() == 2
            && ops[0].second.size() == 2
            && ops[0].first.getId(this) == ops[0].second[0].first.getId(this)
            && ops[0].first.getId(this).type == sofa::core::V_DERIV
            && ops[0].second[1].first.getId(this).type == sofa::core::V_DERIV
            && ops[1].second.size() == 2
            && ops[1].first.getId(this) == ops[1].second[0].first.getId(this)
            && ops[0].first.getId(this) == ops[1].second[1].first.getId(this)
            && ops[1].first.getId(this).type == sofa::core::V_COORD)
    {
        helper::ReadAccessor< Data<VecDeriv> > va( *this->read(core::ConstVecDerivId(ops[0].second[1].first.getId(this))) );
        helper::WriteAccessor< Data<VecDeriv> >vv( *this->write(core::VecDerivId(ops[0].first.getId(this))) );
        helper::WriteAccessor< Data<VecCoord> > vx( *this->write(core::VecCoordId(ops[1].first.getId(this))) );

        const auto n = vx.size();
        const Real f_v_v = (Real)(ops[0].second[0].second);
        const Real f_v_a = (Real)(ops[0].second[1].second);
        const Real f_x_x = (Real)(ops[1].second[0].second);
        const Real f_x_v = (Real)(ops[1].second[1].second);

        if (f_v_v == 1.0 && f_x_x == 1.0) // very common case
        {
            if (f_v_a == 1.0) // used by euler implicit and other integrators that directly computes a*dt
            {
                for (unsigned int i=0; i<n; ++i)
                {
                    vv[i] += va[i];
                    vx[i] += vv[i]*f_x_v;
                }
            }
            else
            {
                for (unsigned int i=0; i<n; ++i)
                {
                    vv[i] += va[i]*f_v_a;
                    vx[i] += vv[i]*f_x_v;
                }
            }
        }
        else if (f_x_x == 1.0) // some damping is applied to v
        {
            for (unsigned int i=0; i<n; ++i)
            {
                vv[i] *= f_v_v;
                vv[i] += va[i];
                vx[i] += vv[i]*f_x_v;
            }
        }
        else // general case
        {
            for (unsigned int i=0; i<n; ++i)
            {
                vv[i] *= f_v_v;
                vv[i] += va[i]*f_v_a;
                vx[i] *= f_x_x;
                vx[i] += vv[i]*f_x_v;
            }
        }
    }
    else if(ops.size()==2 //used in the ExplicitBDF solver only (Electrophysiology)
            && ops[0].second.size()==1
            && ops[0].second[0].second == 1.0
            && ops[1].second.size()==3
            )
    {
        helper::ReadAccessor< Data<VecCoord> > v11( *this->read(core::ConstVecCoordId(ops[0].second[0].first.getId(this))) );
        helper::ReadAccessor< Data<VecCoord> > v21( *this->read(core::ConstVecCoordId(ops[1].second[0].first.getId(this))) );
        helper::ReadAccessor< Data<VecCoord> > v22( *this->read(core::ConstVecCoordId(ops[1].second[1].first.getId(this))) );
        helper::ReadAccessor< Data<VecDeriv> > v23( *this->read(core::ConstVecDerivId(ops[1].second[2].first.getId(this))) );

        helper::WriteAccessor< Data<VecCoord> > previousPos( *this->write(core::VecCoordId(ops[0].first.getId(this))) );
        helper::WriteAccessor< Data<VecCoord> > newPos( *this->write(core::VecCoordId(ops[1].first.getId(this))) );

        const auto n = v11.size();
        const Real f_1 = (Real)(ops[1].second[0].second);
        const Real f_2 = (Real)(ops[1].second[1].second);
        const Real f_3 = (Real)(ops[1].second[2].second);

        for (unsigned int i=0; i<n; ++i)
        {
            previousPos[i] = v11[i];
            newPos[i]  = v21[i]*f_1;
            newPos[i] += v22[i]*f_2;
            newPos[i] += v23[i]*f_3;
        }
    }
    else // no optimization for now for other cases
        Inherited::vMultiOp(params, ops);
}

template <class T> inline void clear( T& t )
{
    t.clear();
}

template<> inline void clear( float& t )
{
    t=0;
}

template<> inline void clear( double& t )
{
    t=0;
}

template <class DataTypes>
void MechanicalObject<DataTypes>::vThreshold(core::VecId v, SReal t)
{
    if( v.type==sofa::core::V_DERIV)
    {
        helper::WriteAccessor< Data<VecDeriv> > vv = *this->write(core::VecDerivId(v));
        Real t2 = (Real)(t*t);
        for (unsigned int i=0; i<vv.size(); i++)
        {
            if( vv[i]*vv[i] < t2 )
                clear(vv[i]);
        }
    }
    else
    {
        msg_error()<<"vThreshold does not apply to coordinate vectors";
    }
}

template <class DataTypes>
SReal MechanicalObject<DataTypes>::vDot(const core::ExecParams*, core::ConstVecId a, core::ConstVecId b)
{
    Real r = 0.0;

    if (a.type == sofa::core::V_COORD && b.type == sofa::core::V_COORD)
    {
        const VecCoord &va = this->read(core::ConstVecCoordId(a))->getValue();
        const VecCoord &vb = this->read(core::ConstVecCoordId(b))->getValue();

        for (unsigned int i=0; i<va.size(); i++)
        {
            r += va[i] * vb[i];
        }
    }
    else if (a.type == sofa::core::V_DERIV && b.type == sofa::core::V_DERIV)
    {
        const VecDeriv &va = this->read(core::ConstVecDerivId(a))->getValue();
        const VecDeriv &vb = this->read(core::ConstVecDerivId(b))->getValue();

        for (unsigned int i=0; i<va.size(); i++)
        {
            r += va[i] * vb[i];
        }
    }
    else
    {
        msg_error() << "Invalid dot operation ("<<a<<','<<b<<")";
    }

    return r;
}

typedef std::size_t nat;

template <class DataTypes>
SReal MechanicalObject<DataTypes>::vSum(const core::ExecParams* params, core::ConstVecId a, unsigned l)
{
    SOFA_UNUSED(params);

    Real r = 0.0;

    if (a.type == sofa::core::V_COORD )
    {
        msg_error() << "Invalid vSum operation: can not compute the sum of V_Coord terms in vector "<< a;
    }
    else if (a.type == sofa::core::V_DERIV)
    {
        const VecDeriv &va = this->read(core::ConstVecDerivId(a))->getValue();

        if( l==0 ) for (nat i=0; i<va.size(); i++)
        {
            for(unsigned j=0; j<DataTypes::deriv_total_size; j++)
                if ( fabs(va[i][j])>r) r=fabs(va[i][j]);
        }
        else for (unsigned int i=0; i<va.size(); i++)
        {
            for(unsigned j=0; j<DataTypes::deriv_total_size; j++)
                r += (Real) exp(va[i][j]/l);
        }
    }
    else
    {
        msg_error() << "Invalid vSum operation ("<<a<<")";
    }

    return r;
}

template <class DataTypes>
SReal MechanicalObject<DataTypes>::vMax(const core::ExecParams* params, core::ConstVecId a )
{
    SOFA_UNUSED(params);

    Real r = 0.0;

    if (a.type == sofa::core::V_COORD )
    {
        const VecCoord &va = this->read(core::ConstVecCoordId(a))->getValue();

        for (nat i=0; i<va.size(); i++)
        {
            for(unsigned j=0; j<DataTypes::coord_total_size; j++)
                if (fabs(va[i][j])>r) r=fabs(va[i][j]);
        }
    }
    else if (a.type == sofa::core::V_DERIV)
    {
        const VecDeriv &va = this->read(core::ConstVecDerivId(a))->getValue();

        for (nat i=0; i<va.size(); i++)
        {
            for(unsigned j=0; j<DataTypes::deriv_total_size; j++)
                if (fabs(va[i][j])>r) r=fabs(va[i][j]);
        }
    }
    else
    {
        msg_error() << "Invalid vMax operation ("<<a<<")";
    }

    return r;
}

template <class DataTypes>
Size MechanicalObject<DataTypes>::vSize(const core::ExecParams* params, core::ConstVecId v)
{
    SOFA_UNUSED(params);

    if (v.type == sofa::core::V_COORD)
    {
        const VecCoord &vv = this->read(core::ConstVecCoordId(v))->getValue();
        return Size(vv.size() * Coord::total_size);
    }
    else if (v.type == sofa::core::V_DERIV)
    {
        const VecDeriv &vv = this->read(core::ConstVecDerivId(v))->getValue();
        return Size(vv.size() * Deriv::total_size);
    }
    else
    {
        msg_error() << "Invalid size operation ("<<v<<")";
        return 0;
    }
}


template <class DataTypes>
void MechanicalObject<DataTypes>::printDOF( core::ConstVecId v, std::ostream& out, int firstIndex, int range) const
{
    const unsigned int size=this->getSize();
    if ((unsigned int) (abs(firstIndex)) >= size) return;
    const unsigned int first=((firstIndex>=0)?firstIndex:size+firstIndex);
    const unsigned int max=( ( (range >= 0) && ( (range+first)<size) ) ? (range+first):size);

    if( v.type==sofa::core::V_COORD)
    {
        const Data<VecCoord>* d_x = this->read(core::ConstVecCoordId(v));
        if (d_x == nullptr) return;
        helper::ReadAccessor< Data<VecCoord> > x = *d_x;

        if (x.empty())
            return;

        for (unsigned i=first; i<max; ++i)
        {
            out << x[i];
            if (i != max-1)
                out <<" ";
        }
    }
    else if( v.type==sofa::core::V_DERIV)
    {
        const Data<VecDeriv>* d_x = this->read(core::ConstVecDerivId(v));
        if (d_x == nullptr) return;
        helper::ReadAccessor< Data<VecDeriv> > x = *d_x;

        if (x.empty())
            return;

        for (unsigned i=first; i<max; ++i)
        {
            out << x[i];
            if (i != max-1)
                out <<" ";
        }
    }
    else
        out<<"MechanicalObject<DataTypes>::printDOF, unknown v.type = "<<v.type<<std::endl;
}


template <class DataTypes>
unsigned MechanicalObject<DataTypes>::printDOFWithElapsedTime(core::ConstVecId v, unsigned count, unsigned time, std::ostream& out)
{
    if (v.type == sofa::core::V_COORD)
    {
        const Data<VecCoord>* d_x = this->read(core::ConstVecCoordId(v));
        if (d_x == nullptr) return 0;
        helper::ReadAccessor< Data<VecCoord> > x = *d_x;

        for (unsigned i = 0; i < x.size(); ++i)
        {
            out << count + i << "\t" << time << "\t" << x[i] << std::endl;
        }
        out << std::endl << std::endl;

        return unsigned(x.size());
    }
    else if (v.type == sofa::core::V_DERIV)
    {
        const Data<VecDeriv>* d_x = this->read(core::ConstVecDerivId(v));
        if (d_x == nullptr) return 0;
        helper::ReadAccessor< Data<VecDeriv> > x = *d_x;

        for (unsigned i = 0; i < x.size(); ++i)
        {
            out << count + i << "\t" << time << "\t" << x[i] << std::endl;
        }
        out << std::endl << std::endl;

        return unsigned(x.size());
    }
    else
        out << "MechanicalObject<DataTypes>::printDOFWithElapsedTime, unknown v.type = " << v.type << std::endl;

    return 0;
}

template <class DataTypes>
void MechanicalObject<DataTypes>::resetForce(const core::ExecParams* params, core::VecDerivId fid)
{
    SOFA_UNUSED(params);

    {
        helper::WriteOnlyAccessor< Data<VecDeriv> > f( *this->write(fid) );
        sofa::defaulttype::resetDataTypeVec(f.wref());
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::resetAcc(const core::ExecParams* params, core::VecDerivId aId)
{
    SOFA_UNUSED(params);

    {
        helper::WriteOnlyAccessor< Data<VecDeriv> > a( *this->write(aId) );
        sofa::defaulttype::resetDataTypeVec(a.wref());
    }
}

template <class DataTypes>
void MechanicalObject<DataTypes>::resetConstraint(const core::ConstraintParams* cParams)
{
    Data<MatrixDeriv>& c_data = *this->write(cParams->j().getId(this));
    sofa::helper::getWriteOnlyAccessor(c_data)->clear();

    Data<MatrixDeriv>& m_data = *this->write(core::MatrixDerivId::mappingJacobian());
    sofa::helper::getWriteOnlyAccessor(m_data)->clear();
}

template <class DataTypes>
void MechanicalObject<DataTypes>::getConstraintJacobian(const core::ConstraintParams* cParams, sofa::linearalgebra::BaseMatrix* J,unsigned int & off)
{
    // Compute J
    const auto N = Deriv::size();
    const MatrixDeriv& c = cParams->readJ(this)->getValue();

    MatrixDerivRowConstIterator rowItEnd = c.end();

    for (MatrixDerivRowConstIterator rowIt = c.begin(); rowIt != rowItEnd; ++rowIt)
    {
        const int cid = rowIt.index();

        MatrixDerivColConstIterator colItEnd = rowIt.end();

        for (MatrixDerivColConstIterator colIt = rowIt.begin(); colIt != colItEnd; ++colIt) {
            const unsigned int dof = colIt.index();
            const Deriv n = colIt.val();

            for (unsigned int r = 0; r < N; ++r) {
                J->add(cid, off + dof * N + r, n[r]);
            }
        }
    }

    off += this->getSize() * N;
}

template <class DataTypes>
void MechanicalObject<DataTypes>::buildIdentityBlocksInJacobian(const sofa::type::vector<unsigned int>& list_n, core::MatrixDerivId &mID)
{
    const auto N = Deriv::size();
    Data<MatrixDeriv>* cMatrix= this->write(mID);

    unsigned int columnIndex = 0;
    MatrixDeriv& jacobian = *cMatrix->beginEdit();


    for (unsigned int i=0; i<list_n.size(); i++)
    { //loop on the nodes on which we assign the identity blocks
        unsigned int node= list_n[i];

        for(unsigned int j=0; j<N; j++)
        {   //identity block
            typename DataTypes::MatrixDeriv::RowIterator rowIterator = jacobian.writeLine(N*node + j);
            Deriv d;
            d[j]=1.0;
            rowIterator.setCol(node,  d);
            columnIndex++;
        }
    }
    cMatrix->endEdit();

}

template <class DataTypes>
std::list< core::behavior::BaseMechanicalState::ConstraintBlock > MechanicalObject<DataTypes>::constraintBlocks( const std::list<unsigned int> &indices) const
{
    const unsigned int dimensionDeriv = defaulttype::DataTypeInfo< Deriv >::size();
    assert( indices.size() > 0 );
    assert( dimensionDeriv > 0 );

    // simple column/block map

    typedef sofa::linearalgebra::SparseMatrix<SReal> matrix_t;
    // typedef sofa::component::linearsolver::FullMatrix<SReal> matrix_t;

    typedef std::map<unsigned int, matrix_t* > blocks_t;
    blocks_t blocks;

    // for all row indices
    typedef std::list<unsigned int> indices_t;

    const MatrixDeriv& constraints = c.getValue();

    unsigned int block_row = 0;
    for (indices_t::const_iterator rowIt = indices.begin(); rowIt != indices.end(); ++rowIt, ++block_row)
    {
        MatrixDerivRowConstIterator rowIterator = constraints.readLine(*rowIt);

        if (rowIterator != constraints.end())
        {
            MatrixDerivColConstIterator chunk = rowIterator.begin();
            MatrixDerivColConstIterator chunkEnd = rowIterator.end();

            for( ; chunk != chunkEnd ; chunk++)
            {
                const unsigned int column = chunk.index();
                if( blocks.find( column ) == blocks.end() )
                {
                    // nope: let's create it
                    matrix_t* mat = new matrix_t(linearalgebra::BaseMatrix::Index(indices.size()), linearalgebra::BaseMatrix::Index(dimensionDeriv));
                    blocks[column] = mat;
                }

                // now it's created no matter what \o/
                matrix_t& block = *blocks[column];

                // fill the right line of the block
                const Deriv curValue = chunk.val();

                for (unsigned int i = 0; i < dimensionDeriv; ++i)
                {
                    SReal value;
                    defaulttype::DataTypeInfo< Deriv >::getValue(curValue, i, value);
                    block.set(block_row, i, value);
                }
            }
        }
    }

    // put all blocks in a list and we're done
    std::list<ConstraintBlock> res;
    for(blocks_t::const_iterator b = blocks.begin(); b != blocks.end(); ++b)
    {
        res.push_back( ConstraintBlock( b->first, b->second ) );
    }

    return res;
}

template <class DataTypes>
SReal MechanicalObject<DataTypes>::getConstraintJacobianTimesVecDeriv(unsigned int line, core::ConstVecId id)
{
    SReal result = 0;

    const MatrixDeriv& constraints = c.getValue();

    MatrixDerivRowConstIterator rowIterator = constraints.readLine(line);

    if (rowIterator == constraints.end())
        return 0;

    const VecDeriv *data = 0;

    // Maybe we should extend this to restvelocity
    if (id == core::ConstVecId::velocity())
    {
        data = &v.getValue();
    }
    else if (id == core::ConstVecId::dx())
    {
        data = &dx.getValue();
    }
    else
    {
        msg_error() << "getConstraintJacobianTimesVecDeriv " << "NOT IMPLEMENTED for " << id.getName();
        return 0;
    }

    MatrixDerivColConstIterator it = rowIterator.begin();
    MatrixDerivColConstIterator itEnd = rowIterator.end();

    while (it != itEnd)
    {
        result += it.val() * (*data)[it.index()];
        ++it;
    }

    return result;
}

template <class DataTypes>
inline void MechanicalObject<DataTypes>::drawIndices(const core::visual::VisualParams* vparams)
{
    float scale = (float)((vparams->sceneBBox().maxBBox() - vparams->sceneBBox().minBBox()).norm() * showIndicesScale.getValue());

    std::vector<type::Vec3> positions;
    for (int i = 0; i <d_size.getValue(); ++i)
        positions.push_back(type::Vec3(getPX(i), getPY(i), getPZ(i)));

    vparams->drawTool()->draw3DText_Indices(positions, scale, d_color.getValue());
}

template <class DataTypes>
inline void MechanicalObject<DataTypes>::drawVectors(const core::visual::VisualParams* vparams)
{
    float scale = showVectorsScale.getValue();
    sofa::helper::ReadAccessor< Data<VecDeriv> > v_rA = *this->read(core::ConstVecDerivId::velocity());
    type::vector<Vector3> points;
    points.resize(2);
    for(Size i=0; i<v_rA.size(); ++i )
    {
        Real vx=0.0,vy=0.0,vz=0.0;
        DataTypes::get(vx,vy,vz,v_rA[i]);
        Vector3 p1 = Vector3(getPX(i), getPY(i), getPZ(i));
        Vector3 p2 = Vector3(getPX(i)+scale*vx, getPY(i)+scale*vy, getPZ(i)+scale*vz);

        float rad = (float)( (p1-p2).norm()/20.0 );
        switch (drawMode.getValue())
        {
        case 0:
            points[0] = p1;
            points[1] = p2;
            vparams->drawTool()->drawLines(points, 1, sofa::type::RGBAColor::white());
            break;
        case 1:
            vparams->drawTool()->drawCylinder(p1, p2, rad, sofa::type::RGBAColor::white());
            break;
        case 2:
            vparams->drawTool()->drawArrow(p1, p2, rad, sofa::type::RGBAColor::white());
            break;
        default:
            msg_error() << "No proper drawing mode found!";
            break;
        }
    }
}

template <class DataTypes>
inline void MechanicalObject<DataTypes>::draw(const core::visual::VisualParams* vparams)
{
    const auto stateLifeCycle = vparams->drawTool()->makeStateLifeCycle();
    vparams->drawTool()->setLightingEnabled(false);

    if (showIndices.getValue())
    {
        drawIndices(vparams);
    }

    if (showVectors.getValue())
    {
        drawVectors(vparams);
    }

    if (showObject.getValue())
    {
        const float& scale = showObjectScale.getValue();
        type::vector<Vector3> positions(d_size.getValue());
        for (Index i = 0; i < Size(d_size.getValue()); ++i)
            positions[i] = Vector3(getPX(i), getPY(i), getPZ(i));

        switch (drawMode.getValue())
        {
        case 0:
            vparams->drawTool()->drawPoints(positions,scale, d_color.getValue());
            break;
        case 1:
            vparams->drawTool()->setLightingEnabled(true);
            vparams->drawTool()->drawSpheres(positions,scale, d_color.getValue());
            break;
        case 2:
            vparams->drawTool()->setLightingEnabled(true);
            vparams->drawTool()->drawSpheres(positions,scale, sofa::type::RGBAColor::red());
            break;
        case 3:
            vparams->drawTool()->setLightingEnabled(true);
            vparams->drawTool()->drawSpheres(positions,scale, sofa::type::RGBAColor::green());
            break;
        case 4:
            vparams->drawTool()->setLightingEnabled(true);
            vparams->drawTool()->drawSpheres(positions,scale, sofa::type::RGBAColor::blue());
            break;
        default:
            msg_error() << "No proper drawing mode found!";
            break;
        }
    }

}


/// Find mechanical particles hit by the given ray.
/// A mechanical particle is defined as a 2D or 3D, position or rigid DOF
/// Returns false if this object does not support picking
template <class DataTypes>
bool MechanicalObject<DataTypes>::pickParticles(const core::ExecParams* /* params */, double rayOx, double rayOy, double rayOz, double rayDx, double rayDy, double rayDz, double radius0, double dRadius,
                                                std::multimap< double, std::pair<sofa::core::behavior::BaseMechanicalState*, int> >& particles)
{
    if (defaulttype::DataTypeInfo<Coord>::size() == 2 || defaulttype::DataTypeInfo<Coord>::size() == 3
            || (defaulttype::DataTypeInfo<Coord>::size() == 7 && defaulttype::DataTypeInfo<Deriv>::size() == 6))
        // TODO: this verification is awful and should be done by template specialization
    {
        // seems to be valid DOFs
        const VecCoord& x =this->read(core::ConstVecCoordId::position())->getValue();

        type::Vec<3,Real> origin((Real)rayOx, (Real)rayOy, (Real)rayOz);
        type::Vec<3,Real> direction((Real)rayDx, (Real)rayDy, (Real)rayDz);
        for (int i=0; i< d_size.getValue(); ++i)
        {
            type::Vec<3,Real> pos;
            DataTypes::get(pos[0],pos[1],pos[2],x[i]);

            if (pos == origin) continue;
            SReal dist = (pos-origin)*direction;
            if (dist < 0) continue; // discard particles behind the camera, such as mouse position

            type::Vec<3,Real> vecPoint = (pos-origin) - direction*dist;
            SReal distToRay = vecPoint.norm2();
            SReal maxr = radius0 + dRadius*dist;
            if (distToRay <= maxr*maxr)
            {
                particles.insert(std::make_pair(distToRay,std::make_pair(this,i)));
            }
        }
        return true;
    }
    else
        return false;
}


template <class DataTypes>
bool MechanicalObject<DataTypes>::addBBox(SReal* minBBox, SReal* maxBBox)
{
    // participating to bbox only if it is drawn
    if( !showObject.getValue() ) return false;

    static const unsigned spatial_dimensions = std::min( (unsigned)DataTypes::spatial_dimensions, 3u );

    const VecCoord& x = read(core::ConstVecCoordId::position())->getValue();
    for(Size i=0; i<x.size(); i++ )
    {
        type::Vec<3,Real> p;
        DataTypes::get( p[0], p[1], p[2], x[i] );

        for( unsigned int j=0 ; j<spatial_dimensions; ++j )
        {
            if(p[j]<minBBox[j]) minBBox[j]=p[j];
            if(p[j]>maxBBox[j]) maxBBox[j]=p[j];
        }
    }
    return true;
}


template <class DataTypes>
void MechanicalObject<DataTypes>::computeBBox(const core::ExecParams* params, bool onlyVisible)
{
    // participating to bbox only if it is drawn
    if( onlyVisible && !showObject.getValue() ) return;
    Inherited::computeBBox( params );
}

template <class DataTypes>
bool MechanicalObject<DataTypes>::isIndependent() const
{
    return static_cast<const simulation::Node*>(this->getContext())->mechanicalMapping.empty();
}


} // namespace sofa::component::statecontainer
