# Install script for directory: /home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Metis/MetisTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Metis/MetisTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/CMakeFiles/Export/lib/cmake/Metis/MetisTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Metis/MetisTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Metis/MetisTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Metis" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/CMakeFiles/Export/lib/cmake/Metis/MetisTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Metis" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/CMakeFiles/Export/lib/cmake/Metis/MetisTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Metis" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/MetisConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Metis" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/MetisConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libmetis.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/Metis" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/include/metis.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/Metis/libmetis" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/libmetis/defs.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/Metis/libmetis" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/libmetis/gklib_defs.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/Metis/libmetis" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/libmetis/gklib_rename.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/Metis/libmetis" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/libmetis/macros.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/Metis/libmetis" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/libmetis/metislib.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/Metis/libmetis" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/libmetis/proto.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/Metis/libmetis" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/libmetis/rename.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/Metis/libmetis" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/libmetis/stdheaders.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/Metis/libmetis" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/libmetis/struct.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extlibs/Metis" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/LICENSE.txt")
endif()

