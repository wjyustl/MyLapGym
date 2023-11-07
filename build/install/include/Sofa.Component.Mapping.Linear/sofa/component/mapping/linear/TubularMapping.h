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

#include <sofa/component/mapping/linear/config.h>

#include <sofa/core/Mapping.h>
#include <sofa/core/behavior/MechanicalState.h>
#include <sofa/defaulttype/RigidTypes.h>
#include <vector>

namespace sofa::component::mapping::linear
{

template <class TIn, class TOut>
class TubularMapping : public core::Mapping<TIn, TOut>
{
public:
    SOFA_CLASS(SOFA_TEMPLATE2(TubularMapping,TIn,TOut), SOFA_TEMPLATE2(core::Mapping,TIn,TOut));
    typedef core::Mapping<TIn, TOut> Inherit;
    typedef typename Inherit::In In;
    typedef typename Inherit::Out Out;

    typedef typename In::Real         Real;
    typedef typename In::VecCoord     InVecCoord;
    typedef typename In::VecDeriv     InVecDeriv;
    typedef typename In::MatrixDeriv  InMatrixDeriv;
    typedef Data<InVecCoord>          InDataVecCoord;
    typedef Data<InVecDeriv>          InDataVecDeriv;
    typedef Data<InMatrixDeriv>       InDataMatrixDeriv;
    typedef typename In::Coord        InCoord;
    typedef typename In::Deriv        InDeriv;

    typedef typename Out::VecCoord    OutVecCoord;
    typedef typename Out::VecDeriv    OutVecDeriv;
    typedef typename Out::MatrixDeriv OutMatrixDeriv;
    typedef Data<OutVecCoord>         OutDataVecCoord;
    typedef Data<OutVecDeriv>         OutDataVecDeriv;
    typedef Data<OutMatrixDeriv>      OutDataMatrixDeriv;
    typedef typename Out::Coord       OutCoord;
    typedef typename Out::Deriv       OutDeriv;

    enum
    {
        N = Out::spatial_dimensions
    };
    enum
    {
        NIn = sofa::defaulttype::DataTypeInfo<InDeriv>::Size
    };
    enum
    {
        NOut = sofa::defaulttype::DataTypeInfo<OutDeriv>::Size
    };

    typedef type::Mat<N,N,Real> Mat;
    typedef type::Vec<N,Real> Vec;

    void init() override;

    void apply ( const core::MechanicalParams* mparams, OutDataVecCoord& dOut, const InDataVecCoord& dIn ) override;

    void applyJ( const core::MechanicalParams* mparams, OutDataVecDeriv& dOut, const InDataVecDeriv& dIn ) override;

    void applyJT ( const core::MechanicalParams* mparams, InDataVecDeriv& dOut, const OutDataVecDeriv& dIn ) override;

    void applyJT ( const core::ConstraintParams* /*cparams*/, InDataMatrixDeriv& dOut, const OutDataMatrixDeriv& dIn ) override;

    Data<unsigned int> m_nbPointsOnEachCircle; ///< number of points along the circles around each point of the input object (10 by default)
    Data<double> m_radius; ///< radius of the circles around each point of the input object (1 by default)
    Data<int> m_peak; ///< if 1 or 2 creates a peak at the end

protected:

    TubularMapping ( );
    virtual ~TubularMapping()
    {}

    OutVecCoord rotatedPoints;

};


#if  !defined(SOFA_COMPONENT_MAPPING_TUBULARMAPPING_CPP)

extern template class SOFA_COMPONENT_MAPPING_LINEAR_API TubularMapping< defaulttype::Rigid3Types, defaulttype::Vec3Types >;




#endif

} // namespace sofa::component::mapping::linear
