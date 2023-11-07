#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaDeformable" for configuration "Release"
set_property(TARGET SofaDeformable APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaDeformable PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaDeformable.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaDeformable.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaDeformable )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaDeformable "${_IMPORT_PREFIX}/lib/libSofaDeformable.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
