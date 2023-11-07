# Install script for directory: /home/wjy/MyLapGym/src/Sofa/framework/Helper

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Helper/Sofa.HelperTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Helper/Sofa.HelperTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/framework/Helper/CMakeFiles/Export/lib/cmake/Sofa.Helper/Sofa.HelperTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Helper/Sofa.HelperTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Helper/Sofa.HelperTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Helper" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/Helper/CMakeFiles/Export/lib/cmake/Sofa.Helper/Sofa.HelperTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Helper" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/Helper/CMakeFiles/Export/lib/cmake/Sofa.Helper/Sofa.HelperTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Helper" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/Helper/Sofa.HelperConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Helper" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.HelperConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Helper.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Helper.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Helper.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.Helper/sofa/helper/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/AdvancedTimer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/BackTrace.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/cast.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/ColorMap.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/ComponentChange.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/DiffLib.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/Factory.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/Factory.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/TypeInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/FnDispatcher.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/FnDispatcher.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/GenerateRigid.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/IndexOpenMP.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/LCPcalc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/MarchingCubeUtility.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/MatEigen.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/MemoryManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/NameDecoder.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/narrow_cast.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/OptionsGroup.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/OwnershipSPtr.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/Polynomial_LD.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/Polynomial_LD.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/RandomGenerator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/SimpleTimer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/ScopedAdvancedTimer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/SortedPermutation.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/StringUtils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/TagFactory.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/TriangleOctree.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/Utils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/accessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/decompose.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/decompose.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/deque.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/hash.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/integer_id.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/accessor" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/accessor/ReadAccessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/accessor" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/accessor/ReadAccessorVector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/accessor" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/accessor/WriteAccessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/accessor" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/accessor/WriteAccessorVector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/accessor" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/accessor/WriteOnlyAccessor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/BaseFileAccess.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/FileAccess.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/File.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/Image.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/ImageDDS.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/ImageRAW.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/XspLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/Mesh.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/MeshOBJ.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/MeshGmsh.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/MeshTopologyLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/SphereLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/STBImage.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/io" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/io/TriangleLoader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/kdTree.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/kdTree.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/list.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/map.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/map_ptr_stable_compare.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/pair.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/proximity.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/random.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/rmath.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/set.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/fwd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/DynamicLibrary.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/FileSystem.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/Locale.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/PipeProcess.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/PluginManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/SetDirectory.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/SofaOStream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/console.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/console_internal.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system/thread" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/thread/CTime.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system/thread" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/thread/CircularQueue.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system/thread" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/thread/CircularQueue.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system/thread" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/thread/debug.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system/thread" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/thread/thread_specific_ptr.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/FileMonitor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/system" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/system/FileRepository.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/Messaging.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/Message.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/ComponentInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/FileInfo.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/MessageDispatcher.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/MessageHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/ConsoleMessageHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/SilentMessageHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/FileMessageHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/CountingMessageHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/LoggingMessageHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/RoutingMessageHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/MessageHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/MessageFormatter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/ClangMessageHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/ClangStyleMessageFormatter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/DefaultStyleMessageFormatter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/logging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/logging/ExceptionMessageHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/messaging" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/messaging/FileMessage.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/visual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/visual/Transformation.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/visual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/visual/DrawTool.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Helper/sofa/helper/visual" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/Helper/src/sofa/helper/visual/Trackball.h")
endif()

