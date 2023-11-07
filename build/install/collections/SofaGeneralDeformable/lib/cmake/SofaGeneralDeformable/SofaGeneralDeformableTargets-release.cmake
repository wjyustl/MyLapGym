#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaGeneralDeformable" for configuration "Release"
set_property(TARGET SofaGeneralDeformable APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaGeneralDeformable PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaGeneralDeformable.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaGeneralDeformable.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaGeneralDeformable )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaGeneralDeformable "${_IMPORT_PREFIX}/lib/libSofaGeneralDeformable.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
