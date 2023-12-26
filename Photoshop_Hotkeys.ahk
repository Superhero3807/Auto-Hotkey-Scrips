#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

;Undo
Numpad4::
Send ^z 
return
;Select the paint Brush tool
Numpad5::
Send b
return
;Redo
numpad6::
Send ^+z
return
;Moves 1 Layer down
numpad2::
Send !,
return
;Moves 1 Layer up
numpad8::
Send !.
return
;Hide the Current Selected Layer
numpad7::
Send ^.
return
;hold to Drag with the Pen
Numpad0::
    Send, {Space down}
    KeyWait, Numpad0
    Send, {Space up}
return