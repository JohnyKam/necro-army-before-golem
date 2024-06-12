#Requires AutoHotkey v2.0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Key bindings

Key1 := "Numpad1"
Key2 := "Numpad2"
Key3 := "Numpad3"
Key4 := "Numpad4"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Time delays

TimeDelayDefault := 100

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global variables

KeyEnterPressed := 0 ; 0 - not pressed, 1 - pressed
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Default key bindings to control script

; Suspends the script
F6::
{
    Suspend
}

; Reloads the script
F8::
{
    Reload
}

F12::
{
    ExitApp 
}

