@echo off

set /p fname=请输入要回溯的文件夹名：

git restore %fname%


echo 回溯成功

pause