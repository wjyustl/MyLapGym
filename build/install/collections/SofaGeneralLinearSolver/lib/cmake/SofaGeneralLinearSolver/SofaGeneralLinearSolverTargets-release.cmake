#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaGeneralLinearSolver" for configuration "Release"
set_property(TARGET SofaGeneralLinearSolver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaGeneralLinearSolver PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaGeneralLinearSolver.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaGeneralLinearSolver.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaGeneralLinearSolver )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaGeneralLinearSolver "${_IMPORT_PREFIX}/lib/libSofaGeneralLinearSolver.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
