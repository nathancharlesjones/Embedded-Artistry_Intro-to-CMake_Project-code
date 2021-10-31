# CMake generated Testfile for 
# Source directory: /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/test
# Build directory: /mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Libc.Test "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/test/libc_tests")
set_tests_properties(Libc.Test PROPERTIES  ENVIRONMENT "CMOCKA_XML_FILE=/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/build/test/%g.xml" _BACKTRACE_TRIPLES "/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/test/CMakeLists.txt;82;add_test;/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/test/CMakeLists.txt;0;")
