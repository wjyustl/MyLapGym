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
#include <sofa/component/constraint/lagrangian/model/config.h>

#include <sofa/core/behavior/PairInteractionConstraint.h>
#include <sofa/core/behavior/ConstraintResolution.h>
#include <sofa/core/behavior/MechanicalState.h>
#include <sofa/defaulttype/VecTypes.h>
#include <iostream>
#include <map>
#include <deque>


namespace sofa::component::constraint::lagrangian::model
{
class UnilateralConstraintResolution : public core::behavior::ConstraintResolution
{
public:

    UnilateralConstraintResolution() : core::behavior::ConstraintResolution(1)
    {

    }

    void resolution(int line, SReal** w, SReal* d, SReal* force, SReal *dfree) override
    {
        SOFA_UNUSED(dfree);
        force[line] -= d[line] / w[line][line];
        if(force[line] < 0)
            force[line] = 0.0;
    }
};

// A little experiment on how to best save the forces for the hot start.
//  TODO : save as a map (index of the contact <-> force)
class PreviousForcesContainer
{
public:
    PreviousForcesContainer() : resetFlag(true) {}
    SReal popForce()
    {
        resetFlag = true;
        if(forces.empty()) return 0;
        SReal f = forces.front();
        forces.pop_front();
        return f;
    }

    void pushForce(SReal f)
    {
        if(resetFlag)
        {
            forces.clear();
            resetFlag = false;
        }

        forces.push_back(f);
    }

protected:
    std::deque<SReal> forces;
    bool resetFlag; // We delete all forces that were not read
};

class SOFA_COMPONENT_CONSTRAINT_LAGRANGIAN_MODEL_API UnilateralConstraintResolutionWithFriction : public core::behavior::ConstraintResolution
{
public:
    UnilateralConstraintResolutionWithFriction(SReal mu, PreviousForcesContainer* prev = nullptr, bool* active = nullptr)
        :core::behavior::ConstraintResolution(3)
        , _mu(mu)
        , _prev(prev)
        , _active(active)
    {
    }

    void init(int line, SReal** w, SReal* force) override;
    void resolution(int line, SReal** w, SReal* d, SReal* force, SReal *dFree) override;
    void store(int line, SReal* force, bool /*convergence*/) override;

protected:
    SReal _mu;
    SReal _W[6];
    PreviousForcesContainer* _prev;
    bool* _active; // Will set this after the resolution
};


template<class DataTypes>
class UnilateralInteractionConstraint : public core::behavior::PairInteractionConstraint<DataTypes>
{
public:
    SOFA_CLASS(SOFA_TEMPLATE(UnilateralInteractionConstraint,DataTypes), SOFA_TEMPLATE(core::behavior::PairInteractionConstraint,DataTypes));

    typedef typename DataTypes::VecCoord VecCoord;
    typedef typename DataTypes::VecDeriv VecDeriv;
    typedef typename DataTypes::MatrixDeriv MatrixDeriv;
    typedef typename DataTypes::MatrixDeriv::RowConstIterator MatrixDerivRowConstIterator;
    typedef typename DataTypes::MatrixDeriv::ColConstIterator MatrixDerivColConstIterator;
    typedef typename DataTypes::MatrixDeriv::RowIterator MatrixDerivRowIterator;
    typedef typename DataTypes::MatrixDeriv::ColIterator MatrixDerivColIterator;
    typedef typename DataTypes::Coord Coord;
    typedef typename DataTypes::Deriv Deriv;
    typedef typename Coord::value_type Real;
    typedef typename core::behavior::MechanicalState<DataTypes> MechanicalState;

    typedef core::behavior::BaseConstraint::ConstraintBlockInfo ConstraintBlockInfo;
    typedef core::behavior::BaseConstraint::PersistentID PersistentID;
    typedef core::behavior::BaseConstraint::ConstCoord ConstCoord;

    typedef core::behavior::BaseConstraint::VecConstraintBlockInfo VecConstraintBlockInfo;
    typedef core::behavior::BaseConstraint::VecPersistentID VecPersistentID;
    typedef core::behavior::BaseConstraint::VecConstCoord VecConstCoord;
    typedef core::behavior::BaseConstraint::VecConstDeriv VecConstDeriv;
    typedef core::behavior::BaseConstraint::VecConstArea VecConstArea;

    typedef core::objectmodel::Data<VecCoord>		DataVecCoord;
    typedef core::objectmodel::Data<VecDeriv>		DataVecDeriv;
    typedef core::objectmodel::Data<MatrixDeriv>    DataMatrixDeriv;

    typedef typename core::behavior::PairInteractionConstraint<DataTypes> Inherit;

protected:

    struct Contact
    {
        int m1, m2;		///< the two extremities of the spring: masses m1 and m2
        Deriv norm;		///< contact normal, from m1 to m2
        Deriv t;		///< added for friction
        Deriv s;		///< added for friction
        Real contactDistance;

        unsigned int id;
        long contactId;
        PersistentID localId;
        SReal mu;		///< angle for friction

        Coord P, Q;

        mutable Real dfree;
    };

    sofa::type::vector<Contact> contacts;
    Real epsilon;
    bool yetIntegrated;
    SReal customTolerance;

    PreviousForcesContainer prevForces;
    bool* contactsStatus;

    /// Computes constraint violation in position and stores it into resolution global vector
    ///
    /// @param v Global resolution vector
    virtual void getPositionViolation(linearalgebra::BaseVector *v);

    ///Computes constraint violation in velocity and stores it into resolution global vector
    ///
    /// @param v Global resolution vector
    virtual void getVelocityViolation(linearalgebra::BaseVector *v);

public:

    unsigned int constraintId;
protected:
    UnilateralInteractionConstraint(MechanicalState* object1=nullptr, MechanicalState* object2=nullptr);
    virtual ~UnilateralInteractionConstraint();

public:
    void setCustomTolerance(SReal tol) { customTolerance = tol; }

    void clear(int reserve = 0);

    virtual void addContact(SReal mu, Deriv norm, Coord P, Coord Q, Real contactDistance, int m1, int m2, Coord Pfree, Coord Qfree, long id=0, PersistentID localid=0);

    void addContact(SReal mu, Deriv norm, Coord P, Coord Q, Real contactDistance, int m1, int m2, long id=0, PersistentID localid=0);
    void addContact(SReal mu, Deriv norm, Real contactDistance, int m1, int m2, long id=0, PersistentID localid=0);

    void buildConstraintMatrix(const core::ConstraintParams* cParams, DataMatrixDeriv &c1, DataMatrixDeriv &c2, unsigned int &cIndex
            , const DataVecCoord &x1, const DataVecCoord &x2) override;

    void getConstraintViolation(const core::ConstraintParams* cParams, linearalgebra::BaseVector *v, const DataVecCoord &x1, const DataVecCoord &x2
            , const DataVecDeriv &v1, const DataVecDeriv &v2) override;


    void getConstraintInfo(const core::ConstraintParams* cParams, VecConstraintBlockInfo& blocks, VecPersistentID& ids, VecConstCoord& positions, VecConstDeriv& directions, VecConstArea& areas) override;

    void getConstraintResolution(const core::ConstraintParams *,std::vector<core::behavior::ConstraintResolution*>& resTab, unsigned int& offset) override;
    bool isActive() const override;

    void draw(const core::visual::VisualParams* vparams) override;
};


#if  !defined(SOFA_COMPONENT_CONSTRAINTSET_UNILATERALINTERACTIONCONSTRAINT_CPP)
extern template class SOFA_COMPONENT_CONSTRAINT_LAGRANGIAN_MODEL_API UnilateralInteractionConstraint<defaulttype::Vec3Types>;

#endif

} //namespace sofa::component::constraint::lagrangian::model
