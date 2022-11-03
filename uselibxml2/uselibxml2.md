# Sampel to use libxml2

## Build

Use the following command to build the sample

```
cmake -S . -B build
cmake --build build
```

## Test

The xmltest sample application accept the following xml

```xml
<users>
</users>
```

Create the xml file into the output folder and run the xmltest

In **Windows**, it needs copy the libxml2.dll(libxml2d.dll for Debug version) to output folder



