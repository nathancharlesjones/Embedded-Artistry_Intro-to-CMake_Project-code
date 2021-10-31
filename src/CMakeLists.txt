###################################################
##                                               ##
##  Defining library gdtoa                       ##
##                                               ##
###################################################

add_library(
	gdtoa INTERFACE
)

target_sources(
	gdtoa INTERFACE
	gdtoa/src/dmisc.c
	gdtoa/src/dtoa.c
	gdtoa/src/g__fmt.c
	gdtoa/src/g_ddfmt.c
	gdtoa/src/g_dfmt.c
	gdtoa/src/g_ffmt.c
	gdtoa/src/g_Qfmt.c
	gdtoa/src/g_xfmt.c
	gdtoa/src/g_xLfmt.c
	gdtoa/src/gdtoa.c
	gdtoa/src/gethex.c
	gdtoa/src/gmisc.c
	gdtoa/src/hd_init.c
	gdtoa/src/hexnan.c
	gdtoa/src/misc.c
	gdtoa/src/smisc.c
	gdtoa/src/strtod.c
	gdtoa/src/strtodg.c
	gdtoa/src/strtodI.c
	gdtoa/src/strtof.c
	gdtoa/src/strtoId.c
	gdtoa/src/strtoIdd.c
	gdtoa/src/strtoIf.c
	gdtoa/src/strtoIg.c
	gdtoa/src/strtoIQ.c
	gdtoa/src/strtoIx.c
	gdtoa/src/strtoIxL.c
	gdtoa/src/strtopd.c
	gdtoa/src/strtopdd.c
	gdtoa/src/strtopf.c
	gdtoa/src/strtopQ.c
	gdtoa/src/strtopx.c
	gdtoa/src/strtopxL.c
	gdtoa/src/strtord.c
	gdtoa/src/strtordd.c
	gdtoa/src/strtorf.c
	gdtoa/src/strtorQ.c
	gdtoa/src/strtorx.c
	gdtoa/src/strtorxL.c
	gdtoa/src/sum.c
	gdtoa/src/ulp.c
)

target_include_directories(
	gdtoa INTERFACE gdtoa/include
)

target_compile_definitions(
	gdtoa INTERFACE
	NO_ERRNO
	IFNAN_CHECK
	GDTOA_NO_ASSERT
	NO_FENV_H
)

###################################################
##                                               ##
##  Defining library c                           ##
##                                               ##
###################################################

add_library(
	c STATIC
)

target_link_libraries(
	c
	PRIVATE
		printf
		openlibm
		gdtoa
)

# Assert Module
target_sources(
	c PRIVATE
	assert/assert.c
)

# Locale Module
target_sources(
	c PRIVATE
    locale/langinfo.c
)

# Math Module
target_sources(
	c PRIVATE
    math/fabs.c
    math/fabsf.c
)

# STDIO Module
target_sources(
	c PRIVATE
    stdio/asprintf.c
    stdio/putchar.c
    stdio/puts.c
    stdio/vasprintf.c
)

# STDIO Native Module
target_sources(
	c PRIVATE
    stdio/putchar_native.c
)

# String Module
target_sources(
	c PRIVATE
    string/memcmp.c
    string/memcpy.c
    string/memmem.c
    string/memmove.c
    string/memchr.c
    string/memrchr.c
    string/memset.c
    string/strcat.c
    string/strchr.c
    string/strchrnul.c
    string/strcmp.c
    string/strcoll.c
    string/strcpy.c
    string/strcspn.c
    string/strdup.c
    string/strerror.c
    string/strerror_r.c
    string/strlen.c
    string/strncat.c
    string/strncmp.c
    string/strncpy.c
    string/strndup.c
    string/strnlen.c
    string/strnstr.c
    string/strpbrk.c
    string/strrchr.c
    string/strspn.c
    string/strstr.c
    string/strtok.c
    string/strxfrm.c
)

# CType Module
target_sources(
	c PRIVATE
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
)

# stdlib Module
target_sources(
	c PRIVATE
	stdlib/abs.c
	stdlib/atof.c
	stdlib/atoi.c
	stdlib/atol.c
	stdlib/atoll.c
	stdlib/bsearch.c
	stdlib/calloc.c
	stdlib/div.c
	stdlib/heapsort_r.c
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
	stdlib/strtol.c
	stdlib/strtold.c
	stdlib/strtoul.c
	stdlib/strtoll.c
	stdlib/strtoull.c
)

# Support Module
target_sources(
	c PRIVATE
    support/fls.c
    support/flsl.c
    support/flsll.c
)

# Time Module
target_sources(
	c PRIVATE
    time/asctime.c
    time/asctime_r.c
)

# wchar Module
target_sources(
	c PRIVATE
	wchar/iswalnum.c
	wchar/iswalpha.c
	wchar/iswblank.c
	wchar/iswcntrl.c
	wchar/iswalnum.c
	wchar/iswalpha.c
	wchar/iswblank.c
	wchar/iswcntrl.c
	wchar/iswctype.c
	wchar/iswdigit.c
	wchar/iswgraph.c
	wchar/iswlower.c
	wchar/iswprint.c
	wchar/iswpunct.c
	wchar/iswspace.c
	wchar/iswupper.c
	wchar/iswxdigit.c
	wchar/towccase.c
	wchar/towctrans.c
	wchar/towlower.c
	wchar/towupper.c
	wchar/wcswidth.c
	wchar/wctrans.c
	wchar/wctype.c
	wchar/wcwidth.c
)

target_include_directories(c
	PRIVATE
		${PROJECT_SOURCE_DIR}/include
		${PROJECT_SOURCE_DIR}/arch/x86_64/include
)

target_include_directories(c SYSTEM
	INTERFACE
		${PROJECT_SOURCE_DIR}/include
		${PROJECT_SOURCE_DIR}/arch/x86_64/include
		$<TARGET_PROPERTY:openlibm,INTERFACE_INCLUDE_DIRECTORIES>
)

#[[
get_target_property(c_sources c SOURCES)
message("libc sources=${c_sources}")

add_executable(test)
target_link_libraries(test PRIVATE c)

include(CMakePrintHelpers)
cmake_print_properties(
	TARGETS c PROPERTIES
	INTERFACE_SOURCES
	#SOURCES
	INCLUDE_DIRECTORIES
	INTERFACE_INCLUDE_DIRECTORIES
	LINK_LIBRARIES
	INTERFACE_LINK_LIBRARIES
)

cmake_print_properties(
	TARGETS test PROPERTIES
	INTERFACE_SOURCES
	#SOURCES
	INCLUDE_DIRECTORIES
	INTERFACE_INCLUDE_DIRECTORIES
	LINK_LIBRARIES
	INTERFACE_LINK_LIBRARIES
)]]