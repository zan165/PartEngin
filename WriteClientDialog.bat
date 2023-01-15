chcp 65001
@echo off & setlocal
echo %1 %2 %3



set PARTY_HOME=%CD%
set DIALOG_DIR=%PARTY_HOME%\dialog
if not exist %DIALOG_DIR% (mkdir  %DIALOG_DIR%)
if errorlevel == 1 goto end
echo %%2

if '%2'=='2' goto :changeNameLog

:orderLog
if not exist %DIALOG_DIR%\log.txt echo 订单日志：>%DIALOG_DIR%\log.txt
echo %1 >>%DIALOG_DIR%\log.txt

goto :eof


:changeNameLog
if not exist %DIALOG_DIR%\changeLog.txt echo 文件修改日志：>%DIALOG_DIR%\changeLog.txt
echo %1 >>%DIALOG_DIR%\changeLog.txt

goto :eof


:end
exit