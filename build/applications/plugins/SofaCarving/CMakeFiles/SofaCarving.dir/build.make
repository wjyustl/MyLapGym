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
include applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/compiler_depend.make

# Include the progress variables for this target.
include applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/progress.make

# Include the compile flags for this target's objects.
include applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/flags.make

applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/CarvingManager.cpp.o: applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/flags.make
applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/CarvingManager.cpp.o: /home/wjy/MyLapGym/src/applications/plugins/SofaCarving/CarvingManager.cpp
applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/CarvingManager.cpp.o: applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/CarvingManager.cpp.o"
	cd /home/wjy/MyLapGym/build/applications/plugins/SofaCarving && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/CarvingManager.cpp.o -MF CMakeFiles/SofaCarving.dir/CarvingManager.cpp.o.d -o CMakeFiles/SofaCarving.dir/CarvingManager.cpp.o -c /home/wjy/MyLapGym/src/applications/plugins/SofaCarving/CarvingManager.cpp

applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/CarvingManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SofaCarving.dir/CarvingManager.cpp.i"
	cd /home/wjy/MyLapGym/build/applications/plugins/SofaCarving && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wjy/MyLapGym/src/applications/plugins/SofaCarving/CarvingManager.cpp > CMakeFiles/SofaCarving.dir/CarvingManager.cpp.i

applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/CarvingManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SofaCarving.dir/CarvingManager.cpp.s"
	cd /home/wjy/MyLapGym/build/applications/plugins/SofaCarving && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wjy/MyLapGym/src/applications/plugins/SofaCarving/CarvingManager.cpp -o CMakeFiles/SofaCarving.dir/CarvingManager.cpp.s

applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.o: applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/flags.make
applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.o: /home/wjy/MyLapGym/src/applications/plugins/SofaCarving/initSofaCarving.cpp
applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.o: applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.o"
	cd /home/wjy/MyLapGym/build/applications/plugins/SofaCarving && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.o -MF CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.o.d -o CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.o -c /home/wjy/MyLapGym/src/applications/plugins/SofaCarving/initSofaCarving.cpp

applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.i"
	cd /home/wjy/MyLapGym/build/applications/plugins/SofaCarving && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wjy/MyLapGym/src/applications/plugins/SofaCarving/initSofaCarving.cpp > CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.i

applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.s"
	cd /home/wjy/MyLapGym/build/applications/plugins/SofaCarving && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wjy/MyLapGym/src/applications/plugins/SofaCarving/initSofaCarving.cpp -o CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.s

# Object files for target SofaCarving
SofaCarving_OBJECTS = \
"CMakeFiles/SofaCarving.dir/CarvingManager.cpp.o" \
"CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.o"

# External object files for target SofaCarving
SofaCarving_EXTERNAL_OBJECTS =

lib/libSofaCarving.so.0.1: applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/CarvingManager.cpp.o
lib/libSofaCarving.so.0.1: applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/initSofaCarving.cpp.o
lib/libSofaCarving.so.0.1: applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/build.make
lib/libSofaCarving.so.0.1: lib/libSofa.GUI.Component.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Setting.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Visual.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.SolidMechanics.Spring.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Constraint.Projective.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Constraint.Lagrangian.Model.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Collision.Response.Mapper.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Collision.Geometry.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Mapping.Linear.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Mapping.NonLinear.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.StateContainer.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Topology.Mapping.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Topology.Container.Dynamic.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Topology.Container.Grid.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Topology.Container.Constant.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Simulation.Core.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Core.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.DefaultType.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.LinearAlgebra.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Helper.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Topology.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Geometry.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Type.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Compat.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Component.Compat.so.22.12.99
lib/libSofaCarving.so.0.1: lib/libSofa.Config.so.22.12.99
lib/libSofaCarving.so.0.1: applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ../../../lib/libSofaCarving.so"
	cd /home/wjy/MyLapGym/build/applications/plugins/SofaCarving && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SofaCarving.dir/link.txt --verbose=$(VERBOSE)
	cd /home/wjy/MyLapGym/build/applications/plugins/SofaCarving && $(CMAKE_COMMAND) -E cmake_symlink_library ../../../lib/libSofaCarving.so.0.1 ../../../lib/libSofaCarving.so.0.1 ../../../lib/libSofaCarving.so

lib/libSofaCarving.so: lib/libSofaCarving.so.0.1
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libSofaCarving.so

# Rule to build all files generated by this target.
applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/build: lib/libSofaCarving.so
.PHONY : applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/build

applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/clean:
	cd /home/wjy/MyLapGym/build/applications/plugins/SofaCarving && $(CMAKE_COMMAND) -P CMakeFiles/SofaCarving.dir/cmake_clean.cmake
.PHONY : applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/clean

applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/depend:
	cd /home/wjy/MyLapGym/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wjy/MyLapGym/src /home/wjy/MyLapGym/src/applications/plugins/SofaCarving /home/wjy/MyLapGym/build /home/wjy/MyLapGym/build/applications/plugins/SofaCarving /home/wjy/MyLapGym/build/applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : applications/plugins/SofaCarving/CMakeFiles/SofaCarving.dir/depend
