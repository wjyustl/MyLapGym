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

#define SOFA_CORE_ENABLE_CRSMULTIMATRIXACCESSOR 0

#ifdef SOFA_BUILD_SOFA_CORE
#  define SOFA_TARGET Sofa.Core
#  define SOFA_CORE_API SOFA_EXPORT_DYNAMIC_LIBRARY
#else
#  define SOFA_CORE_API SOFA_IMPORT_DYNAMIC_LIBRARY
#endif

#define SOFA_CORE_TOPOLOGY_DEPRECATION__VERSION_PR() "v21.06 (PR#1912)"
#define SOFA_CORE_TOPOLOGY_REMOVAL__VERSION() "v21.12"

#ifdef SOFA_CORE_TOPOLOGY_ENABLE_DEPRECATION_MESSAGE

#define SOFA_CORE_TOPOLOGY_ATTRIBUTE_DEPRECATED(msg) \
    SOFA_ATTRIBUTE_DEPRECATED( \
        SOFA_CORE_TOPOLOGY_DEPRECATION__VERSION_PR(), SOFA_CORE_TOPOLOGY_REMOVAL__VERSION(), \
        msg)

#define SOFA_CORE_TOPOLOGY_ATTRIBUTE_DEPRECATED__ALIASES_INDEX() \
    SOFA_CORE_TOPOLOGY_ATTRIBUTE_DEPRECATED("Index aliases are deprecated, please use sofa::Index.")

#else

#define SOFA_CORE_TOPOLOGY_ATTRIBUTE_DEPRECATED(msg)
#define SOFA_CORE_TOPOLOGY_ATTRIBUTE_DEPRECATED__ALIASES_INDEX()

#endif // SOFA_CORE_TOPOLOGY_ENABLE_DEPRECATION_MESSAGE

#ifdef SOFA_BUILD_SOFA_CORE
#define SOFA_ATTRIBUTE_DISABLED__LOADER_FILENAME(msg)
#define SOFA_ATTRIBUTE_DISABLED__COMPONENTSTATE(msg)
#else
#define SOFA_ATTRIBUTE_DISABLED__LOADER_FILENAME(msg) \
    SOFA_ATTRIBUTE_DISABLED( \
        "v21.06 (PR#2095)", "v21.06 (PR#2095)", msg)

#define SOFA_ATTRIBUTE_DISABLED__COMPONENTSTATE(msg) \
    SOFA_ATTRIBUTE_DISABLED( \
        "v20.12 (PR#1358)", "v20.12", msg)
#endif
