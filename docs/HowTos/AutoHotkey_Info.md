---
id: AutoHotkey
title: AutoHotkey
sidebar_label: AutoHotkey
---

# AutoHotkey


## Commands

    ^j::
    Send, #r
    Send, C:\Users\andre\Desktop\cmd.lnk
    Send, `n
    return

### Use F-Keys

   Send {F5}

## Keys


Windows     = #
Enter       = `n
Space       =  {Space}
Alt         = !
Shift       = +
Ctrl        = ^
Tab         = `t  ; {Tab}
Left Button = {LButton}

Numpad0
Numpad1

Numpad0 & Numpad1:: = Numpad1 während Numpad0 gedrückt gehalten wird

## On Input

::asd::     => when you type asd, delete it and do something

## Functions

AltTab()
{
   Send, !`t 
}

Msg(a)
{
   MsgBox %a%
}

## Loops

    Loop 3 {
        Send {Space}
    }

    Loop
    {
        if (A_Index > 25)
            break  ; Terminate the loop
        if (A_Index < 20)
            continue ; Skip the below and start a new iteration
        MsgBox, A_Index = %A_Index% ; This will display only the numbers 20 through 25
    }

## Useful If Statemants

### If Num Key is Active

#if (GetKeyState("NumLock", "T"))
^+r::
    AltTab()
    Sleep 100
    send {F5}
    AltTab()
    Return

#If

- wichtig:
  - Klammern um die Funktion
    - #If darunter bedeuted das alles was darunter kommt ohne diese If Bedingung gilt


### If Window ...

IfWinExist cmd
{
    WinActivateBottom, cmd
}

#IfWinActive, cmd


#### Different Window Names:

cmd
Mozilla Firefox
...


## Gui

    ...

## Other Useful Stuff

    ; Gui where you can call Functions
    #w::
    {
        Gui, New
        Gui, Add, Text,, Function
        Gui, Add, Edit, vFunction
        Gui, Add, Button, Default gOK, OK
        Gui, Show
        return
        OK:
        Gui, Submit
        %Function%()
        return
    }
