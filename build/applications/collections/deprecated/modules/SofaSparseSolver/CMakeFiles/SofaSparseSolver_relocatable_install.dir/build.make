# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wjy/MyLapGym/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wjy/MyLapGym/build

# Utility rule file for SofaSparseSolver_relocatable_install.

# Include any custom commands dependencies for this target.
include applications/collections/deprecated/modules/SofaSparseSolver/CMakeFiles/SofaSparseSolver_relocatable_install.dir/compiler_depend.make

# Include the progress variables for this target.
include applications/collections/deprecated/modules/SofaSparseSolver/CMakeFiles/SofaSparseSolver_relocatable_install.dir/progress.make

applications/collections/deprecated/modules/SofaSparseSolver/CMakeFiles/SofaSparseSolver_relocatable_install:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "SofaSparseSolver: Patching cmake_install.cmake"
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSparseSolver && test ! -e /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSparseSolver/cmake_install.cmakepatch && echo " set ( CMAKE_INSTALL_PREFIX_BACK_SofaSparseSolver_SofaSparseSolver \"\$${CMAKE_INSTALL_PREFIX}\" ) " > /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSparseSolver/cmake_install.cmakepatch && echo " set ( CMAKE_INSTALL_PREFIX \"\$${CMAKE_INSTALL_PREFIX}/collections/SofaSparseSolver\" ) " >> /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSparseSolver/cmake_install.cmakepatch && cat /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSparseSolver/cmake_install.cmake >> /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSparseSolver/cmake_install.cmakepatch && echo " set ( CMAKE_INSTALL_PREFIX \"\$${CMAKE_INSTALL_PREFIX_BACK_SofaSparseSolver_SofaSparseSolver}\" ) " >> /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSparseSolver/cmake_install.cmakepatch && /usr/bin/cmake -E copy /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSparseSolver/cmake_install.cmakepatch /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSparseSolver/cmake_install.cmake || true

SofaSparseSolver_relocatable_install: applications/collections/deprecated/modules/SofaSparseSolver/CMakeFiles/SofaSparseSolver_relocatable_install
SofaSparseSolver_relocatable_install: applications/collections/deprecated/modules/SofaSparseSolver/CMakeFiles/SofaSparseSolver_relocatable_install.dir/build.make
.PHONY : SofaSparseSolver_relocatable_install

# Rule to build all files generated by this target.
applications/collections/deprecated/modules/SofaSparseSolver/CMakeFiles/SofaSparseSolver_relocatable_install.dir/build: SofaSparseSolver_relocatable_install
.PHONY : applications/collections/deprecated/modules/SofaSparseSolver/CMakeFiles/SofaSparseSolver_relocatable_install.dir/build

applications/collections/deprecated/modules/SofaSparseSolver/CMakeFiles/SofaSparseSolver_relocatable_install.dir/clean:
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSparseSolver && $(CMAKE_COMMAND) -P CMakeFiles/SofaSparseSolver_relocatable_install.dir/cmake_clean.cmake
.PHONY : applications/collections/deprecated/modules/SofaSparseSolver/CMakeFiles/SofaSparseSolver_relocatable_install.dir/clean

applications/collections/deprecated/modules/SofaSparseSolver/CMakeFiles/SofaSparseSolver_relocatable_install.dir/depend:
	cd /home/wjy/MyLapGym/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wjy/MyLapGym/src /home/wjy/MyLapGym/src/applications/collections/deprecated/modules/SofaSparseSolver /home/wjy/MyLapGym/build /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSparseSolver /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSparseSolver/CMakeFiles/SofaSparseSolver_relocatable_install.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : applications/collections/deprecated/modules/SofaSparseSolver/CMakeFiles/SofaSparseSolver_relocatable_install.dir/depend

