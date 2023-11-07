# CMake package configuration file for SofaSimulation
### Expanded from @PACKAGE_GUARD@ by SofaMacrosInstall.cmake ###
include_guard()
list(APPEND CMAKE_LIBRARY_PATH "${CMAKE_CURRENT_LIST_DIR}/../../../bin")
list(APPEND CMAKE_LIBRARY_PATH "${CMAKE_CURRENT_LIST_DIR}/../../../lib")
################################################################

####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was SofaSimulationConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

set(SOFASIMULATION_MODULES SofaSimulationCommon;SofaSimulationGraph)

message(DEPRECATION
    " SofaSimulation is deprecated. It will be removed in v23.06.\n"
    " You must now explicitely find (find_package) and link (target_link_library) the modules you need within: \n"
    " ${SOFASIMULATION_MODULES}"
)

foreach(module ${SOFASIMULATION_MODULES})
    find_package(${module} QUIET REQUIRED)
endforeach()

if(NOT TARGET SofaSimulation)
    include("${CMAKE_CURRENT_LIST_DIR}/SofaSimulationTargets.cmake")
endif()
check_required_components(SofaSimulation)
