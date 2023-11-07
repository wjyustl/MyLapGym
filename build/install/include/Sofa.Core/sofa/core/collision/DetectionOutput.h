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
#ifndef SOFA_CORE_COLLISION_DETECTIONOUTPUT_H
#define SOFA_CORE_COLLISION_DETECTIONOUTPUT_H

#include <sofa/core/config.h>
#include <sofa/core/CollisionElement.h>
#include <sofa/type/Vec.h>
#include <sofa/type/vector.h>
#include <iostream>

namespace sofa
{

namespace core
{

namespace collision
{

/**
 *  \brief Abstract description of a set of contact point.
 */

class DetectionOutputVector
{
protected:
    virtual ~DetectionOutputVector() {}
public:
    /// Clear the content of this vector
    virtual void clear() = 0;
    /// Current size (number of detected contacts
    virtual unsigned int size() const = 0;
    /// Test if the vector is empty
    bool empty() const { return size()==0; }
    /// Delete this vector from memory once the contact pair is no longer active
    virtual void release() { delete this; }
};


/**
 *  \brief Generic description of a contact point, used for most collision models except special cases such as GPU-based collisions.
 *
 *  Each contact point is described by :
 *
 *  - elem: pair of colliding elements.
 *  - id: unique id of the contact for the given pair of collision models.
 *  - point: contact points on the surface of each model.
 *  - normal: normal of the contact, pointing outward from the first model.
 *  - value: signed distance (negative if objects are interpenetrating).
 *  - deltaT: estimated of time of contact.
 *
 *  The contact id is used to filter redundant contacts (only the contact with
 *  the smallest distance is kept), and to store persistant data over time for
 *  the response.
 *
 */

class DetectionOutput
{
public:
    typedef sofa::type::Vec3 Vector3;
    /// Pair of colliding elements.
    std::pair<core::CollisionElementIterator, core::CollisionElementIterator> elem;
    typedef int64_t ContactId;
    /// Unique id of the contact for the given pair of collision models.
    ContactId id;
    /// Contact points on the surface of each model. They are expressed in the local coordinate system of the model if any is defined..
    Vector3 point[2];
#ifdef SOFA_DETECTIONOUTPUT_FREEMOTION
    Vector3 freePoint[2]; ///< free Point in contact on each element
#endif

    /// Normal of the contact, pointing outward from the first model
    Vector3 normal;
    /*
    /// Signed distance (negative if objects are interpenetrating). If using a proximity-based detection, this is the actual distance between the objets minus the specified contact distance.
    */
    /// Store information for the collision Response. Depending on the kind of contact, can be a distance, or a pression, ...
    double value;
    /// If using a continuous collision detection, estimated of time of contact.
    double deltaT;
    DetectionOutput()
        : elem( (sofa::core::CollisionModel* )nullptr,
                (sofa::core::CollisionModel* ) nullptr), id(0), value(0.0), deltaT(0.0)
    {
    }
};



/**
 *  \brief Generic description of a set of contact point between two specific collision models
 */

template<class CM1, class CM2>
class TDetectionOutputVector : public DetectionOutputVector, public sofa::type::vector<DetectionOutput>
{
public:
    typedef sofa::type::vector<DetectionOutput> Vector;
    ~TDetectionOutputVector() override {}
    /// Clear the content of this vector
    void clear() override
    {
        return this->Vector::clear();
    }
    /// Current size (number of detected contacts)
    unsigned int size() const override
    {
        return (unsigned int)this->Vector::size();
    }
};

} // namespace collision

} // namespace core

} // namespace sofa

#endif
