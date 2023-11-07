# Install script for directory: /home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear/Sofa.Component.Mapping.LinearTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear/Sofa.Component.Mapping.LinearTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/Component/Mapping/Linear/CMakeFiles/Export/lib/cmake/Sofa.Component.Mapping.Linear/Sofa.Component.Mapping.LinearTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear/Sofa.Component.Mapping.LinearTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear/Sofa.Component.Mapping.LinearTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Mapping/Linear/CMakeFiles/Export/lib/cmake/Sofa.Component.Mapping.Linear/Sofa.Component.Mapping.LinearTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Mapping/Linear/CMakeFiles/Export/lib/cmake/Sofa.Component.Mapping.Linear/Sofa.Component.Mapping.LinearTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Mapping/Linear/Sofa.Component.Mapping.LinearConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.Component.Mapping.LinearConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.Mapping.Linear.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.Mapping.Linear.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperEdgeSetTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperEdgeSetTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperHexahedronSetTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperHexahedronSetTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperMeshTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperMeshTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperQuadSetTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperQuadSetTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperRegularGridTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperRegularGridTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperSparseGridTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperSparseGridTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperTetrahedronSetTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperTetrahedronSetTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperTopologyContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperTopologyContainer.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperTriangleSetTopology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperTriangleSetTopology.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/TopologyBarycentricMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/TopologyBarycentricMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappingRigid.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappingRigid.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BeamLinearMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BeamLinearMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMappingOperation.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMulti2Mapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMulti2Mapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMultiMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMultiMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/DeformableOnRigidFrameMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/DeformableOnRigidFrameMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/IdentityMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/IdentityMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/IdentityMultiMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/IdentityMultiMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/LineSetSkinningMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/LineSetSkinningMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/Mesh2PointMechanicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/Mesh2PointMechanicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/Mesh2PointMechanicalMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/Mesh2PointMechanicalMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/Mesh2PointTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/Mesh2PointTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SimpleTesselatedHexaTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SimpleTesselatedTetraMechanicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SimpleTesselatedTetraMechanicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SimpleTesselatedTetraMechanicalMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SimpleTesselatedTetraMechanicalMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SimpleTesselatedTetraTopologicalMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SkinningMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SkinningMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SubsetMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SubsetMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SubsetMultiMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SubsetMultiMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/TubularMapping.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/TubularMapping.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/VoidMapping.h")
endif()

