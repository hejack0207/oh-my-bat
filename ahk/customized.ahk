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

; editor
!^g::
if FileExist("C:\Program Files (x86)\Vim\vim82\gvim.exe")
    Fullpath_Gvim := "C:\Program Files (x86)\Vim\vim82\gvim.exe"

StartProgram("gvim.exe",Fullpath_Gvim,false)
return

/*
!^v::
if FileExist("C:\Users\Administrator\AppData\Local\Programs\Microsoft VS Code\Code.exe")
    Fullpath_Code := "C:\Users\Administrator\AppData\Local\Programs\Microsoft VS Code\Code.exe"

if FileExist("d:\Users\blueo\scoop\apps\vscode\1.38.1\Code.exe")
    Fullpath_Code := "d:\Users\blueo\scoop\apps\vscode\1.38.1\Code.exe"

StartProgram("Code.exe",Fullpath_Code,true)
return
*/

/*
!^i::
StartProgram("idea64.exe","C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2019.2.1\bin\idea64.exe",false)
return
*/

; shell
/*
!^,::
EnvSet, MSYSTEM, MSYS2
StartWindow("msys2-tmux","D:\Program Files\msys64\usr\bin\mintty.exe --class msys2-tmux -i ""D:\Program Files\msys64\msys2.exe"" -o AppLaunchCmd=""D:\Program Files\msys64\msys2.exe"" -o AppID=MSYS2.Shell.MSYS.9 -o AppName=""MSYS2 MSYS Shell"" -T MSYS2 --store-taskbar-properties -- /usr/bin/tmux",false)
return
*/

!^,::
EnvSet, MSYSTEM, MSYS2
StartWindow("msys2","D:\Program Files\msys64\usr\bin\mintty.exe --class msys2 -i ""D:\Program Files\msys64\msys2.exe"" -o AppLaunchCmd=""D:\Program Files\msys64\msys2.exe"" -o AppID=MSYS2.Shell.MSYS.9 -o AppName=""MSYS2 MSYS Shell"" -T MSYS2 --store-taskbar-properties -- /usr/bin/zsh -l",false)
return

!^.::
EnvSet, MSYSTEM, MINGW64
StartWindow("mingw64","D:\Program Files\msys64\usr\bin\mintty.exe --class mingw64 --tabbar -i ""D:\Program Files\msys64\mingw64.exe"" -o AppLaunchCmd=""D:\Program Files\msys64\mingw64.exe"" -o AppID=MSYS2.Shell.MINGW64.9 -o AppName=""MSYS2 MINGW64 Shell"" -T MINGW64 --store-taskbar-properties -- /usr/bin/zsh -l",false)
return

/*
!^;::
EnvSet, MSYSTEM, MINGW64
StartWindow("mingw64-tmux","D:\Program Files\msys64\usr\bin\mintty.exe --class mingw64-tmux -i ""D:\Program Files\msys64\mingw64.exe"" -o AppLaunchCmd=""D:\Program Files\msys64\mingw64.exe"" -o AppID=MSYS2.Shell.MINGW64.9 -o AppName=""MSYS2 MINGW64 Shell"" -T MINGW64 --store-taskbar-properties -- /usr/bin/tmux",false)
return
*/

!^;::
StartProgram("cmd.exe","C:\Windows\System32\cmd.exe",false)
return

!^/::
; StartProgram("bash.exe","""C:\Program Files\Git\bin\bash.exe"" --login -i ""C:\Program Files\Docker Toolbox\start.sh""",false)
StartProgram("bash.exe","""C:\Program Files\Git\bin\bash.exe"" --login -i ""C:\Program Files\Docker Toolbox\start.sh""",false)
return

!^x::
StartProgram("Xshell.exe","C:\Program Files (x86)\NetSarang\Xshell 6\Xshell.exe",false)
return

!^'::
StartProgram("pwsh.exe","pwsh",true)
return

/*
!^u::
StartProgram("wsl.exe","C:\Windows\System32\wsl.exe -d ubuntu1804",false)
return

!^k::
StartProgram("ConEmu64.exe","C:\Program Files (x86)\cmder_mini\vendor\conemu-maximus5\ConEmu64.exe",true)
return
*/

; explorer
!^e::
StartProgram("Everything.exe","C:\Program Files\Everything\Everything.exe",false)
return

!^p::
StartProgram("eCloud.exe","C:\Program Files (x86)\ecloud\eCloud.exe",false)
return

!^s::
StartProgram("WXDrive.exe","C:\\Program Files (x86)\\WXDrive\\WXDrive.exe",false)
return

/*
!^x::
StartProgram("Explorer.exe","C:\Windows\explorer.exe",false)
return
*/

;remote
!^t::
StartProgram("WinSCP.exe","C:\Program Files (x86)\WinSCP\WinSCP.exe",false)
return

!^m::
StartProgram("wemeetapp.exe","C:\Program Files (x86)\Tencent\WeMeet\wemeetapp.exe",false)
return

/*
!^m::
StartProgram("MobaXterm.EXE","C:\Program Files (x86)\Mobatek\MobaXterm\MobaXterm.exe",false)
return
*/

;database
/*
!^h::
StartProgram("heidisql.exe","C:\Program Files\HeidiSQL\heidisql.exe",false)
return
*/

; documents
!^d::
StartProgram("PDFXCview.exe","C:\Program Files\Tracker Software\PDF Viewer\PDFXCview.exe",false)
return

!^n::
StartProgram("VNote.exe","D:\Program Files\VNote_win_X64_portable_2.7.2\VNote\VNote.exe",false)
return

!^k::
StartProgram("wps.exe","""C:\Users\Administrator\AppData\Local\Kingsoft\WPS Office\ksolaunch.exe"" /prometheus /fromksolaunch /from=startmenu",false)
return

; communication
!^w::
StartProgram("WXWork.exe","C:\Program Files (x86)\WXWork\WXWork.exe",false)
return

!^v::
StartProgram("WeChat.exe","C:\Program Files (x86)\Tencent\WeChat\WeChat.exe",false)
return

!^q::
StartProgram("QiDian.exe","C:\Program Files (x86)\Tencent\QiDian\Bin\QiDian.exe",false)
return

; vpn
!^i::
StartProgram("iOA.exe","""C:\Program Files (x86)\iOA\iOA.exe"" -userstart",false)
return

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

/*
!^s::
StartProgram("soffice.exe","C:\Program Files\LibreOffice\program\soffice.exe",false)
return

!^y::
StartProgram("Evernote.exe","C:\Program Files (x86)\Yinxiang Biji\Ó¡Ïó±Ê¼Ç\Evernote.exe",false)
return
*/
