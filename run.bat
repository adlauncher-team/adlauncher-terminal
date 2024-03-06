@echo off

rem Check if Node.js is installed
node -v > nul 2>&1
if errorlevel 1 (
    echo Node.js is not installed. Please install Node.js before running this file.
    echo Closing in 15 seconds...
    for /l %%i in (15,-1,1) do (
        echo Closing in %%i seconds...
        ping -n 2 127.0.0.1 > nul
    )
    exit
)

rem Run the file
node .
