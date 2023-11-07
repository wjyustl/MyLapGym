#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaEigen2Solver" for configuration "Release"
set_property(TARGET SofaEigen2Solver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaEigen2Solver PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaEigen2Solver.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaEigen2Solver.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaEigen2Solver )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaEigen2Solver "${_IMPORT_PREFIX}/lib/libSofaEigen2Solver.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
