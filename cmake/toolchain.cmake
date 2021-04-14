#
#  BUILD_TARGET_SYSTEM=Windows,Linux,QNX
#  BUILD_TARGET_ARCH=x86,x86_64,armv7a,aarch64
#  BUILD_TOOL_CHAIN=msvc, gcc, clang, qcc
#

if( BUILD_TARGET_SYSTEM STREQUAL "Windows")
    set(TARGET_SYSTEM Windows)

elseif( BUILD_TARGET_SYSTEM STREQUAL "Linux")
    set(TARGET_SYSTEM Linux)

elseif( BUILD_TARGET_SYSTEM STREQUAL "QNX")
    set(TARGET_SYSTEM QNX)

else()
    message(STATUS "BUILD_TARGET_SYSTEM not set, check CMAKE_SYSTEM_NAME=${CMAKE_SYSTEM_NAME}")

    if( CMAKE_SYSTEM_NAME STREQUAL "Windows")
        set(TARGET_SYSTEM Windows)

    elseif(CMAKE_SYSTEM_NAME STREQUAL "Linux")
        set(TARGET_SYSTEM Linux)

    elseif(CMAKE_SYSTEM_NAME STREQUAL "QNX")        
        set(TARGET_SYSTEM QNX)

    else()
        message(STATUS "unsupport system!")
    endif()

endif()


message(STATUS "TARGET_SYSTEM is ${TARGET_SYSTEM}")


if( BUILD_TARGET_ARCH STREQUAL "x86")
    set(TARGET_ARCH "x86")
elseif( BUILD_TARGET_ARCH STREQUAL "x86_64")
    set(TARGET_ARCH "x86_64")
elseif( BUILD_TARGET_ARCH STREQUAL "armv7a")
    set(TARGET_ARCH "armv7a")
elseif( BUILD_TARGET_ARCH STREQUAL "aarch64")
    set(TARGET_ARCH "aarch64")

else()
    message(STATUS "BUILD_TARGET_ARCH not set, always set TARGET_ARCH=x86_64")  

    set(TARGET_ARCH "x86_64")
endif()

message(STATUS "TARGET_ARCH is ${TARGET_ARCH}")


if( BUILD_TOOL_CHAIN STREQUAL "msvc")
    set(TOOL_CHAIN msvc)

elseif( BUILD_TOOL_CHAIN STREQUAL "gnu")
    set(TOOL_CHAIN gnu)

elseif( BUILD_TOOL_CHAIN STREQUAL "clang")
    set(TOOL_CHAIN clang)

elseif( BUILD_TOOL_CHAIN STREQUAL "qcc")
    set(TOOL_CHAIN qcc)

else()
    message(STATUS "BUILD_TOOL_CHAIN not set, set to OS native toolchain")

    if( CMAKE_SYSTEM_NAME STREQUAL "Windows")
        set(TOOL_CHAIN msvc)
    elseif(CMAKE_SYSTEM_NAME STREQUAL "Linux")
        set(TOOL_CHAIN gnu)
    elseif(CMAKE_SYSTEM_NAME STREQUAL "QNX")
        set(TOOL_CHAIN qcc)

    endif()
endif()

message(STATUS "TOOL_CHAIN is ${TOOL_CHAIN}")



if(TOOL_CHAIN STREQUAL "msvc")
    message(STATUS "TOOL_CHAIN msvc")
 elseif(TOOL_CHAIN STREQUAL "gnu")
    message(STATUS "TOOL_CHAIN gnu")

    if(TARGET_ARCH STREQUAL "x86")
        set(CMAKE_C_FLAGS "-m32")
    elseif(TARGET_ARCH STREQUAL "x86_64")
        set(CMAKE_C_FLAGS "-m64")
    elseif(TARGET_ARCH STREQUAL "armv7a")
        set (CMAKE_C_COMPILER "arm-linux-gnueabi-gcc")
    elseif(TARGET_ARCH STREQUAL "aarch64")
        set (CMAKE_C_COMPILER "aarch64-linux-gnu-gcc")
    else()

    endif()

elseif(TOOL_CHAIN STREQUAL "clang")
    message(STATUS "TOOL_CHAIN clang")
    set (CMAKE_C_COMPILER "clang")

    if(TARGET_ARCH STREQUAL "x86")
        set(CMAKE_C_FLAGS "-m32")
    elseif(TARGET_ARCH STREQUAL "x86_64")
        set(CMAKE_C_FLAGS "-m64")
    elseif(TARGET_ARCH STREQUAL "armv7a")
        set (CMAKE_C_FLAGS "--target=arm-linux-gnueabi")
    elseif(TARGET_ARCH STREQUAL "aarch64")
        set (CMAKE_C_FLAGS "--target=aarch64-linux-gnu")
    else()

    endif()

elseif(TOOL_CHAIN STREQUAL "qcc")
    message(STATUS "TOOL_CHAIN qcc")

else()

endif()
