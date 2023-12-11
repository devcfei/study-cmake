cmake_minimum_required(VERSION 3.10)
project(bar_lib)

add_library(libbar STATIC bar.c)
set_target_properties(libbar PROPERTIES PUBLIC_HEADER "bar.h")

install(
    TARGETS   libbar
    EXPORT   libbarTargets
    ARCHIVE DESTINATION lib
    PUBLIC_HEADER DESTINATION inc
)