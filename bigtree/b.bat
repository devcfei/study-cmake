@echo off
@rem Windows BAT
@rem

if {%1} == {} goto BuildDebug 
if "%1" == "--release" goto BuildRelease
if "%1" == "--clean" goto Cleanup


:Cleanup
cmake --build build --target clean
goto end

:BuildDebug
cmake -S . -B build/debug -DCMAKE_INSTALL_PREFIX="install/Debug"
cmake --build build/debug
cmake --install build/debug --config Debug
goto end

:BuildRelease
cmake -S . -B build/release -DCMAKE_INSTALL_PREFIX="install/Release"
cmake --build build/release --config Release
cmake --install build/release
goto end

:end
echo =======================
echo Build completed
echo =======================



