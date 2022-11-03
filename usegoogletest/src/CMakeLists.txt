cmake_minimum_required(VERSION 3.10)
project(usegoogletest_proj)

add_executable(demo main.c)


# install
install(TARGETS demo
    EXPORT demoTargets
    LIBRARY DESTINATION bin
    ARCHIVE DESTINATION lib
    RUNTIME DESTINATION bin
    PUBLIC_HEADER DESTINATION include
    )