#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaFramework" for configuration "Release"
set_property(TARGET SofaFramework APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaFramework PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaFramework.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaFramework.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaFramework )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaFramework "${_IMPORT_PREFIX}/lib/libSofaFramework.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
