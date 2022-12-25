@echo off 
setlocal enabledelayedexpansion

REM start replace.bat C:\Users\zzq\Desktop\豆丫派对  q 12.12,12.12,xxx,111  这个是一个地址
echo 说明：这是一行说明内容>说明.txt
echo 发货：背景全套>>说明.txt
echo 地址：这是地址内容>>说明.txt
 
pause

exit


:STR_VISTOR

REM 看看每次循环后的值，便于理解
echo addres =  %address%
echo str0 = %~1
echo str1 = %~2
echo str2 = %~3
echo str3 = %~4
echo str4 = %~5

REM FOR语句是按行进行遍历，也就是一行一次循环，对于我们来说，只有一行字符串，
REM 这个FOR循环肯定只进入一次。而我们是要对字符串进行空格分割后再处理。因此这
REM 里用GOTO语句来实现循环。而FOR语句只需看成是一条语句，这条语句实现了这样的
REM 功能：将字符串分割成两一部分，一部分是第一个空格前的字串，另一部分是剩余的
REM 字串（tokens=1,*）。第一部分保存在 a 变量中，第二部分保存在 b 变量中，这
REM 个 b 是自动的。
for /f "tokens=1,*" %%a in (%str%) do (
    REM 这里可以替换成自己的处理程序，现在只是简单地显示值
    echo   a = %%a

    REM 将剩余字符串赋值给str变量
    set str="%%b"

    goto STR_VISTOR
)
