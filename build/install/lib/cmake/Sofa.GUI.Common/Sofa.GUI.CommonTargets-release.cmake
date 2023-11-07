#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.GUI.Common" for configuration "Release"
set_property(TARGET Sofa.GUI.Common APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.GUI.Common PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.GUI.Common.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofa.GUI.Common.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS Sofa.GUI.Common )
list(APPEND _IMPORT_CHECK_FILES_FOR_Sofa.GUI.Common "${_IMPORT_PREFIX}/lib/libSofa.GUI.Common.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
