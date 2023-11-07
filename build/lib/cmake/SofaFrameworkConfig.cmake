# CMake package configuration file for SofaFramework
cmake_minimum_required(VERSION 3.12)

### Expanded from @PACKAGE_GUARD@ by SofaMacrosInstall.cmake ###
include_guard()
################################################################

####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was SofaFrameworkConfig.cmake.in                            ########

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

set(SOFAFRAMEWORK_MODULES Sofa.Type;Sofa.Topology;Sofa.Geometry;Sofa.Helper;Sofa.LinearAlgebra;Sofa.DefaultType;Sofa.Core;Sofa.Simulation.Core)
set(SOFAFRAMEWORK_LEGACYMODULES SofaHelper;SofaDefaultType;SofaCore;Sofa.SimulationCore)

foreach(module ${SOFAFRAMEWORK_MODULES})
    find_package(${module} QUIET REQUIRED)
endforeach()
foreach(module ${SOFAFRAMEWORK_LEGACYMODULES})
    find_package(${module} QUIET REQUIRED)
endforeach()

if(NOT TARGET SofaFramework)
    include("${CMAKE_CURRENT_LIST_DIR}/SofaFrameworkTargets.cmake")
endif()

check_required_components(SofaFramework)
