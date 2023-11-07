#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaSimulation" for configuration "Release"
set_property(TARGET SofaSimulation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaSimulation PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaSimulation.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaSimulation.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaSimulation )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaSimulation "${_IMPORT_PREFIX}/lib/libSofaSimulation.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
