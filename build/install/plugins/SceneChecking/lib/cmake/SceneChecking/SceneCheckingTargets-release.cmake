#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SceneChecking" for configuration "Release"
set_property(TARGET SceneChecking APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SceneChecking PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSceneChecking.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSceneChecking.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SceneChecking )
list(APPEND _IMPORT_CHECK_FILES_FOR_SceneChecking "${_IMPORT_PREFIX}/lib/libSceneChecking.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
