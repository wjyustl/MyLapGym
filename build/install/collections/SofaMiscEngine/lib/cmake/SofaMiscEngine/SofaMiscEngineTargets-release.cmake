#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaMiscEngine" for configuration "Release"
set_property(TARGET SofaMiscEngine APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaMiscEngine PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaMiscEngine.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaMiscEngine.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaMiscEngine )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaMiscEngine "${_IMPORT_PREFIX}/lib/libSofaMiscEngine.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
