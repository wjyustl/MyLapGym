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

#include <sofa/component/animationloop/config.h>

#include <sofa/core/behavior/BaseAnimationLoop.h>
#include <sofa/simulation/CollisionAnimationLoop.h>

namespace sofa::component::animationloop
{

class SOFA_COMPONENT_ANIMATIONLOOP_API MultiStepAnimationLoop : public sofa::simulation::CollisionAnimationLoop
{
public:
    typedef sofa::simulation::CollisionAnimationLoop Inherit;
    SOFA_CLASS(MultiStepAnimationLoop, sofa::simulation::CollisionAnimationLoop);
protected:
    MultiStepAnimationLoop(simulation::Node* gnode);

    ~MultiStepAnimationLoop() override;
public:
    void step (const sofa::core::ExecParams* params, SReal dt) override;

    /// Construction method called by ObjectFactory.
    template<class T>
    static typename T::SPtr create(T*, BaseContext* context, BaseObjectDescription* arg)
    {
        simulation::Node* gnode = dynamic_cast<simulation::Node*>(context);
        typename T::SPtr obj = sofa::core::objectmodel::New<T>(gnode);
        if (context) context->addObject(obj);
        if (arg) obj->parse(arg);
        return obj;
    }

    Data<int> collisionSteps; ///< number of collision steps between each frame rendering
    Data<int> integrationSteps; ///< number of integration steps between each collision detection
};

} // namespace sofa::component::animationloop
