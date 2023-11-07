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

#define SOFA_HELPER_HAVE_BOOST 0
#define SOFA_HELPER_HAVE_BOOST_THREAD 0
#define SOFA_HELPER_HAVE_BOOST_FILESYSTEM 0

// DEPRECATED since v21.06
// will be removed at v21.12
#define SOFAHELPER_HAVE_BOOST = ;
#define SOFAHELPER_HAVE_BOOST_THREAD = ;
#define SOFAHELPER_HAVE_BOOST_FILESYSTEM = ;

#ifdef SOFA_BUILD_SOFA_HELPER
#  define SOFA_TARGET Sofa.Helper
#  define SOFA_HELPER_API SOFA_EXPORT_DYNAMIC_LIBRARY
#else
#  define SOFA_HELPER_API SOFA_IMPORT_DYNAMIC_LIBRARY
#endif

#ifdef SOFA_BUILD_SOFA_HELPER
#define SOFA_WRITEACCESSOR_RESIZE_DEPRECATED()
#else
#define SOFA_WRITEACCESSOR_RESIZE_DEPRECATED() \
    SOFA_ATTRIBUTE_DEPRECATED( \
        "v22.12", "v23.06", "")
#endif // SOFA_BUILD_SOFA_HELPER
