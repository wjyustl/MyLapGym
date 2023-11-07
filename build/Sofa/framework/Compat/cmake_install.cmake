# Install script for directory: /home/wjy/MyLapGym/src/Sofa/framework/Compat

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Compat/Sofa.CompatTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Compat/Sofa.CompatTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/framework/Compat/CMakeFiles/Export/lib/cmake/Sofa.Compat/Sofa.CompatTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Compat/Sofa.CompatTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Compat/Sofa.CompatTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Compat" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/Compat/CMakeFiles/Export/lib/cmake/Sofa.Compat/Sofa.CompatTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Compat" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/Compat/CMakeFiles/Export/lib/cmake/Sofa.Compat/Sofa.CompatTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Compat" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/Compat/Sofa.CompatConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Compat" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.CompatConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Compat.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Compat.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Compat.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/vectorData.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/vectorLinks.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/vector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/vector_device.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/SVector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/stable_vector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/vector_algebra.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/vector_algorithm.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/fixed_array.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/fixed_array_algorithms.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/Quater.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/Quater.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/DualQuat.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/DualQuat.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/LCPSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/StateMask.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/Trackball.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/template.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/Texture.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/FrameBufferObject.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/GLSLShader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/Transformation.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/RAII.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/BasicShapes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/Capture.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/VideoRecorderFFMPEG.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/Axis.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/glText.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/glText.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/Color.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/gl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/gl/Cylinder.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/types" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/types/RGBAColor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/types" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/types/RGBAColor_fwd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/types" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/types/Material.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/types" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/types/PrimitiveGroup.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/system/gl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/system/glu.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/helper/system/atomic.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/Vec.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/Mat.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/MatSym.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/Mat_solve_Cholesky.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/Mat_solve_LU.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/Mat_solve_SVD.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/Quat.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/Quat.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/BoundingBox.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/Color.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/Frame.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/Ray.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/RGBAColor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/BaseVector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/defaulttype/BaseMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/core/behavior" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/core/behavior/RotationMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/core/visual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/core/visual/DrawTool.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/sofa/core/visual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/sofa/core/visual/DrawToolGL.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/CompressedRowSparseMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/DiagonalMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/FullMatrix.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/FullVector.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/GlobalSystemMatrixExporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/RotationMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/matrix_bloc_traits.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/CompressedRowSparseMatrix.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/FullMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/FullVector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/MatrixExpr.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/SparseMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseTopology/TopologyData.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseTopology/TopologyData.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseTopology/TopologyDataHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseTopology/TopologyDataHandler.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseTopology/TopologySparseData.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseTopology/TopologySparseData.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseTopology/TopologySubsetData.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseTopology/TopologySubsetData.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseTopology" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseTopology/TopologySubsetIndices.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaDenseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaDenseSolver/LULinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaDenseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaDenseSolver/NewMatMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaDenseSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaDenseSolver/NewMatVector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaEigen2Solver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaEigen2Solver/EigenBaseSparseMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaEigen2Solver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaEigen2Solver/EigenBaseSparseMatrix_MT.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaEigen2Solver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaEigen2Solver/EigenMatrixManipulator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaEigen2Solver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaEigen2Solver/EigenSparseMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaEigen2Solver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaEigen2Solver/EigenVector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaEigen2Solver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaEigen2Solver/EigenVectorWrapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaEigen2Solver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaEigen2Solver/SVDLinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaExporter" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaExporter/OBJExporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGeneralRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGeneralRigid/ArticulatedHierarchyContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGeneralRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGeneralRigid/ArticulatedHierarchyContainer.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGeneralRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGeneralRigid/ArticulatedSystemMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGeneralRigid" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGeneralRigid/ArticulatedSystemMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/BlocMatrixWriter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/DefaultMultiMatrixAccessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/CRSMultiMatrixAccessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseLinearSolver" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseLinearSolver/SingleMatrixAccessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGeneralMeshCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGeneralMeshCollision/TriangleOctree.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaBaseUtils" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaBaseUtils/RequiredPlugin.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/BaseIntTool.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/CapsuleContactMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/CapsuleIntersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/CapsuleIntTool.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/CapsuleIntTool.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/CapsuleModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/CapsuleModel.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/IntrCapsuleOBB.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/IntrCapsuleOBB.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/IntrMeshUtility.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/IntrMeshUtility.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/IntrOBBOBB.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/IntrOBBOBB.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/IntrSphereOBB.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/IntrSphereOBB.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/IntrTriangleOBB.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/IntrTriangleOBB.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/IntrUtility3.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/IntrUtility3.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/MeshIntTool.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/MeshIntTool.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/OBBContactMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/OBBIntersection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/OBBIntTool.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/OBBModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/OBBModel.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/RigidCapsuleModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaMiscCollision" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaMiscCollision/RigidCapsuleModel.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/FindByTypeVisitor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/SceneLoaderPHP.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/SceneLoaderXML.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/TransformationVisitor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon/xml" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/xml/AttributeElement.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon/xml" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/xml/BaseElement.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon/xml" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/xml/BaseMultiMappingElement.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon/xml" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/xml/DataElement.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon/xml" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/xml/Element.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon/xml" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/xml/Element.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon/xml" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/xml/ElementNameHelper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon/xml" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/xml/NodeElement.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon/xml" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/xml/ObjectElement.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationCommon/xml" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationCommon/xml/XML.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationGraph" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationGraph/DAGNode.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationGraph" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationGraph/DAGSimulation.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaSimulationGraph" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaSimulationGraph/SimpleApi.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGraphComponent/SceneCheck.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGraphComponent/SceneCheckAPIChange.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGraphComponent/SceneCheckCollisionResponse.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGraphComponent/SceneCheckDeprecatedComponents.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGraphComponent/SceneCheckDuplicatedName.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGraphComponent/SceneCheckMissingRequiredPlugin.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGraphComponent/SceneCheckUsingAlias.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGraphComponent/SceneCheckerListener.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat/SofaGraphComponent" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/src/SofaGraphComponent/SceneCheckerVisitor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Compat" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Compat/README.md")
endif()

