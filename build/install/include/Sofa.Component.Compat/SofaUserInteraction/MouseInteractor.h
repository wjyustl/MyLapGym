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

#if __has_include(<sofa/gui/component/performer/MouseInteractor.h>)
#include <sofa/gui/component/performer/MouseInteractor.h>
#define SOFA_GUI_COMPONENT_MOUSEINTERACTOR

SOFA_DEPRECATED_HEADER("v22.06", "v23.06", "sofa/gui/component/performer/MouseInteractor.h")

#else
#error "This component has been moved to Sofa.GUI.Component. Include <sofa/gui/component/performer/MouseInteractor.h> instead of this one."
#endif


#ifdef SOFA_GUI_COMPONENT_MOUSEINTERACTOR

namespace sofa::component::collision
{
    using BodyPicked = sofa::gui::component::performer::BodyPicked;
    using BaseMouseInteractor = sofa::gui::component::performer::BaseMouseInteractor;
    template <class DataTypes>
    using MouseInteractor = sofa::gui::component::performer::MouseInteractor<DataTypes>;

} // namespace sofa::component::collision


#endif // SOFA_GUI_COMPONENT_MOUSEINTERACTOR

#undef SOFA_GUI_COMPONENT_MOUSEINTERACTOR
