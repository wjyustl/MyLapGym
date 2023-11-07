# Install script for directory: /home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra/Sofa.LinearAlgebraTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra/Sofa.LinearAlgebraTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/framework/LinearAlgebra/CMakeFiles/Export/lib/cmake/Sofa.LinearAlgebra/Sofa.LinearAlgebraTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra/Sofa.LinearAlgebraTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra/Sofa.LinearAlgebraTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/LinearAlgebra/CMakeFiles/Export/lib/cmake/Sofa.LinearAlgebra/Sofa.LinearAlgebraTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/LinearAlgebra/CMakeFiles/Export/lib/cmake/Sofa.LinearAlgebra/Sofa.LinearAlgebraTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/framework/LinearAlgebra/Sofa.LinearAlgebraConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.LinearAlgebraConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.LinearAlgebra.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.LinearAlgebra.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.LinearAlgebra/sofa/linearalgebra/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/fwd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BTDMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BTDMatrix.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BaseMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BaseVector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlockFullMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlockFullMatrix.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlocFullMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlocFullMatrix.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlockDiagonalMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlockDiagonalMatrix.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlockVector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlockVector.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/CompressedRowSparseMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/DiagonalMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/EigenBaseSparseMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/EigenMatrixManipulator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/EigenSparseMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/EigenVector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/FullMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/FullMatrix.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/FullVector.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/FullVector.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/MatrixExpr.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/RotationMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/SparseMatrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/SparseMatrixProduct.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/SparseMatrixProduct[CompressedRowSparseMatrix].h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/SparseMatrixProduct[EigenSparseMatrix].h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/SparseMatrixStorageOrder.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/SparseMatrixStorageOrder[EigenSparseMatrix].h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/matrix_bloc_traits.h")
endif()

