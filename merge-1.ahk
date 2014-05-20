InputBox, repeats, How many merges?, How many times would you like to merge?,,,,,,,,1

Loop, %repeats%
{
WinWait, LAW PreDiscovery, 
IfWinNotActive, LAW PreDiscovery, , WinActivate, LAW PreDiscovery, 
WinWaitActive, LAW PreDiscovery, 
Sleep, 100

Send, {SHIFTDOWN}{DOWN}{SHIFTUP}
Sleep, 900
SendInput, {CTRLDOWN}m{CTRLUP}
Sleep, 100

WinWait, Merge Documents, 
IfWinNotActive, Merge Documents, , WinActivate, Merge Documents, 
WinWaitActive, Merge Documents, 
Sleep, 100
Send, {ENTER}

WinWait, LAW PreDiscovery, 
IfWinNotActive, LAW PreDiscovery, , WinActivate, LAW PreDiscovery, 
WinWaitActive, LAW PreDiscovery, 
Sleep, 100

Send, {DOWN}
Sleep, 100
}
