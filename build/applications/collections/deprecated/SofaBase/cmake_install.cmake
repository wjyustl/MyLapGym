# Install script for directory: /home/wjy/MyLapGym/src/applications/collections/deprecated/SofaBase

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaBase/SofaBaseTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaBase/SofaBaseTargets.cmake"
         "/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaBase/CMakeFiles/Export/lib/cmake/SofaBase/SofaBaseTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaBase/SofaBaseTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaBase/SofaBaseTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaBase" TYPE FILE FILES "/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaBase/CMakeFiles/Export/lib/cmake/SofaBase/SofaBaseTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaBase" TYPE FILE FILES "/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaBase/CMakeFiles/Export/lib/cmake/SofaBase/SofaBaseTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaBase" TYPE FILE FILES "/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaBase/SofaBaseConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaBase" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/SofaBaseConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../collections/SofaBaseLinearSolver/lib:$$ORIGIN/../collections/SofaBaseLinearSolver/lib:@loader_path/../collections/SofaBaseLinearSolver/lib:@executable_path/../collections/SofaBaseLinearSolver/lib:$ORIGIN/../collections/SofaEigen2Solver/lib:$$ORIGIN/../collections/SofaEigen2Solver/lib:@loader_path/../collections/SofaEigen2Solver/lib:@executable_path/../collections/SofaEigen2Solver/lib:$ORIGIN/../collections/SofaBaseTopology/lib:$$ORIGIN/../collections/SofaBaseTopology/lib:@loader_path/../collections/SofaBaseTopology/lib:@executable_path/../collections/SofaBaseTopology/lib:$ORIGIN/../collections/SofaBaseCollision/lib:$$ORIGIN/../collections/SofaBaseCollision/lib:@loader_path/../collections/SofaBaseCollision/lib:@executable_path/../collections/SofaBaseCollision/lib:$ORIGIN/../collections/SofaBaseMechanics/lib:$$ORIGIN/../collections/SofaBaseMechanics/lib:@loader_path/../collections/SofaBaseMechanics/lib:@executable_path/../collections/SofaBaseMechanics/lib:$ORIGIN/../collections/SofaBaseVisual/lib:$$ORIGIN/../collections/SofaBaseVisual/lib:@loader_path/../collections/SofaBaseVisual/lib:@executable_path/../collections/SofaBaseVisual/lib:$ORIGIN/../collections/SofaBaseUtils/lib:$$ORIGIN/../collections/SofaBaseUtils/lib:@loader_path/../collections/SofaBaseUtils/lib:@executable_path/../collections/SofaBaseUtils/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofaBase.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../collections/SofaBaseLinearSolver/lib:$$ORIGIN/../collections/SofaBaseLinearSolver/lib:@loader_path/../collections/SofaBaseLinearSolver/lib:@executable_path/../collections/SofaBaseLinearSolver/lib:$ORIGIN/../collections/SofaEigen2Solver/lib:$$ORIGIN/../collections/SofaEigen2Solver/lib:@loader_path/../collections/SofaEigen2Solver/lib:@executable_path/../collections/SofaEigen2Solver/lib:$ORIGIN/../collections/SofaBaseTopology/lib:$$ORIGIN/../collections/SofaBaseTopology/lib:@loader_path/../collections/SofaBaseTopology/lib:@executable_path/../collections/SofaBaseTopology/lib:$ORIGIN/../collections/SofaBaseCollision/lib:$$ORIGIN/../collections/SofaBaseCollision/lib:@loader_path/../collections/SofaBaseCollision/lib:@executable_path/../collections/SofaBaseCollision/lib:$ORIGIN/../collections/SofaBaseMechanics/lib:$$ORIGIN/../collections/SofaBaseMechanics/lib:@loader_path/../collections/SofaBaseMechanics/lib:@executable_path/../collections/SofaBaseMechanics/lib:$ORIGIN/../collections/SofaBaseVisual/lib:$$ORIGIN/../collections/SofaBaseVisual/lib:@loader_path/../collections/SofaBaseVisual/lib:@executable_path/../collections/SofaBaseVisual/lib:$ORIGIN/../collections/SofaBaseUtils/lib:$$ORIGIN/../collections/SofaBaseUtils/lib:@loader_path/../collections/SofaBaseUtils/lib:@executable_path/../collections/SofaBaseUtils/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../collections/SofaBaseLinearSolver/lib:$$ORIGIN/../collections/SofaBaseLinearSolver/lib:@loader_path/../collections/SofaBaseLinearSolver/lib:@executable_path/../collections/SofaBaseLinearSolver/lib:$ORIGIN/../collections/SofaEigen2Solver/lib:$$ORIGIN/../collections/SofaEigen2Solver/lib:@loader_path/../collections/SofaEigen2Solver/lib:@executable_path/../collections/SofaEigen2Solver/lib:$ORIGIN/../collections/SofaBaseTopology/lib:$$ORIGIN/../collections/SofaBaseTopology/lib:@loader_path/../collections/SofaBaseTopology/lib:@executable_path/../collections/SofaBaseTopology/lib:$ORIGIN/../collections/SofaBaseCollision/lib:$$ORIGIN/../collections/SofaBaseCollision/lib:@loader_path/../collections/SofaBaseCollision/lib:@executable_path/../collections/SofaBaseCollision/lib:$ORIGIN/../collections/SofaBaseMechanics/lib:$$ORIGIN/../collections/SofaBaseMechanics/lib:@loader_path/../collections/SofaBaseMechanics/lib:@executable_path/../collections/SofaBaseMechanics/lib:$ORIGIN/../collections/SofaBaseVisual/lib:$$ORIGIN/../collections/SofaBaseVisual/lib:@loader_path/../collections/SofaBaseVisual/lib:@executable_path/../collections/SofaBaseVisual/lib:$ORIGIN/../collections/SofaBaseUtils/lib:$$ORIGIN/../collections/SofaBaseUtils/lib:@loader_path/../collections/SofaBaseUtils/lib:@executable_path/../collections/SofaBaseUtils/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofaBase.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../collections/SofaBaseLinearSolver/lib:$$ORIGIN/../collections/SofaBaseLinearSolver/lib:@loader_path/../collections/SofaBaseLinearSolver/lib:@executable_path/../collections/SofaBaseLinearSolver/lib:$ORIGIN/../collections/SofaEigen2Solver/lib:$$ORIGIN/../collections/SofaEigen2Solver/lib:@loader_path/../collections/SofaEigen2Solver/lib:@executable_path/../collections/SofaEigen2Solver/lib:$ORIGIN/../collections/SofaBaseTopology/lib:$$ORIGIN/../collections/SofaBaseTopology/lib:@loader_path/../collections/SofaBaseTopology/lib:@executable_path/../collections/SofaBaseTopology/lib:$ORIGIN/../collections/SofaBaseCollision/lib:$$ORIGIN/../collections/SofaBaseCollision/lib:@loader_path/../collections/SofaBaseCollision/lib:@executable_path/../collections/SofaBaseCollision/lib:$ORIGIN/../collections/SofaBaseMechanics/lib:$$ORIGIN/../collections/SofaBaseMechanics/lib:@loader_path/../collections/SofaBaseMechanics/lib:@executable_path/../collections/SofaBaseMechanics/lib:$ORIGIN/../collections/SofaBaseVisual/lib:$$ORIGIN/../collections/SofaBaseVisual/lib:@loader_path/../collections/SofaBaseVisual/lib:@executable_path/../collections/SofaBaseVisual/lib:$ORIGIN/../collections/SofaBaseUtils/lib:$$ORIGIN/../collections/SofaBaseUtils/lib:@loader_path/../collections/SofaBaseUtils/lib:@executable_path/../collections/SofaBaseUtils/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaBase.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaBase/SofaBase" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/SofaBase/SofaBase/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaBase/SofaBase" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/collections/deprecated/SofaBase/src/SofaBase/initSofaBase.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaBase/SofaBaseLinearSolver/cmake_install.cmake")
  include("/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaBase/SofaEigen2Solver/cmake_install.cmake")
  include("/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaBase/SofaBaseTopology/cmake_install.cmake")
  include("/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaBase/SofaBaseCollision/cmake_install.cmake")
  include("/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaBase/SofaBaseMechanics/cmake_install.cmake")
  include("/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaBase/SofaBaseVisual/cmake_install.cmake")
  include("/home/wjy/MyLapGym/build/applications/collections/deprecated/SofaBase/SofaBaseUtils/cmake_install.cmake")

endif()

