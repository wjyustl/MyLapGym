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
include extlibs/tinyxml/CMakeFiles/tinyxml.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include extlibs/tinyxml/CMakeFiles/tinyxml.dir/compiler_depend.make

# Include the progress variables for this target.
include extlibs/tinyxml/CMakeFiles/tinyxml.dir/progress.make

# Include the compile flags for this target's objects.
include extlibs/tinyxml/CMakeFiles/tinyxml.dir/flags.make

extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinystr.cpp.o: extlibs/tinyxml/CMakeFiles/tinyxml.dir/flags.make
extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinystr.cpp.o: /home/wjy/MyLapGym/src/extlibs/tinyxml/tinystr.cpp
extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinystr.cpp.o: extlibs/tinyxml/CMakeFiles/tinyxml.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinystr.cpp.o"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinystr.cpp.o -MF CMakeFiles/tinyxml.dir/tinystr.cpp.o.d -o CMakeFiles/tinyxml.dir/tinystr.cpp.o -c /home/wjy/MyLapGym/src/extlibs/tinyxml/tinystr.cpp

extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinystr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tinyxml.dir/tinystr.cpp.i"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wjy/MyLapGym/src/extlibs/tinyxml/tinystr.cpp > CMakeFiles/tinyxml.dir/tinystr.cpp.i

extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinystr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tinyxml.dir/tinystr.cpp.s"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wjy/MyLapGym/src/extlibs/tinyxml/tinystr.cpp -o CMakeFiles/tinyxml.dir/tinystr.cpp.s

extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxml.cpp.o: extlibs/tinyxml/CMakeFiles/tinyxml.dir/flags.make
extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxml.cpp.o: /home/wjy/MyLapGym/src/extlibs/tinyxml/tinyxml.cpp
extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxml.cpp.o: extlibs/tinyxml/CMakeFiles/tinyxml.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxml.cpp.o"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxml.cpp.o -MF CMakeFiles/tinyxml.dir/tinyxml.cpp.o.d -o CMakeFiles/tinyxml.dir/tinyxml.cpp.o -c /home/wjy/MyLapGym/src/extlibs/tinyxml/tinyxml.cpp

extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tinyxml.dir/tinyxml.cpp.i"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wjy/MyLapGym/src/extlibs/tinyxml/tinyxml.cpp > CMakeFiles/tinyxml.dir/tinyxml.cpp.i

extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tinyxml.dir/tinyxml.cpp.s"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wjy/MyLapGym/src/extlibs/tinyxml/tinyxml.cpp -o CMakeFiles/tinyxml.dir/tinyxml.cpp.s

extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.o: extlibs/tinyxml/CMakeFiles/tinyxml.dir/flags.make
extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.o: /home/wjy/MyLapGym/src/extlibs/tinyxml/tinyxmlerror.cpp
extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.o: extlibs/tinyxml/CMakeFiles/tinyxml.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.o"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.o -MF CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.o.d -o CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.o -c /home/wjy/MyLapGym/src/extlibs/tinyxml/tinyxmlerror.cpp

extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.i"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wjy/MyLapGym/src/extlibs/tinyxml/tinyxmlerror.cpp > CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.i

extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.s"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wjy/MyLapGym/src/extlibs/tinyxml/tinyxmlerror.cpp -o CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.s

extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.o: extlibs/tinyxml/CMakeFiles/tinyxml.dir/flags.make
extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.o: /home/wjy/MyLapGym/src/extlibs/tinyxml/tinyxmlparser.cpp
extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.o: extlibs/tinyxml/CMakeFiles/tinyxml.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.o"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.o -MF CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.o.d -o CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.o -c /home/wjy/MyLapGym/src/extlibs/tinyxml/tinyxmlparser.cpp

extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.i"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wjy/MyLapGym/src/extlibs/tinyxml/tinyxmlparser.cpp > CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.i

extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.s"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wjy/MyLapGym/src/extlibs/tinyxml/tinyxmlparser.cpp -o CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.s

# Object files for target tinyxml
tinyxml_OBJECTS = \
"CMakeFiles/tinyxml.dir/tinystr.cpp.o" \
"CMakeFiles/tinyxml.dir/tinyxml.cpp.o" \
"CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.o" \
"CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.o"

# External object files for target tinyxml
tinyxml_EXTERNAL_OBJECTS =

lib/libtinyxml.so.2.6.2: extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinystr.cpp.o
lib/libtinyxml.so.2.6.2: extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxml.cpp.o
lib/libtinyxml.so.2.6.2: extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlerror.cpp.o
lib/libtinyxml.so.2.6.2: extlibs/tinyxml/CMakeFiles/tinyxml.dir/tinyxmlparser.cpp.o
lib/libtinyxml.so.2.6.2: extlibs/tinyxml/CMakeFiles/tinyxml.dir/build.make
lib/libtinyxml.so.2.6.2: extlibs/tinyxml/CMakeFiles/tinyxml.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wjy/MyLapGym/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library ../../lib/libtinyxml.so"
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tinyxml.dir/link.txt --verbose=$(VERBOSE)
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libtinyxml.so.2.6.2 ../../lib/libtinyxml.so.2.6.2 ../../lib/libtinyxml.so

lib/libtinyxml.so: lib/libtinyxml.so.2.6.2
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libtinyxml.so

# Rule to build all files generated by this target.
extlibs/tinyxml/CMakeFiles/tinyxml.dir/build: lib/libtinyxml.so
.PHONY : extlibs/tinyxml/CMakeFiles/tinyxml.dir/build

extlibs/tinyxml/CMakeFiles/tinyxml.dir/clean:
	cd /home/wjy/MyLapGym/build/extlibs/tinyxml && $(CMAKE_COMMAND) -P CMakeFiles/tinyxml.dir/cmake_clean.cmake
.PHONY : extlibs/tinyxml/CMakeFiles/tinyxml.dir/clean

extlibs/tinyxml/CMakeFiles/tinyxml.dir/depend:
	cd /home/wjy/MyLapGym/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wjy/MyLapGym/src /home/wjy/MyLapGym/src/extlibs/tinyxml /home/wjy/MyLapGym/build /home/wjy/MyLapGym/build/extlibs/tinyxml /home/wjy/MyLapGym/build/extlibs/tinyxml/CMakeFiles/tinyxml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extlibs/tinyxml/CMakeFiles/tinyxml.dir/depend
