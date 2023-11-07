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

#define SOFATYPE_VERSION 22.12.99

#ifdef SOFA_BUILD_SOFA_TYPE
#  define SOFA_TARGET Sofa.Type
#  define SOFA_TYPE_API SOFA_EXPORT_DYNAMIC_LIBRARY
#else
#  define SOFA_TYPE_API SOFA_IMPORT_DYNAMIC_LIBRARY
#endif

#ifdef SOFA_BUILD_SOFA_TYPE
#define SOFA_ATTRIBUTE_DEPRECATED__REBIND()
#else
#define SOFA_ATTRIBUTE_DEPRECATED__REBIND() \
    SOFA_ATTRIBUTE_DEPRECATED( \
        "v22.06", "v22.12", \
        "As an alternative, use sofa::type::Rebind or sofa::type::rebind_to.")
#endif

#ifdef SOFA_BUILD_SOFA_TYPE
#define SOFA_ATTRIBUTE_DEPRECATED__STATIC_MATRIX_IDENTITY()
#else
#define SOFA_ATTRIBUTE_DEPRECATED__STATIC_MATRIX_IDENTITY() \
    SOFA_ATTRIBUTE_DEPRECATED( \
        "v22.12", "v23.06", \
        "As an alternative, use sofa::type::Mat<L,C,real>::Identity().")
#endif
