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
CMAKE_SOURCE_DIR = /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild

# Utility rule file for printf-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/printf-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/printf-populate.dir/progress.make

CMakeFiles/printf-populate: CMakeFiles/printf-populate-complete

CMakeFiles/printf-populate-complete: printf-populate-prefix/src/printf-populate-stamp/printf-populate-install
CMakeFiles/printf-populate-complete: printf-populate-prefix/src/printf-populate-stamp/printf-populate-mkdir
CMakeFiles/printf-populate-complete: printf-populate-prefix/src/printf-populate-stamp/printf-populate-download
CMakeFiles/printf-populate-complete: printf-populate-prefix/src/printf-populate-stamp/printf-populate-update
CMakeFiles/printf-populate-complete: printf-populate-prefix/src/printf-populate-stamp/printf-populate-patch
CMakeFiles/printf-populate-complete: printf-populate-prefix/src/printf-populate-stamp/printf-populate-configure
CMakeFiles/printf-populate-complete: printf-populate-prefix/src/printf-populate-stamp/printf-populate-build
CMakeFiles/printf-populate-complete: printf-populate-prefix/src/printf-populate-stamp/printf-populate-install
CMakeFiles/printf-populate-complete: printf-populate-prefix/src/printf-populate-stamp/printf-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'printf-populate'"
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/CMakeFiles
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/CMakeFiles/printf-populate-complete
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/src/printf-populate-stamp/printf-populate-done

printf-populate-prefix/src/printf-populate-stamp/printf-populate-update:
.PHONY : printf-populate-prefix/src/printf-populate-stamp/printf-populate-update

printf-populate-prefix/src/printf-populate-stamp/printf-populate-build: printf-populate-prefix/src/printf-populate-stamp/printf-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'printf-populate'"
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E echo_append
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/src/printf-populate-stamp/printf-populate-build

printf-populate-prefix/src/printf-populate-stamp/printf-populate-configure: printf-populate-prefix/tmp/printf-populate-cfgcmd.txt
printf-populate-prefix/src/printf-populate-stamp/printf-populate-configure: printf-populate-prefix/src/printf-populate-stamp/printf-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'printf-populate'"
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E echo_append
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/src/printf-populate-stamp/printf-populate-configure

printf-populate-prefix/src/printf-populate-stamp/printf-populate-download: printf-populate-prefix/src/printf-populate-stamp/printf-populate-gitinfo.txt
printf-populate-prefix/src/printf-populate-stamp/printf-populate-download: printf-populate-prefix/src/printf-populate-stamp/printf-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'printf-populate'"
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -P /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/tmp/printf-populate-gitclone.cmake
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/src/printf-populate-stamp/printf-populate-download

printf-populate-prefix/src/printf-populate-stamp/printf-populate-install: printf-populate-prefix/src/printf-populate-stamp/printf-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'printf-populate'"
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E echo_append
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/src/printf-populate-stamp/printf-populate-install

printf-populate-prefix/src/printf-populate-stamp/printf-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'printf-populate'"
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-src
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-build
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/tmp
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/src/printf-populate-stamp
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/src
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E make_directory /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/src/printf-populate-stamp
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/src/printf-populate-stamp/printf-populate-mkdir

printf-populate-prefix/src/printf-populate-stamp/printf-populate-patch: printf-populate-prefix/src/printf-populate-stamp/printf-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'printf-populate'"
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E echo_append
	/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/src/printf-populate-stamp/printf-populate-patch

printf-populate-prefix/src/printf-populate-stamp/printf-populate-update:
.PHONY : printf-populate-prefix/src/printf-populate-stamp/printf-populate-update

printf-populate-prefix/src/printf-populate-stamp/printf-populate-test: printf-populate-prefix/src/printf-populate-stamp/printf-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'printf-populate'"
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E echo_append
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-build && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E touch /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/src/printf-populate-stamp/printf-populate-test

printf-populate-prefix/src/printf-populate-stamp/printf-populate-update: printf-populate-prefix/src/printf-populate-stamp/printf-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing update step for 'printf-populate'"
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-src && /home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -P /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/printf-populate-prefix/tmp/printf-populate-gitupdate.cmake

printf-populate: CMakeFiles/printf-populate
printf-populate: CMakeFiles/printf-populate-complete
printf-populate: printf-populate-prefix/src/printf-populate-stamp/printf-populate-build
printf-populate: printf-populate-prefix/src/printf-populate-stamp/printf-populate-configure
printf-populate: printf-populate-prefix/src/printf-populate-stamp/printf-populate-download
printf-populate: printf-populate-prefix/src/printf-populate-stamp/printf-populate-install
printf-populate: printf-populate-prefix/src/printf-populate-stamp/printf-populate-mkdir
printf-populate: printf-populate-prefix/src/printf-populate-stamp/printf-populate-patch
printf-populate: printf-populate-prefix/src/printf-populate-stamp/printf-populate-test
printf-populate: printf-populate-prefix/src/printf-populate-stamp/printf-populate-update
printf-populate: CMakeFiles/printf-populate.dir/build.make
.PHONY : printf-populate

# Rule to build all files generated by this target.
CMakeFiles/printf-populate.dir/build: printf-populate
.PHONY : CMakeFiles/printf-populate.dir/build

CMakeFiles/printf-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/printf-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/printf-populate.dir/clean

CMakeFiles/printf-populate.dir/depend:
	cd /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/_deps/printf-subbuild/CMakeFiles/printf-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/printf-populate.dir/depend
