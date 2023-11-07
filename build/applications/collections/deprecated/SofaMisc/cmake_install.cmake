 set ( CMAKE_INSTALL_PREFIX_BACK_SofaMisc_SofaMisc "${CMAKE_INSTALL_PREFIX}" ) 
 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/collections/SofaMisc" ) 
# Install script for directory: /home/wjy/MyLapGym/src/applications/collections/deprecated/SofaMisc

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaMisc/SofaMiscTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaMisc/SofaMiscTargets.cmake"
         "/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaMisc/CMakeFiles/Export/lib/cmake/SofaMisc/SofaMiscTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaMisc/SofaMiscTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaMisc/SofaMiscTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaMisc" TYPE FILE FILES "/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaMisc/CMakeFiles/Export/lib/cmake/SofaMisc/SofaMiscTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaMisc" TYPE FILE FILES "/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaMisc/CMakeFiles/Export/lib/cmake/SofaMisc/SofaMiscTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaMisc" TYPE FILE FILES "/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaMisc/SofaMiscConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaMisc" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/SofaMiscConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../../../collections/SofaMiscExtra/lib:$$ORIGIN/../../../collections/SofaMiscExtra/lib:@loader_path/../../../collections/SofaMiscExtra/lib:@executable_path/../../../collections/SofaMiscExtra/lib:$ORIGIN/../../../lib:$$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib:$ORIGIN/../../../collections/SofaMiscEngine/lib:$$ORIGIN/../../../collections/SofaMiscEngine/lib:@loader_path/../../../collections/SofaMiscEngine/lib:@executable_path/../../../collections/SofaMiscEngine/lib:$ORIGIN/../../../collections/SofaMiscFem/lib:$$ORIGIN/../../../collections/SofaMiscFem/lib:@loader_path/../../../collections/SofaMiscFem/lib:@executable_path/../../../collections/SofaMiscFem/lib:$ORIGIN/../../../collections/SofaMiscForceField/lib:$$ORIGIN/../../../collections/SofaMiscForceField/lib:@loader_path/../../../collections/SofaMiscForceField/lib:@executable_path/../../../collections/SofaMiscForceField/lib:$ORIGIN/../../../collections/SofaMiscMapping/lib:$$ORIGIN/../../../collections/SofaMiscMapping/lib:@loader_path/../../../collections/SofaMiscMapping/lib:@executable_path/../../../collections/SofaMiscMapping/lib:$ORIGIN/../../../collections/SofaMiscSolver/lib:$$ORIGIN/../../../collections/SofaMiscSolver/lib:@loader_path/../../../collections/SofaMiscSolver/lib:@executable_path/../../../collections/SofaMiscSolver/lib:$ORIGIN/../../../collections/SofaMiscTopology/lib:$$ORIGIN/../../../collections/SofaMiscTopology/lib:@loader_path/../../../collections/SofaMiscTopology/lib:@executable_path/../../../collections/SofaMiscTopology/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofaMisc.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../../../collections/SofaMiscExtra/lib:$$ORIGIN/../../../collections/SofaMiscExtra/lib:@loader_path/../../../collections/SofaMiscExtra/lib:@executable_path/../../../collections/SofaMiscExtra/lib:$ORIGIN/../../../lib:$$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib:$ORIGIN/../../../collections/SofaMiscEngine/lib:$$ORIGIN/../../../collections/SofaMiscEngine/lib:@loader_path/../../../collections/SofaMiscEngine/lib:@executable_path/../../../collections/SofaMiscEngine/lib:$ORIGIN/../../../collections/SofaMiscFem/lib:$$ORIGIN/../../../collections/SofaMiscFem/lib:@loader_path/../../../collections/SofaMiscFem/lib:@executable_path/../../../collections/SofaMiscFem/lib:$ORIGIN/../../../collections/SofaMiscForceField/lib:$$ORIGIN/../../../collections/SofaMiscForceField/lib:@loader_path/../../../collections/SofaMiscForceField/lib:@executable_path/../../../collections/SofaMiscForceField/lib:$ORIGIN/../../../collections/SofaMiscMapping/lib:$$ORIGIN/../../../collections/SofaMiscMapping/lib:@loader_path/../../../collections/SofaMiscMapping/lib:@executable_path/../../../collections/SofaMiscMapping/lib:$ORIGIN/../../../collections/SofaMiscSolver/lib:$$ORIGIN/../../../collections/SofaMiscSolver/lib:@loader_path/../../../collections/SofaMiscSolver/lib:@executable_path/../../../collections/SofaMiscSolver/lib:$ORIGIN/../../../collections/SofaMiscTopology/lib:$$ORIGIN/../../../collections/SofaMiscTopology/lib:@loader_path/../../../collections/SofaMiscTopology/lib:@executable_path/../../../collections/SofaMiscTopology/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../../../collections/SofaMiscExtra/lib:$$ORIGIN/../../../collections/SofaMiscExtra/lib:@loader_path/../../../collections/SofaMiscExtra/lib:@executable_path/../../../collections/SofaMiscExtra/lib:$ORIGIN/../../../lib:$$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib:$ORIGIN/../../../collections/SofaMiscEngine/lib:$$ORIGIN/../../../collections/SofaMiscEngine/lib:@loader_path/../../../collections/SofaMiscEngine/lib:@executable_path/../../../collections/SofaMiscEngine/lib:$ORIGIN/../../../collections/SofaMiscFem/lib:$$ORIGIN/../../../collections/SofaMiscFem/lib:@loader_path/../../../collections/SofaMiscFem/lib:@executable_path/../../../collections/SofaMiscFem/lib:$ORIGIN/../../../collections/SofaMiscForceField/lib:$$ORIGIN/../../../collections/SofaMiscForceField/lib:@loader_path/../../../collections/SofaMiscForceField/lib:@executable_path/../../../collections/SofaMiscForceField/lib:$ORIGIN/../../../collections/SofaMiscMapping/lib:$$ORIGIN/../../../collections/SofaMiscMapping/lib:@loader_path/../../../collections/SofaMiscMapping/lib:@executable_path/../../../collections/SofaMiscMapping/lib:$ORIGIN/../../../collections/SofaMiscSolver/lib:$$ORIGIN/../../../collections/SofaMiscSolver/lib:@loader_path/../../../collections/SofaMiscSolver/lib:@executable_path/../../../collections/SofaMiscSolver/lib:$ORIGIN/../../../collections/SofaMiscTopology/lib:$$ORIGIN/../../../collections/SofaMiscTopology/lib:@loader_path/../../../collections/SofaMiscTopology/lib:@executable_path/../../../collections/SofaMiscTopology/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofaMisc.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../../../collections/SofaMiscExtra/lib:$$ORIGIN/../../../collections/SofaMiscExtra/lib:@loader_path/../../../collections/SofaMiscExtra/lib:@executable_path/../../../collections/SofaMiscExtra/lib:$ORIGIN/../../../lib:$$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib:$ORIGIN/../../../collections/SofaMiscEngine/lib:$$ORIGIN/../../../collections/SofaMiscEngine/lib:@loader_path/../../../collections/SofaMiscEngine/lib:@executable_path/../../../collections/SofaMiscEngine/lib:$ORIGIN/../../../collections/SofaMiscFem/lib:$$ORIGIN/../../../collections/SofaMiscFem/lib:@loader_path/../../../collections/SofaMiscFem/lib:@executable_path/../../../collections/SofaMiscFem/lib:$ORIGIN/../../../collections/SofaMiscForceField/lib:$$ORIGIN/../../../collections/SofaMiscForceField/lib:@loader_path/../../../collections/SofaMiscForceField/lib:@executable_path/../../../collections/SofaMiscForceField/lib:$ORIGIN/../../../collections/SofaMiscMapping/lib:$$ORIGIN/../../../collections/SofaMiscMapping/lib:@loader_path/../../../collections/SofaMiscMapping/lib:@executable_path/../../../collections/SofaMiscMapping/lib:$ORIGIN/../../../collections/SofaMiscSolver/lib:$$ORIGIN/../../../collections/SofaMiscSolver/lib:@loader_path/../../../collections/SofaMiscSolver/lib:@executable_path/../../../collections/SofaMiscSolver/lib:$ORIGIN/../../../collections/SofaMiscTopology/lib:$$ORIGIN/../../../collections/SofaMiscTopology/lib:@loader_path/../../../collections/SofaMiscTopology/lib:@executable_path/../../../collections/SofaMiscTopology/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaMisc.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaMisc" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/SofaMisc/SofaMisc/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaMisc" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/collections/deprecated/SofaMisc/src/SofaMisc/initSofaMisc.h")
endif()

 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX_BACK_SofaMisc_SofaMisc}" ) 
