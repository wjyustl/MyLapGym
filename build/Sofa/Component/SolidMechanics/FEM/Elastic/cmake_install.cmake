# Install script for directory: /home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.FEM.Elastic/Sofa.Component.SolidMechanics.FEM.ElasticTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.FEM.Elastic/Sofa.Component.SolidMechanics.FEM.ElasticTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/Component/SolidMechanics/FEM/Elastic/CMakeFiles/Export/lib/cmake/Sofa.Component.SolidMechanics.FEM.Elastic/Sofa.Component.SolidMechanics.FEM.ElasticTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.FEM.Elastic/Sofa.Component.SolidMechanics.FEM.ElasticTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.FEM.Elastic/Sofa.Component.SolidMechanics.FEM.ElasticTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.FEM.Elastic" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/SolidMechanics/FEM/Elastic/CMakeFiles/Export/lib/cmake/Sofa.Component.SolidMechanics.FEM.Elastic/Sofa.Component.SolidMechanics.FEM.ElasticTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.FEM.Elastic" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/SolidMechanics/FEM/Elastic/CMakeFiles/Export/lib/cmake/Sofa.Component.SolidMechanics.FEM.Elastic/Sofa.Component.SolidMechanics.FEM.ElasticTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.FEM.Elastic" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/SolidMechanics/FEM/Elastic/Sofa.Component.SolidMechanics.FEM.ElasticConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.SolidMechanics.FEM.Elastic" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.Component.SolidMechanics.FEM.ElasticConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.SolidMechanics.FEM.Elastic.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//fwd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//BeamFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//BeamFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//FastTetrahedralCorotationalForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//FastTetrahedralCorotationalForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//HexahedralFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//HexahedralFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//HexahedralFEMForceFieldAndMass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//HexahedralFEMForceFieldAndMass.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//HexahedronFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//HexahedronFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//HexahedronFEMForceFieldAndMass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//HexahedronFEMForceFieldAndMass.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//QuadBendingFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//QuadBendingFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TetrahedralCorotationalFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TetrahedralCorotationalFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TetrahedronFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TetrahedronFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TriangleFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TriangleFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TriangleFEMUtils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TriangleFEMUtils.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TriangularAnisotropicFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TriangularAnisotropicFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TriangularFEMForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TriangularFEMForceField.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TriangularFEMForceFieldOptim.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.SolidMechanics.FEM.Elastic/sofa/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/SolidMechanics/FEM/Elastic/src/sofa/component/solidmechanics/fem/elastic//TriangularFEMForceFieldOptim.inl")
endif()

