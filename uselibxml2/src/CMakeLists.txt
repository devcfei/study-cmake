cmake_minimum_required(VERSION 3.10)
project(xmltest_proj)


aux_source_directory(${PROJECT_SOURCE_DIR} SRCS)

add_executable(xmltest ${SRCS})


if( CMAKE_SYSTEM_NAME STREQUAL "Linux")
    target_link_libraries(xmltest xml2)
endif()

if( CMAKE_SYSTEM_NAME STREQUAL "Windows")
    target_link_libraries(xmltest debug libxml2d)
    target_link_libraries(xmltest optimized libxml2)
endif()


