if(BUILD_TESTING)
    add_executable(libc_tests)

    #[[list(APPEND desired_libc_tests_flags
                "-Wno-stringop-overflow"
                "-Wno-unused-parameter"
                "-Wno-nonnull-compare"
                "-Wno-nonnull"
                "-Wno-stringop-truncation"
                "-Wno-unknown-pragmas"
            )
            apply_supported_compiler_flags(C libc_tests PRIVATE desired_libc_tests_flags)]]

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
    target_include_directories(libc_tests
        PRIVATE
            .
            test/
        SYSTEM PRIVATE
            ${CMOCKA_INCLUDE_DIR}
    )
    target_link_libraries(libc_tests PRIVATE c ${CMOCKA_LIBRARIES})
    add_test(NAME Libc.Test COMMAND libc_tests)
    set_tests_properties(Libc.Test PROPERTIES ENVIRONMENT CMOCKA_XML_FILE=${CMAKE_CURRENT_BINARY_DIR}/%g.xml)
endif()