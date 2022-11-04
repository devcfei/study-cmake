cmake_minimum_required(VERSION 3.10)
project(prebuild_proj)





# Build bin2cpp
set(BIN2CPP_ARGS
    ""
)   

include(ExternalProject)
ExternalProject_Add(bin2cpp
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/tools
    CMAKE_ARGS ${BIN2CPP_ARGS} -DCMAKE_INSTALL_PREFIX=${CMAKE_CURRENT_SOURCE_DIR}/external/bin2cpp
    )



add_subdirectory(src)


