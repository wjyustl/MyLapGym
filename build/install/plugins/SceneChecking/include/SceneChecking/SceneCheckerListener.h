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

#include <SceneChecking/config.h>

#include <sofa/simulation/SceneLoaderFactory.h>
#include <sofa/simulation/Visitor.h>

#include <SceneChecking/SceneCheckerVisitor.h>
using sofa::scenechecking::SceneCheckerVisitor;


namespace sofa::_scenechecking_
{

/// to be able to react when a scene is loaded
class SOFA_SCENECHECKING_API SceneCheckerListener : public sofa::simulation::SceneLoader::Listener
{
public:
    static SceneCheckerListener* getInstance();
    virtual ~SceneCheckerListener() {}

    virtual void rightAfterLoadingScene(sofa::simulation::NodeSPtr node) override;

    // Do nothing on reload
    virtual void rightBeforeReloadingScene() override {}
    virtual void rightAfterReloadingScene(sofa::simulation::NodeSPtr node) override
    {
        SOFA_UNUSED(node);
    }

private:
    SceneCheckerListener();
    SceneCheckerVisitor m_sceneChecker;
};

} // namespace sofa::_scenechecking_

namespace sofa::scenechecking
{
using _scenechecking_::SceneCheckerListener;
} // namespace sofa::scenechecking
