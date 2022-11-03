# Sampel to use Clang/LLVM in cmake

## Build

Use the following command to build the sample

```
cmake -S . -B build
cmake --build build
```

## How to detect if Clang/LLVM used

Use the `objdump` to check the .comment section, there is clang version indicates the ELF file is built by Clang

```
objdump -s --section .comment build/usellvm

build/usellvm:     file format elf64-x86-64

Contents of section .comment:
 0000 4743433a 20285562 756e7475 20392e33  GCC: (Ubuntu 9.3
 0010 2e302d31 37756275 6e747531 7e32302e  .0-17ubuntu1~20.
 0020 30342920 392e332e 3000636c 616e6720  04) 9.3.0.clang 
 0030 76657273 696f6e20 31302e30 2e302d34  version 10.0.0-4
 0040 7562756e 74753120 00                 ubuntu1 .  

```

