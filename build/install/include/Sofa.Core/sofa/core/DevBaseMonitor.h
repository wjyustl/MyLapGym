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

#ifndef SOFA_CORE_DEVBASEMONITOR_H
#define SOFA_CORE_DEVBASEMONITOR_H

#include <sofa/core/objectmodel/BaseObject.h>

namespace sofa
{

namespace core
{

/**
 *  \brief A basic interface to define a Monitor capable to compute metrics.
 *
 *
 *
 */
class DevBaseMonitor : public virtual objectmodel::BaseObject
{
public:
    SOFA_CLASS(DevBaseMonitor, objectmodel::BaseObject);
    SOFA_BASE_CAST_IMPLEMENTATION(DevBaseMonitor)

    /// Destructor
    ~DevBaseMonitor() override {}
    /// Compute metrics
    virtual void eval() = 0;
};

} // namespace core
} // namespace sofa

#endif //SOFA_CORE_DEVBASEMONITOR_H
