call %SRC_DIR%\build.bat

REM Install
mkdir %PREFIX%\bin
if errorlevel 1 exit 1

copy %SRC_DIR%\build\bin\Release\sdeconv2d.exe %PREFIX%\bin\sdeconv2d.exe
if errorlevel 1 exit 1
copy %SRC_DIR%\build\bin\Release\sdeconv3d.exe %PREFIX%\bin\sdeconv3d.exe
if errorlevel 1 exit 1