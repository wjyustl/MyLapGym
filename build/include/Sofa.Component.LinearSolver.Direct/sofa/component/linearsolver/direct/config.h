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

#ifdef SOFA_BUILD_SOFA_COMPONENT_LINEARSOLVER_DIRECT
#  define SOFA_TARGET Sofa.Component.LinearSolver.Direct
#  define SOFA_COMPONENT_LINEARSOLVER_DIRECT_API SOFA_EXPORT_DYNAMIC_LIBRARY
#else
#  define SOFA_COMPONENT_LINEARSOLVER_DIRECT_API SOFA_IMPORT_DYNAMIC_LIBRARY
#endif

namespace sofa::component::linearsolver::direct
{
	constexpr const char* MODULE_NAME = "Sofa.Component.LinearSolver.Direct";
	constexpr const char* MODULE_VERSION = "22.12.99";
} // namespace sofa::component::linearsolver::direct

#define SOFA_COMPONENT_LINEARSOLVER_DIRECT_HAVE_METIS 1
#define SOFA_COMPONENT_LINEARSOLVER_DIRECT_HAVE_CSPARSE 1

// DEPRECATION MACROS
// Keep the previous macros
// This backward compatibility will be removed at v23.06
#ifndef SOFASPARSESOLVER_HAVE_METIS
#define SOFASPARSESOLVER_HAVE_METIS SOFA_COMPONENT_LINEARSOLVER_DIRECT_HAVE_METIS
#endif
#ifndef SOFASPARSESOLVER_HAVE_CSPARSE
#define SOFASPARSESOLVER_HAVE_CSPARSE SOFA_COMPONENT_LINEARSOLVER_DIRECT_HAVE_CSPARSE
#endif


#ifdef SOFA_BUILD_SOFA_COMPONENT_LINEARSOLVER_DIRECT
#define SOFA_ATTRIBUTE_DISABLED__SPARSELDLSOLVER_MATRIXEXPORT
#else
#define SOFA_ATTRIBUTE_DISABLED__SPARSELDLSOLVER_MATRIXEXPORT \
    SOFA_ATTRIBUTE_DISABLED( \
    "v22.06 (PR#2725)", "v22.12", "It is no longer possible to export the linear system matrix from within SparseLDLSolver. Instead, use the component GlobalSystemMatrixExporter.")
#endif

#ifdef SOFA_BUILD_SOFA_COMPONENT_LINEARSOLVER_DIRECT
#define SOFA_ATTRIBUTE_DISABLED__BTDLINEARSOLVER_DATANAME(msg)
#else
#define SOFA_ATTRIBUTE_DISABLED__BTDLINEARSOLVER_DATANAME(msg) \
    SOFA_ATTRIBUTE_DISABLED( \
        "v22.06", "v22.12", msg)
#endif // SOFA_ATTRIBUTE_DISABLED__BTDLINEARSOLVER_DATANAME
