---
id: Windows
title: Windows
sidebar_label: Windows
---

# Terminal (Command Line)

- start .

# Create .bat File

# Create Environmental Variable


# Aliases

@echo off

:: Temporary system path at cmd startup

set PATH=%PATH%;"C:\Program Files\Sublime Text 2\"

:: Add to path by command

DOSKEY add_python26=set PATH=%PATH%;"C:\Python26\"
DOSKEY add_python33=set PATH=%PATH%;"C:\Python33\"

:: Commands

DOSKEY ls=dir /B
DOSKEY sublime=sublime_text $*  
    ::sublime_text.exe is name of the executable. By adding a temporary entry to system path, we don't have to write the whole directory anymore.
DOSKEY gsp="C:\Program Files (x86)\Sketchpad5\GSP505en.exe"
DOSKEY alias=notepad %USERPROFILE%\Dropbox\alias.cmd

:: Common directories

DOSKEY dropbox=cd "%USERPROFILE%\Dropbox\$*"
DOSKEY research=cd %USERPROFILE%\Dropbox\Research\


C:\Projekte\LTG\ltg-core-legacy\sourcen-core\libs\core\bankcode.jar


# Shortkeys

- Win + D = Desktop
- Win + P = Projektor
- Strg + Alt + Up+Up / Down + Down = Turn screen up side down