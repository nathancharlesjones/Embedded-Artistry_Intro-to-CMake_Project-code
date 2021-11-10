# CMake generated Testfile for 
# Source directory: /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/test
# Build directory: /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Libc.ClearResults "/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake" "--build" "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build" "--target" "test-clear-results")
set_tests_properties(Libc.ClearResults PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/test/CMakeLists.txt;14;add_test;/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/test/CMakeLists.txt;0;")
add_test(build_libc_tests "/home/nathancharlesjones/.local/lib/python3.8/site-packages/cmake/data/bin/cmake" "--build" "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build" "--target" "libc_tests")
set_tests_properties(build_libc_tests PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/test/CMakeLists.txt;120;add_test;/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/test/CMakeLists.txt;0;")
add_test(run_libc_tests "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/test/libc_tests")
set_tests_properties(run_libc_tests PROPERTIES  DEPENDS "build_libc_tests" ENVIRONMENT "CMOCKA_XML_FILE=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/test/%g.xml" _BACKTRACE_TRIPLES "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/test/CMakeLists.txt;123;add_test;/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/test/CMakeLists.txt;0;")
