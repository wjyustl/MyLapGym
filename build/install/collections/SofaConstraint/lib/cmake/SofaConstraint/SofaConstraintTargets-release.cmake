#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaConstraint" for configuration "Release"
set_property(TARGET SofaConstraint APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaConstraint PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaConstraint.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaConstraint.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaConstraint )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaConstraint "${_IMPORT_PREFIX}/lib/libSofaConstraint.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
