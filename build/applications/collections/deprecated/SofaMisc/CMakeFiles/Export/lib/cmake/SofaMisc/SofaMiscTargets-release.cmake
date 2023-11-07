#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaMisc" for configuration "Release"
set_property(TARGET SofaMisc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaMisc PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaMisc.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaMisc.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaMisc )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaMisc "${_IMPORT_PREFIX}/lib/libSofaMisc.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
