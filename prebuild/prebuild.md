# Prebuild sample

Prebuild could be used to build external tools, for example a resource to source code generator.

The sample build a bin2c tool and generate copyright string resource before build the demo


## Build

Use the following command to build the sample

```
cmake -S . -B build
cmake --build build
```

