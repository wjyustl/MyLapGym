#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "metis" for configuration "Release"
set_property(TARGET metis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(metis PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libmetis.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS metis )
list(APPEND _IMPORT_CHECK_FILES_FOR_metis "${_IMPORT_PREFIX}/lib/libmetis.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
