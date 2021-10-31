# CMake generated Testfile for 
# Source directory: /mnt/c/Users/nathan.jones2/Documents/libc-skeleton
# Build directory: /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Printf.Test "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/printf_tests" "-s" "-r" "junit" "-o" "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/printf_tests.xml")
set_tests_properties(Printf.Test PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/CMakeLists.txt;156;add_test;/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/CMakeLists.txt;0;")
subdirs("src")
subdirs("test")
