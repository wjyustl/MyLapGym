# Install script for directory: /home/wjy/MyLapGym/src/Sofa/Component/Compat

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wjy/MyLapGym/build/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Compat/Sofa.Component.CompatTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Compat/Sofa.Component.CompatTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/Component/Compat/CMakeFiles/Export/lib/cmake/Sofa.Component.Compat/Sofa.Component.CompatTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Compat/Sofa.Component.CompatTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Compat/Sofa.Component.CompatTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Compat" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Compat/CMakeFiles/Export/lib/cmake/Sofa.Component.Compat/Sofa.Component.CompatTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Compat" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Compat/CMakeFiles/Export/lib/cmake/Sofa.Component.Compat/Sofa.Component.CompatTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Compat" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Compat/Sofa.Component.CompatConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Compat" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.Component.CompatConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.Compat.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.Compat.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Compat.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/FreeMotionAnimationLoop.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/FreeMotionTask.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/ConstraintAnimationLoop.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralAnimationLoop" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralAnimationLoop/MultiStepAnimationLoop.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralAnimationLoop" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralAnimationLoop/MultiTagAnimationLoop.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/BruteForceBroadPhase.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/BruteForceDetection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/BVHNarrowPhase.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/DefaultPipeline.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/MirrorIntersector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/CollisionPM.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/EndPoint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralMeshCollision/DirectSAP.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralMeshCollision/DirectSAPNarrowPhase.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralMeshCollision/DSAPBox.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralMeshCollision/IncrSAP.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralMeshCollision/RayTraceNarrowPhase.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/RayTraceDetection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/BaseProximityIntersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/DiscreteIntersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/MinProximityIntersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/NewProximityIntersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/NewProximityIntersection.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/MeshNewProximityIntersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/MeshNewProximityIntersection.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/LocalMinDistance.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralMeshCollision/MeshDiscreteIntersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralMeshCollision/MeshDiscreteIntersection.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralMeshCollision/MeshMinProximityIntersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/RayDiscreteIntersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/RayDiscreteIntersection.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/RayNewProximityIntersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscCollision/TetrahedronDiscreteIntersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/fwd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/Cube.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/CubeModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/CylinderModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/CylinderModel.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/Sphere.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/SphereModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/SphereModel.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/Line.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/LineModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/LineModel.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/Point.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/PointModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/PointModel.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/Triangle.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/TriangleModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/TriangleModel.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/Ray.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/RayModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralMeshCollision/TriangleOctree.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralMeshCollision/TriangleOctreeModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscCollision/TetrahedronModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscCollision/TriangleModelInRegularGrid.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/ContactListener.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/DefaultContactManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/BarycentricPenalityContact.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/BarycentricPenalityContact.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/ContactIdentifier.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/FrictionContact.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/FrictionContact.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/StickContactConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/StickContactConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/RayContact.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaObjectInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaObjectInteraction/PenalityContactForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaObjectInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaObjectInteraction/PenalityContactForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscCollision/BarycentricStickContact.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscCollision/BarycentricStickContact.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscCollision/RuleBasedContactManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseCollision/BaseContactMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/BarycentricContactMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/BarycentricContactMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/IdentityContactMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/IdentityContactMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/RigidContactMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/RigidContactMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/SubsetContactMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMeshCollision/SubsetContactMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/GenericConstraintCorrection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/LinearSolverConstraintCorrection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/LinearSolverConstraintCorrection.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/PrecomputedConstraintCorrection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/PrecomputedConstraintCorrection.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/UncoupledConstraintCorrection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/UncoupledConstraintCorrection.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/BilateralConstraintResolution.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/BilateralInteractionConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/BilateralInteractionConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/SlidingConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/SlidingConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/StopperConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/StopperConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/UniformConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/UniformConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/UnilateralInteractionConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/UnilateralInteractionConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/ConstraintSolverImpl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/ConstraintStoreLambdaVisitor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/GenericConstraintSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/LCPConstraintSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralObjectInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralObjectInteraction/AttachConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralObjectInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralObjectInteraction/AttachConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/AffineMovementConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/AffineMovementConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/FixedConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/FixedConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/FixedPlaneConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/FixedPlaneConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/FixedRotationConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/FixedRotationConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/FixedTranslationConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/FixedTranslationConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/HermiteSplineConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/HermiteSplineConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/LinearMovementConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/LinearMovementConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/LinearVelocityConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/LinearVelocityConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/OscillatorConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/OscillatorConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ParabolicConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ParabolicConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/PartialFixedConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/PartialFixedConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/PartialLinearMovementConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/PartialLinearMovementConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/PatchTestMovementConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/PatchTestMovementConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/PointConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/PointConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/PositionBasedDynamicsConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/PositionBasedDynamicsConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/SkeletalMotionConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/SkeletalMotionConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ProjectToLineConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ProjectToLineConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ProjectToPlaneConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ProjectToPlaneConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ProjectToPointConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ProjectToPointConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ProjectDirectionConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ProjectDirectionConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/MechanicalStateController.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/MechanicalStateController.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/Controller.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSimpleFem/TetrahedronDiffusionFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSimpleFem/TetrahedronDiffusionFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/AverageCoord.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/AverageCoord.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/SumEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/SumEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ClusteringEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ClusteringEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/HausdorffDistance.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/HausdorffDistance.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ShapeMatching.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ShapeMatching.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscEngine/Distances.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscEngine/Distances.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/GroupFilterYoungModulus.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/GroupFilterYoungModulus.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/JoinPoints.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/JoinPoints.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MergePoints.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MergePoints.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MergeSets.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MergeSets.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MergeVectors.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MergeVectors.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/NormalsFromPoints.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/NormalsFromPoints.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/NormEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/NormEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/RandomPointDistributionInSurface.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/RandomPointDistributionInSurface.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ExtrudeEdgesAndGenerateQuads.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ExtrudeEdgesAndGenerateQuads.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ExtrudeQuadsAndGenerateHexas.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ExtrudeQuadsAndGenerateHexas.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ExtrudeSurface.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ExtrudeSurface.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/GenerateCylinder.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/GenerateCylinder.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/GenerateGrid.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/GenerateGrid.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/GenerateSphere.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/GenerateSphere.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MergeMeshes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MergeMeshes.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshBarycentricMapperEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshBarycentricMapperEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshClosingEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshClosingEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/Spiral.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/Spiral.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/GenerateRigidMass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/GenerateRigidMass.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscExtra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscExtra/MeshTetraStuffing.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/IndicesFromValues.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/IndicesFromValues.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/PointsFromIndices.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/PointsFromIndices.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ValuesFromIndices.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ValuesFromIndices.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ValuesFromPositions.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ValuesFromPositions.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshSampler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshSampler.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshSplittingEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshSplittingEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshSubsetEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshSubsetEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaEngine/BoxROI.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaEngine/BoxROI.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ComplementaryROI.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ComplementaryROI.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MergeROIs.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshBoundaryROI.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshROI.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MeshROI.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/NearestPointROI.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/NearestPointROI.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/PairBoxRoi.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/PairBoxRoi.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/PlaneROI.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/PlaneROI.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ProximityROI.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ProximityROI.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/SelectLabelROI.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/SelectConnectedLabelsROI.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/SphereROI.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/SphereROI.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/SubsetTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/SubsetTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscEngine/DisplacementMatrixEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscEngine/DisplacementMatrixEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscEngine/ProjectiveTransformEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscEngine/ProjectiveTransformEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/TransformEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/TransformEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/TransformMatrixEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/TransformPosition.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/TransformPosition.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/DifferenceEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/DifferenceEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MathOp.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MathOp.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/IndexValueMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/IndexValueMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/Indices2ValuesMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/Indices2ValuesMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MapIndices.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/MapIndices.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/ROIValueMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/DilateEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/DilateEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/SmoothMeshEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/SmoothMeshEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/QuatToRigidEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/QuatToRigidEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/RigidToQuatEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/RigidToQuatEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/Vertex2Frame.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/Vertex2Frame.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaHaptics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaHaptics/ForceFeedback.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaHaptics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaHaptics/LCPForceFeedback.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaHaptics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaHaptics/LCPForceFeedback.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaHaptics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaHaptics/MechanicalStateForceFeedback.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaHaptics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaHaptics/NullForceFeedback.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaHaptics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaHaptics/NullForceFeedbackT.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaLoader/BaseVTKReader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaLoader/BaseVTKReader.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaLoader/MeshOBJLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaLoader/MeshVTKLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/MeshGmshLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/GIDMeshLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/GridMeshCreator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/MeshOffLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/MeshSTLLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/MeshTrianLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/MeshXspLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/OffSequenceLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/SphereLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/StringMeshCreator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/VoxelGridLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaExporter" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaExporter/BlenderExporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaExporter" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaExporter/BlenderExporter.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaExporter" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaExporter/MeshExporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaExporter" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaExporter/STLExporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaExporter" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaExporter/VisualModelOBJExporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaExporter" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaExporter/VTKExporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLinearSolver/BTDLinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLinearSolver/BTDLinearSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLinearSolver/CholeskySolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLinearSolver/CholeskySolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDenseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDenseSolver/SVDLinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSparseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSparseSolver/PrecomputedLinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSparseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSparseSolver/PrecomputedLinearSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSparseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSparseSolver/SparseLDLSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSparseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSparseSolver/SparseLDLSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSparseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSparseSolver/SparseLDLSolverImpl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSparseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSparseSolver/SparseCholeskySolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSparseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSparseSolver/SparseLUSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSparseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSparseSolver/SparseLUSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSparseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSparseSolver/FillReducingOrdering.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSparseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSparseSolver/FillReducingOrdering.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseLinearSolver/CGLinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseLinearSolver/CGLinearSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLinearSolver/MinResLinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLinearSolver/MinResLinearSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaPreconditioner" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaPreconditioner/ShewchukPCGLinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseLinearSolver/MatrixLinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseLinearSolver/MatrixLinearSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseLinearSolver/GraphScatteredTypes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaPreconditioner" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaPreconditioner/BlockJacobiPreconditioner.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaPreconditioner" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaPreconditioner/BlockJacobiPreconditioner.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaPreconditioner" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaPreconditioner/JacobiPreconditioner.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaPreconditioner" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaPreconditioner/JacobiPreconditioner.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaPreconditioner" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaPreconditioner/PrecomputedWarpPreconditioner.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaPreconditioner" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaPreconditioner/PrecomputedWarpPreconditioner.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaPreconditioner" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaPreconditioner/SSORPreconditioner.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaPreconditioner" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaPreconditioner/SSORPreconditioner.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaPreconditioner" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaPreconditioner/WarpPreconditioner.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaPreconditioner" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaPreconditioner/WarpPreconditioner.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/IdentityMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/IdentityMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/SubsetMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/SubsetMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/TopologyBarycentricMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/TopologyBarycentricMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperMeshTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperMeshTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperRegularGridTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperRegularGridTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperSparseGridTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperSparseGridTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperTopologyContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperTopologyContainer.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperEdgeSetTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperEdgeSetTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperTriangleSetTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperTriangleSetTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperQuadSetTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperQuadSetTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperTetrahedronSetTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperTetrahedronSetTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperHexahedronSetTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/BarycentricMappers/BarycentricMapperHexahedronSetTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralRigid/LineSetSkinningMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralRigid/LineSetSkinningMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralRigid/SkinningMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralRigid/SkinningMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/Mesh2PointMechanicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/Mesh2PointMechanicalMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/SimpleTesselatedTetraMechanicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/SimpleTesselatedTetraMechanicalMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/BarycentricMappingRigid.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/BarycentricMappingRigid.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/BeamLinearMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/BeamLinearMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/CenterOfMassMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/CenterOfMassMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/CenterOfMassMappingOperation.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/CenterOfMassMulti2Mapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/CenterOfMassMulti2Mapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/CenterOfMassMultiMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/CenterOfMassMultiMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/DeformableOnRigidFrameMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/DeformableOnRigidFrameMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/IdentityMultiMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/IdentityMultiMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/SubsetMultiMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/SubsetMultiMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/TubularMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/TubularMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/VoidMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/MappingGeometricStiffnessForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/MappingGeometricStiffnessForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralAnimationLoop" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralAnimationLoop/MechanicalMatrixMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralAnimationLoop" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralAnimationLoop/MechanicalMatrixMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaRigid/RigidMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaRigid/RigidMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaRigid/RigidRigidMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaRigid/RigidRigidMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/DistanceFromTargetMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/DistanceFromTargetMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/DistanceMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/DistanceMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/SquareDistanceMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/SquareDistanceMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/SquareMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscMapping/SquareMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/AddMToMatrixFunctor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/DiagonalMass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/DiagonalMass.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/MassType.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/UniformMass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/UniformMass.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscForceField" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscForceField/MeshMatrixMass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscForceField" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscForceField/MeshMatrixMass.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ConicalForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ConicalForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ConstantForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/ConstantForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/DiagonalVelocityDampingForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/DiagonalVelocityDampingForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/EdgePressureForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/EdgePressureForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/EllipsoidForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/EllipsoidForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/LinearForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/LinearForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/OscillatingTorsionPressureForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/OscillatingTorsionPressureForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/PlaneForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/PlaneForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/QuadPressureForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/QuadPressureForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/SphereForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/SphereForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/SurfacePressureForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/SurfacePressureForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/TaitSurfacePressureForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/TaitSurfacePressureForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/TorsionForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/TorsionForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/TrianglePressureForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/TrianglePressureForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/UniformVelocityDampingForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBoundaryCondition" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBoundaryCondition/UniformVelocityDampingForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralObjectInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralObjectInteraction/InteractionEllipsoidForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralObjectInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralObjectInteraction/InteractionEllipsoidForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaImplicitOdeSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaImplicitOdeSolver/EulerImplicitSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaImplicitOdeSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaImplicitOdeSolver/StaticSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralImplicitOdeSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralImplicitOdeSolver/VariationalSymplecticSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscSolver/NewmarkImplicitSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaExplicitOdeSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaExplicitOdeSolver/EulerSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralExplicitOdeSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralExplicitOdeSolver/CentralDifferenceSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralExplicitOdeSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralExplicitOdeSolver/RungeKutta2Solver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralExplicitOdeSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralExplicitOdeSolver/RungeKutta4Solver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscSolver/DampVelocitySolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/ReadState.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/ReadState.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/ReadTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/ReadTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralLoader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralLoader/InputEventReader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaExporter" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaExporter/WriteState.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaExporter" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaExporter/WriteState.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaExporter" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaExporter/WriteTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaExporter" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaExporter/WriteTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaValidation" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaValidation/CompareState.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaValidation" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaValidation/CompareTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseUtils" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseUtils/AddResourceRepository.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseUtils" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseUtils/InfoComponent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseUtils" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseUtils/MakeAliasComponent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseUtils" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseUtils/MakeDataAliasComponent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseUtils" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseUtils/messageHandlerComponent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGraphComponent/APIVersion.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGraphComponent/PauseAnimation.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGraphComponent/PauseAnimationOnEvent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseVisual/BackgroundSetting.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGraphComponent/MouseButtonSetting.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGraphComponent/SofaDefaultPathSetting.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGraphComponent/StatsSetting.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGraphComponent/ViewerSetting.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSimpleFem/fwd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSimpleFem/HexahedronFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSimpleFem/HexahedronFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSimpleFem/TetrahedronFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSimpleFem/TetrahedronFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralSimpleFem/BeamFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralSimpleFem/BeamFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralSimpleFem/HexahedralFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralSimpleFem/HexahedralFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralSimpleFem/HexahedralFEMForceFieldAndMass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralSimpleFem/HexahedralFEMForceFieldAndMass.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralSimpleFem/HexahedronFEMForceFieldAndMass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralSimpleFem/HexahedronFEMForceFieldAndMass.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralSimpleFem/TetrahedralCorotationalFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralSimpleFem/TetrahedralCorotationalFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralSimpleFem/TriangularFEMForceFieldOptim.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralSimpleFem/TriangularFEMForceFieldOptim.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/FastTetrahedralCorotationalForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/FastTetrahedralCorotationalForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/StandardTetrahedralFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/StandardTetrahedralFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/TetrahedralTensorMassForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/TetrahedralTensorMassForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/TriangleFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/TriangleFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/TriangularAnisotropicFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/TriangularAnisotropicFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/TriangularFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/TriangularFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/QuadBendingFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/QuadBendingFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/BaseMaterial.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/BoyceAndArruda.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/Costa.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/HyperelasticMaterial.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/MooneyRivlin.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/NeoHookean.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/Ogden.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/PlasticMaterial.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/StandardTetrahedralFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/StandardTetrahedralFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/STVenantKirchhoff.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/TetrahedronHyperelasticityFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/TetrahedronHyperelasticityFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/VerondaWestman.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/AngularSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/AngularSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/MeshSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/MeshSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/RestShapeSpringsForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/RestShapeSpringsForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/PolynomialRestShapeSpringsForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/PolynomialRestShapeSpringsForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/SpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/SpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/StiffSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/StiffSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/PolynomialSpringsForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaDeformable/PolynomialSpringsForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaRigid/JointSpring.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaRigid/JointSpring.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaRigid/JointSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaRigid/JointSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/FastTriangularBendingSprings.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/FastTriangularBendingSprings.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/FrameSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/FrameSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/QuadBendingSprings.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/QuadBendingSprings.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/QuadularBendingSprings.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/QuadularBendingSprings.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/RegularGridSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/RegularGridSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/TriangleBendingSprings.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/TriangleBendingSprings.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/TriangularBendingSprings.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/TriangularBendingSprings.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/TriangularBiquadraticSpringsForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/TriangularBiquadraticSpringsForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/TriangularQuadraticSpringsForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/TriangularQuadraticSpringsForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/VectorSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/VectorSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralObjectInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralObjectInteraction/RepulsiveSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralObjectInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralObjectInteraction/RepulsiveSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscForceField" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscForceField/GearSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscForceField" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscForceField/GearSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaSimpleFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaSimpleFem/fwd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/TetrahedralTensorMassForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscFem/TetrahedralTensorMassForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/TriangularTensorMassForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralDeformable" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralDeformable/TriangularTensorMassForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/MechanicalObject.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/MechanicalObject.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/MappedObject.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseMechanics" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseMechanics/MappedObject.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/MeshTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralTopology/CubeTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralTopology/SphereQuadTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/fwd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/CommonAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/EdgeSetGeometryAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/EdgeSetGeometryAlgorithms.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/EdgeSetTopologyAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/EdgeSetTopologyContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/EdgeSetTopologyModifier.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/HexahedronSetGeometryAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/HexahedronSetGeometryAlgorithms.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/HexahedronSetTopologyAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/HexahedronSetTopologyContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/HexahedronSetTopologyModifier.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/NumericalIntegrationDescriptor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/NumericalIntegrationDescriptor.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/PointSetGeometryAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/PointSetGeometryAlgorithms.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/PointSetTopologyAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/PointSetTopologyContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/PointSetTopologyModifier.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/QuadSetGeometryAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/QuadSetGeometryAlgorithms.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/QuadSetTopologyAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/QuadSetTopologyContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/QuadSetTopologyModifier.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/TetrahedronSetGeometryAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/TetrahedronSetGeometryAlgorithms.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/TetrahedronSetTopologyAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/TetrahedronSetTopologyContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/TetrahedronSetTopologyModifier.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/TriangleSetGeometryAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/TriangleSetGeometryAlgorithms.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/TriangleSetTopologyAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/TriangleSetTopologyContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/TriangleSetTopologyModifier.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaNonUniformFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaNonUniformFem/DynamicSparseGridGeometryAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaNonUniformFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaNonUniformFem/DynamicSparseGridGeometryAlgorithms.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaNonUniformFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaNonUniformFem/DynamicSparseGridTopologyAlgorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaNonUniformFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaNonUniformFem/DynamicSparseGridTopologyContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaNonUniformFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaNonUniformFem/DynamicSparseGridTopologyModifier.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaNonUniformFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaNonUniformFem/MultilevelHexahedronSetTopologyContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology/polygon_cube_intersection" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/polygon_cube_intersection/polygon_cube_intersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology/polygon_cube_intersection" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/polygon_cube_intersection/vec.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/GridTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/RegularGridTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseTopology/SparseGridTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralTopology/CylinderGridTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralTopology/SphereGridTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaNonUniformFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaNonUniformFem/SparseGridMultipleTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaNonUniformFem" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaNonUniformFem/SparseGridRamificationTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/CenterPointTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/Edge2QuadTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/Hexa2QuadTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/Hexa2TetraTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/IdentityTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/Quad2TriangleTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/SubsetTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/Tetra2TriangleTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaTopologyMapping" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaTopologyMapping/Triangle2EdgeTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscTopology/TopologicalChangeProcessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscTopology/TopologyBoundingTrasher.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscTopology/TopologyBoundingTrasher.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaMiscTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaMiscTopology/TopologyChecker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseVisual/BaseCamera.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseVisual/Camera.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseVisual/InteractiveCamera.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseVisual/VisualModelImpl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseVisual/VisualStyle.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralVisual/RecordedCamera.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralVisual/VisualTransform.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralVisual/Visual3DText.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseVisual/BaseCamera.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseVisual/Camera.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseVisual/InteractiveCamera.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseVisual/VisualModelImpl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaBaseVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaBaseVisual/VisualStyle.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralVisual/RecordedCamera.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralVisual/VisualTransform.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralVisual/Visual3DText.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/TextureInterpolation.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGeneralEngine" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGeneralEngine/TextureInterpolation.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglColorMap.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglLabel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglViewport.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/DataDisplay.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/PointSplatModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/MergeVisualModels.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglCylinderModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglGrid.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglLineAxis.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglSceneFrame.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/SlicedVolumetricModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/ClipPlane.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/CompositingVisualLoop.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/LightManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/Light.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OrderIndependentTransparencyManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglOITShader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglAttribute.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglAttribute.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglShader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglShaderMacro.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglShaderVisualModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglShadowShader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglTexture.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglTexturePointer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglVariable.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglVariable.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/OglRenderingSRGB.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/PostProcessManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/VisualManagerPass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaOpenglVisual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaOpenglVisual/VisualManagerSecondaryPass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGraphComponent/AddFrameButtonSetting.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGraphComponent/AddRecordedCameraButtonSetting.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGraphComponent/AttachBodyButtonSetting.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaGraphComponent/FixPickedParticleButtonSetting.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/AddRecordedCameraPerformer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/AttachBodyPerformer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/AttachBodyPerformer.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/ComponentMouseInteraction.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/ComponentMouseInteraction.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/FixParticlePerformer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/FixParticlePerformer.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/InciseAlongPathPerformer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/InteractionPerformer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/MouseInteractor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/MouseInteractor.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/RemovePrimitivePerformer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/RemovePrimitivePerformer.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/StartNavigationPerformer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/SuturePointPerformer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/SuturePointPerformer.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaUserInteraction" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaUserInteraction/TopologicalChangeManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/ConstraintAttachBodyPerformer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Compat/SofaConstraint" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Compat/src/SofaConstraint/ConstraintAttachBodyPerformer.inl")
endif()

