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

# Include any dependencies generated for this target.
include applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/compiler_depend.make

# Include the progress variables for this target.
include applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/progress.make

# Include the compile flags for this target's objects.
include applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/flags.make

applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.o: applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/flags.make
applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.o: /home/wjy/MyLapGym/src/applications/collections/deprecated/SofaAdvanced/src/SofaAdvanced/initSofaAdvanced.cpp
applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.o: applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.o"
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/SofaAdvanced && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.o -MF CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.o.d -o CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.o -c /home/wjy/MyLapGym/src/applications/collections/deprecated/SofaAdvanced/src/SofaAdvanced/initSofaAdvanced.cpp

applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.i"
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/SofaAdvanced && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wjy/MyLapGym/src/applications/collections/deprecated/SofaAdvanced/src/SofaAdvanced/initSofaAdvanced.cpp > CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.i

applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.s"
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/SofaAdvanced && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wjy/MyLapGym/src/applications/collections/deprecated/SofaAdvanced/src/SofaAdvanced/initSofaAdvanced.cpp -o CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.s

# Object files for target SofaAdvanced
SofaAdvanced_OBJECTS = \
"CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.o"

# External object files for target SofaAdvanced
SofaAdvanced_EXTERNAL_OBJECTS =

lib/libSofaAdvanced.so.22.12.99: applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/src/SofaAdvanced/initSofaAdvanced.cpp.o
lib/libSofaAdvanced.so.22.12.99: applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/build.make
lib/libSofaAdvanced.so.22.12.99: lib/libSofaNonUniformFem.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Component.SolidMechanics.FEM.NonUniform.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Component.Topology.Container.Dynamic.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Component.SolidMechanics.FEM.Elastic.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Component.Topology.Container.Grid.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Component.Topology.Container.Constant.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Simulation.Core.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Core.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.DefaultType.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.LinearAlgebra.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Helper.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Topology.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Geometry.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Type.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Compat.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Component.Compat.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: lib/libSofa.Config.so.22.12.99
lib/libSofaAdvanced.so.22.12.99: applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../../../lib/libSofaAdvanced.so"
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/SofaAdvanced && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SofaAdvanced.dir/link.txt --verbose=$(VERBOSE)
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/SofaAdvanced && $(CMAKE_COMMAND) -E cmake_symlink_library ../../../../lib/libSofaAdvanced.so.22.12.99 ../../../../lib/libSofaAdvanced.so.22.12.99 ../../../../lib/libSofaAdvanced.so

lib/libSofaAdvanced.so: lib/libSofaAdvanced.so.22.12.99
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libSofaAdvanced.so

# Rule to build all files generated by this target.
applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/build: lib/libSofaAdvanced.so
.PHONY : applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/build

applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/clean:
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/SofaAdvanced && $(CMAKE_COMMAND) -P CMakeFiles/SofaAdvanced.dir/cmake_clean.cmake
.PHONY : applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/clean

applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/depend:
	cd /home/wjy/MyLapGym/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wjy/MyLapGym/src /home/wjy/MyLapGym/src/applications/collections/deprecated/SofaAdvanced /home/wjy/MyLapGym/build /home/wjy/MyLapGym/build/applications/collections/deprecated/SofaAdvanced /home/wjy/MyLapGym/build/applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : applications/collections/deprecated/SofaAdvanced/CMakeFiles/SofaAdvanced.dir/depend

