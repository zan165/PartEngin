
@echo off & setlocal enabledelayedexpansion


rem ע�������s���壬��ֵ����ʹ��˫������������
rem  also works for comma-separated lists, e.g. ABC,DEF,GHI,JKL
set s=AAA BBB CCC DDD EEE FFF,lists, e.g. ABC,DEF,GHI,JKL
set /a count=0
for %%a in (%s%) do ( 
if !count! equ 0 set "%~2=%%a"
if !count! equ 1 set "%~3=%%a"
if !count! equ 2 set "%~4=%%a"
if !count! equ 3 set "%~5=%%a"
if !count! equ 4 set "%~6=%%a"
set /a count=!count!+1
)
echo %lastSplit0%
exit