@echo off
setlocal EnableDelayedExpansion
title Let's Play - Upload to GitHub (130N)
cd /d "%~dp0"
cls

echo ===================================================================
echo               LET'S PLAY - GITHUB UPLOAD WIZARD
echo         PS4 Exploit Host FW 6.00 - 11.02 | Ahmed Elattar
echo ===================================================================
echo.

:: =====================================================================
:: [1] GITHUB REPOSITORY URL CONFIGURATION / اعداد رابط مستودع جيت هب
:: Default suggested repository: https://github.com/LetsPlay-ps/130.git
:: =====================================================================
set "DEFAULT_REPO=https://github.com/LetsPlay-ps/130.git"

echo [?] Enter your GitHub repository URL:
echo     (Press ENTER to use default: %DEFAULT_REPO%)
echo.
set /p "USER_REPO=>> GitHub URL: "

if "%USER_REPO%"=="" (
    set "REPO_URL=%DEFAULT_REPO%"
) else (
    set "REPO_URL=%USER_REPO%"
)

echo.
echo [*] Target Repository: %REPO_URL%
echo.

:: =====================================================================
:: [2] FIND GIT EXECUTABLE
:: =====================================================================
set "GIT_CMD=git"
where git >nul 2>nul
if %errorlevel% neq 0 (
    if exist "C:\Program Files\Git\cmd\git.exe" (
        set "GIT_CMD=C:\Program Files\Git\cmd\git.exe"
    ) else if exist "C:\Program Files (x86)\Git\cmd\git.exe" (
        set "GIT_CMD=C:\Program Files (x86)\Git\cmd\git.exe"
    ) else if exist "%LOCALAPPDATA%\Programs\Git\cmd\git.exe" (
        set "GIT_CMD=%LOCALAPPDATA%\Programs\Git\cmd\git.exe"
    ) else (
        echo [X] Git is not installed or not found in PATH!
        echo.
        echo     Please download and install Git for Windows:
        echo     https://git-scm.com/download/win
        echo.
        pause
        exit /b 1
    )
)

echo [✔] Git found successfully.
echo.

:: =====================================================================
:: [3] GIT INITIALIZATION & STAGING
:: =====================================================================
echo [*] Initializing Git repository...
if not exist ".git" (
    "%GIT_CMD%" init
)

:: Ensure user identity is configured in Git
"%GIT_CMD%" config user.email >nul 2>nul
if %errorlevel% neq 0 (
    "%GIT_CMD%" config user.email "ahmed.elattar@example.com"
    "%GIT_CMD%" config user.name "Ahmed Elattar"
)

echo [*] Staging all files...
"%GIT_CMD%" add .

echo [*] Committing changes...
"%GIT_CMD%" commit -m "Upload Let's Play Host by Ahmed Elattar - PS4 6.00-11.02 Exploit Suite"

echo [*] Setting default branch to main...
"%GIT_CMD%" branch -M main

echo [*] Configuring remote origin...
"%GIT_CMD%" remote remove origin >nul 2>nul
"%GIT_CMD%" remote add origin "%REPO_URL%"

echo.
echo ===================================================================
echo [*] Pushing files to GitHub (Branch: main)...
echo ===================================================================
echo.

"%GIT_CMD%" push -u origin main

if %errorlevel% neq 0 (
    echo.
    echo [!] Standard push failed. Trying with force push (--force)...
    "%GIT_CMD%" push -u origin main --force
)

if %errorlevel% equ 0 (
    echo.
    echo ===================================================================
    echo  [✔] SUCCESS! Project uploaded to GitHub successfully!
    echo  [✔] تم رفع المشروع بنجاح إلى حسابك على جيت هب!
    echo ===================================================================
    echo.
) else (
    echo.
    echo ===================================================================
    echo  [X] Push encountered an issue.
    echo      Please verify your GitHub credentials / Personal Access Token.
    echo ===================================================================
    echo.
)

pause
