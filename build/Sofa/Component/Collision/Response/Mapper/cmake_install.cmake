# Install script for directory: /home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Collision.Response.Mapper/Sofa.Component.Collision.Response.MapperTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Collision.Response.Mapper/Sofa.Component.Collision.Response.MapperTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/Component/Collision/Response/Mapper/CMakeFiles/Export/lib/cmake/Sofa.Component.Collision.Response.Mapper/Sofa.Component.Collision.Response.MapperTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Collision.Response.Mapper/Sofa.Component.Collision.Response.MapperTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Collision.Response.Mapper/Sofa.Component.Collision.Response.MapperTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Collision.Response.Mapper" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Collision/Response/Mapper/CMakeFiles/Export/lib/cmake/Sofa.Component.Collision.Response.Mapper/Sofa.Component.Collision.Response.MapperTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Collision.Response.Mapper" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Collision/Response/Mapper/CMakeFiles/Export/lib/cmake/Sofa.Component.Collision.Response.Mapper/Sofa.Component.Collision.Response.MapperTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Collision.Response.Mapper" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/Collision/Response/Mapper/Sofa.Component.Collision.Response.MapperConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Collision.Response.Mapper" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.Component.Collision.Response.MapperConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.Collision.Response.Mapper.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.Collision.Response.Mapper.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Collision.Response.Mapper.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper/src/sofa/component/collision/response/mapper/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper/src/sofa/component/collision/response/mapper/BaseContactMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper/src/sofa/component/collision/response/mapper/BarycentricContactMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper/src/sofa/component/collision/response/mapper/BarycentricContactMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper/src/sofa/component/collision/response/mapper/IdentityContactMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper/src/sofa/component/collision/response/mapper/IdentityContactMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper/src/sofa/component/collision/response/mapper/RigidContactMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper/src/sofa/component/collision/response/mapper/RigidContactMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper/src/sofa/component/collision/response/mapper/SubsetContactMapper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper/src/sofa/component/collision/response/mapper/SubsetContactMapper.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Collision.Response.Mapper/sofa/component/collision/response/mapper" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/Collision/Response/Mapper/src/sofa/component/collision/response/mapper/TetrahedronBarycentricContactMapper.h")
endif()

