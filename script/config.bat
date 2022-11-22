chcp 65001
@echo off & setlocal
echo ≈‰÷√Œƒº˛


:setRunDir

set PUBLIC_DIR=%CD%\..\public\∞¢«ß
set ASSETS_DIR=%CD%\..\assets
set MODELFILE_DIR=%CD%\..\assets\ModelFile

if not exist %PUBLIC_DIR% (mkdir  %PUBLIC_DIR%)

if errorlevel == 1 goto end

:end