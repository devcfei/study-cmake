# Cross build


## Build



### Windows system


`MSVC x86`

```
cmake -S . -B build -A Win32 -DCMAKE_INSTALL_PREFIX="install"
cmake --build build
cmake --install build --config Debug
```

`MSVC x64`

```
cmake -S . -B build -A x64 -DCMAKE_INSTALL_PREFIX="install"
cmake --build build
cmake --install build --config Debug
```

