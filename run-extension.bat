@echo off
echo Starting Firefox with Word Counter extension and your normal extensions...
cd /d "e:\docs\text documents\batch\word_count_firefox"
web-ext run --firefox-profile=default
pause
