/******************************************************************************
*                 SOFA, Simulation Open-Framework Architecture                *
*                    (c) 2006 INRIA, USTL, UJF, CNRS, MGH                     *
*                                                                             *
* This program is free software; you can redistribute it and/or modify it     *
* under the terms of the GNU General Public License as published by the Free  *
* Software Foundation; either version 2 of the License, or (at your option)   *
* any later version.                                                          *
*                                                                             *
* This program is distributed in the hope that it will be useful, but WITHOUT *
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or       *
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for    *
* more details.                                                               *
*                                                                             *
* You should have received a copy of the GNU General Public License along     *
* with this program. If not, see <http://www.gnu.org/licenses/>.              *
*******************************************************************************
* Authors: The SOFA Team and external contributors (see Authors.txt)          *
*                                                                             *
* Contact information: contact@sofa-framework.org                             *
******************************************************************************/
#pragma once

#include <sofa/config.h>

#define SOFA_GUI_QT_ENABLE_QTVIEWER 1
#define SOFA_GUI_QT_ENABLE_QGLVIEWER 1
#define SOFA_GUI_QT_ENABLE_NATIVE_MENU 1
#define SOFA_GUI_QT_ENABLE_VSYNC 0

#define SOFA_GUI_QT_HAVE_QT5_CHARTS 0
#define SOFA_GUI_QT_HAVE_QT6_CHARTS 0
#define SOFA_GUI_QT_HAVE_QT5_WEBENGINE 0
#define SOFA_GUI_QT_HAVE_QT6_WEBENGINECORE 0
 
#define SOFA_GUI_QT_HAVE_QT_CHARTS (SOFA_GUI_QT_HAVE_QT5_CHARTS || SOFA_GUI_QT_HAVE_QT6_CHARTS)
#define SOFA_GUI_QT_HAVE_QT_WEBENGINE (SOFA_GUI_QT_HAVE_QT5_WEBENGINE || SOFA_GUI_QT_HAVE_QT6_WEBENGINECORE)

// Equals to SOFA_GUI_QT_ENABLE_NODEGRAPH
#define SOFA_GUI_QT_HAVE_NODEEDITOR  0

#ifdef SOFA_BUILD_SOFA_GUI_QT
#  define SOFA_GUI_QT_API SOFA_EXPORT_DYNAMIC_LIBRARY
#else
#  define SOFA_GUI_QT_API SOFA_IMPORT_DYNAMIC_LIBRARY
#endif
