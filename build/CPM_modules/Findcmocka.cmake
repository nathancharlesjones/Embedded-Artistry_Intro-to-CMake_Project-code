include("/mnt/c/Users/nathan.jones2/Documents/libc-skeleton/cmake/CPM.cmake")
CPMAddPackage(NAME;cmocka;GIT_REPOSITORY;https://git.cryptomilk.org/projects/cmocka.git/;VERSION;1.1.5;GIT_TAG;cmocka-1.1.5;DOWNLOAD_ONLY;YES)
set(cmocka_FOUND TRUE)