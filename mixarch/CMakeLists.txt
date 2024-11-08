cmake_minimum_required(VERSION 3.10)
project(mixarch)


include(ExternalProject)  

# Define the external project  
ExternalProject_Add(app32  
  SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/app32  
  CMAKE_ARGS -DCMAKE_GENERATOR_PLATFORM=Win32
  INSTALL_COMMAND ""
)  


add_subdirectory(app64)

