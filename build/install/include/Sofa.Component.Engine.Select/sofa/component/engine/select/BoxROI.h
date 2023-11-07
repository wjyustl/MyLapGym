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
#include <sofa/component/engine/select/config.h>

#include <sofa/type/Vec.h>
#include <sofa/core/DataEngine.h>
#include <sofa/core/objectmodel/BaseObject.h>
#include <sofa/core/behavior/MechanicalState.h>
#include <sofa/core/topology/BaseMeshTopology.h>
#include <sofa/defaulttype/RigidTypes.h>

namespace sofa::component::engine::select::boxroi
{

/// This namespace is used to avoid the leaking of the 'using' on includes.
/// BoxROI is defined in namespace in sofa::component::engine::boxroi:BoxROI
/// It is then import into sofa::component::engine::BoxROI to not break the
/// API.

    using core::objectmodel::BaseObjectDescription ;
    using sofa::core::behavior::MechanicalState ;
    using core::topology::BaseMeshTopology ;
    using core::behavior::MechanicalState ;
    using core::objectmodel::BaseContext ;
    using core::objectmodel::BaseObject ;
    using core::visual::VisualParams ;
    using core::objectmodel::Event ;
    using core::ExecParams ;
    using core::DataEngine ;
    using type::vector ;
    using std::string ;



/**
 * This class find all the points/edges/triangles/quads/tetrahedras/hexahedras located inside given boxes.
 */
template <class DataTypes>
class BoxROI : public DataEngine
{
public:
    SOFA_CLASS(SOFA_TEMPLATE(BoxROI,DataTypes), DataEngine);
    typedef typename DataTypes::VecCoord VecCoord;
    typedef typename DataTypes::Coord Coord;
    typedef typename DataTypes::Real Real;
    typedef type::Vec<3,SReal> Vec3;
    typedef type::Vec<6,SReal> Vec6;
    typedef type::Vec<10,SReal> Vec10;
    typedef BaseMeshTopology::SetIndex SetIndex;
    typedef typename DataTypes::CPos CPos;

    typedef BaseMeshTopology::PointID PointID;
    typedef BaseMeshTopology::Edge Edge;
    typedef BaseMeshTopology::Triangle Triangle;
    typedef BaseMeshTopology::Tetra Tetra;
    typedef BaseMeshTopology::Hexa Hexa;
    typedef BaseMeshTopology::Quad Quad;

public:
    void parse( sofa::core::objectmodel::BaseObjectDescription* arg ) override;
    void init() override;
    void reinit() override;
    void doUpdate() override;
    void draw(const VisualParams*) override;

    void computeBBox(const ExecParams*  params, bool onlyVisible=false ) override;
    void handleEvent(Event *event) override;

    /// Pre-construction check method called by ObjectFactory.
    /// Check that DataTypes matches the MechanicalState.
    template<class T>
    static bool canCreate(T*& obj, BaseContext* context, BaseObjectDescription* arg)
    {
        if (!arg->getAttribute("template"))
        {
            // only check if this template is correct if no template was given
            if (context->getMechanicalState() && dynamic_cast<MechanicalState<DataTypes>*>(context->getMechanicalState()) == nullptr)
            {
                arg->logError(std::string("No mechanical state with the datatype '") + DataTypes::Name() +
                              "' found in the context node.");
                return false; // this template is not the same as the existing MechanicalState
            }
        }

        return BaseObject::canCreate(obj, context, arg);
    }

public:
    //Input
    Data<vector<Vec6> >  d_alignedBoxes; ///< each box is defined using xmin, ymin, zmin, xmax, ymax, zmax
    Data<vector<Vec10> > d_orientedBoxes; ///< each box is defined using three point coordinates and a depth value
    /// Rest position coordinates of the degrees of freedom.
    /// If empty the positions from a MechanicalObject then a MeshLoader are searched in the current context.
    /// If none are found the parent's context is searched for MechanicalObject.
    Data<VecCoord> d_X0;
    Data<vector<Edge> > d_edges; ///< Edge Topology
    Data<vector<Triangle> > d_triangles; ///< Triangle Topology
    Data<vector<Tetra> > d_tetrahedra; ///< Tetrahedron Topology
    Data<vector<Hexa> > d_hexahedra; ///< Hexahedron Topology
    Data<vector<Quad> > d_quad; ///< Quad Topology
    Data<bool> d_computeEdges; ///< If true, will compute edge list and index list inside the ROI. (default = true)
    Data<bool> d_computeTriangles; ///< If true, will compute triangle list and index list inside the ROI. (default = true)
    Data<bool> d_computeTetrahedra; ///< If true, will compute tetrahedra list and index list inside the ROI. (default = true)
    Data<bool> d_computeHexahedra; ///< If true, will compute hexahedra list and index list inside the ROI. (default = true)
    Data<bool> d_computeQuad; ///< If true, will compute quad list and index list inside the ROI. (default = true)
    Data<bool> d_strict; ///< If true, an element is inside the box if all of its nodes are inside. If False, only the center point of the element is checked. (default = true)

    //Output
    Data<SetIndex> d_indices; ///< Indices of the points contained in the ROI
    Data<SetIndex> d_edgeIndices; ///< Indices of the edges contained in the ROI
    Data<SetIndex> d_triangleIndices; ///< Indices of the triangles contained in the ROI
    Data<SetIndex> d_tetrahedronIndices; ///< Indices of the tetrahedra contained in the ROI
    Data<SetIndex> d_hexahedronIndices; ///< Indices of the hexahedra contained in the ROI
    Data<SetIndex> d_quadIndices; ///< Indices of the quad contained in the ROI
    Data<VecCoord > d_pointsInROI; ///< Points contained in the ROI
    Data<vector<Edge> > d_edgesInROI; ///< Edges contained in the ROI
    Data<vector<Triangle> > d_trianglesInROI; ///< Triangles contained in the ROI
    Data<vector<Tetra> > d_tetrahedraInROI; ///< Tetrahedra contained in the ROI
    Data<vector<Hexa> > d_hexahedraInROI; ///< Hexahedra contained in the ROI
    Data<vector<Quad> > d_quadInROI; ///< Quad contained in the ROI
    Data< sofa::Size > d_nbIndices; ///< Number of selected indices

    //Parameter
    Data<bool> d_drawBoxes; ///< Draw Boxes. (default = false)
    Data<bool> d_drawPoints; ///< Draw Points. (default = false)
    Data<bool> d_drawEdges; ///< Draw Edges. (default = false)
    Data<bool> d_drawTriangles; ///< Draw Triangles. (default = false)
    Data<bool> d_drawTetrahedra; ///< Draw Tetrahedra. (default = false)
    Data<bool> d_drawHexahedra; ///< Draw Tetrahedra. (default = false)
    Data<bool> d_drawQuads; ///< Draw Quads. (default = false)
    Data<double> d_drawSize; ///< rendering size for box and topological elements
    Data<bool> d_doUpdate; ///< If true, updates the selection at the beginning of simulation steps. (default = true)
protected:

    struct OrientedBox
    {
        typedef typename DataTypes::Real Real;
        typedef type::Vec<3,Real> Vec3;

        Vec3 p0, p2;
        Vec3 normal;
        Vec3 plane0, plane1, plane2, plane3;
        double width, length, depth;
    };

    vector<OrientedBox> m_orientedBoxes;

    BoxROI();
    ~BoxROI() override {}

    void computeOrientedBoxes();

    bool isPointInOrientedBox(const CPos& p, const OrientedBox& box);
    static bool isPointInAlignedBox(const typename DataTypes::CPos& p, const Vec6& box);
    bool isPointInBoxes(const CPos& p);
    bool isPointInBoxes(const PointID& pid);
    bool isEdgeInBoxes(const Edge& e);
    bool isEdgeInBoxesStrict(const Edge& e);
    bool isTriangleInBoxes(const Triangle& t);
    bool isTriangleInBoxesStrict(const Triangle& t);
    bool isTetrahedronInBoxes(const Tetra& t);
    bool isTetrahedronInBoxesStrict(const Tetra& t);
    bool isHexahedronInBoxes(const Hexa& t);
    bool isHexahedronInBoxesStrict(const Hexa& t);
    bool isQuadInBoxes(const Quad& q);
    bool isQuadInBoxesStrict(const Quad& q);

    void getPointsFromOrientedBox(const Vec10& box, vector<Vec3> &points);
};

#if  !defined(SOFA_COMPONENT_ENGINE_BOXROI_CPP)
extern template class SOFA_COMPONENT_ENGINE_SELECT_API BoxROI<defaulttype::Vec3Types>;
extern template class SOFA_COMPONENT_ENGINE_SELECT_API BoxROI<defaulttype::Vec2Types>;
extern template class SOFA_COMPONENT_ENGINE_SELECT_API BoxROI<defaulttype::Vec1Types>;
extern template class SOFA_COMPONENT_ENGINE_SELECT_API BoxROI<defaulttype::Rigid3Types>;
extern template class SOFA_COMPONENT_ENGINE_SELECT_API BoxROI<defaulttype::Vec6Types>;

#endif

} // namespace sofa::component::engine::select::boxroi

namespace sofa::component::engine::select
{

/// Import sofa::component::engine::boxroi::BoxROI into
/// into the sofa::component::engine namespace.
using boxroi::BoxROI ;

} // namespace sofa::component::engine::select
