cmake_minimum_required(VERSION 3.10)
project(demo_proj)

# set default
set(VERSION_MAJOR 0)
set(VERSION_MINOR 0)
set(VERSION_PATCH 0)
set(BUILD_VARIANT \"\")


# overwrite by -D options from cmake
if(MAJOR)
    set(VERSION_MAJOR ${MAJOR})
endif()

if(MINOR)
    set(VERSION_MINOR ${MINOR})
endif()

if(PATCH)
    set(VERSION_PATCH ${PATCH})
endif()

if(VARIANT)
    set(BUILD_VARIANT \"${VARIANT}\")
endif()



configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/version.h.in 
    ${CMAKE_CURRENT_BINARY_DIR}/version.h
    )


include_directories(
    ${CMAKE_CURRENT_BINARY_DIR}
    )

add_executable(demo main.c)
