
echo off@

SetLocal ENABLEDELAYEDEXPANSION
 
 set PARTY_HOME=%CD%
set MOUDLES_DIR=%PARTY_HOME%\assets\Moudles
set MOUDLEFILE_DIR=%PARTY_HOME%\assets\ModelFile


set ASSETS_DIR=%PARTY_HOME%\assets
set MODELBG=%PARTY_HOME%\assets\BackGround
set PHOTOGUIDE=%PARTY_HOME%\assets\PhotoGuid


set /p forFilename=����Ҫ�����޸ĵ��ļ���ǰ׺
set /p nowFilename=����Ҫ�޸ĳ�ʲô����

 
echo Ҫ���ļ��� %forFilename%  ��Ϊ  %nowFilename%

cd %MOUDLES_DIR%

 rem  ��moudle ������ļ���
 
 for /l %%a in (1 1 9) do ren %forFilename%0%%a\%forFilename%0%%a.jpg %nowFilename%0%%a.jpg
 
 for /l %%a in (1 1 9) do ren "%forFilename%0%%a" "%nowFilename%0%%a"
 
 for /l %%a in (10 1 48) do ren %forFilename%%%a\%forFilename%%%a.jpg %nowFilename%%%a.jpg
 
 for /l %%a in (10 1 48) do ren %forFilename%%%a %nowFilename%%%a
 
 
 

	
	cd %MODELBG%
	rem  �ĵ�background������ļ���
	
 for /l %%a in (1 1 9) do ren %forFilename%0%%a.jpg %nowFilename%0%%a.jpg
 
 for /l %%a in (10 1 48) do ren %forFilename%%%a.jpg %nowFilename%%%a.jpg
 
 
 
 

	if exist %nowFilename% del /f /q %nowFilename%  
	mkdir %nowFilename%
	for /l %%a in (1 1 9) do copy "%nowFilename%0%%a.jpg" "%nowFilename%" 

	for /l %%a in (10 1 48) do copy %forFilename%%%a.jpg %nowFilename% 
	
	del %nowFilename%*.jpg

echo  �Ѿ���ɸ���
CD %PARTY_HOME%

set hour=%time:~0,2% 
set munite=%time:~3,2% 
set d="%date:~0,10% %hour%��%munite%"
set dialogStr=%d%���ʦ���ز�"%forFilename%"����Ϊ"%nowFilename%"

::��־д�������
start WriteDialog.bat !dialogStr! 2
::��־д�뱾��
START WriteClientDialog.bat !dialogStr! 2


goto :eof