# Copyright (c) $COPYRIGHT.  All rights reserved.
#
# THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
# KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR
# PURPOSE.
#
# Module Name:
#
#     CMake list file
#
# Abstract:
#
# 
cmake_minimum_required(VERSION 3.6)

project(mbr)

find_program(YASM_EXE NAMES yasm)


add_custom_target(mbr.bin ALL ${YASM_EXE}
                   -o mbr.bin ${CMAKE_CURRENT_SOURCE_DIR}/*.asm)



