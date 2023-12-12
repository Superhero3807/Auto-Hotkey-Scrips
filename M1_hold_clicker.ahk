#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
Toggle := false  ; Initial state is off

~LButton::  ; Trigger when left mouse button is pressed
    While Toggle and GetKeyState("LButton", "P")  ; Check if the toggle is on and left mouse button is being held down
    {
        Click  ; Simulate a mouse click
        Sleep 50  ; Adjust the sleep time (in milliseconds) to control the click rate
    }
    return

CapsLock::  ; Toggle rapid-fire on/off when CapsLock is pressed
    Toggle := !Toggle
    if (Toggle)
        Tooltip, Rapid-Fire Enabled
    else
        Tooltip, Rapid-Fire Disabled
    SetTimer, RemoveTooltip, 2000  ; Remove the tooltip after 2 seconds
    return

RemoveTooltip:
    SetTimer, RemoveTooltip, Off
    Tooltip
    return
