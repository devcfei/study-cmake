cmake_minimum_required(VERSION 3.19)

project(usellvm)

set(SRCS ${CMAKE_CURRENT_SOURCE_DIR}/main.c)

if(USE_LLVM)
    message(STATUS "USE LLVM...")
    set (CMAKE_C_COMPILER "clang")
endif()

add_executable(usellvm ${SRCS})


