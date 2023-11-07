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

#include <sofa/config.h>

#if __has_include(<SceneChecking/SceneCheckDuplicatedName.h>)
#include <SceneChecking/SceneCheckDuplicatedName.h>
#define SCENECHECKING_SCENECHECKDUPLICATEDNAME

SOFA_DEPRECATED_HEADER("v22.06", "v23.06", "SceneChecking/SceneCheckDuplicatedName.h")

#else
#error "SceneChecking-related contents have been moved to the SceneChecking plugin. Enable it and include <SceneChecking/SceneCheckDuplicatedName.h> instead of this file."
#endif

#ifdef SCENECHECKING_SCENECHECKDUPLICATEDNAME

namespace sofa::simulation::_scenechecking_
{
    using SceneCheckDuplicatedName = sofa::_scenechecking_::SceneCheckDuplicatedName;

} // namespace sofa::simulation::_scenechecking_

namespace sofa::simulation::scenechecking
{
    using SceneCheckDuplicatedName = sofa::scenechecking::SceneCheckDuplicatedName;

} // namespace sofa::simulation::_scenechecking_

#endif // SCENECHECKING_SCENECHECKDUPLICATEDNAME

#undef SCENECHECKING_SCENECHECKDUPLICATEDNAME
