#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaPython3::Bindings.SofaExporter" for configuration "Release"
set_property(TARGET SofaPython3::Bindings.SofaExporter APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaPython3::Bindings.SofaExporter PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Python::Python"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/SofaExporter.cpython-39-x86_64-linux-gnu.so"
  IMPORTED_SONAME_RELEASE "SofaExporter.cpython-39-x86_64-linux-gnu.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaPython3::Bindings.SofaExporter )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaPython3::Bindings.SofaExporter "${_IMPORT_PREFIX}/lib/SofaExporter.cpython-39-x86_64-linux-gnu.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
