#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.GUI" for configuration "Release"
set_property(TARGET Sofa.GUI APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.GUI PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.GUI.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofa.GUI.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS Sofa.GUI )
list(APPEND _IMPORT_CHECK_FILES_FOR_Sofa.GUI "${_IMPORT_PREFIX}/lib/libSofa.GUI.so.22.12.99" )

# Import target "runSofa" for configuration "Release"
set_property(TARGET runSofa APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(runSofa PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/runSofa-22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS runSofa )
list(APPEND _IMPORT_CHECK_FILES_FOR_runSofa "${_IMPORT_PREFIX}/bin/runSofa-22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
