@echo off
chcp 936 >nul
title CMD 浏览器
color 3f
set ss=https://cn.bing.com/search?q
mode con: cols=80 lines=20

:main
cls
echo.
echo   CMD 浏览器                                                         (S) 设置
echo ╔══════════════════════════════════════════════════════════════════════════╗
echo ║  常用地址: 1.百度 2.谷歌 3.哔哩哔哩 4.淘宝 5.京东 6.知乎 7.微博 8.必应   ║
echo ║  (在下方搜索框中输入对应序号或直接搜索即可开始使用)                      ║
echo ╚══════════════════════════════════════════════════════════════════════════╝
set /p in=[ 搜索或输入网址 ]: 


if "%in%"=="1" (
    start https://www.baidu.com
    goto main
) else if "%in%"=="2" (
    start https://www.google.com
    goto main
) else if "%in%"=="3" (
    start https://www.bilibili.com
    goto main
) else if "%in%"=="4" (
    start https://www.taobao.com
    goto main
) else if "%in%"=="5" (
    start https://www.jd.com
    goto main
) else if "%in%"=="6" (
    start https://www.zhihu.com
    goto main
) else if "%in%"=="7" (
    start https://www.weibo.com
    goto main
) else if "%in%"=="8" (
    start https://bing.com
    goto main
) else if /i "%in%"=="s" (
    goto settings
) else if "%in%"=="" (
    goto main
) else (
    start %ss%=%in%
    goto main
)

:settings
cls
echo.
echo   设置
echo.
echo  1.更改颜色
echo  2.更改屏幕大小
echo  3.更改搜索引擎
echo  4.退出
echo.
set szCMD=
set /p szCMD=输入序号:
if "%szCMD%"=="1" goto yjms
if "%szCMD%"=="2" goto pmbl
if "%szCMD%"=="3" goto ssyq
if "%szCMD%"=="4" goto main
goto settings

:ssyq
cls
echo.
echo.
echo   更改搜索引擎
echo.
echo  1.百度
echo  2.必应(默认)
echo  3.哔哩哔哩
echo  4.搜狗
echo.
echo.
set ssCMD=
set /p ssCMD=输入序号:
if "%ssCMD%"=="1" set ss=https://www.baidu.com/s?wd
if "%ssCMD%"=="2" set ss=https://cn.bing.com/search?q
if "%ssCMD%"=="3" set ss=https://search.bilibili.com/all?keyword
if "%ssCMD%"=="4" set ss=https://www.sogou.com/sogou?query
pause
goto settings

:yjms
cls
echo.
echo.
echo   更改颜色
echo.
echo  1.深色模式
echo  2.浅色模式(默认)
echo.
echo  3.红底黄字
echo  4.黑客代码主题风格
echo.
echo.
set ztCMD=
set /p ztCMD=输入序号:
if "%ztCMD%"=="1" color 07
if "%ztCMD%"=="2" color 3f
if "%ztCMD%"=="3" color ce
if "%ztCMD%"=="4" color 0a
pause
goto settings

:pmbl
cls
echo.
echo.
echo   更改屏幕大小
echo.
echo  1.较大窗口
echo  2.大窗口
echo  3.宽屏窗口
echo  4.原始比例
echo.
echo.
set pmCMD=
set /p pmCMD=输入序号:
if "%pmCMD%"=="1" mode con: cols=90 lines=25
if "%pmCMD%"=="2" mode con: cols=95 lines=30
if "%pmCMD%"=="3" mode con: cols=120 lines=35
if "%pmCMD%"=="4" mode con: cols=80 lines=20
pause
goto settings