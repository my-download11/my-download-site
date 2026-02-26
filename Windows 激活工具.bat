@echo off
chcp 936 >nul
title 微软激活工具
color 0f
mode con cols=70 lines=20

:main
cls
echo.
echo    ╔════════════════════════════════════════╗
echo    ║               微软激活工具             ║
echo    ╚════════════════════════════════════════╝
echo.
echo    1. 现在激活 Windows
echo    2. 退出
echo.
set /p in=请选择一个选项:

if %in%==1 goto jihuo
if %in%==2 goto exit
if "%in%"=="" goto main
if %in% neq 1 if %in% neq 2 goto main

:jihuo
cls
echo.
echo    ╔════════════════════════════════════════╗
echo    ║             激活 Windows               ║
echo    ╚════════════════════════════════════════╝
echo.
echo   [1] 一个新的 PowerShell 窗口将会打开。
echo   [2] 在那个窗口, 按: 1 开始激活。
echo.
echo    不要在激活完成之前
echo    关闭那个 PowerShell 窗口。
echo.
echo    按任意键开始激活...
pause >nul
goto jihuo1

:jihuo1
powershell -Command "$ProgressPreference='SilentlyContinue'; irm https://get.activated.win | iex"
goto main

:exit
cls
echo.
echo   按任意键结束这个会话...
echo.
echo.
pause >nul
exit