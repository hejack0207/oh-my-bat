#SingleInstance force

; #include %A_ScriptDir%\clipjump
; #include Clipjump.ahk

RunAsAdmin(Fullpath){
    ;~ RunAs, Administrator, 123qwe!@#
    ;~ Run, %Fullpath%
    ;~ RunAs  ; Reset to normal behavior.
    Run,*RunAs %Fullpath%
}

StartProgram(ProgramName,ProgramFullPath, AsAdmin){
    if WinExist("ahk_exe " . ProgramName){
        WinActivate, ahk_exe %ProgramName%
    }else{
        if (AsAdmin) {
            RunAsAdmin(ProgramFullPath)
        } else {
            Run, %ProgramFullPath%
        }
    }
    return
}

StartWindow(WinClass, ProgramFullPath, AsAdmin){
    if WinExist("ahk_class " . WinClass){
        WinActivate, ahk_class %WinClass%
    }else{
        if (AsAdmin) {
            RunAsAdmin(ProgramFullPath)
        } else {
            Run, %ProgramFullPath%
        }
    }
    return
}

; autohotkey
!^r::Reload ; Assign Ctrl-Alt-R as a hotkey to restart the script.

!^h::
StartProgram("hh.exe","C:\Program Files\AutoHotkey\AutoHotkey.exe",false)
return

; browsers
!^f::
StartProgram("firefox.exe","C:\Program Files\Mozilla Firefox\firefox.exe",false)
return

!^c::
StartProgram("chrome.exe","C:\Program Files\Google\Chrome\Application\chrome.exe",false)
return

/*
!^b::
StartProgram("ApplicationFrameHost.exe","C:\Users\Administrator\AppData\Local\Microsoft\WindowsApps\MicrosoftEdge.exe",false)
return
*/

; explorer
/*
!^x::
StartProgram("Explorer.exe","C:\Windows\explorer.exe",false)
return
*/

#include c:\oh-my-bat\ahk\customized-windev.ahk
#include c:\oh-my-bat\ahk\customized-tencent.ahk

; #!h::
; SendInput, #{Left}
; return
;
; #!l::
; SendInput, #{Right}
; return

#UseHook on
#!h::SendInput #{Left}
#!j::SendInput #{Down}
#!k::SendInput #{Up}
#!l::SendInput #{Right}
#UseHook off
