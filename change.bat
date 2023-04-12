echo off@
SetLocal ENABLEDELAYEDEXPANSION
 
 set PARTY_HOME=%CD%
set MOUDLES_DIR=%PARTY_HOME%\assets\Moudles
set MOUDLEFILE_DIR=%PARTY_HOME%\assets\ModelFile


set ASSETS_DIR=%PARTY_HOME%\assets
set MODELBG=%PARTY_HOME%\assets\BackGround
set PHOTOGUIDE=%PARTY_HOME%\assets\PhotoGuid


echo 把png后缀的图片  改为 jpg后缀
cd %MODELBG%

 FOR %%a in (*.png) do ( 
	echo 进入for循环
	set "name=%%a" 
	set "name=!name:.png=!" 
	echo name !name!
	ren !name!.png !name!.jpg
	
 )
 
 cd %MOUDLES_DIR%
 
 for /d %%i in (*) do ren %%i\%%i.png %%i.jpg
	
	
 )
pause