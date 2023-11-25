@echo off
setlocal enabledelayedexpansion

set "GIT_DIR=%~dp0\.git"

echo Installing hooks...
rem Create a symlink to the pre-commit script
mklink "%GIT_DIR%\hooks\pre-commit" "..\..\scripts\pre-commit.bat"
if not "%errorlevel%" == "0" (
    echo Failed to create symlink.
    exit /b 1
)

echo Done!
