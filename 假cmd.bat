@echo off
chcp 936 >nul
title C:\Windows\System32\cmd.exe

whoami /groups | findstr /i "S-1-16-12288" >nul
if %errorlevel% == 0 (
    set "PROMPT=C:\Windows\system32"
) else (
    set "PROMPT=C:\Users\%USERNAME%"
)

color 07
cls
echo Microsoft Windows [版本 10.0.19045.6809]
echo (c) Microsoft Corporation。保留所有权利。
echo.

:main
<nul set /p "=%PROMPT%>"
set "cmd="
set /p "cmd="

if "%cmd%"=="" (
    goto main
)

echo '%cmd%' 不是内部或外部命令，也不是可运行的程序
echo 或批处理文件。
echo.
goto main