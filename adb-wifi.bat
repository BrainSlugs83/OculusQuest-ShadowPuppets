@echo off
pushd "%~dp0%"
if exist ".\set-serial.bat" del ".\set-serial.bat"
powershell ".\adb-wifi.ps1"
if exist ".\set-serial.bat" call ".\set-serial.bat"
popd
exit /b 0