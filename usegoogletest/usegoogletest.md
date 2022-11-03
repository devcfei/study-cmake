# Sample to use googletest

## Build

Use the following command to build the sample in Windows

```
cmake -S . -B build -DCMAKE_INSTALL_PREFIX="install"
cmake --build build
cmake --install build --config Debug
```

In Linux, there is no `--config` option for `--install`
```
cmake -S . -B build -DCMAKE_INSTALL_PREFIX="install"
cmake --build build
cmake --install build 
```





