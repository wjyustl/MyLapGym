# Install script for directory: /home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Lagrangian.Model/Sofa.Component.Constraint.Lagrangian.ModelTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Lagrangian.Model/Sofa.Component.Constraint.Lagrangian.ModelTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/Component/Constraint/Lagrangian/Model/CMakeFiles/Export/lib/cmake/Sofa.Component.Constraint.Lagrangian.Model/Sofa.Component.Constraint.Lagrangian.ModelTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Lagrangian.Model/Sofa.Component.Constraint.Lagrangian.ModelTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Lagrangian.Model/Sofa.Component.Constraint.Lagrangian.ModelTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Lagrangian.Model" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Constraint/Lagrangian/Model/CMakeFiles/Export/lib/cmake/Sofa.Component.Constraint.Lagrangian.Model/Sofa.Component.Constraint.Lagrangian.ModelTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Lagrangian.Model" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Constraint/Lagrangian/Model/CMakeFiles/Export/lib/cmake/Sofa.Component.Constraint.Lagrangian.Model/Sofa.Component.Constraint.Lagrangian.ModelTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Lagrangian.Model" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Constraint/Lagrangian/Model/Sofa.Component.Constraint.Lagrangian.ModelConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Constraint.Lagrangian.Model" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.Component.Constraint.Lagrangian.ModelConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.Constraint.Lagrangian.Model.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.Constraint.Lagrangian.Model.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Constraint.Lagrangian.Model.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src/sofa/component/constraint/lagrangian/model/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src/sofa/component/constraint/lagrangian/model/BilateralConstraintResolution.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src/sofa/component/constraint/lagrangian/model/BilateralInteractionConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src/sofa/component/constraint/lagrangian/model/BilateralInteractionConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src/sofa/component/constraint/lagrangian/model/SlidingConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src/sofa/component/constraint/lagrangian/model/SlidingConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src/sofa/component/constraint/lagrangian/model/StopperConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src/sofa/component/constraint/lagrangian/model/StopperConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src/sofa/component/constraint/lagrangian/model/UniformConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src/sofa/component/constraint/lagrangian/model/UniformConstraint.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src/sofa/component/constraint/lagrangian/model/UnilateralInteractionConstraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Constraint.Lagrangian.Model/sofa/component/constraint/lagrangian/model" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Constraint/Lagrangian/Model/src/sofa/component/constraint/lagrangian/model/UnilateralInteractionConstraint.inl")
endif()

