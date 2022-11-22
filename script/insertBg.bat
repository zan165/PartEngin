chcp 65001
@echo off & setlocal
echo 注入背景
setlocal enabledelayedexpansion

set PUBLIC_DIR=%CD%\..\public\阿千
set ASSETS_DIR=%CD%\..\assets
set MODELBG_DIR=%CD%\..\assets\BackGround
set OUTPUT_PATH = %1


echo %1
echo %2
echo  OUTPUT_PATH %OUTPUT_PATH%
if /i '%2'=='KTLHBB16' (

echo  开始注入 
copy %MODELBG_DIR%\"O1CN01ztneOK21WNzfB5qQb66976992.jpg" %1

)

echo  注入结束

:end

