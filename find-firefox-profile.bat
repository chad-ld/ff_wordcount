@echo off
echo Finding your Firefox profiles...
echo.

set "PROFILE_DIR=%APPDATA%\Mozilla\Firefox\Profiles"

if not exist "%PROFILE_DIR%" (
    echo Firefox profiles directory not found at: %PROFILE_DIR%
    pause
    exit /b 1
)

echo Firefox profiles found:
echo.
dir "%PROFILE_DIR%" /b /ad

echo.
echo Copy one of the profile folder names above and use it in the batch file.
echo Example: web-ext run --firefox-profile="C:\Users\YourName\AppData\Roaming\Mozilla\Firefox\Profiles\xxxxxxxx.default-release"
echo.
pause
