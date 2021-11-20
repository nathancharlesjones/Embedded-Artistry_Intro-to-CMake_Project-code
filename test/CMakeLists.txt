#message("${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE} ${BUILD_TESTING} OR ( (${CMAKE_PROJECT_NAME} == ${PROJECT_NAME}) OR ${LIBC_BUILD_TESTING})")
#if(BUILD_TESTING OR ((CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME) OR LIBC_BUILD_TESTING))
    message("Inside tests/CMakeLists.txt")
    
    ###################################################
    ##                                               ##
    ##  Create custom target to clear XML files      ##
    ##                                               ##
    ###################################################

    add_custom_target(test-clear-results
        COMMAND ${CMAKE_COMMAND} -E rm -f ${CMAKE_BINARY_DIR}/test/*.xml
        COMMENT "Removing XML files in the test/ directory"
    )
    
    add_test(NAME Libc.ClearResults
        COMMAND ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR} --target test-clear-results
    )  
    
    ###################################################
    ##                                               ##
    ##  Create Libc.Test                             ##
    ##                                               ##
    ###################################################

    add_executable(libc_tests)

    target_sources(libc_tests PRIVATE
        main.c
        ctype/ctype_tests.c
        ctype/isalnum.c
        ctype/isalpha.c
        ctype/isascii.c
        ctype/isblank.c
        ctype/iscntrl.c
        ctype/isdigit.c
        ctype/isgraph.c
        ctype/islower.c
        ctype/isprint.c
        ctype/ispunct.c
        ctype/isspace.c
        ctype/isupper.c
        ctype/isxdigit.c
        ctype/toascii.c
        ctype/tolower.c
        ctype/toupper.c
        stdlib/abs.c
        stdlib/atof.c
        stdlib/atoi.c
        stdlib/atol.c
        stdlib/atoll.c
        stdlib/bsearch.c
        stdlib/calloc.c
        stdlib/div.c
        stdlib/heapsort.c
        stdlib/imaxabs.c
        stdlib/imaxdiv.c
        stdlib/labs.c
        stdlib/ldiv.c
        stdlib/llabs.c
        stdlib/lldiv.c
        stdlib/qsort_r.c
        stdlib/qsort.c
        stdlib/rand.c
        stdlib/realloc.c
        stdlib/stdlib_tests.c
        stdlib/strtod.c
        stdlib/strtof.c
        stdlib/strtol.c
        stdlib/strtoll.c
        stdlib/strtoul.c
        stdlib/strtoull.c
        string/memcmp.c
        string/memcpy.c
        string/memmem.c
        string/memmove.c
        string/memset.c
        string/strcat.c
        string/strchr.c
        string/strcmp.c
        string/strcpy.c
        string/strdup.c
        string/string_tests.c
        string/strlen.c
        string/strncat.c
        string/strncmp.c
        string/strncpy.c
        string/strndup.c
        string/strnlen.c
        string/strnstr.c
        string/strrchr.c
        string/strstr.c
        string/strtok.c
        test/rand.c
    )

    # Workaround for the potential to have CMake block our include directory if
    # -nostdinc is used and the header is in a CMake implicit include path
    if(NOSTDINC_FOR_DEPENDENTS)
        list(REMOVE_ITEM CMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES "${CMOCKA_INCLUDE_DIR}")
    endif()
    
    target_include_directories(libc_tests
        PRIVATE
            .
            test/
        SYSTEM PRIVATE
            ${CMOCKA_INCLUDE_DIR}
    )
    
    target_link_libraries(libc_tests PRIVATE c_hosted ${CMOCKA_LIBRARIES})

    list(APPEND private_libc_tests_flags
        "-Wno-unknown-pragmas"
        "-Wno-nonnull-compare"
        "-Wno-stringop-overflow"
        "-Wno-unused-parameter"
        "-Wno-nonnull"
        "-Wno-stringop-truncation"
    )

    apply_supported_compiler_flags(C libc_tests PRIVATE private_libc_tests_flags)

    add_test(NAME build_libc_tests
      COMMAND "${CMAKE_COMMAND}" --build ${CMAKE_BINARY_DIR} --target libc_tests)
    
    add_test(NAME run_libc_tests COMMAND libc_tests)
    
    set_tests_properties(run_libc_tests
        PROPERTIES
            ENVIRONMENT CMOCKA_XML_FILE=${CMAKE_CURRENT_BINARY_DIR}/%g.xml
            DEPENDS Libc.ClearResults
            DEPENDS build_libc_tests
    )

    add_custom_target(test-libc
        COMMAND export CMOCKA_MESSAGE_OUTPUT="stdout"
        COMMAND libc_tests
    )

#endif()