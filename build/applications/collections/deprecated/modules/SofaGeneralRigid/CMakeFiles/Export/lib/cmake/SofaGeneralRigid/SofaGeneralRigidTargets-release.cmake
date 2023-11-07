#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaGeneralRigid" for configuration "Release"
set_property(TARGET SofaGeneralRigid APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaGeneralRigid PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaGeneralRigid.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaGeneralRigid.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaGeneralRigid )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaGeneralRigid "${_IMPORT_PREFIX}/lib/libSofaGeneralRigid.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
