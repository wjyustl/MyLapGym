#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Component.Visual" for configuration "Release"
set_property(TARGET Sofa.Component.Visual APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Component.Visual PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "tinyxml"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Component.Visual.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofa.Component.Visual.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS Sofa.Component.Visual )
list(APPEND _IMPORT_CHECK_FILES_FOR_Sofa.Component.Visual "${_IMPORT_PREFIX}/lib/libSofa.Component.Visual.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
