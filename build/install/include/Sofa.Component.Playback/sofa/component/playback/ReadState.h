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
#include <sofa/component/playback/config.h>

#include <sofa/core/objectmodel/BaseObject.h>
#include <sofa/simulation/AnimateBeginEvent.h>
#include <sofa/simulation/AnimateEndEvent.h>
#include <sofa/simulation/Visitor.h>
#include <sofa/core/objectmodel/DataFileName.h>

#if SOFA_COMPONENT_PLAYBACK_HAVE_ZLIB
#include <zlib.h>
#endif

#include <fstream>

namespace sofa::component::playback
{

/** Read State vectors from file at each timestep
*/
class SOFA_COMPONENT_PLAYBACK_API ReadState: public core::objectmodel::BaseObject
{
public:
    SOFA_CLASS(ReadState,core::objectmodel::BaseObject);

    sofa::core::objectmodel::DataFileName d_filename;
    Data < double > d_interval; ///< time duration between inputs
    Data < double > d_shift; ///< shift between times in the file and times when they will be read
    Data < bool > d_loop; ///< set to 'true' to re-read the file when reaching the end
    Data < double > d_scalePos; ///< scale the input mechanical object
    Data< type::Vec3 > d_rotation; ///< rotate the input mechanical object
    Data< type::Vec3 > d_translation; ///< translate the input mechanical object

protected:
    core::behavior::BaseMechanicalState* mmodel;
    std::ifstream* infile;
#if SOFA_COMPONENT_PLAYBACK_HAVE_ZLIB
    gzFile gzfile;
#endif
    double nextTime;
    double lastTime;
    double loopTime;

    ReadState();

    ~ReadState() override;
public:
    void init() override;

    void bwdInit() override;

    void reset() override;

    void setTime(double time);

    void handleEvent(sofa::core::objectmodel::Event* event) override;

    void processReadState();
    void processReadState(double time);

    /// Read the next values in the file corresponding to the last timestep before the given time
    bool readNext(double time, std::vector<std::string>& lines);

    /// Pre-construction check method called by ObjectFactory.
    /// Check that DataTypes matches the MechanicalState.
    template<class T>
    static bool canCreate(T* obj, core::objectmodel::BaseContext* context, core::objectmodel::BaseObjectDescription* arg)
    {
        if (context->getMechanicalState() == nullptr) {
            arg->logError("No mechanical state found in the context node.");
            return false;
        }
        return BaseObject::canCreate(obj, context, arg);
    }


};


///Create ReadState component in the graph each time needed
class SOFA_COMPONENT_PLAYBACK_API ReadStateCreator: public simulation::Visitor
{
public:
    ReadStateCreator(const core::ExecParams* params);
    ReadStateCreator(const std::string &n, bool _createInMapping, const core::ExecParams* params, bool i=true, int c=0);
    Result processNodeTopDown( simulation::Node*  ) override;

    void setSceneName(std::string &n) { sceneName = n;}
    void setCounter(int c) {counterReadState = c;}
    void setCreateInMapping(bool b) {createInMapping=b;}
    const char* getClassName() const override { return "ReadStateCreator"; }
protected:
    void addReadState(sofa::core::behavior::BaseMechanicalState *ms, simulation::Node* gnode);
    std::string sceneName;
    std::string extension;
    bool createInMapping;
    bool init;
    int counterReadState; //avoid to have two same files if two mechanical objects has the same name
};

class SOFA_COMPONENT_PLAYBACK_API ReadStateActivator: public simulation::Visitor
{
public:
    ReadStateActivator(const core::ExecParams* params, bool active) : Visitor(params), state(active) {}
    Result processNodeTopDown( simulation::Node*  ) override;

    bool getState() const {return state;}
    void setState(bool active) {state=active;}
    const char* getClassName() const override { return "ReadStateActivator"; }
protected:
    void changeStateReader(sofa::component::playback::ReadState *ws);

    bool state;
};

class SOFA_COMPONENT_PLAYBACK_API ReadStateModifier: public simulation::Visitor
{
public:
    ReadStateModifier(const core::ExecParams* params, double _time) : Visitor(params), time(_time) {}
    Result processNodeTopDown( simulation::Node*  ) override;

    double getTime() const { return time; }
    void setTime(double _time) { time=_time; }
    const char* getClassName() const override { return "ReadStateModifier"; }
protected:
    void changeTimeReader(sofa::component::playback::ReadState *rs) { rs->processReadState(time); }

    double time;
};

} // namespace sofa::component::playback
