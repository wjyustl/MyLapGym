# Install script for directory: /home/wjy/MyLapGym/src/Sofa/GL/Component/Shader

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GL.Component.Shader/Sofa.GL.Component.ShaderTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GL.Component.Shader/Sofa.GL.Component.ShaderTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/GL/Component/Shader/CMakeFiles/Export/lib/cmake/Sofa.GL.Component.Shader/Sofa.GL.Component.ShaderTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GL.Component.Shader/Sofa.GL.Component.ShaderTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GL.Component.Shader/Sofa.GL.Component.ShaderTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GL.Component.Shader" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GL/Component/Shader/CMakeFiles/Export/lib/cmake/Sofa.GL.Component.Shader/Sofa.GL.Component.ShaderTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GL.Component.Shader" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GL/Component/Shader/CMakeFiles/Export/lib/cmake/Sofa.GL.Component.Shader/Sofa.GL.Component.ShaderTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GL.Component.Shader" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GL/Component/Shader/Sofa.GL.Component.ShaderConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GL.Component.Shader" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.GL.Component.ShaderConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.GL.Component.Shader.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.GL.Component.Shader.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GL.Component.Shader.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.GL.Component.Shader/sofa/gl/component/shader/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/CompositingVisualLoop.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/LightManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/Light.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OrderIndependentTransparencyManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OglOITShader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OglAttribute.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OglAttribute.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OglShader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OglShaderMacro.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OglShaderVisualModel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OglShadowShader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OglTexture.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OglTexturePointer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OglVariable.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OglVariable.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/OglRenderingSRGB.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/PostProcessManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/VisualManagerPass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GL.Component.Shader/sofa/gl/component/shader" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GL/Component/Shader/src/sofa/gl/component/shader/VisualManagerSecondaryPass.h")
endif()

