# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# compile CXX with /usr/bin/c++
CXX_DEFINES = -DNDEBUG -DSOFA_BUILD_MESH_COLLISION -DSOFA_BUILD_SOFAMESHCOLLISION -DSofaMeshCollision_EXPORTS

CXX_INCLUDES = -I/home/wjy/MyLapGym/src/applications/collections/deprecated/modules/SofaMeshCollision/src -I/home/wjy/MyLapGym/build/include/SofaMeshCollision -I/home/wjy/MyLapGym/src/applications/collections/deprecated/modules/SofaObjectInteraction/src -I/home/wjy/MyLapGym/build/include/SofaObjectInteraction -I/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Contact/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Collision.Response.Contact -I/home/wjy/MyLapGym/src/Sofa/framework/Simulation/Core/src -I/home/wjy/MyLapGym/build/include/Sofa.Simulation.Core -I/home/wjy/MyLapGym/src/Sofa/framework/Core/src -I/home/wjy/MyLapGym/build/include/Sofa.Core -I/home/wjy/MyLapGym/src/Sofa/framework/Helper/src -I/home/wjy/MyLapGym/build/include/Sofa.Helper -I/home/wjy/MyLapGym/src/Sofa/framework/Config/src -I/home/wjy/MyLapGym/build/include/Sofa.Config -I/home/wjy/MyLapGym/src/Sofa/framework/Type/src -I/home/wjy/MyLapGym/build/include/Sofa.Type -I/home/wjy/MyLapGym/src/Sofa/framework/Compat/src -I/home/wjy/MyLapGym/build/include/Sofa.Compat -I/home/wjy/MyLapGym/src/Sofa/framework/Topology/src -I/home/wjy/MyLapGym/build/include/Sofa.Topology -I/home/wjy/MyLapGym/src/Sofa/framework/Geometry/src -I/home/wjy/MyLapGym/build/include/Sofa.Geometry -I/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src -I/home/wjy/MyLapGym/build/include/Sofa.DefaultType -I/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src -I/home/wjy/MyLapGym/build/include/Sofa.LinearAlgebra -I/home/wjy/MyLapGym/src/Sofa/Component/Compat/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Compat -I/home/wjy/MyLapGym/src/Sofa/Component/Collision/Geometry/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Collision.Geometry -I/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Collision.Response.Mapper -I/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Mapping.Linear -I/home/wjy/MyLapGym/src/Sofa/Component/Topology/Container/Dynamic/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Topology.Container.Dynamic -I/home/wjy/MyLapGym/src/Sofa/Component/Topology/Container/Grid/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Topology.Container.Grid -I/home/wjy/MyLapGym/src/Sofa/Component/Topology/Container/Constant/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Topology.Container.Constant -I/home/wjy/MyLapGym/src/Sofa/Component/Mapping/NonLinear/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Mapping.NonLinear -I/home/wjy/MyLapGym/src/Sofa/Component/StateContainer/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.StateContainer -I/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Constraint.Lagrangian -I/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Constraint.Lagrangian.Model -I/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Correction/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Constraint.Lagrangian.Correction -I/home/wjy/MyLapGym/src/Sofa/Component/Mass/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Mass -I/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Iterative/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.LinearSolver.Iterative -I/home/wjy/MyLapGym/src/Sofa/Component/ODESolver/Backward/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.ODESolver.Backward -I/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Solver/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Constraint.Lagrangian.Solver -I/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.SolidMechanics.Spring -I/home/wjy/MyLapGym/src/applications/collections/deprecated/modules/SofaRigid/src -I/home/wjy/MyLapGym/build/include/SofaRigid -I/home/wjy/MyLapGym/src/Sofa/Component/Mapping/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Mapping -I/home/wjy/MyLapGym/src/Sofa/Component/Mapping/MappedMatrix/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Mapping.MappedMatrix -I/home/wjy/MyLapGym/src/applications/collections/deprecated/modules/SofaBaseCollision/src -I/home/wjy/MyLapGym/build/include/SofaBaseCollision -I/home/wjy/MyLapGym/src/Sofa/Component/Collision/Detection/Algorithm/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Collision.Detection.Algorithm -I/home/wjy/MyLapGym/src/Sofa/Component/Collision/Detection/Intersection/src -I/home/wjy/MyLapGym/build/include/Sofa.Component.Collision.Detection.Intersection -I/home/wjy/MyLapGym/src/applications/collections/deprecated/modules/SofaBaseMechanics/src -I/home/wjy/MyLapGym/build/include/SofaBaseMechanics -I/home/wjy/MyLapGym/src/applications/collections/deprecated/modules/SofaBaseTopology/src -I/home/wjy/MyLapGym/build/include/SofaBaseTopology -isystem /home/wjy/MyLapGym/src/extlibs/json -isystem /home/wjy/MyLapGym/src/extlibs/stb -isystem /home/wjy/MyLapGym/src/extlibs/difflib -isystem /usr/include/eigen3

CXX_FLAGS = -O3 -DNDEBUG -fPIC -Wno-attributes -fstack-protector --param=ssp-buffer-size=4 -D_FORTIFY_SOURCE=2 -Wall -W -Wno-padded

