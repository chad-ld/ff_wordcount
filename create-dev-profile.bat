@echo off
echo Creating Firefox development profile...
firefox -CreateProfile "WordCounterDev"
echo.
echo Profile created! Now you can:
echo 1. Run: firefox -P WordCounterDev
echo 2. Install your extension once in this profile
echo 3. It will persist in this profile
echo.
pause
