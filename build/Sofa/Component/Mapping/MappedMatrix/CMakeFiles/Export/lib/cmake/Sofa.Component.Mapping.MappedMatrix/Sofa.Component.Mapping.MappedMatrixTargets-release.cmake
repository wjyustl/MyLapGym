#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.Mapping.MappedMatrix" for configuration "Release"
set_property(TARGET Sofa.Component.Mapping.MappedMatrix APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.Mapping.MappedMatrix PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.Mapping.MappedMatrix.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofa.Component.Mapping.MappedMatrix.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS Sofa.Component.Mapping.MappedMatrix )
list(APPEND _IMPORT_CHECK_FILES_FOR_Sofa.Component.Mapping.MappedMatrix "${_IMPORT_PREFIX}/lib/libSofa.Component.Mapping.MappedMatrix.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
