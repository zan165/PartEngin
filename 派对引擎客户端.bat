chcp 936
@echo off & setlocal
::echo 本软件由evche编制 如果有问题请联系：WX：qian_cn_Sc


:coustum
setlocal enabledelayedexpansion


::订单时间
set d =
::布置时间
set s =
::收货人
set r =
::是否为调试模式
set isDebug=true



:setRunDir


set debugPath=%CD%\..\public
set PARTY_HOME=%CD%
set releasePath=\\Fuwuqi\服务器3-搜集图片案例\材料包\材料包素材\每日设计材料包
set MOUDLES_DIR=%PARTY_HOME%\assets\Moudles
set MOUDLEFILE_DIR=%PARTY_HOME%\assets\ModelFile


set ASSETS_DIR=%PARTY_HOME%\assets
set MODELBG=%PARTY_HOME%\assets\BackGround
set PHOTOGUIDE=%PARTY_HOME%\assets\PhotoGuid


set pName=阿千
::如果生产环境目录不存在 就是测试目录
::if not exist %releasePath%\!pName! (set isDebug=true )
set isDebug=false
echo !isDebug! !pName!



if "!isDebug!"=="true" (
 set PUBLIC_DIR=%debugPath%\%pName%
) else (
 set PUBLIC_DIR=%releasePath%\%pName%
)

if not exist !PUBLIC_DIR! (mkdir  !PUBLIC_DIR!)
if errorlevel == 1 goto end


:init

set month=%date:~5,2%
set day=%date:~8,2%
set d=%month%.%day%

echo 当前日期是 %d% 

set /p totalPrice=总价：

set /p  s= 发货时间,布置时间： 
echo 发货时间,布置时间： %s%


set /p custum=请输入收货人姓名：

set fname="%s%,收货人：%custum%"

echo %fname%

echo !PUBLIC_DIR!\%fname%

if not exist !PUBLIC_DIR!\%fname% (mkdir !PUBLIC_DIR!\%fname%)


::if not exist !PUBLIC_DIR!\%fname%\说明.txt  (copy %MOUDLEFILE_DIR%\_.txt !PUBLIC_DIR!\%fname%\说明.txt )
::减少判断 增加效率
copy %MOUDLEFILE_DIR%\_.txt !PUBLIC_DIR!\%fname%\说明.txt


set dialogStr=%pName%————%d%_%fname%


::协议文件输出目录
set OUTPUT_DIR= !PUBLIC_DIR!\%fname%
if not exist %OUTPUT_DIR% (goto end)

:insert_bg_picLoop
set /p isInsertBg=请输入背景编码,输入0退出，输入1照片牌，输入2 定制款
if /i '!isInsertBg!'=='0' goto toEnd
if /i '!isInsertBg!'=='1' goto pictureLoop
if /i '!isInsertBg!'=='2' goto uniqueBg
	echo 准备拷贝 "%isInsertBg%"
	
if exist %MOUDLES_DIR%\"%isInsertBg%" (
	echo 开始拷贝
	::
	REM start publish.bat %pName% %fname% true false %MOUDLES_DIR%\"%isInsertBg%"\*
	copy %MOUDLES_DIR%\"%isInsertBg%"\* %OUTPUT_DIR%
	echo 拷贝完成,按任意键退出

	set dialogStr=!dialogStr!%isInsertBg%
)
goto insert_bg_picLoop

:uniqueBg
	set dialogStr=!dialogStr!-定制背景-
	
	echo dialogStr：：  !dialogStr!
	pause
	goto toEnd

:pictureLoop

set /p isInsertPic=请输入照片牌编码,输入0推出
if /i '!isInsertPic!'=='0' goto toEnd

	echo %PHOTOGUIDE%\%isInsertPic%.jpg
if exist %PHOTOGUIDE%\%isInsertPic%.jpg (
	echo 开始拷贝
	::
	copy %PHOTOGUIDE%\%isInsertPic%.jpg %OUTPUT_DIR%
	echo 拷贝完成,按任意键退出
	set dialogStr=!dialogStr!-%isInsertPic%-
)


goto pictureLoop

:toEnd

set dialogStr=!dialogStr!XXX%totalPrice%
start explorer !PUBLIC_DIR!\%fname%
::日志写入服务器
start WriteDialog.bat !dialogStr!  
::日志写入本地
START WriteClientDialog.bat !dialogStr!  




 
:end
 
echo Good-bye!
 
  
endlocal & @echo on


