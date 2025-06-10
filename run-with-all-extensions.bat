@echo off
echo Starting Firefox with Word Counter extension and all your normal extensions...
cd /d "e:\docs\text documents\batch\word_count_firefox"

echo.
echo Trying method 1: Using default profile...
web-ext run --firefox-profile=default 2>nul
if %errorlevel% equ 0 goto :success

echo.
echo Method 1 failed. Trying method 2: Keep existing Firefox open...
web-ext run --keep-profile-changes
if %errorlevel% equ 0 goto :success

echo.
echo Method 2 failed. Trying method 3: No profile isolation...
web-ext run --no-reload
if %errorlevel% equ 0 goto :success

echo.
echo All methods failed. Opening with new profile (your extension only)...
web-ext run

:success
pause
