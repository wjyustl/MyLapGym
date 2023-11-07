# Install script for directory: /home/wjy/MyLapGym/src/Sofa/framework/DefaultType

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType/Sofa.DefaultTypeTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType/Sofa.DefaultTypeTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/framework/DefaultType/CMakeFiles/Export/lib/cmake/Sofa.DefaultType/Sofa.DefaultTypeTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType/Sofa.DefaultTypeTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType/Sofa.DefaultTypeTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/DefaultType/CMakeFiles/Export/lib/cmake/Sofa.DefaultType/Sofa.DefaultTypeTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/DefaultType/CMakeFiles/Export/lib/cmake/Sofa.DefaultType/Sofa.DefaultTypeTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/DefaultType/Sofa.DefaultTypeConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.DefaultTypeConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.DefaultType.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.DefaultType.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/AbstractTypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/DataTypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/DataTypeOperations.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/MapMapSparseMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/MapMapSparseMatrixEigenUtils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/MatrixExporter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/RigidCoord.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/RigidDeriv.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/RigidMass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/RigidTypes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/RigidVec6Types.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/SolidTypes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/SolidTypes.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/TemplatesAliases.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/TopologyTypes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/TypeInfoID.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/TypeInfoRegistry.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/TypeInfoRegistryTools.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/TopologyTypes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/VecTypes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.DefaultType/sofa/defaulttype/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/fwd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/DataTypeInfoDynamicWrapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/DataTypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/NoTypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/NameOnlyTypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Bool.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_BoundingBox.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_FixedArray.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Integer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Mat.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Quat.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_RigidTypes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_RGBAColor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Set.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Scalar.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Text.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Vector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Vec.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_VecTypes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Topology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/IncompleteTypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/BoolTypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/IntegerTypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/FixedArrayTypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/SetTypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/ScalarTypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/TextTypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/VectorTypeInfo.h")
endif()

