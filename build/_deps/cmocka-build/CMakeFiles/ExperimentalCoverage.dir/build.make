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
CMAKE_SOURCE_DIR = /mnt/c/Users/nathan.jones2/Documents/libc-skeleton

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build

# Utility rule file for ExperimentalCoverage.

# Include any custom commands dependencies for this target.
include _deps/cmocka-build/CMakeFiles/ExperimentalCoverage.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/cmocka-build/CMakeFiles/ExperimentalCoverage.dir/progress.make

_deps/cmocka-build/CMakeFiles/ExperimentalCoverage:
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/ctest -D ExperimentalCoverage

ExperimentalCoverage: _deps/cmocka-build/CMakeFiles/ExperimentalCoverage
ExperimentalCoverage: _deps/cmocka-build/CMakeFiles/ExperimentalCoverage.dir/build.make
.PHONY : ExperimentalCoverage

# Rule to build all files generated by this target.
_deps/cmocka-build/CMakeFiles/ExperimentalCoverage.dir/build: ExperimentalCoverage
.PHONY : _deps/cmocka-build/CMakeFiles/ExperimentalCoverage.dir/build

_deps/cmocka-build/CMakeFiles/ExperimentalCoverage.dir/clean:
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build && $(CMAKE_COMMAND) -P CMakeFiles/ExperimentalCoverage.dir/cmake_clean.cmake
.PHONY : _deps/cmocka-build/CMakeFiles/ExperimentalCoverage.dir/clean

_deps/cmocka-build/CMakeFiles/ExperimentalCoverage.dir/depend:
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/nathan.jones2/Documents/libc-skeleton /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-src /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build/CMakeFiles/ExperimentalCoverage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/cmocka-build/CMakeFiles/ExperimentalCoverage.dir/depend

