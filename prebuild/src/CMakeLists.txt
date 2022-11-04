cmake_minimum_required(VERSION 3.10)
project(demo_proj)



message(" CMAKE_CURRENT_SOURCE_DIR = ${CMAKE_CURRENT_SOURCE_DIR} ")
message(" CMAKE_SOURCE_DIR = ${CMAKE_SOURCE_DIR} ")

add_custom_target(
    copyrightTarget
    COMMAND ${CMAKE_SOURCE_DIR}/external/bin2cpp/bin/bin2cpp.exe ${CMAKE_CURRENT_SOURCE_DIR}/copyright.txt ${CMAKE_CURRENT_BINARY_DIR}/copyright.h copyright_str
    )

add_executable(demo main.cpp)
add_dependencies(demo bin2cpp copyrightTarget)
target_include_directories(demo PRIVATE ${CMAKE_CURRENT_BINARY_DIR})

