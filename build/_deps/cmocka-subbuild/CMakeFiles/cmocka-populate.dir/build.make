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
CMAKE_SOURCE_DIR = /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild

# Utility rule file for cmocka-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/cmocka-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cmocka-populate.dir/progress.make

CMakeFiles/cmocka-populate: CMakeFiles/cmocka-populate-complete

CMakeFiles/cmocka-populate-complete: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-install
CMakeFiles/cmocka-populate-complete: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-mkdir
CMakeFiles/cmocka-populate-complete: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-download
CMakeFiles/cmocka-populate-complete: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-update
CMakeFiles/cmocka-populate-complete: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-patch
CMakeFiles/cmocka-populate-complete: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-configure
CMakeFiles/cmocka-populate-complete: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-build
CMakeFiles/cmocka-populate-complete: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-install
CMakeFiles/cmocka-populate-complete: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'cmocka-populate'"
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/CMakeFiles
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/CMakeFiles/cmocka-populate-complete
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-done

cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-update:
.PHONY : cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-update

cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-build: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'cmocka-populate'"
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E echo_append
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-build

cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-configure: cmocka-populate-prefix/tmp/cmocka-populate-cfgcmd.txt
cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-configure: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'cmocka-populate'"
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E echo_append
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-configure

cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-download: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-gitinfo.txt
cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-download: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'cmocka-populate'"
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -P /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/tmp/cmocka-populate-gitclone.cmake
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-download

cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-install: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'cmocka-populate'"
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E echo_append
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-install

cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'cmocka-populate'"
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-src
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/tmp
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/src/cmocka-populate-stamp
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/src
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/src/cmocka-populate-stamp
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-mkdir

cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-patch: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'cmocka-populate'"
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E echo_append
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-patch

cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-update:
.PHONY : cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-update

cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-test: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'cmocka-populate'"
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E echo_append
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-test

cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-update: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing update step for 'cmocka-populate'"
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-src && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -P /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/cmocka-populate-prefix/tmp/cmocka-populate-gitupdate.cmake

cmocka-populate: CMakeFiles/cmocka-populate
cmocka-populate: CMakeFiles/cmocka-populate-complete
cmocka-populate: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-build
cmocka-populate: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-configure
cmocka-populate: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-download
cmocka-populate: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-install
cmocka-populate: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-mkdir
cmocka-populate: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-patch
cmocka-populate: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-test
cmocka-populate: cmocka-populate-prefix/src/cmocka-populate-stamp/cmocka-populate-update
cmocka-populate: CMakeFiles/cmocka-populate.dir/build.make
.PHONY : cmocka-populate

# Rule to build all files generated by this target.
CMakeFiles/cmocka-populate.dir/build: cmocka-populate
.PHONY : CMakeFiles/cmocka-populate.dir/build

CMakeFiles/cmocka-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cmocka-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cmocka-populate.dir/clean

CMakeFiles/cmocka-populate.dir/depend:
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/cmocka-subbuild/CMakeFiles/cmocka-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cmocka-populate.dir/depend
