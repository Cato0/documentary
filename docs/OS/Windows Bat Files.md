---
id: WindowsBat
title: WindowsBat
sidebar_label: WindowsBat
---

# Loops

...

# Examples

    @echo off

    echo %1

    SET a1 = "."

    if exist %1 echo qwe
    if exist %1 (set/a num=%1+%2)

    echo %num%
    goto :eof



    @echo off
    SET a1=.

    :: comment here

    doskey desk= cd "C:\Users\andre\Desktop\"
    doskey open= start $x

    doskey open1=for %F in ($*) do echo asd

# Alias / Dosfile

1. Create a .bat file and have some Doskey Commands or whatever in it
2. Right Click CMD.exe go to "Properties -> Shortcut -> Target" or "Eigenschaften -> Verknüpfungen -> Ziel"
   1. insert after the current line the PATH of the created Batfile
   2. e.g. %windir%\system32\cmd.exe /K C:\Users\andre\Desktop\batfile.bat
3. Now everytime CMD is called, you start the batfile beforehand, and insert all the Doskey Shortcuts
4. Create "Verknüpfung" for CMD and put the link to Windows-R "Ausführen" Command e.g. "C:\Users\andre\Desktop\cmd.lnk"

## My alias File

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


