#Requires AutoHotkey v2.0

#Include %A_ScriptDir%\d4-base-ahk\D4Base.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Key bindings

Key1 := "Numpad1"
Key2 := "Numpad2"
Key3 := "Numpad3"
Key4 := "Numpad4"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Key bindings and actions

; Key2 - Corpse Tendrils and Raise Skeleton
2:: 
{
    RandomTimeDelay := Random(100, 150)

    OutputDebug("Corpse Tendrils " RandomTimeDelay)
    ; Cast Corpse Tendrils
    Send "{" Key2 "}"
    Sleep RandomTimeDelay

    RandomTimeDelay := Random(100, 150)

    OutputDebug("Raise Skeleton " RandomTimeDelay)
    ; Cast Raise Skeleton
    Send "{" Key1 "}"
    Sleep RandomTimeDelay
}

; Key3 - Golem and Army of the Dead
3::
{
    global KeyEnterPressed

    RandomTimeDelay := Random(100, 150)

    if (!KeyEnterPressed)
    {
        OutputDebug("Army of the Dead " RandomTimeDelay)
        ; Cast Army of the Dead
        Send "{" Key4 "}"
        Sleep RandomTimeDelay

    }

    RandomTimeDelay := Random(100, 150)
    OutputDebug("Golem " RandomTimeDelay)
    ; Use the Golem
    Send "{" Key3 "}"
    Sleep RandomTimeDelay
}
