#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ArticulatedSystemPlugin" for configuration "Release"
set_property(TARGET ArticulatedSystemPlugin APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ArticulatedSystemPlugin PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libArticulatedSystemPlugin.so.1.0"
  IMPORTED_SONAME_RELEASE "libArticulatedSystemPlugin.so.1.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS ArticulatedSystemPlugin )
list(APPEND _IMPORT_CHECK_FILES_FOR_ArticulatedSystemPlugin "${_IMPORT_PREFIX}/lib/libArticulatedSystemPlugin.so.1.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
