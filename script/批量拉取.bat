@echo off
setlocal enabledelayedexpansion

git init

git remote add origin git@gitee.com:disliland/aqian.git

:loop
set /p fname=Ҫ��ȡ���ļ�����

if /i '!fname!'=='0' goto :eof

git pull origin !fname%!

goto :loop

 