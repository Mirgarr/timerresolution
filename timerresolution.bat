@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)
setlocal
set "url=https://github.com/Mirgarr/timerresolution/raw/main/TimerResolution.exe"
set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "outputFile2=%startupFolder%\TimerResolution.exe"

powershell -command "Invoke-WebRequest -Uri '%url%' -OutFile '%outputFile2%'"

start "" "%outputFile2%"

endlocal
exit
