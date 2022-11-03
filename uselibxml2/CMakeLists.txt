cmake_minimum_required(VERSION 3.10)
project(uselibxml2_proj)

# Build LibXml2
set(LIBXML2_ARGS
    -DLIBXML2_WITH_TESTS=OFF
    -DLIBXML2_WITH_PROGRAMS=OFF
    -DLIBXML2_WITH_LZMA=OFF
    -DLIBXML2_WITH_ICONV=OFF
    -DLIBXML2_WITH_ZLIB=OFF
    -DLIBXML2_WITH_PYTHON=OFF
)   

include(ExternalProject)
ExternalProject_Add(LibXml2_proj
    GIT_REPOSITORY "https://github.com/GNOME/libxml2.git"
    GIT_TAG v2.10.0
    CMAKE_ARGS ${LIBXML2_ARGS} -DCMAKE_INSTALL_PREFIX=${CMAKE_CURRENT_SOURCE_DIR}/external/libxml2
    )

include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/external/libxml2/include/libxml2
    )

link_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/external/libxml2/lib
    )


add_subdirectory(src)

