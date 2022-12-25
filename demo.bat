
@echo off & setlocal enabledelayedexpansion


rem 注意这里的s定义，其值不是使用双引号引起来的
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