#!/bin/sh


build_cross()
{
    echo "clean up ..."
    rm build -rf

    cmake -S cross -B build/x86 -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchain.cmake -DBUILD_TARGET_SYSTEM=Linux -DBUILD_TARGET_ARCH=x86 -DBUILD_TOOL_CHAIN=gnu
    cmake --build build/x86

    cmake -S cross -B build/x86_64 -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchain.cmake -DBUILD_TARGET_SYSTEM=Linux -DBUILD_TARGET_ARCH=x86_64 -DBUILD_TOOL_CHAIN=gnu
    cmake --build build/x86_64

    cmake -S cross -B build/armv7a -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchain.cmake -DBUILD_TARGET_SYSTEM=Linux -DBUILD_TARGET_ARCH=armv7a -DBUILD_TOOL_CHAIN=gnu
    cmake --build build/armv7a

    cmake -S cross -B build/aarch64 -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchain.cmake -DBUILD_TARGET_SYSTEM=Linux -DBUILD_TARGET_ARCH=aarch64 -DBUILD_TOOL_CHAIN=gnu
    cmake --build build/aarch64


    cmake -S cross -B build/llvm/x86 -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchain.cmake -DBUILD_TARGET_SYSTEM=Linux -DBUILD_TARGET_ARCH=x86 -DBUILD_TOOL_CHAIN=clang
    cmake --build build/llvm/x86

    cmake -S cross -B build/llvm/x86_64 -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchain.cmake -DBUILD_TARGET_SYSTEM=Linux -DBUILD_TARGET_ARCH=x86_64 -DBUILD_TOOL_CHAIN=clang
    cmake --build build/llvm/x86_64

    cmake -S cross -B build/llvm/armv7a -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchain.cmake -DBUILD_TARGET_SYSTEM=Linux -DBUILD_TARGET_ARCH=armv7a -DBUILD_TOOL_CHAIN=clang
    cmake --build build/llvm/armv7a

    cmake -S cross -B build/llvm/aarch64 -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchain.cmake -DBUILD_TARGET_SYSTEM=Linux -DBUILD_TARGET_ARCH=aarch64 -DBUILD_TOOL_CHAIN=clang
    cmake --build build/llvm/aarch64


}


if [ -n "$1" ]; then
    if [ "$1" = "-h" ]; then
        echo "build help!"
    elif [ "$1" = "--cross" ]; then
        build_cross
    else
        echo "unknown arg"
    fi
else
    echo "no arguments"
fi