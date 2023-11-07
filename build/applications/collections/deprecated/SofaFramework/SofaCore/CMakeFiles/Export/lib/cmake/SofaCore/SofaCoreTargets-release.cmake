#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaCore" for configuration "Release"
set_property(TARGET SofaCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaCore PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaCore.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaCore.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaCore )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaCore "${_IMPORT_PREFIX}/lib/libSofaCore.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
