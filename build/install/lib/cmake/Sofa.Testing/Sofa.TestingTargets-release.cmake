#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Testing" for configuration "Release"
set_property(TARGET Sofa.Testing APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Testing PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Testing.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofa.Testing.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS Sofa.Testing )
list(APPEND _IMPORT_CHECK_FILES_FOR_Sofa.Testing "${_IMPORT_PREFIX}/lib/libSofa.Testing.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
