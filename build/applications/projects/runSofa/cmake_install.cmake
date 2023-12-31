# Install script for directory: /home/wjy/MyLapGym/src/applications/projects/runSofa

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/plugin_list.conf.default")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc" TYPE FILE RENAME "runSofa.ini" FILES "/home/wjy/MyLapGym/build/etc/installedrunSofa.ini")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xresourcesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sofa/gui/runSofa" TYPE DIRECTORY FILES "/home/wjy/MyLapGym/src/applications/projects/runSofa/resources/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/runSofa-22.12.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/runSofa"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../plugins/SceneChecking/lib:$$ORIGIN/../plugins/SceneChecking/lib:@loader_path/../plugins/SceneChecking/lib:@executable_path/../plugins/SceneChecking/lib:$ORIGIN/../collections/SofaGuiCommon/lib:$$ORIGIN/../collections/SofaGuiCommon/lib:@loader_path/../collections/SofaGuiCommon/lib:@executable_path/../collections/SofaGuiCommon/lib:$ORIGIN/../collections/SofaGuiQt/lib:$$ORIGIN/../collections/SofaGuiQt/lib:@loader_path/../collections/SofaGuiQt/lib:@executable_path/../collections/SofaGuiQt/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES
    "/home/wjy/MyLapGym/build/bin/runSofa-22.12.99"
    "/home/wjy/MyLapGym/build/bin/runSofa"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/runSofa-22.12.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/runSofa"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/wjy/MyLapGym/build/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
           NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../plugins/SceneChecking/lib:$$ORIGIN/../plugins/SceneChecking/lib:@loader_path/../plugins/SceneChecking/lib:@executable_path/../plugins/SceneChecking/lib:$ORIGIN/../collections/SofaGuiCommon/lib:$$ORIGIN/../collections/SofaGuiCommon/lib:@loader_path/../collections/SofaGuiCommon/lib:@executable_path/../collections/SofaGuiCommon/lib:$ORIGIN/../collections/SofaGuiQt/lib:$$ORIGIN/../collections/SofaGuiQt/lib:@loader_path/../collections/SofaGuiQt/lib:@executable_path/../collections/SofaGuiQt/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI/runSofa" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/projects/runSofa/runSofaValidation.h")
endif()

