@echo off
REM 声明采用UTF-8编码
chcp 65001
echo '拷贝输入目录内的文件到输出目录'
::协议文件输入目录
set RUN_DIR=%1

::协议文件输出目录
set OUTPUT_DIR=%2

set FILE_NAME=%3

if not exist %RUN_DIR% (echo 输入目录不存在 && goto end)
if not exist %OUTPUT_DIR% (echo 输出目录不存在 && goto end)
if not exist %RUN_DIR%\%FILE_NAME% (echo 文件不存在 && goto end)
if exist %OUTPUT_DIR%\%FILE_NAME% (echo 文件已存在 && goto end)


::拷贝文件到输出目录
copy %1\%3 %2
echo 拷贝完成

:end

