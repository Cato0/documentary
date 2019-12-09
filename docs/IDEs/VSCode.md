---
id: VSCode
title: VSCode
sidebar_label: VSCode
---

# Extensions

- Markdown All in One
- Code Runner
    - Edit the "Code-runner, executerMap" to change python version
    - e.g. "C:\\Users\\nisys\\Anaconda3\\envs\\py37\\python.exe"
- Debugger
- Python
- C/C++
- vscode-icons
- Beautify
- Live Server
- Live Sass Compiler
- Linting Tool

# Location

Mac:
- /Users/akonhardt/Applications/Visual Studio Code.app


# Shortcuts

Start from Command Line:
> code

> File  -> Preferences   -> Keyboard Shortcuts
> Datei -> Einstellungen -> Tastenkombinationen

- Strg + P   = Suche nach Datei
- Strg + Shift + P   = Input Feld

- Strg + ,   = Option

## Beautify Code

- Shift + Alt + F

## Comment (Auskommentieren)

- Toggle Line Comment
- Toggle Block Comment

Mac:
    Shift + Cmd + 7

Windows:

Other:

    Shift + Alt + A

## Multiline Editing

Windows:
- Ctrl + Shift + Up
- Ctrl + Alt + Up ??? old ???

Mac:
- Opt + Cmd + Up

## Settings - Meine Änderungen

- View: Open next Editor in Group               =>  Ctrl + Tab          vorher: Ctrl + Page Up   
- View: Open previous Editor in Group           =>  Ctrl + Shift + Tab  vorher: Ctrl + Page Down

- next used Editor in Group => Ctrl + Page Up       vorher: Ctrl + Tab  
- prev used Editor in Group => Ctrl + Page Down     vorher: Ctrl + Shift + Tab  

- Toggle Line Comment -> Ctrl + 7

- Line Wrapping (Commonly Used)

# Python

- "python.pythonPath": "C:\\Users\\Andre\\Anaconda3\\python.exe",

# Java

https://stackoverflow.com/questions/44618941/javac-is-not-recognized-as-an-internal-or-external-command-operable-program-o

1. java.home in den Einstellungen ändern in Code Run (einfach nach java.home suchen)
    - "java.home": "C:\\Program Files (x86)\\Java\\jdk1.8.0_121"
2. Umgebungsvariable PATH ändern
    - C:\Program Files (x86)\Java\jdk1.8.0_121\bin

# C++

https://www.youtube.com/watch?v=DIw02CaEusY

wenn die a.exe nicht gestartet wird und dabei ein Fehler auftritt:
- Visual Studio Code neu starten evtl. als Admin