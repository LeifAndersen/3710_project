cmake_minimum_required(VERSION 2.6)
set(CMAKE_CXX_FLAGS "-g -Wall")
project(assembler)

set(SOURCES
    compiler.cpp
    assembler.cpp
    instructions.cpp
    main.cpp
)

add_executable(assembler WIN32 MACOSX_BUNDLE ${SOURCES})
