# Install script for directory: /home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.Spring/Sofa.Component.SolidMechanics.SpringTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.Spring/Sofa.Component.SolidMechanics.SpringTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/Component/SolidMechanics/Spring/CMakeFiles/Export/lib/cmake/Sofa.Component.SolidMechanics.Spring/Sofa.Component.SolidMechanics.SpringTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.Spring/Sofa.Component.SolidMechanics.SpringTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.Spring/Sofa.Component.SolidMechanics.SpringTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.Spring" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/SolidMechanics/Spring/CMakeFiles/Export/lib/cmake/Sofa.Component.SolidMechanics.Spring/Sofa.Component.SolidMechanics.SpringTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.Spring" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/SolidMechanics/Spring/CMakeFiles/Export/lib/cmake/Sofa.Component.SolidMechanics.Spring/Sofa.Component.SolidMechanics.SpringTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.Spring" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/SolidMechanics/Spring/Sofa.Component.SolidMechanics.SpringConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.Spring" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.Component.SolidMechanics.SpringConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.SolidMechanics.Spring.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.SolidMechanics.Spring.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.Spring.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/AngularSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/AngularSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/FastTriangularBendingSprings.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/FastTriangularBendingSprings.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/FrameSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/FrameSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/GearSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/GearSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/JointSpring.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/JointSpring.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/JointSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/JointSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/MeshSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/MeshSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/PolynomialRestShapeSpringsForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/PolynomialRestShapeSpringsForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/PolynomialSpringsForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/PolynomialSpringsForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/QuadBendingSprings.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/QuadBendingSprings.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/QuadularBendingSprings.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/QuadularBendingSprings.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/RegularGridSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/RegularGridSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/RepulsiveSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/RepulsiveSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/RestShapeSpringsForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/RestShapeSpringsForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/SpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/SpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/StiffSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/StiffSpringForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/TriangleBendingSprings.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/TriangleBendingSprings.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/TriangularBendingSprings.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/TriangularBendingSprings.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/TriangularBiquadraticSpringsForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/TriangularBiquadraticSpringsForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/TriangularQuadraticSpringsForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/TriangularQuadraticSpringsForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/VectorSpringForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.Spring/sofa/component/solidmechanics/spring" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/Spring/src/sofa/component/solidmechanics/spring/VectorSpringForceField.inl")
endif()

