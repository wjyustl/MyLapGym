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
#include <sofa/gui/component/AttachBodyButtonSetting.h>
#include <sofa/component/collision/response/mapper/BaseContactMapper.h>
#include <sofa/core/behavior/BaseForceField.h>
#include <sofa/core/visual/DisplayFlags.h>

namespace sofa::gui::component::performer
{

struct BodyPicked;

template <class DataTypes>
class AttachBodyPerformer: public TInteractionPerformer<DataTypes>
{
public:
    typedef sofa::component::collision::response::mapper::BaseContactMapper< DataTypes >        MouseContactMapper;
    typedef sofa::core::behavior::MechanicalState< DataTypes >         MouseContainer;
    typedef sofa::core::behavior::BaseForceField              MouseForceField;

    AttachBodyPerformer(BaseMouseInteractor *i);
    virtual ~AttachBodyPerformer();

    void start();
    void execute();
    void draw(const core::visual::VisualParams* vparams);
    void clear();

    void setStiffness(SReal s) {stiffness=s;}
    void setArrowSize(float s) {size=s;}
    void setShowFactorSize(float s) {showFactorSize = s;}

    virtual void configure(sofa::component::setting::MouseButtonSetting* setting)
    {
       auto* s = dynamic_cast<sofa::gui::component::AttachBodyButtonSetting*>(setting);
        if (s)
        {
            setStiffness(s->stiffness.getValue());
            setArrowSize((float)s->arrowSize.getValue());
            setShowFactorSize((float)s->showFactorSize.getValue());
        }
    }

protected:
    SReal stiffness;
    SReal size;
    SReal showFactorSize;

    virtual bool start_partial(const BodyPicked& picked);
    /*
    initialise MouseForceField according to template.
    StiffSpringForceField for Vec3
    JointSpringForceField for Rigid3
    */

    MouseContactMapper  *mapper;
    MouseForceField::SPtr m_forcefield;

    core::visual::DisplayFlags flags;
};

#if  !defined(SOFA_COMPONENT_COLLISION_ATTACHBODYPERFORMER_CPP)
extern template class SOFA_GUI_COMPONENT_API  AttachBodyPerformer<defaulttype::Vec2Types>;
extern template class SOFA_GUI_COMPONENT_API  AttachBodyPerformer<defaulttype::Vec3Types>;
extern template class SOFA_GUI_COMPONENT_API  AttachBodyPerformer<defaulttype::Rigid3Types>;
#endif

} // namespace sofa::gui::component::performer
