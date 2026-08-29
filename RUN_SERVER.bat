@echo off
title Let's Play Host - Server Launcher (130N)
cd /d "%~dp0"
cls

echo ===================================================================
echo               LET'S PLAY - PS4 EXPLOIT HOST (130N)
echo         Supporting PS4 Firmwares 6.00 - 11.02 | Ahmed Elattar
echo ===================================================================
echo.
echo Starting local HTTP server for PS4...
echo.

where python >nul 2>nul
if %errorlevel% equ 0 (
    python server.py
    goto end
)

where py >nul 2>nul
if %errorlevel% equ 0 (
    py server.py
    goto end
)

echo [!] Python was not found in PATH!
echo [!] Trying fallback python executable...
if exist "C:\Python312\python.exe" (
    "C:\Python312\python.exe" server.py
    goto end
)

if exist "C:\Program Files\Python312\python.exe" (
    "C:\Program Files\Python312\python.exe" server.py
    goto end
)

echo [X] Python is required to run the local server.
echo     Please install Python from https://www.python.org/
echo.
pause

:end
