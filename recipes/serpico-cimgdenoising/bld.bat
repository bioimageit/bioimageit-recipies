mkdir build
cd build

REM Build
cmake .. -G "Visual Studio 16 2019" -A x64
if errorlevel 1 exit 1
cmake --build . --config Release
if errorlevel 1 exit 1

REM Install
cd ..
mkdir %PREFIX%\bin
if errorlevel 1 exit 1

copy build\bin\Release\denoise.exe %PREFIX%\bin\denoise.exe
if errorlevel 1 exit 1
