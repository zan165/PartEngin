

git init

git remote add origin git@gitee.com:disliland/aqian.git

git pull origin master

set /p fname=Ҫ���µ��ļ�����

if not exist %CD%\%fname% (echo �ļ�������  
goto :eof
)
git branch  %fname%
git checkout %fname%

git add %fname%/

git commit -m "�޸� %fname%"


git push origin %fname%
pause
goto :eof
