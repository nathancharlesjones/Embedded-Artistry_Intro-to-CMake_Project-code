# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/cmocka

# Utility rule file for NightlyMemCheck.

# Include any custom commands dependencies for this target.
include CMakeFiles/NightlyMemCheck.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/NightlyMemCheck.dir/progress.make

CMakeFiles/NightlyMemCheck:
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/ctest -D NightlyMemCheck

NightlyMemCheck: CMakeFiles/NightlyMemCheck
NightlyMemCheck: CMakeFiles/NightlyMemCheck.dir/build.make
.PHONY : NightlyMemCheck

# Rule to build all files generated by this target.
CMakeFiles/NightlyMemCheck.dir/build: NightlyMemCheck
.PHONY : CMakeFiles/NightlyMemCheck.dir/build

CMakeFiles/NightlyMemCheck.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NightlyMemCheck.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NightlyMemCheck.dir/clean

CMakeFiles/NightlyMemCheck.dir/depend:
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/cmocka && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-src /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-src /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/cmocka /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/cmocka /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/cmocka/CMakeFiles/NightlyMemCheck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NightlyMemCheck.dir/depend

