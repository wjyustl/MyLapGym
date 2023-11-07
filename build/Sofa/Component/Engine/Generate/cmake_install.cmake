# Install script for directory: /home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Generate/Sofa.Component.Engine.GenerateTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Generate/Sofa.Component.Engine.GenerateTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/Component/Engine/Generate/CMakeFiles/Export/lib/cmake/Sofa.Component.Engine.Generate/Sofa.Component.Engine.GenerateTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Generate/Sofa.Component.Engine.GenerateTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Generate/Sofa.Component.Engine.GenerateTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Generate" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Engine/Generate/CMakeFiles/Export/lib/cmake/Sofa.Component.Engine.Generate/Sofa.Component.Engine.GenerateTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Generate" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Engine/Generate/CMakeFiles/Export/lib/cmake/Sofa.Component.Engine.Generate/Sofa.Component.Engine.GenerateTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Generate" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Engine/Generate/Sofa.Component.Engine.GenerateConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Generate" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.Component.Engine.GenerateConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.Engine.Generate.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.Engine.Generate.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Generate.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/ExtrudeEdgesAndGenerateQuads.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/ExtrudeEdgesAndGenerateQuads.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/ExtrudeQuadsAndGenerateHexas.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/ExtrudeQuadsAndGenerateHexas.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/ExtrudeSurface.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/ExtrudeSurface.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/GenerateCylinder.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/GenerateCylinder.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/GenerateGrid.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/GenerateGrid.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/GenerateRigidMass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/GenerateRigidMass.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/GenerateSphere.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/GenerateSphere.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/GroupFilterYoungModulus.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/GroupFilterYoungModulus.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/JoinPoints.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/JoinPoints.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MergeMeshes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MergeMeshes.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MergePoints.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MergePoints.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MergeSets.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MergeSets.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MergeVectors.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MergeVectors.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MeshBarycentricMapperEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MeshBarycentricMapperEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MeshClosingEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MeshClosingEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/MeshTetraStuffing.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/NormEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/NormEngine.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/NormalsFromPoints.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/NormalsFromPoints.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/RandomPointDistributionInSurface.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/RandomPointDistributionInSurface.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/Spiral.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Generate/sofa/component/engine/generate" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Engine/Generate/src/sofa/component/engine/generate/Spiral.inl")
endif()

