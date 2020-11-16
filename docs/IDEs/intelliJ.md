---
id: intelliJ
title: intelliJ
sidebar_label: intelliJ
---

# Commands

## Change Keymap

> File -> Settings -> Keymap

## Kompilieren

- Edit Run / Debugger Configurations ändern
-> Edit Configurations:
    - "+" dann Maven
        - Working Directory auswählen
        - Command Line: "clean, install"

## Build

Richtiges Maven Projekt auswählen und was zu tun ist
e.g. ltg-web-mvc [clean, install]
dann auf "Play"-Pfeil für einen "Run"

1. ltg-parent
2. ltg-web-mvc
3. _ltg_debug.bat wieder starten

## Debugger

- Umschalt + F9 (oben rechts der Käfer)
- nächster Schritt F8
- zum nächsten Breakpoint F9

Debug configurations auf "Unnamed" setzen, bevor der Debugger gestarttet werden kann

### My Changes

1. git Pull
> Ctrl + P

2. something else


## Unit Tests

LTG-mvc Example:
- e.g. RaffleComponentTest
- links am Code neben der Klasse: Run Tests
    - Tests können auch einzeln gestartet werden
    - 
- wenns nicht funktioniert vllt. vorher einen pull machen

## Favorites

### Add to Favorites

    Shift + Alt + F

### Open Favorite

    Alt + 2

### Delete From Favorite List

    Click on the - in the Favorites Toolbar

## Shortcuts

Importieren
> Alt + Enter und mit der Maus drüber

Open Recent Files
> Ctrl + E

Suche File
> Shift+Shift

Volle Suche, nach Text in Files
> Ctrl + Shift + F

Project Structure Setting
>Strg + Shift + alt + s

Go To Decleration
>Ctrl + Click

Next / Previous Tab
> Alt + left / right

Comment Line
> Ctrl + /
> Ctrl + 7

Show where a Function is called
> Ctrl + Alt + F7


Beautify Code
> Strg + Alt + L
- benötigt ein infocus Schema XML, was in Confluence heruntergeladen werden kann
- https://confluence.adesso.de/display/LOT/in%7CFOCUS+Code-Konventionen
    - download "infocus_vX_javadoc.xml"


Zeile dublizieren
> Strg + D

Go to Decleration

> Strg + Alt + B

## Git

## Usual Push Pattern

0. Ctrl + P
1. Ctrl + K
2. Ctrl + Enter
3. Ctrl + Shift + K
4. Ctrl + Enter


Git pull
> VCS -> Git -> Fetch / Pull

Git push
> Ctrl + Shift + K

Git commit
> Ctrl + K
