:: How To:

:: 1. Create a .bat file and have some Doskey Commands or whatever in it
:: 2. Right Click CMD.exe go to "Properties -> Shortcut -> Target" or "Eigenschaften -> Verknüpfungen -> Ziel"
::   1. insert after the current line the PATH of the created Batfile
::   2. e.g. %windir%\system32\cmd.exe /K C:\Users\andre\Desktop\batfile.bat
:: 3. Now everytime CMD is called, you start the batfile beforehand, and insert all the Doskey Shortcuts
:: 4. Set the link to Windows-R "Ausführen" Command e.g. "C:\Users\andre\Desktop\cmd.lnk"

@echo off

REM :app
REM 	REM echo "Test"

:: my personal Doskeys

:: TODO Change Username
SET username=%USERNAME%

:: Variables

SET desk=C:\Users\%username%\Desktop\
SET files=C:\Users\%username%\Desktop\Files
SET workspaces=C:\Users\%username%\Desktop\Files\Workspaces
SET my=C:\Users\%username%\Desktop\myProjects\myGithub
SET doc=C:\Users\%username%\Desktop\myProjects\documentary
SET ent=C:\Entwicklung
SET projekte=C:\Projekte
SET myprojects=C:\Users\%username%\Desktop\myProjects\
SET angular=C:\Users\%username%\Desktop\myProjects\angularTestApp
SET uni=C:\Users\%username%\Desktop\myProjects\diatlogbot-vr-pepper\Code
SET master=C:\Users\%username%\Desktop\myProjects\masterarbeit
SET now=C:\Projekte\relaunch-portal-sourcen\
SET test=C:\Users\%username%\Desktop\myProjects\


:: Create Script for my documentary to automatically add the header to Files and insert them into my doc Folder


:: TODO
:: Create Loop and put every variables into an array


:: Doskeys

doskey push="git add --all && git commit -m 'qwe' && git push"

doskey desk= cd %desk%

doskey files= cd %files%
doskey workspaces= cd %workspaces%
doskey spaces= cd %workspaces%

doskey my= cd %my%
doskey myGithub= cd %my%

doskey doc= cd %doc%
doskey documentary= cd %doc%

doskey ent= cd %ent%
doskey env= cd %ent%

doskey projekt= cd %projekte%
doskey projekte= cd %projekte%
doskey project= cd %projekte%
doskey projects= cd %projekte%

doskey myProjects= cd %myProjects%
doskey angular= cd %angular%
doskey uni= cd %uni%
doskey master= cd %master%
doskey now= cd %now%

REM doskey firefox= start firefox -p default-release							
REM doskey firefox2= start firefox -p myProfile							
REM doskey firefox3= start firefox							
REM doskey test1= start C:\Users\%username%\Desktop\new.txt

doskey firefox= start C:\Users\%username%\Desktop\firefox.lnk
doskey firefox2= start C:\Users\%username%\Desktop\Files\settings.lnk

:: Other useful shortkeys, linux inspired

doskey ls= dir
doskey .= cd .
doskey ..= cd ..
doskey ...= 'cd ..; cd ..'
doskey open= start $1
doskey mkfile= copy NUL $1.$2
doskey py= python $1

REM doskey firefox2= start "C:\Program Files\Mozilla Firefox\firefox.exe" -p default-release							
REM doskey firefox3= start C:\Program Files\Mozilla Firefox\firefox.exe -p myProfile						
REM doskey chrome2= start "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome"


:: Other

:: doskey gac= "git add . && git commit -a -m "
:: doskey overwrite = echo "Test">> "C:\Users\%username%\Desktop\batfile2.bat"
:: doskey ov = call :app    



REM TEMPORARY WORK STUFF

doskey ltg= cd "C:\Projekte\LTG"
doskey relaunch= cd "C:\Projekte\relaunch-portal-sourcen"

doskey cy= cd "D:\Projekte\homepage-test-cypress"
doskey cy1= npx cypress run --spec ./cypress/integration/$1                     REM Use it:  cy1 Account/meinKonto.spec.js
doskey cyg= npm run e2e:dev --env configFile=wl-infocus-test01.test-server.ag   
