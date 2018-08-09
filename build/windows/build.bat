@echo off

:: Install build dependencies
call %~dp0ci-common.bat
if errorlevel 1 exit /b %errorlevel%

:: Ensure that the necessary build tools are on the PATH
call %~dp0validate-build-dependencies.bat
if errorlevel 1 exit /b %errorlevel%

ninja --version
clang-cl --version
lld-link --version
cmake --version
python --version

:: cmake .. -G Ninja ^
    :: -DCMAKE_CXX_COMPILER:PATH="clang-cl.exe" ^
    :: -DCMAKE_C_COMPILER:PATH="clang-cl.exe" ^
    :: -DCMAKE_LINKER:PATH="lld-link.exe" ^
    :: -DCMAKE_BUILD_TYPE=Release

echo Hello, world
