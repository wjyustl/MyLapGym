#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.IO" for configuration "Release"
set_property(TARGET Sofa.Component.IO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.IO PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.IO.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofa.Component.IO.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS Sofa.Component.IO )
list(APPEND _IMPORT_CHECK_FILES_FOR_Sofa.Component.IO "${_IMPORT_PREFIX}/lib/libSofa.Component.IO.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
