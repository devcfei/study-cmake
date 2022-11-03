cmake_minimum_required(VERSION 3.10)

project(useyasm_proj)

find_program(YASM_EXE NAMES yasm)

add_custom_target(mbr.bin ALL yasm
                   -o mbr.bin ${CMAKE_CURRENT_SOURCE_DIR}/*.asm)



