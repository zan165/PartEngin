

SetLocal ENABLEDELAYEDEXPANSION
 
 
set /p filename=输入批量修改的文件名前缀
 
echo %filename%
 
 FOR %%a in (*.jpg) do ( 
 
 set "name=%%a" 
 set "name=!name: (=!" 
 set "name=!name:)=!" 
 ren "%%a" "%filename%!name!"

 ) 
 
 
 
 
 pause