

SetLocal ENABLEDELAYEDEXPANSION
 
 
set /p filename=输入批量修改的文件名
 
echo %filename%
 
 FOR %%a in (*.jpg) do ( 
 
 set "name=%%a" 
 set "name=!name: (=!" 
 set "name=!name:)=!" 
 ren "%%a" "!name!"

 ) 
 
 for /l %%a in (1 1 9) do ren %filename%%%a.jpg %filename%0%%a.jpg
 
 
 
 pause