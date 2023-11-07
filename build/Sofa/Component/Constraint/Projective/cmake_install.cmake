# Install script for directory: /home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Projective/Sofa.Component.Constraint.ProjectiveTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Projective/Sofa.Component.Constraint.ProjectiveTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/Component/Constraint/Projective/CMakeFiles/Export/lib/cmake/Sofa.Component.Constraint.Projective/Sofa.Component.Constraint.ProjectiveTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Projective/Sofa.Component.Constraint.ProjectiveTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Projective/Sofa.Component.Constraint.ProjectiveTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Projective" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Constraint/Projective/CMakeFiles/Export/lib/cmake/Sofa.Component.Constraint.Projective/Sofa.Component.Constraint.ProjectiveTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Projective" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Constraint/Projective/CMakeFiles/Export/lib/cmake/Sofa.Component.Constraint.Projective/Sofa.Component.Constraint.ProjectiveTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Projective" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Constraint/Projective/Sofa.Component.Constraint.ProjectiveConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Projective" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.Component.Constraint.ProjectiveConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.Constraint.Projective.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.Constraint.Projective.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Projective.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/AffineMovementConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/AffineMovementConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/AttachConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/AttachConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/FixedConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/FixedConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/FixedPlaneConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/FixedPlaneConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/FixedRotationConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/FixedRotationConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/FixedTranslationConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/FixedTranslationConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/HermiteSplineConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/HermiteSplineConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/LinearMovementConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/LinearMovementConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/LinearVelocityConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/LinearVelocityConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/OscillatorConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/OscillatorConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/ParabolicConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/ParabolicConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/PartialFixedConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/PartialFixedConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/PartialLinearMovementConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/PartialLinearMovementConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/PatchTestMovementConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/PatchTestMovementConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/PointConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/PositionBasedDynamicsConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/PositionBasedDynamicsConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/SkeletalMotionConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/SkeletalMotionConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/ProjectToLineConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/ProjectToLineConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/ProjectToPlaneConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/ProjectToPlaneConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/ProjectToPointConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/ProjectToPointConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/ProjectDirectionConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Projective/sofa/component/constraint/projective" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Projective/src/sofa/component/constraint/projective/ProjectDirectionConstraint.inl")
endif()

