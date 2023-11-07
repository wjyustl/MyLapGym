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
#include <sofa/config/sharedlibrary_defines.h>

#ifdef SOFA_BUILD_SOFA_COMPONENT_LINEARSOLVER_ITERATIVE
#  define SOFA_TARGET Sofa.Component.LinearSolver.Iterative
#  define SOFA_COMPONENT_LINEARSOLVER_ITERATIVE_API SOFA_EXPORT_DYNAMIC_LIBRARY
#else
#  define SOFA_COMPONENT_LINEARSOLVER_ITERATIVE_API SOFA_IMPORT_DYNAMIC_LIBRARY
#endif

namespace sofa::component::linearsolver::iterative
{
	constexpr const char* MODULE_NAME = "Sofa.Component.LinearSolver.Iterative";
	constexpr const char* MODULE_VERSION = "22.12.99";
} // namespace sofa::component::linearsolver::iterative

#ifdef SOFA_BUILD_SOFA_COMPONENT_LINEARSOLVER_ITERATIVE
#define SOFA_ATTRIBUTE_DISABLED__CGLINEARSOLVER_DATANAME(msg)
#else
#define SOFA_ATTRIBUTE_DISABLED__CGLINEARSOLVER_DATANAME(msg) \
    SOFA_ATTRIBUTE_DISABLED( \
        "v21.06 (PR#2098)", "v21.12", msg)
#endif // SOFA_BUILD_SOFA_COMPONENT_LINEARSOLVER_ITERATIVE

#ifdef SOFA_BUILD_SOFA_COMPONENT_LINEARSOLVER_ITERATIVE
#define SOFA_ATTRIBUTE_DISABLED__SHEWCHUKPCGLINEARSOLVER_EXPLICITLINK()
#else
#define SOFA_ATTRIBUTE_DISABLED__SHEWCHUKPCGLINEARSOLVER_EXPLICITLINK() \
    SOFA_ATTRIBUTE_DEPRECATED( \
    "v22.12 (#3155)", "v23.06", "String data of the ShewchukPCGLinearSolver were replaced by an explicit link")
#endif // SOFA_BUILD_SOFA_COMPONENT_LINEARSOLVER_ITERATIVE
