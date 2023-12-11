cmake_minimum_required(VERSION 3.10)
project(foo_exe)


add_executable(foo main.c)
target_link_libraries(foo PRIVATE libbar)


