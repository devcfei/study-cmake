cmake_minimum_required(VERSION 3.10)
project(unit-test)

enable_testing()

set(CMAKE_CXX_STANDARD 17)

option(INSTALL_GTEST "Install GoogleTest to CMAKE_INSTALL_PREFIX" OFF)


include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)


aux_source_directory(${PROJECT_SOURCE_DIR} SRCS)

add_executable(test ${SRCS} )
target_link_libraries(test gtest_main)



include(GoogleTest)
gtest_discover_tests(test)

# install
install(TARGETS test
    EXPORT testTargets
    LIBRARY DESTINATION bin
    ARCHIVE DESTINATION lib
    RUNTIME DESTINATION bin
    PUBLIC_HEADER DESTINATION include
    )