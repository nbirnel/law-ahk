InputBox, repeats, How many prefixs?, How many times would you like to prefix?,,,,,,,,1
InputBox, number, Start number, What is your start number?,,,,,,,,0

;FIXME - this "prefunk" section is if we have clicked on the entry - 
; it should only be done if a cursor is blinking
    WinWait, Search Results, 
    IfWinNotActive, Search Results, , WinActivate, Search Results, 
    WinWaitActive, Search Results, 
    Sleep, 100
    Send, {F2}

Loop, %repeats%
{
    fnumber := SubStr("0000000000" . number, -1)

    WinWait, Search Results, 
    IfWinNotActive, Search Results, , WinActivate, Search Results, 
    WinWaitActive, Search Results, 
    Sleep, 100

;FIXME see above for the first F2. Fail if cursor not blinking (eg,
;we just finished one of these loops, or the field is blank. 
    Send, {F2}{F2}{Left}
    Send, %fnumber%_
    Send, {Down}
    Sleep, 100

    number := number + 1
}

    
