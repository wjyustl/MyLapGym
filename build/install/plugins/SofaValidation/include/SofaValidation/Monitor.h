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
#include <SofaValidation/config.h>

#include <sofa/core/objectmodel/BaseObject.h>
#include <sofa/core/behavior/MechanicalState.h>
#include <sofa/type/Vec.h>
#include <sofa/type/RGBAColor.h>
#include <sofa/core/objectmodel/DataFileName.h>

namespace sofa::component::misc
{

template <class DataTypes>
class Monitor: public virtual core::objectmodel::BaseObject
{
public:
    SOFA_CLASS(SOFA_TEMPLATE(Monitor, DataTypes), core::objectmodel::BaseObject);

    typedef sofa::type::RGBAColor RGBAColor;
    typedef typename DataTypes::VecReal VecReal;
    typedef typename DataTypes::VecCoord VecCoord;
    typedef typename DataTypes::VecDeriv VecDeriv;
    typedef typename DataTypes::Real Real;
    typedef typename DataTypes::Coord Coord;
    typedef typename DataTypes::Deriv Deriv;

protected:
    Monitor ();
    ~Monitor () override;
public:
    /// init data
    void init () override;

    /// reset Monitored values
    void reset () override;

    /** initialize gnuplot files
        * called when ExportGnuplot box is checked
    */
    void reinit() override;

    /** function called at every step of simulation;
        * store mechanical state vectors (forces, positions, velocities) into
        * the MonitorData nested class. The filter (which position(s), velocity(ies) or *force(s) are displayed) is made in the gui
    */
    void handleEvent( core::objectmodel::Event* ev ) override;

    void draw (const core::visual::VisualParams* vparams) override;

    /// create gnuplot files
    virtual void initGnuplot ( const std::string path );

    /// write in gnuplot files the Monitored desired data (velocities,positions,forces)
    virtual void exportGnuplot ( Real time );

    /// Editable Data
    Data< type::vector<unsigned int> > d_indices;

    Data< bool > d_saveXToGnuplot; ///< export Monitored positions as gnuplot file
    Data< bool > d_saveVToGnuplot; ///< export Monitored velocities as gnuplot file
    Data< bool > d_saveFToGnuplot; ///< export Monitored forces as gnuplot file

    Data< bool > d_showPositions; ///< see the Monitored positions
    Data<RGBAColor > d_positionsColor; ///< define the color of positions

    Data< bool > d_showVelocities; ///< see the Monitored velocities
    Data< RGBAColor > d_velocitiesColor; ///< define the color of velocities

    Data< bool > d_showForces; ///< see the Monitored forces
    Data< RGBAColor > d_forcesColor; ///< define the color of forces

    Data< double > d_showMinThreshold; ///< under this value, vectors are not represented

    Data< bool > d_showTrajectories; ///< print the trajectory of Monitored particles
    Data< double > d_trajectoriesPrecision; ///< set the dt between to save of positions
    Data< RGBAColor > d_trajectoriesColor; ///< define the color of the trajectories

    Data< double > d_showSizeFactor; ///< factor to multiply to arrows
    core::objectmodel::DataFileName  d_fileName;

protected:

    std::ofstream* m_saveGnuplotX;
    std::ofstream* m_saveGnuplotV;
    std::ofstream* m_saveGnuplotF;

    const VecCoord * m_X; ///< positions of the mechanical object monitored;
    const VecDeriv * m_V; ///< velocities of the mechanical object monitored;
    const VecDeriv * m_F; ///< forces of the mechanical object monitored;

    double m_internalDt; ///< use for trajectoriesPrecision (save value only if trajectoriesPrecision <= internalDt)

    sofa::type::vector< sofa::type::vector<Coord> > m_savedPos; ///< store all the monitored positions, for trajectories display
};

#if  !defined(SOFA_COMPONENT_MISC_MONITOR_CPP)
extern template class SOFA_SOFAVALIDATION_API Monitor<defaulttype::Vec3Types>;
extern template class SOFA_SOFAVALIDATION_API Monitor<defaulttype::Vec6Types>;
extern template class SOFA_SOFAVALIDATION_API Monitor<defaulttype::Rigid3Types>;
#endif


} // namespace sofa::component::misc
