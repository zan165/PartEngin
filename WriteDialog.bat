chcp 65001
@echo off & setlocal
echo %1 %2 %3



set PARTY_HOME=\\Fuwuqi\服务器3-搜集图片案例\材料包\豆丫派对
set DIALOG_DIR=%PARTY_HOME%\dialog
if not exist %DIALOG_DIR% (mkdir  %DIALOG_DIR%)
if errorlevel == 1 goto end


if not exist %DIALOG_DIR%\log.txt echo 订单日志：>%DIALOG_DIR%\log.txt
echo %1 >>%DIALOG_DIR%\log.txt

exit