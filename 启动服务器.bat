@echo off
echo ========================================
echo     瑞途电子 BI大屏 本地服务器启动
echo ========================================
echo.
echo 正在启动HTTP服务器...
echo 服务器地址: http://localhost:8000
echo 主页地址: http://localhost:8000/index.html
echo BI大屏地址: http://localhost:8000/大屏BI.html
echo.
echo 按 Ctrl+C 停止服务器
echo ========================================
echo.

cd /d "%~dp0"
python -m http.server 8000

pause 