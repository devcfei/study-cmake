cmake_minimum_required(VERSION 3.10)
project(bigtree)



include_directories(
    inc
    lib/bar
    )

add_subdirectory(lib)
add_subdirectory(src)
