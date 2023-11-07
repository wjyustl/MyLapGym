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
#include <sofa/gui/component/config.h>

#include <sofa/gui/component/performer/InteractionPerformer.h>
#include <sofa/core/visual/DisplayFlags.h>

namespace sofa::gui::component::performer
{

class SOFA_GUI_COMPONENT_API AddRecordedCameraPerformer: public InteractionPerformer
{
public:
    AddRecordedCameraPerformer(BaseMouseInteractor *i)
        : InteractionPerformer(i) {};

    ~AddRecordedCameraPerformer() override{};

    // Save the current camera's position and orientation in the appropriate Data of Recorded Camera for navigation. 
    void start() override;
    void execute() override{};

};

} // namespace sofa::gui::component::performer