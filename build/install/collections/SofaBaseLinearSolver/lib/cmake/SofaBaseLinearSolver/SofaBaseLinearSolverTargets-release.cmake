#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaBaseLinearSolver" for configuration "Release"
set_property(TARGET SofaBaseLinearSolver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaBaseLinearSolver PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaBaseLinearSolver.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaBaseLinearSolver.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaBaseLinearSolver )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaBaseLinearSolver "${_IMPORT_PREFIX}/lib/libSofaBaseLinearSolver.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
