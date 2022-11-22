chcp 65001
@echo off & setlocal enabledelayedexpansion
title publish

echo %1 %2 %3

set debugPath=%CD%\..\public
set releasePath=\\Fuwuqi\服务器3-搜集图片案例\材料包\材料包素材\每日设计材料包
set MOUDLES_DIR=%CD%\..\assets\Moudles
set ASSETS_DIR=%CD%\..\assets
set MODELFILE_DIR=%CD%\..\assets\ModelFile
set MODELBG=%CD%\..\assets\BackGround
set PHOTOGUIDE=%CD%\..\assets\PhotoGuid
::
set name=%1
set isInsetBg=%2
set isInsetPhoto=%3
set fileName=%4
::如果生产环境目录不存在 就是测试目录
if not exist %releasePath%\!name! (set isDebug=true )

echo !isDebug! !name!


if "!isDebug!"=="true" (
 set PUBLIC_DIR=%debugPath%\%name%
) else (
 set PUBLIC_DIR=%releasePath%\%name%
)



echo name ：!name!  isDebug： !isDebug!  isInsetBg：!isInsetBg!  isInsetPhoto： !isInsetPhoto!  fileName： !fileName!


if not exist %PUBLIC_DIR% (mkdir  %PUBLIC_DIR%)
if errorlevel ==1 (goto end)

if "!isInsetBg!"=="true" (
 copy %MOUDLES_DIR%\"!fileName!"\* %OUTPUT_DIR%
 goto end
)

if "!isInsetPhoto!"=="true" (
	goto end
)

:end
 echo end....
pause
exit