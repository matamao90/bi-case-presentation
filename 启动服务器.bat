@echo off
chcp 65001 >nul
echo ========================================
echo     RUITECH BI Dashboard Server
echo ========================================
echo.
echo Starting HTTP Server...
echo Server Address: http://localhost:8000
echo Main Page: http://localhost:8000/index.html
echo BI Dashboard: http://localhost:8000/大屏BI.html
echo Industrial Dashboard: http://localhost:8000/工业大屏.html
echo.
echo Press Ctrl+C to stop server
echo ========================================
echo.

cd /d "%~dp0"
python -m http.server 8000

pause 