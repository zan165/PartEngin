

SetLocal ENABLEDELAYEDEXPANSION
 
 
set /p filename=���������޸ĵ��ļ���ǰ׺
 
echo %filename%
 
 FOR %%a in (*.jpg) do ( 
 
 set "name=%%a" 
 set "name=!name: (=!" 
 set "name=!name:)=!" 
 ren "%%a" "%filename%!name!"

 ) 
 
 
 
 
 pause