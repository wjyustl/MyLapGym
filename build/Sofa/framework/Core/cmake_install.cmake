# Install script for directory: /home/wjy/MyLapGym/src/Sofa/framework/Core

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Core/Sofa.CoreTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Core/Sofa.CoreTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/framework/Core/CMakeFiles/Export/lib/cmake/Sofa.Core/Sofa.CoreTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Core/Sofa.CoreTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Core/Sofa.CoreTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Core" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/Core/CMakeFiles/Export/lib/cmake/Sofa.Core/Sofa.CoreTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Core" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/Core/CMakeFiles/Export/lib/cmake/Sofa.Core/Sofa.CoreTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Core" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/Core/Sofa.CoreConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Core" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.CoreConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Core.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Core.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Core.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.Core/sofa/core/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/BaseMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/BaseState.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/BehaviorModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/CategoryLibrary.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/CollisionElement.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/CollisionModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/ComponentLibrary.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/ComponentNameHelper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/ConstraintParams.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/DataEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/DataTracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/DataTrackerCallback.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/DataTrackerFunctor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/DevBaseMonitor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/ExecParams.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/fwd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/Mapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/Mapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/MappingHelper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/MechanicalParams.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/Multi2Mapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/Multi2Mapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/MultiMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/MultiMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/MultiVecId.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/ObjectFactory.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/PathResolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/SofaLibrary.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/sptr.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/State.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/State.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/VecId.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseAnimationLoop.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseConstraintCorrection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseConstraintSet.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseController.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseInteractionConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseInteractionForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseInteractionProjectiveConstraintSet.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseLinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseMass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseMechanicalState.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseProjectiveConstraintSet.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseRotationFinder.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BaseVectorOperations.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/BlocMatrixWriter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/Constraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/Constraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/ConstraintCorrection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/ConstraintCorrection.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/ConstraintResolution.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/ConstraintSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/DefaultMultiMatrixAccessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/ForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/ForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/LinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/Mass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/Mass.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/MechanicalMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/MechanicalState.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/MechanicalState.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/MixedInteractionConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/MixedInteractionConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/MixedInteractionForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/MixedInteractionForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/MultiMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/MultiMatrixAccessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/MultiVec.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/OdeSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/PairInteractionConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/PairInteractionConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/PairInteractionForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/PairInteractionForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/PairInteractionProjectiveConstraintSet.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/PairInteractionProjectiveConstraintSet.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/PairStateAccessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/ProjectiveConstraintSet.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/ProjectiveConstraintSet.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/RotationFinder.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/StateAccessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/SingleMatrixAccessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/SingleStateAccessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/behavior/fwd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/collision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/collision/BroadPhaseDetection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/collision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/collision/CollisionAlgorithm.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/collision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/collision/CollisionGroupManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/collision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/collision/Contact.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/collision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/collision/ContactManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/collision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/collision/Detection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/collision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/collision/DetectionOutput.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/collision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/collision/Intersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/collision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/collision/Intersection.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/collision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/collision/IntersectorFactory.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/collision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/collision/NarrowPhaseDetection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/collision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/collision/Pipeline.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/loader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/loader/BaseLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/loader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/loader/ImageLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/loader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/loader/MeshLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/loader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/loader/SceneLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/loader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/loader/VoxelLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/logging/PerComponentLoggingMessageHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/logging/RichConsoleStyleMessageFormatter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/AbstractDataLink.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/AspectPool.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/Base.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/BaseClass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/BaseContext.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/BaseData.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/BaseLink.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/BaseNode.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/BaseObject.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/BaseObjectDescription.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/ClassInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/ComponentState.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/ConfigurationSetting.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/Context.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/ContextObject.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/DDGNode.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/Data.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/DataCallback.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/DataContentValue.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/DataFileName.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/DataFileNameVector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/DataLink.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/DetachNodeEvent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/Event.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/GUIEvent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/HapticDeviceEvent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/IdleEvent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/JoystickEvent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/KeypressedEvent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/KeyreleasedEvent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/Link.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/MouseEvent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/SPtr.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/ScriptEvent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/TypeOfInsertion.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/Tag.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/TagSet.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/vectorData.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/objectmodel" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/objectmodel/vectorLinks.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/BaseMeshTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/BaseTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/BaseTopologyData.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/BaseTopologyObject.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/TopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/Topology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/TopologyChange.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/TopologyHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/TopologyData.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/TopologyData.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/TopologyDataHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/TopologyDataHandler.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/TopologySubsetData.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/TopologySubsetData.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/topology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/topology/TopologySubsetIndices.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/visual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/visual/DisplayFlags.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/visual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/visual/Shader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/visual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/visual/VisualLoop.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/visual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/visual/VisualManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/visual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/visual/VisualModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Core/sofa/core/visual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Core/src/sofa/core/visual/VisualParams.h")
endif()

