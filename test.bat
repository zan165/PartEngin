@echo off 
setlocal enabledelayedexpansion

REM start replace.bat C:\Users\zzq\Desktop\��Ѿ�ɶ�  q 12.12,12.12,xxx,111  �����һ����ַ
echo ˵��������һ��˵������>˵��.txt
echo ����������ȫ��>>˵��.txt
echo ��ַ�����ǵ�ַ����>>˵��.txt
 
pause

exit


:STR_VISTOR

REM ����ÿ��ѭ�����ֵ���������
echo addres =  %address%
echo str0 = %~1
echo str1 = %~2
echo str2 = %~3
echo str3 = %~4
echo str4 = %~5

REM FOR����ǰ��н��б�����Ҳ����һ��һ��ѭ��������������˵��ֻ��һ���ַ�����
REM ���FORѭ���϶�ֻ����һ�Ρ���������Ҫ���ַ������пո�ָ���ٴ��������
REM ����GOTO�����ʵ��ѭ������FOR���ֻ�迴����һ����䣬�������ʵ����������
REM ���ܣ����ַ����ָ����һ���֣�һ�����ǵ�һ���ո�ǰ���ִ�����һ������ʣ���
REM �ִ���tokens=1,*������һ���ֱ����� a �����У��ڶ����ֱ����� b �����У���
REM �� b ���Զ��ġ�
for /f "tokens=1,*" %%a in (%str%) do (
    REM ��������滻���Լ��Ĵ����������ֻ�Ǽ򵥵���ʾֵ
    echo   a = %%a

    REM ��ʣ���ַ�����ֵ��str����
    set str="%%b"

    goto STR_VISTOR
)
