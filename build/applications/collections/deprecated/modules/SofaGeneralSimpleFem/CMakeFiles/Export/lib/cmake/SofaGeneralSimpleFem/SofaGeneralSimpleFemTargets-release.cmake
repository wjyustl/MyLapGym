#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaGeneralSimpleFem" for configuration "Release"
set_property(TARGET SofaGeneralSimpleFem APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaGeneralSimpleFem PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaGeneralSimpleFem.so.22.12.99"
  IMPORTED_SONAME_RELEASE "libSofaGeneralSimpleFem.so.22.12.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaGeneralSimpleFem )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaGeneralSimpleFem "${_IMPORT_PREFIX}/lib/libSofaGeneralSimpleFem.so.22.12.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
