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
CMAKE_SOURCE_DIR = /home/hugo/Public_repo/cat

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hugo/Public_repo/cat/build

# Include any dependencies generated for this target.
include CMakeFiles/cat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cat.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cat.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cat.dir/flags.make

CMakeFiles/cat.dir/cat.cpp.o: CMakeFiles/cat.dir/flags.make
CMakeFiles/cat.dir/cat.cpp.o: ../cat.cpp
CMakeFiles/cat.dir/cat.cpp.o: CMakeFiles/cat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hugo/Public_repo/cat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cat.dir/cat.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cat.dir/cat.cpp.o -MF CMakeFiles/cat.dir/cat.cpp.o.d -o CMakeFiles/cat.dir/cat.cpp.o -c /home/hugo/Public_repo/cat/cat.cpp

CMakeFiles/cat.dir/cat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cat.dir/cat.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hugo/Public_repo/cat/cat.cpp > CMakeFiles/cat.dir/cat.cpp.i

CMakeFiles/cat.dir/cat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cat.dir/cat.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hugo/Public_repo/cat/cat.cpp -o CMakeFiles/cat.dir/cat.cpp.s

# Object files for target cat
cat_OBJECTS = \
"CMakeFiles/cat.dir/cat.cpp.o"

# External object files for target cat
cat_EXTERNAL_OBJECTS =

cat: CMakeFiles/cat.dir/cat.cpp.o
cat: CMakeFiles/cat.dir/build.make
cat: CMakeFiles/cat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hugo/Public_repo/cat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cat"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cat.dir/build: cat
.PHONY : CMakeFiles/cat.dir/build

CMakeFiles/cat.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cat.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cat.dir/clean

CMakeFiles/cat.dir/depend:
	cd /home/hugo/Public_repo/cat/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hugo/Public_repo/cat /home/hugo/Public_repo/cat /home/hugo/Public_repo/cat/build /home/hugo/Public_repo/cat/build /home/hugo/Public_repo/cat/build/CMakeFiles/cat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cat.dir/depend

