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

#ifdef SOFA_BUILD_SOFA_COMPONENT_PLAYBACK
#  define SOFA_TARGET Sofa.Component.Playback
#  define SOFA_COMPONENT_PLAYBACK_API SOFA_EXPORT_DYNAMIC_LIBRARY
#else
#  define SOFA_COMPONENT_PLAYBACK_API SOFA_IMPORT_DYNAMIC_LIBRARY
#endif

#define SOFA_COMPONENT_PLAYBACK_HAVE_ZLIB 1

namespace sofa::component::playback
{
	constexpr const char* MODULE_NAME = "Sofa.Component.Playback";
	constexpr const char* MODULE_VERSION = "22.12.99";
} // namespace sofa::component::playback

// Keep the previous macros
// This backward compatibility will be removed at v23.06
#ifndef SOFAGENERALLOADER_HAVE_ZLIB
#define SOFAGENERALLOADER_HAVE_ZLIB SOFA_COMPONENT_PLAYBACK_HAVE_ZLIB
#endif
#ifndef SOFAEXPORTER_HAVE_ZLIB
#define SOFAEXPORTER_HAVE_ZLIB SOFA_COMPONENT_PLAYBACK_HAVE_ZLIB
#endif
