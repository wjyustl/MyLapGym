#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Simulation.Common" for configuration "Release"
set_property(TARGET Sofa.Simulation.Common APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Simulation.Common PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "tinyxml"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Simulation.Common.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofa.Simulation.Common.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS Sofa.Simulation.Common )
list(APPEND _IMPORT_CHECK_FILES_FOR_Sofa.Simulation.Common "${_IMPORT_PREFIX}/lib/libSofa.Simulation.Common.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
