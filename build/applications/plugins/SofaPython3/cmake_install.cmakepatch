 set ( CMAKE_INSTALL_PREFIX_BACK_SofaPython3_SofaPython3 "${CMAKE_INSTALL_PREFIX}" ) 
 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/plugins/SofaPython3" ) 
# Install script for directory: /home/wjy/MyLapGym/src/applications/plugins/SofaPython3

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/site-packages/Sofa/constants" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/python3/site-packages/Sofa/constants/Key.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/site-packages/Sofa/constants" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/python3/site-packages/Sofa/constants/KeyCode.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/site-packages/Sofa/constants" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/python3/site-packages/Sofa/constants/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/site-packages/splib" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/python3/site-packages/splib/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaPython3" TYPE FILE FILES "/home/wjy/MyLapGym/build/applications/plugins/SofaPython3/SofaPython3ConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaPython3" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/SofaPython3Config.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xresourcesx" OR NOT CMAKE_INSTALL_COMPONENT)
  
        find_package(Git REQUIRED)
        # get the current commit sha
        execute_process(
            COMMAND ${GIT_EXECUTABLE} rev-parse HEAD
            WORKING_DIRECTORY "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3"
            OUTPUT_VARIABLE CURRENT_GIT_COMMIT
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        # get the branches containing current commit
        execute_process(
            COMMAND ${GIT_EXECUTABLE} branch -a --contains "${CURRENT_GIT_COMMIT}"
            WORKING_DIRECTORY "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3"
            OUTPUT_VARIABLE CURRENT_GIT_BRANCH
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        # get the current remotes
        execute_process(
            COMMAND ${GIT_EXECUTABLE} remote -vv
            WORKING_DIRECTORY "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3"
            OUTPUT_VARIABLE CURRENT_GIT_REMOTE
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        # get more info (hash, author, date, comment)
        execute_process(
            COMMAND ${GIT_EXECUTABLE} log --pretty -n 1
            WORKING_DIRECTORY "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3"
            OUTPUT_VARIABLE CURRENT_GIT_INFO
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        # write all info in git-info.txt
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/git-info.txt"
            "# Git info for SofaPython3"                              \n
                                                                    \n
            "## Current commit"                                   \n
            "## git rev-parse --abbrev-ref HEAD"                  \n
            "${CURRENT_GIT_COMMIT}"                              \n
                                                                    \n
            "## Branches containing current commit"               \n
            "## git branch -a --contains ${CURRENT_GIT_COMMIT} " \n
            "${CURRENT_GIT_BRANCH}"                              \n
                                                                    \n
            "## Remotes"                                          \n
            "## git remote -vv "                                  \n
            "${CURRENT_GIT_REMOTE}"                              \n
                                                                    \n
            "## More info"                                        \n
            "## git log --pretty -n 1"                            \n
            "${CURRENT_GIT_INFO}"                                \n
            )
        
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaPython3" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/CMake/SofaPython3Tools.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/wjy/anaconda3/envs/MyLapGym/lib/python3.9/site-packages/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/wjy/anaconda3/envs/MyLapGym/lib/python3.9/site-packages" TYPE DIRECTORY FILES "")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
                      execute_process(                         COMMAND /usr/bin/cmake -E create_symlink                         /home/wjy/MyLapGym/build/install/plugins/SofaPython3/lib/python3/site-packages/Sofa/                         /home/wjy/anaconda3/envs/MyLapGym/lib/python3.9/site-packages/Sofa                       )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
                      execute_process(                         COMMAND /usr/bin/cmake -E create_symlink                         /home/wjy/MyLapGym/build/install/plugins/SofaPython3/lib/python3/site-packages/SofaRuntime/                         /home/wjy/anaconda3/envs/MyLapGym/lib/python3.9/site-packages/SofaRuntime                       )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
                      execute_process(                         COMMAND /usr/bin/cmake -E create_symlink                         /home/wjy/MyLapGym/build/install/plugins/SofaPython3/lib/python3/site-packages/SofaTypes/                         /home/wjy/anaconda3/envs/MyLapGym/lib/python3.9/site-packages/SofaTypes                       )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
                      execute_process(                         COMMAND /usr/bin/cmake -E create_symlink                         /home/wjy/MyLapGym/build/install/plugins/SofaPython3/lib/python3/site-packages/splib/                         /home/wjy/anaconda3/envs/MyLapGym/lib/python3.9/site-packages/splib                       )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/wjy/MyLapGym/build/applications/plugins/SofaPython3/Plugin/cmake_install.cmake")
  include("/home/wjy/MyLapGym/build/applications/plugins/SofaPython3/bindings/cmake_install.cmake")
  include("/home/wjy/MyLapGym/build/applications/plugins/SofaPython3/examples/cmake_install.cmake")
  include("/home/wjy/MyLapGym/build/applications/plugins/SofaPython3/docs/cmake_install.cmake")

endif()

 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX_BACK_SofaPython3_SofaPython3}" ) 
