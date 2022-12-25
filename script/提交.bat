

git init

git remote add origin git@gitee.com:disliland/aqian.git

git pull origin master

set /p fname=要更新的文件名：

if not exist %CD%\%fname% (echo 文件不存在  
goto :eof
)
git branch  %fname%
git checkout %fname%

git add %fname%/

git commit -m "修改 %fname%"


git push origin %fname%
pause
goto :eof
