#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaSparseSolver" for configuration "Release"
set_property(TARGET SofaSparseSolver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaSparseSolver PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaSparseSolver.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaSparseSolver.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaSparseSolver )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaSparseSolver "${_IMPORT_PREFIX}/lib/libSofaSparseSolver.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
