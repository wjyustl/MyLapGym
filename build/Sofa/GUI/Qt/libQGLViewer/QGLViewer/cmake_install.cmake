# Install script for directory: /home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/QGLViewer/QGLViewerTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/QGLViewer/QGLViewerTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/libQGLViewer/QGLViewer/CMakeFiles/Export/lib/cmake/QGLViewer/QGLViewerTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/QGLViewer/QGLViewerTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/QGLViewer/QGLViewerTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/QGLViewer" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/libQGLViewer/QGLViewer/CMakeFiles/Export/lib/cmake/QGLViewer/QGLViewerTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/QGLViewer" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/libQGLViewer/QGLViewer/CMakeFiles/Export/lib/cmake/QGLViewer/QGLViewerTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/QGLViewer" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/libQGLViewer/QGLViewer/QGLViewerConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/QGLViewer" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/QGLViewerConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQGLViewer.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQGLViewer.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQGLViewer.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libQGLViewer.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQGLViewer.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQGLViewer.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQGLViewer.so"
         OLD_RPATH "::::::::::::::::::::::::::::::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQGLViewer.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/AxisAlignedBox.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/Exporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/NVector3.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/Optimizer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/ParserGL.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/Primitive.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/PrimitivePositioning.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/SortMethod.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/Types.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/VRender.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/Vector2.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/Vector3.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/VRender" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/VRender/gpc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/QGLViewer" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/QGLViewer" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/constraint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/QGLViewer" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/domUtils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/QGLViewer" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/mouseGrabber.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/QGLViewer" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/quaternion.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/QGLViewer" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/libQGLViewer/QGLViewer/vec.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/QGLViewer" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/libQGLViewer/QGLViewer/ui_ImageInterface.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/QGLViewer/QGLViewer/QGLViewer" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/libQGLViewer/QGLViewer/ui_VRenderInterface.h")
endif()

