@echo off
REM 声明采用UTF-8编码
chcp 65001
SetLocal ENABLEDELAYEDEXPANSION

echo '拷贝BackGround目录内的.jpg文件到Moudles目录'
::协议文件输入目录
set RUN_DIR=%CD%\..\assets\BackGround

::协议文件输出目录
set OUTPUT_DIR=%CD%\..\assets\Moudles
if not exist %OUTPUT_DIR% (mkdir %OUTPUT_DIR%)
CD %RUN_DIR%
 FOR %%a in (*.jpg) do ( 
	echo 进入for循环
	set "name=%%a" 
	set "name=!name:.jpg=!" 
	echo name !name!
	mkdir %OUTPUT_DIR%\!name!
	copy !name!.jpg %OUTPUT_DIR%\!name!\
	
 )
 
@pause
exit


