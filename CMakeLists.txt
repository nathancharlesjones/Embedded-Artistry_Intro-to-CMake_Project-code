###################################################
##                                               ##
##  Project definition and initial setup         ##
##                                               ##
###################################################

cmake_minimum_required(
	VERSION 3.18
)

project(
	EmbeddedArtistryLibc
	VERSION 1.0
	DESCRIPTION "libc implementation for microcontrollers"
	LANGUAGES C CXX
)

include(CMakeDependentOption)
include(cmake/CPM.cmake)
include(cmake/CheckAndApplyFlags.cmake)

# Only use testing if we're not somebody's subproject!
message("${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE} ( ${CMAKE_PROJECT_NAME} == ${PROJECT_NAME} ) OR ${LIBC_BUILD_TESTING}")
#if(${CMAKE_PROJECT_NAME} STREQUAL ${PROJECT_NAME} OR ${LIBC_BUILD_TESTING})
if( (CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME) OR LIBC_BUILD_TESTING)
  message("CTest being included")
  include(CTest)
endif()

include(cmake/BuildOptions.cmake)
include(CheckCCompilerFlag)

set_property(
	GLOBAL PROPERTY C_STANDARD 11
)

if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
  add_compile_options(-Wall -Wextra)
endif()

add_subdirectory(
	src
)

###################################################
##                                               ##
##  Adding mpaland/printf                        ##
##                                               ##
###################################################

CPMAddPackage(
	NAME printf
	GITHUB_REPOSITORY mpaland/printf
	VERSION 4.0.0
	DOWNLOAD_ONLY
)

add_library(
	printf INTERFACE
)

target_sources(
	printf INTERFACE ${printf_SOURCE_DIR}/printf.c
)

#[[Note: We use SYSTEM here so that the external dependency headers won’t generate warnings in our build. For more information, see the -isystem documentation in the GCC manual (https://gcc.gnu.org/onlinedocs/gcc/Directory-Options.html).]]
target_include_directories(
	printf SYSTEM INTERFACE ${printf_SOURCE_DIR}
)

###################################################
##                                               ##
##  Adding openlibm                              ##
##                                               ##
###################################################

CPMAddPackage(
	NAME openlibm
	GITHUB_REPOSITORY JuliaMath/openlibm
	VERSION 0.7.0
	DOWNLOAD_ONLY
)

add_library(
	openlibm INTERFACE
)

#[[Note: We use SYSTEM here so that the external dependency headers won’t generate warnings in our build. For more information, see the -isystem documentation in the GCC manual (https://gcc.gnu.org/onlinedocs/gcc/Directory-Options.html).]]
target_include_directories(
	openlibm SYSTEM INTERFACE
	${openlibm_SOURCE_DIR}/include
	${openlibm_SOURCE_DIR}/src
)

###################################################
##                                               ##
##  Adding CMocka and CTest                      ##
##                                               ##
###################################################

message("${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE} ${LIBC_TESTING_IS_ENABLED}")
if(LIBC_TESTING_IS_ENABLED)
  message("Adding CMocka")

  find_package(cmocka QUIET)

  if(NOT cmocka_FOUND)
    CPMAddPackage(
      NAME cmocka
      GIT_REPOSITORY https://git.cryptomilk.org/projects/cmocka.git/
      VERSION 1.1.5
      GIT_TAG cmocka-1.1.5
      DOWNLOAD_ONLY YES
    )

    # Convenience variable to shorten our code below
    set(CMOCKA_STATIC_FILENAME
      ${CMAKE_STATIC_LIBRARY_PREFIX}cmocka-static${CMAKE_STATIC_LIBRARY_SUFFIX}
    )

    # We would normally use CPMAddPackage, but CMocka's build presents problems.
    # So we include it as an external project, which allows us to build the lib
    # separately and then link it in.
    include(ExternalProject)
    ExternalProject_Add(project_cmocka
      SOURCE_DIR ${cmocka_SOURCE_DIR}
      PREFIX ${CMAKE_CURRENT_BINARY_DIR}/cmocka
      BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}/cmocka
      CMAKE_ARGS
        -DBUILD_STATIC_LIB=ON
        -DWITH_STATIC_LIB=ON # Without this, Cmocka will not install the static lib
        -DWITH_EXAMPLES=OFF
        -DCMAKE_BUILD_TYPE=Debug
        -DCMAKE_INSTALL_PREFIX=${CMAKE_CURRENT_BINARY_DIR}/cmocka
      # This is needed with Ninja generators to prevent it from failing due to
      # the library being missing before the build has been run
      BUILD_BYPRODUCTS ${CMAKE_CURRENT_BINARY_DIR}/cmocka/lib/${CMOCKA_STATIC_FILENAME}
    )

    # We need to get the CMocka installation directory to know where our
    # built libraries can be found
    ExternalProject_Get_Property(project_cmocka BINARY_DIR)

    # Now we define an IMPORTED library target and tell CMake where the library
    # files can be found. To ensure the build flows in the proper order,
    # we'll add a dependency on the ExternalProject target above, which will
    # ensure the library is built before we try to link it
    add_library(cmocka-static STATIC IMPORTED)
    set_target_properties(cmocka-static PROPERTIES
      IMPORTED_LOCATION ${BINARY_DIR}/lib/${CMOCKA_STATIC_FILENAME}
    )
    add_dependencies(cmocka-static project_cmocka)

    # Maintain build compatibility between find_package and CMakeLists.txt variants.
    set(CMOCKA_LIBRARIES cmocka-static)
    set(CMOCKA_INCLUDE_DIR ${BINARY_DIR}/include)
  endif()
endif()


###################################################
##                                               ##
##  Register printf tests                        ##
##                                               ##
###################################################

message("${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE} ${LIBC_TESTING_IS_ENABLED}")
if(LIBC_TESTING_IS_ENABLED)
    message("Adding printf tests")
    add_executable(printf_tests)
    target_sources(printf_tests PRIVATE ${printf_SOURCE_DIR}/test/test_suite.cpp)
    target_include_directories(printf_tests PRIVATE ${printf_SOURCE_DIR})
    set_target_properties(printf_tests PROPERTIES CXX_STANDARD 11)
    add_test(NAME build_printf_tests
      COMMAND "${CMAKE_COMMAND}" --build ${CMAKE_BINARY_DIR} --target printf_tests)
    add_test(NAME run_printf_tests
      COMMAND printf_tests -s -r junit -o ${CMAKE_BINARY_DIR}/printf_tests.xml)
    set_tests_properties(run_printf_tests PROPERTIES DEPENDS build_printf_tests)
endif()

###################################################
##                                               ##
##  Register libc tests                          ##
##                                               ##
###################################################

message("${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE} ${LIBC_TESTING_IS_ENABLED}")
if(LIBC_TESTING_IS_ENABLED)
  message("Including subdirectory: test")
	add_subdirectory(test)
endif()