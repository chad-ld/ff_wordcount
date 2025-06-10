@echo off
echo Finding your Firefox profile...

REM Find Firefox profile directory
set "PROFILE_DIR=%APPDATA%\Mozilla\Firefox\Profiles"

REM Look for default profile (usually ends with .default-release)
for /d %%i in ("%PROFILE_DIR%\*.default-release") do (
    set "FIREFOX_PROFILE=%%i"
    goto :found
)

REM If no default-release, look for any .default profile
for /d %%i in ("%PROFILE_DIR%\*.default") do (
    set "FIREFOX_PROFILE=%%i"
    goto :found
)

echo Could not find Firefox profile automatically.
echo Please run: web-ext run --firefox-profile=default
pause
exit /b 1

:found
echo Found profile: %FIREFOX_PROFILE%
echo Starting Firefox with Word Counter extension and your normal extensions...
cd /d "e:\docs\text documents\batch\word_count_firefox"
web-ext run --firefox-profile="%FIREFOX_PROFILE%"
pause
