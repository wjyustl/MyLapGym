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
include Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/compiler_depend.make

# Include the progress variables for this target.
include Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/progress.make

# Include the compile flags for this target's objects.
include Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/flags.make

Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.o: Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/flags.make
Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.o: /home/wjy/MyLapGym/src/Sofa/framework/Testing/SofaGTestMain/SofaGTestMain.cpp
Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.o: Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.o"
	cd /home/wjy/MyLapGym/build/Sofa/framework/Testing/SofaGTestMain && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.o -MF CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.o.d -o CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.o -c /home/wjy/MyLapGym/src/Sofa/framework/Testing/SofaGTestMain/SofaGTestMain.cpp

Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.i"
	cd /home/wjy/MyLapGym/build/Sofa/framework/Testing/SofaGTestMain && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wjy/MyLapGym/src/Sofa/framework/Testing/SofaGTestMain/SofaGTestMain.cpp > CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.i

Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.s"
	cd /home/wjy/MyLapGym/build/Sofa/framework/Testing/SofaGTestMain && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wjy/MyLapGym/src/Sofa/framework/Testing/SofaGTestMain/SofaGTestMain.cpp -o CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.s

# Object files for target SofaGTestMain
SofaGTestMain_OBJECTS = \
"CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.o"

# External object files for target SofaGTestMain
SofaGTestMain_EXTERNAL_OBJECTS =

lib/libSofaGTestMain.a: Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/SofaGTestMain.cpp.o
lib/libSofaGTestMain.a: Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/build.make
lib/libSofaGTestMain.a: Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../../lib/libSofaGTestMain.a"
	cd /home/wjy/MyLapGym/build/Sofa/framework/Testing/SofaGTestMain && $(CMAKE_COMMAND) -P CMakeFiles/SofaGTestMain.dir/cmake_clean_target.cmake
	cd /home/wjy/MyLapGym/build/Sofa/framework/Testing/SofaGTestMain && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SofaGTestMain.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/build: lib/libSofaGTestMain.a
.PHONY : Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/build

Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/clean:
	cd /home/wjy/MyLapGym/build/Sofa/framework/Testing/SofaGTestMain && $(CMAKE_COMMAND) -P CMakeFiles/SofaGTestMain.dir/cmake_clean.cmake
.PHONY : Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/clean

Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/depend:
	cd /home/wjy/MyLapGym/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wjy/MyLapGym/src /home/wjy/MyLapGym/src/Sofa/framework/Testing/SofaGTestMain /home/wjy/MyLapGym/build /home/wjy/MyLapGym/build/Sofa/framework/Testing/SofaGTestMain /home/wjy/MyLapGym/build/Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Sofa/framework/Testing/SofaGTestMain/CMakeFiles/SofaGTestMain.dir/depend
