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

#ifdef SOFA_BUILD_SOFA_COMPONENT_IO_MESH
#  define SOFA_TARGET Sofa.Component.IO.Mesh
#  define SOFA_COMPONENT_IO_MESH_API SOFA_EXPORT_DYNAMIC_LIBRARY
#else
#  define SOFA_COMPONENT_IO_MESH_API SOFA_IMPORT_DYNAMIC_LIBRARY
#endif

#define SOFA_COMPONENT_IO_MESH_HAVE_ZLIB 1

namespace sofa::component::io::mesh
{
	constexpr const char* MODULE_NAME = "Sofa.Component.IO.Mesh";
	constexpr const char* MODULE_VERSION = "22.12.99";
} // namespace sofa::component::io::mesh

// DEPRECATION MACROS
// Keep the previous macros
// This backward compatibility will be removed at v23.06
#ifndef SOFAGENERALLOADER_HAVE_ZLIB
#define SOFAGENERALLOADER_HAVE_ZLIB SOFA_COMPONENT_IO_MESH_HAVE_ZLIB
#endif
#ifndef SOFAEXPORTER_HAVE_ZLIB
#define SOFAEXPORTER_HAVE_ZLIB SOFA_COMPONENT_IO_MESH_HAVE_ZLIB
#endif

#define SOFA_ATTRIBUTE_DEPRECATED__SOFAEXPORTER_NAMESPACE_1712() \
    SOFA_ATTRIBUTE_DEPRECATED( \
        "v17.12 (PR#372)", "v21.12", \
        "This class is now in sofa::component::exporter namespace. ")
#define SOFA_ATTRIBUTE_DEPRECATED__SOFAEXPORTER_NAMESPACE_2106() \
    SOFA_ATTRIBUTE_DEPRECATED( \
        "v21.06", "v21.12", \
        "This class is now in sofa::component::exporter namespace. ")

#define SOFA_ATTRIBUTE_DISABLED__SOFAEXPORTER_NAMESPACE_1712() \
    SOFA_ATTRIBUTE_DISABLED( \
        "v17.12 (PR#372)", "v21.12", \
        "This class is now in sofa::component::exporter namespace. ")
#define SOFA_ATTRIBUTE_DISABLED__SOFAEXPORTER_NAMESPACE_2106() \
    SOFA_ATTRIBUTE_DISABLED( \
        "v21.06", "v21.12", \
        "This class is now in sofa::component::exporter namespace. ")
