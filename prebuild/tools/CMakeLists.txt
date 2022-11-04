cmake_minimum_required(VERSION 3.10)
project(bin2cpp_proj)

add_executable(bin2cpp main.cpp)

install(TARGETS bin2cpp 
    EXPORT bin2cppTarget
    ARCHIVE DESTINATION bin
    RUNTIME DESTINATION bin
    )