cmake_minimum_required(VERSION 3.10)
project(cvtest)


# Fetch from git
include(FetchContent)

FetchContent_Declare(
        opencv
        URL https://github.com/opencv/opencv/archive/refs/tags/4.6.0.zip
)

# disable the following build
set(BUILD_TESTS OFF CACHE BOOL "" FORCE) #
set(BUILD_EXAMPLES OFF CACHE BOOL "" FORCE) #
set(BUILD_PACKAGE OFF CACHE BOOL "" FORCE) #
set(BUILD_DOCS OFF CACHE BOOL "" FORCE) #
set(BUILD_PERF_TESTS OFF CACHE BOOL "" FORCE) #
set(BUILD_opencv_apps OFF CACHE BOOL "" FORCE) #
set(BUILD_opencv_js OFF CACHE BOOL "" FORCE) #
# change teh default install folder of the libraries
set(OPENCV_BIN_INSTALL_PATH bin CACHE PATH "" FORCE) # always install to ${CMAKE_INSTALL_PREFIX}/bin



FetchContent_GetProperties(opencv)
if (NOT opencv_POPULATED)
    FetchContent_Populate(opencv)
    #message(STATUS "opencv_SOURCE_DIR = ${opencv_SOURCE_DIR}")
    #message(STATUS "opencv_BINARY_DIR = ${opencv_BINARY_DIR}")
    add_subdirectory(${opencv_SOURCE_DIR} ${opencv_BINARY_DIR})
endif ()
FetchContent_MakeAvailable(opencv)




set(OpenCV_DIR ${CMAKE_BINARY_DIR})
message(STATUS "OpenCV_DIR = ${OpenCV_DIR}")
include_directories(${OpenCV_INCLUDE_DIRS}) # Not needed for CMake >= 2.8.11
message(STATUS "OpenCV_INCLUDE_DIRS = ${OpenCV_INCLUDE_DIRS}")

find_package(OpenCV REQUIRED)





# cvtest
aux_source_directory(${PROJECT_SOURCE_DIR} SRCS)
add_executable(cvtest ${SRCS} )
target_link_libraries(cvtest ${OpenCV_LIBS})


install(TARGETS cvtest 
        EXPORT cvtestTargets
        CONFIGURATIONS Debug
        LIBRARY DESTINATION bin
        ARCHIVE DESTINATION lib
        RUNTIME DESTINATION bin
        PUBLIC_HEADER DESTINATION include
        )

install(TARGETS cvtest 
        EXPORT cvtestTargets
        CONFIGURATIONS Release
        LIBRARY DESTINATION bin
        ARCHIVE DESTINATION lib
        RUNTIME DESTINATION bin
        PUBLIC_HEADER DESTINATION include
        )

