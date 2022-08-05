@echo off
@rem Windows BAT
@rem



if {%1} == {} goto buildAll 

if "%1" == "d" goto buildDebug
if "%1" == "r" goto buildRelease
goto end

:rebuildAll
cmake --build build --target clean

:buildDebug
cmake -S . -B build -DCMAKE_INSTALL_PREFIX="install/Debug" -DCMAKE_BUILD_TYPE=Debug
cmake --build build
cmake --install build --config Debug
goto end

:buildRelease
cmake -S . -B build -DCMAKE_INSTALL_PREFIX="install/Release" -DCMAKE_BUILD_TYPE=Release
cmake --build build
cmake --install build --config Release
goto end

:buildAll
cmake -S . -B build -DCMAKE_INSTALL_PREFIX="install/Debug" -DCMAKE_BUILD_TYPE=Debug
cmake --build build
cmake --install build --config Debug

cmake -S . -B build -DCMAKE_INSTALL_PREFIX="install/Release" -DCMAKE_BUILD_TYPE=Release
cmake --build build
cmake --install build --config Release
goto end


:end
