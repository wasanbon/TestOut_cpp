# TestOut CMake config file
#
# This file sets the following variables:
# TestOut_FOUND - Always TRUE.
# TestOut_INCLUDE_DIRS - Directories containing the TestOut include files.
# TestOut_IDL_DIRS - Directories containing the TestOut IDL files.
# TestOut_LIBRARIES - Libraries needed to use TestOut.
# TestOut_DEFINITIONS - Compiler flags for TestOut.
# TestOut_VERSION - The version of TestOut found.
# TestOut_VERSION_MAJOR - The major version of TestOut found.
# TestOut_VERSION_MINOR - The minor version of TestOut found.
# TestOut_VERSION_REVISION - The revision version of TestOut found.
# TestOut_VERSION_CANDIDATE - The candidate version of TestOut found.

message(STATUS "Found TestOut-1.0.0")
set(TestOut_FOUND TRUE)

find_package(<dependency> REQUIRED)

#set(TestOut_INCLUDE_DIRS
#    "/usr/local/include/testout-1"
#    ${<dependency>_INCLUDE_DIRS}
#    )
#
#set(TestOut_IDL_DIRS
#    "/usr/local/include/testout-1/idl")
set(TestOut_INCLUDE_DIRS
    "/usr/local/include/"
    ${<dependency>_INCLUDE_DIRS}
    )
set(TestOut_IDL_DIRS
    "/usr/local/include//idl")


if(WIN32)
    set(TestOut_LIBRARIES
        "/usr/local/components/lib/libtestout.a"
        ${<dependency>_LIBRARIES}
        )
else(WIN32)
    set(TestOut_LIBRARIES
        "/usr/local/components/lib/libtestout.dylib"
        ${<dependency>_LIBRARIES}
        )
endif(WIN32)

set(TestOut_DEFINITIONS ${<dependency>_DEFINITIONS})

set(TestOut_VERSION 1.0.0)
set(TestOut_VERSION_MAJOR 1)
set(TestOut_VERSION_MINOR 0)
set(TestOut_VERSION_REVISION 0)
set(TestOut_VERSION_CANDIDATE )

