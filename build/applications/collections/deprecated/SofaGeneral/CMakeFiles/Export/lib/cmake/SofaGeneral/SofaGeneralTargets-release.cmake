#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaGeneral" for configuration "Release"
set_property(TARGET SofaGeneral APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaGeneral PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaGeneral.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaGeneral.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaGeneral )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaGeneral "${_IMPORT_PREFIX}/lib/libSofaGeneral.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
