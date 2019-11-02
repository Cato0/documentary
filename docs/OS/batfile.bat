@echo off

:app
	echo "Test"

doskey desk= cd "C:\Users\andre\Desktop\"
doskey ls= dir
doskey .= cd .
doskey ..=cd ..
doskey open= start $1
doskey my= cd "C:\Users\andre\Desktop\myGithub"
doskey now= cd "C:\Users\andre\Desktop\diatlogbot-vr-pepper\Code"
doskey now1= cd "C:\Users\andre\Desktop\Github\cssTest"
doskey now2= cd "C:\Users\andre\Desktop\angularTestApp"

:: doskey gac= "git add . && git commit -a -m "

:: doskey overwrite = echo "Test">> "C:\Users\andre\Desktop\batfile2.bat"
:: doskey ov = call :app

:: music
:: sc2
:: hearthstone
:: 
