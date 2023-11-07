# Install script for directory: /home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.MechanicalLoad/Sofa.Component.MechanicalLoadTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.MechanicalLoad/Sofa.Component.MechanicalLoadTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/Component/MechanicalLoad/CMakeFiles/Export/lib/cmake/Sofa.Component.MechanicalLoad/Sofa.Component.MechanicalLoadTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.MechanicalLoad/Sofa.Component.MechanicalLoadTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.MechanicalLoad/Sofa.Component.MechanicalLoadTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.MechanicalLoad" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/MechanicalLoad/CMakeFiles/Export/lib/cmake/Sofa.Component.MechanicalLoad/Sofa.Component.MechanicalLoadTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.MechanicalLoad" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/MechanicalLoad/CMakeFiles/Export/lib/cmake/Sofa.Component.MechanicalLoad/Sofa.Component.MechanicalLoadTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.MechanicalLoad" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/MechanicalLoad/Sofa.Component.MechanicalLoadConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.MechanicalLoad" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.Component.MechanicalLoadConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.MechanicalLoad.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.MechanicalLoad.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.MechanicalLoad.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/ConicalForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/ConicalForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/ConstantForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/ConstantForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/DiagonalVelocityDampingForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/DiagonalVelocityDampingForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/EdgePressureForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/EdgePressureForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/EllipsoidForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/EllipsoidForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/InteractionEllipsoidForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/InteractionEllipsoidForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/LinearForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/LinearForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/OscillatingTorsionPressureForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/OscillatingTorsionPressureForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/PlaneForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/PlaneForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/QuadPressureForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/QuadPressureForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/SphereForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/SphereForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/SurfacePressureForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/SurfacePressureForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/TaitSurfacePressureForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/TaitSurfacePressureForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/TorsionForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/TorsionForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/TrianglePressureForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/TrianglePressureForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/UniformVelocityDampingForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.MechanicalLoad/sofa/component/mechanicalload" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/MechanicalLoad/src/sofa/component/mechanicalload/UniformVelocityDampingForceField.inl")
endif()

