# CMake generated Testfile for 
# Source directory: /mnt/c/Users/nathan.jones2/Documents/libc-skeleton
# Build directory: /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(build_printf_tests "/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake" "--build" "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build" "--target" "printf_tests")
set_tests_properties(build_printf_tests PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/CMakeLists.txt;201;add_test;/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/CMakeLists.txt;0;")
add_test(run_printf_tests "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/printf_tests" "-s" "-r" "junit" "-o" "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/printf_tests.xml")
set_tests_properties(run_printf_tests PROPERTIES  DEPENDS "build_printf_tests" _BACKTRACE_TRIPLES "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/CMakeLists.txt;203;add_test;/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/CMakeLists.txt;0;")
subdirs("src")
subdirs("test")
