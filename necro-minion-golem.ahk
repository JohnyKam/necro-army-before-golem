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

; Exits/close the script
F12::
{
    ExitApp 
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Key bindings and actions

; Key3 - Golem
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


Enter::
{
    global KeyEnterPressed
    KeyEnterPressed := ~KeyEnterPressed

    Send "{Enter}"
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Other functions


; alt + 1 = Numpad1
!1::
{
    Send "{Numpad1}"
}

; alt + 2 = Numpad2
!2::
{
    Send "{Numpad2}"
}

; alt + 3 = Numpad3
!3::
{
    Send "{Numpad3}"
}

; alt + 4 = Numpad4
!4::
{
    Send "{Numpad4}"
}


/*
    AutoSuspendScrip()

    This function checks if the active window title contains the word "Diablo". 
    If it does, the script is enabled, otherwise it is suspended.

    Parameters:
        None

    Returns:
        None
*/
AutoSuspendScrip()
{
    Try
    {
        WindowMatch := WinGetTitle("A")

        WindowMatch := InStr(WindowMatch, "Diablo")
    }
    catch
    {
        WindowMatch := False
    }

    ;OutputDebug("Windows match:" WindowMatch)
    OutputDebug("Windows match:" WindowMatch)
    if (WindowMatch)
    {
        ;OutputDebug("Enable script")
        Suspend False
    }
    else
    {
        ;OutputDebug("Suspending script")
        Suspend True
    }

}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Other functions/tasks running in the background

;; Disable the script when Diablo is not in focus
SetTimer AutoSuspendScrip, 250

;OutputDebug("Script started" WindowMatch)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End of script
