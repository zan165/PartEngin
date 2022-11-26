@echo off


set background=%CD%\..\assets\BackGround

if not exist %background% mkdir %background%

cd %CD%\..\assets\Moudles

for /d %%i in (*) do copy %%i\%%i.jpg %background%

pause