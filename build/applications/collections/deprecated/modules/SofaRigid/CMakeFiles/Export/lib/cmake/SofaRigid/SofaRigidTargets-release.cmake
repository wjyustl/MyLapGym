#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaRigid" for configuration "Release"
set_property(TARGET SofaRigid APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaRigid PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaRigid.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaRigid.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaRigid )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaRigid "${_IMPORT_PREFIX}/lib/libSofaRigid.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
