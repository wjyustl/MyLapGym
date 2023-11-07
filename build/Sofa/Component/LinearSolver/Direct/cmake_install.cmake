# Install script for directory: /home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct/Sofa.Component.LinearSolver.DirectTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct/Sofa.Component.LinearSolver.DirectTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/Component/LinearSolver/Direct/CMakeFiles/Export/lib/cmake/Sofa.Component.LinearSolver.Direct/Sofa.Component.LinearSolver.DirectTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct/Sofa.Component.LinearSolver.DirectTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct/Sofa.Component.LinearSolver.DirectTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/LinearSolver/Direct/CMakeFiles/Export/lib/cmake/Sofa.Component.LinearSolver.Direct/Sofa.Component.LinearSolver.DirectTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/LinearSolver/Direct/CMakeFiles/Export/lib/cmake/Sofa.Component.LinearSolver.Direct/Sofa.Component.LinearSolver.DirectTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/Component/LinearSolver/Direct/Sofa.Component.LinearSolver.DirectConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.Component.LinearSolver.DirectConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.LinearSolver.Direct.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.Component.LinearSolver.Direct.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/AsyncSparseLDLSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/AsyncSparseLDLSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/BTDLinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/BTDLinearSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/CholeskySolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/CholeskySolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenDirectSparseSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenDirectSparseSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenSimplicialLDLT.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenSimplicialLLT.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenSparseLU.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenSparseQR.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/PrecomputedLinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/PrecomputedLinearSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SVDLinearSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SVDLinearSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SimplicialLDLTTraits.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SimplicialLLTTraits.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseCholeskySolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseCholeskySolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseCommon.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseLDLSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseLDLSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseLDLSolverImpl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseLUSolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseLUSolver.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseLUTraits.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseQRTraits.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/wjy/MyLapGym/build/Sofa/Component/LinearSolver/Direct/extlibs/csparse/cmake_install.cmake")
  include("/home/wjy/MyLapGym/build/Sofa/Component/LinearSolver/Direct/extlibs/metis-5.1.0/cmake_install.cmake")

endif()

