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
include applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/compiler_depend.make

# Include the progress variables for this target.
include applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/progress.make

# Include the compile flags for this target's objects.
include applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/flags.make

applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.o: applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/flags.make
applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.o: /home/wjy/MyLapGym/src/applications/collections/deprecated/modules/SofaSimpleFem/src/SofaSimpleFem/initSofaSimpleFem.cpp
applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.o: applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.o"
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSimpleFem && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.o -MF CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.o.d -o CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.o -c /home/wjy/MyLapGym/src/applications/collections/deprecated/modules/SofaSimpleFem/src/SofaSimpleFem/initSofaSimpleFem.cpp

applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.i"
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSimpleFem && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wjy/MyLapGym/src/applications/collections/deprecated/modules/SofaSimpleFem/src/SofaSimpleFem/initSofaSimpleFem.cpp > CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.i

applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.s"
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSimpleFem && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wjy/MyLapGym/src/applications/collections/deprecated/modules/SofaSimpleFem/src/SofaSimpleFem/initSofaSimpleFem.cpp -o CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.s

# Object files for target SofaSimpleFem
SofaSimpleFem_OBJECTS = \
"CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.o"

# External object files for target SofaSimpleFem
SofaSimpleFem_EXTERNAL_OBJECTS =

lib/libSofaSimpleFem.so.22.12.99: applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/src/SofaSimpleFem/initSofaSimpleFem.cpp.o
lib/libSofaSimpleFem.so.22.12.99: applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/build.make
lib/libSofaSimpleFem.so.22.12.99: lib/libSofaBaseTopology.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofaBaseLinearSolver.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Component.Diffusion.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Component.SolidMechanics.FEM.Elastic.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Component.Topology.Container.Dynamic.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Component.LinearSolver.Iterative.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Component.Topology.Container.Grid.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Component.Topology.Container.Constant.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Simulation.Core.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Core.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.DefaultType.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.LinearAlgebra.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Helper.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Topology.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Geometry.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Type.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Compat.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Component.Compat.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: lib/libSofa.Config.so.22.12.99
lib/libSofaSimpleFem.so.22.12.99: applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../../../../lib/libSofaSimpleFem.so"
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSimpleFem && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SofaSimpleFem.dir/link.txt --verbose=$(VERBOSE)
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSimpleFem && $(CMAKE_COMMAND) -E cmake_symlink_library ../../../../../lib/libSofaSimpleFem.so.22.12.99 ../../../../../lib/libSofaSimpleFem.so.22.12.99 ../../../../../lib/libSofaSimpleFem.so

lib/libSofaSimpleFem.so: lib/libSofaSimpleFem.so.22.12.99
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libSofaSimpleFem.so

# Rule to build all files generated by this target.
applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/build: lib/libSofaSimpleFem.so
.PHONY : applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/build

applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/clean:
	cd /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSimpleFem && $(CMAKE_COMMAND) -P CMakeFiles/SofaSimpleFem.dir/cmake_clean.cmake
.PHONY : applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/clean

applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/depend:
	cd /home/wjy/MyLapGym/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wjy/MyLapGym/src /home/wjy/MyLapGym/src/applications/collections/deprecated/modules/SofaSimpleFem /home/wjy/MyLapGym/build /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSimpleFem /home/wjy/MyLapGym/build/applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : applications/collections/deprecated/modules/SofaSimpleFem/CMakeFiles/SofaSimpleFem.dir/depend

