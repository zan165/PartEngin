@echo off
title batʵ�ֵ�������� code by ���̲�
::===============================================================================
::================================���������=====================================
:================================================================================
set hideform=False
::���������Ƿ�����bat����,������뽫"set hideform=False"�ĳ�"set hideform=True"����.(���鲻Ҫ�����͸�,��Ϊ������Ҫ����Ч����~)
set "message=����������"
::�Ի�����Ҫ��ʾ������
set "title=������"
::�Ի���ı���
set "note=�ҳɹ���"
::������е�����ע��[����һ��Ϊ��(set "note="),���Ǹ�����,����Ū���˵��ַ�.]
:===============================================================================
:===============================================================================
if /i "%hideform%"=="True" (
if "%1"=="h" goto begin
mshta vbscript:createobject^("wscript.shell"^).run^("%~nx0 h",0^)^(window.close^)&&exit
)
:begin
set "vbs=%Temp%\GotUserInputedDataProgram.vbs"
set "data=%Temp%\UserInputedData.tmp"
::====================================
::=========��ʼԤ�öԻ���=============
::====================================
if exist "%vbs%" del /s /q /f "%vbs%">nul
::delete file
echo On Error Resume Next>>"%vbs%"
echo Dim fso,wri,data,file>>"%vbs%"
echo Set fso=Wscript.CreateObject^("Scripting.FileSystemObject"^)>>"%vbs%"
echo file="%data%">>"%vbs%"
echo if fso.FileExists^(file^) Then fso.DeleteFile^(file^)>>"%vbs%"
echo Set wri=fso.CreateTextFile^(file,True^)>>"%vbs%"
echo data=InputBox^("%message%","%title%","%note%"^)>>"%vbs%"
echo wri.Write data>>"%vbs%"
echo wri.Close>>"%vbs%"
echo Set fso=Nothing>>"%vbs%"
echo Set op=Nothing>>"%vbs%"
echo fso.DeleteFile^(Wscript.ScriptFullName^)>>"%vbs%"
echo Wscript.Quit>>"%vbs%"
::Write down visual basic script file to temp folder.Let it put user inputed data bring here.
::====================================
::====================================
::����д��Ĵ���
::====================================
::====================================
call "%vbs%"
for /f "delims=" %%i in (%data%) do set "content=%%i"
if exist "%vbs%" del /s /q /f "%data%">nul
if exist "%vbs%" del /s /q /f "%vbs%">nul
::��ʼ�����Ի���
::==============================================================================
::=====�Ǻ�~���ݻ�ȡ�ɹ�!�û������ڶԻ�������ݻᱻ�����ڱ���"%content%"��~=====
::==============================================================================
echo ����������������������"%content%",��ô��,������?
::==============================================================================
::==============================================================================
pause>nul