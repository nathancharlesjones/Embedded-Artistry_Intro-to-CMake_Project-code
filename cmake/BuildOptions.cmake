###################################################
##                                               ##
##  Set project default values                   ##
##                                               ##
###################################################

# Set a default build type if none was specified
set(default_build_type "RelWithDebInfo")
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  message(STATUS "Setting build type to '${default_build_type}' as none was specified.")
  set(CMAKE_BUILD_TYPE "${default_build_type}" CACHE
      STRING "Choose the type of build."
      FORCE
  )
  # Set the possible values of build type for cmake-gui/ccmake
  set_property(CACHE CMAKE_BUILD_TYPE
    PROPERTY STRINGS "Debug" "Release" "MinSizeRel" "RelWithDebInfo"
  )
endif()

set(default_pic ON)
if("${CMAKE_POSITION_INDEPENDENT_CODE}" STREQUAL "")
  message(STATUS "Setting PIC for all targets to '${default_pic}' as no value was specified.")
  set(CMAKE_POSITION_INDEPENDENT_CODE ${default_pic} CACHE
    BOOL "Compile all targets with -fPIC"
    FORCE
  )
endif()

set(default_shared_libs OFF)
if("${BUILD_SHARED_LIBS}" STREQUAL "")
  message(STATUS "Setting 'build shared libraries' to '${default_shared_libs}' as no value was specified.")
  set(BUILD_SHARED_LIBS ${default_shared_libs} CACHE
    BOOL "Compile shared libraries by default instead of static libraries."
    FORCE
  )
endif()

set(default_compile_commands ON)
if("${CMAKE_EXPORT_COMPILE_COMMANDS}" STREQUAL "")
  message(STATUS "Setting 'export compile commands' to '${default_compile_commands}' as no value was specified.")
  set(CMAKE_EXPORT_COMPILE_COMMANDS ${default_compile_commands} CACHE
    BOOL "Export compile_commands.json file."
    FORCE
  )
endif()

option(HIDE_UNIMPLEMENTED_C_APIS
  "Make unimplemented libc functions invisible to the compiler."
  OFF)

option(ENABLE_GNU_EXTENSIONS
  "Enables the GNU extensions to the standard libc functions."
  OFF)

option(DISABLE_BUILTINS
  "Adds -fno-builtin compilation flag to the library target, but not its dependencies."
  ON)

option(DISABLE_STACK_PROTECTION
  "Adds -fno-stack-protector compilation flag to the libc target and its dependencies."
  ON)

option(NOSTDINC_FOR_DEPENDENTS
  "When this option is ON, apply_supported_compiler_flags for -nostdinc use a PUBLIC scope; when it is OFF, it uses a PRIVATE scope."
  OFF)

option(LIBC_BUILD_TESTING
  "build libc tests if BUILD_TESTING is enabled, and we’re either a) the main project, or b) not the main project, but LIBC_BUILD_TESTING is enabled."
  OFF)

CMAKE_DEPENDENT_OPTION(LIBC_BUILD_TESTING
  "Enable libc testing even when used as an external project."
  OFF
  "NOT CMAKE_CROSSCOMPILING" OFF)

message("${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE} NOT ${CMAKE_CROSSCOMPILING} AND ${BUILD_TESTING} AND ( ${LIBC_BUILD_TESTING} OR ( ${CMAKE_PROJECT_NAME} == ${PROJECT_NAME} ) )")
if( (NOT CMAKE_CROSSCOMPILING) AND BUILD_TESTING AND ( LIBC_BUILD_TESTING OR (CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME) ) )
  message("Enabling libc tests.")
  set(LIBC_TESTING_IS_ENABLED ON CACHE INTERNAL "Logic that sets whether testing is enabled on this project")
endif()
