@echo off
REM ��������UTF-8����
SetLocal ENABLEDELAYEDEXPANSION

echo '����BackGroundĿ¼�ڵ�.jpg�ļ���MoudlesĿ¼'
::Э���ļ�����Ŀ¼
set RUN_DIR=%CD%\..\assets\BackGround

::Э���ļ����Ŀ¼
set OUTPUT_DIR=%CD%\..\assets\Moudles
if not exist %OUTPUT_DIR% (mkdir %OUTPUT_DIR%)
CD %RUN_DIR%
 FOR %%a in (*.jpg) do ( 
	echo ����forѭ��
	set "name=%%a" 
	set "name=!name:.jpg=!" 
	echo name !name!
	mkdir %OUTPUT_DIR%\!name!
	copy !name!.jpg %OUTPUT_DIR%\!name!\
	
 )
 
@pause
exit


