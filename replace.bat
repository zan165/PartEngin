@echo off
setlocal enabledelayedexpansion

set path=%1
set desc=%2
set addr=%3
REM cd %path%
for /f "delims=" %%i in ('dir /b "%path%说明.txt"') do (
for /f "skip=2 delims=" %%a in ('find /v "%%" "%%i"') do (
set "word1=%%a"
set "word1=!word1:地址：=地址：%addr%!"
set "word2=!word1!"
set "word2=!word2:发货：=发货：背景全套!"
set "word3=!word2!"
set "word3=!word2:说明：=说明：%desc%!"
echo,!word3! >>"%%~ni_tmp.txt"
)
del "%%i" /f /q
ren "%%~ni_tmp.txt" "%%i"
)
pause