# Install script for directory: /home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.IO.Mesh/Sofa.Component.IO.MeshTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.IO.Mesh/Sofa.Component.IO.MeshTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/Component/IO/Mesh/CMakeFiles/Export/lib/cmake/Sofa.Component.IO.Mesh/Sofa.Component.IO.MeshTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.IO.Mesh/Sofa.Component.IO.MeshTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.IO.Mesh/Sofa.Component.IO.MeshTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.IO.Mesh" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/IO/Mesh/CMakeFiles/Export/lib/cmake/Sofa.Component.IO.Mesh/Sofa.Component.IO.MeshTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.IO.Mesh" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/IO/Mesh/CMakeFiles/Export/lib/cmake/Sofa.Component.IO.Mesh/Sofa.Component.IO.MeshTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.IO.Mesh" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/IO/Mesh/Sofa.Component.IO.MeshConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.IO.Mesh" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.Component.IO.MeshConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.IO.Mesh.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.IO.Mesh.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.IO.Mesh.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/BaseVTKReader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/BaseVTKReader.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/MeshOBJLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/MeshVTKLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/MeshGmshLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/VisualModelOBJExporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/VTKExporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/GIDMeshLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/GridMeshCreator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/MeshOffLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/MeshSTLLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/MeshTrianLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/MeshXspLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/OffSequenceLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/SphereLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/StringMeshCreator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/VoxelGridLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/BlenderExporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/BlenderExporter.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/MeshExporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.IO.Mesh/sofa/component/io/mesh" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/IO/Mesh/src/sofa/component/io/mesh/STLExporter.h")
endif()

