# Study CMake

## Dependency

```bash
sudo apt install build-essential
sudo apt install yasm
sudo apt install cmake
sudo apt install gcc-multilib g++-multilib
sudo apt install gcc-arm-linux-gnueabi
sudo apt install gcc-aarch64-linux-gnu
sudo apt install clang
```

## Get Start

Build on Linux and Windows with same command
```bash
cmake -S hello -B build
cmake --build build    
```

## Use LLVM

```bash
cmake -S usellvm -B build -DUSE_LLVM=ON
cmake --build build 
```

## Cross Build

define a toolchan.cmake(in cmake folder) to support cross build, see build.sh for details

3 build arguments are defined

- BUILD_TARGET_SYSTEM = Windows|  Linux |QNX
- BUILD_TARGET_ARCH= x86| x86_64| armv7a| aarch64
- BUILD_TOOL_CHAIN = msvc| gnu| qcc| clang

## Use YASM

```bash
cmake -S yasm -B build
cmake --build build 
```


## Upgrade the CMake

```bash
sudo apt install libssl-dev
wget https://cmake.org/files/v3.19/cmake-3.19.1.tar.gz
tar -xvf cmake-3.19.1.tar.gz
cd cmake-3.19.1/
./configure
make
sudo make install
sudo update-alternatives --install /usr/bin/cmake  cmake /usr/local/bin/cmake  1 --force
cmake --version
```