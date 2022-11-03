cmake_minimum_required(VERSION 3.10)

project(usellvm_proj)

option(BUILD_USE_LLVM "Use LLVM to build" ON)

set(SRCS ${CMAKE_CURRENT_SOURCE_DIR}/main.c)

if(BUILD_USE_LLVM)
    message(STATUS "USE LLVM...")
    set (CMAKE_C_COMPILER "clang")
endif()

add_executable(usellvm ${SRCS})


