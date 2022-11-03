cmake_minimum_required(VERSION 3.10)
project(crossbuild_proj)



MESSAGE(STATUS "Using toolchain file: ${CMAKE_TOOLCHAIN_FILE}")


add_subdirectory(src)
