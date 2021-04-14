# Hello World sample to use cmake

## Build

Use the following command to build the sample

```
cmake -S . -B build
cmake --build build
```

In Windows, the output is `build\Debug\hello.exe`
In Linux, the output is `build/hello`

## Cleanup

Cleanup will delete the output with the following command, i.e., it clean the resoult by `cmake --build build`
```
cmake --build build --target clean
```

## Release build in Windows

To build Release build in Windows, use the following command
```
cmake -S . -B build
cmake --build build --config Release
```
