#SingleInstance force

/*
!^w::
if WinExist("ahk_exe WeChat.exe"){
    WinActivate, ahk_class WeChatMainWndForPC
	SetControlDelay -1
	ControlClick , EditWnd1, ahk_class WeChatMainWndForPC
	;ControlFocus , EditWnd1, ahk_class WeChatMainWndForPC
	ControlSend, EditWnd1, xr, ahk_class WeChatMainWndForPC
}
*/

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

; browsers
!^f::
StartProgram("firefox.exe","C:\Program Files\Mozilla Firefox\firefox.exe",false)
return

!^c::
StartProgram("chrome.exe","C:\Program Files (x86)\Google\Chrome\Application\chrome.exe",false)
return

!^b::
StartProgram("ApplicationFrameHost.exe","C:\Users\Administrator\AppData\Local\Microsoft\WindowsApps\MicrosoftEdge.exe",false)
return

; ide 
!^i::
StartProgram("idea64.exe","C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2019.2.1\bin\idea64.exe",false)
return

!^v::
if FileExist("C:\Users\Administrator\AppData\Local\Programs\Microsoft VS Code\Code.exe")
    Fullpath_Code := "C:\Users\Administrator\AppData\Local\Programs\Microsoft VS Code\Code.exe"

if FileExist("d:\Users\blueo\scoop\apps\vscode\1.38.1\Code.exe")
    Fullpath_Code := "d:\Users\blueo\scoop\apps\vscode\1.38.1\Code.exe"

StartProgram("Code.exe",Fullpath_Code,true)
return

/*
*/
!^g::
if FileExist("C:\Windows\gvim.bat")
    Fullpath_Gvim := "C:\Windows\gvim.bat"

StartProgram("gvim.exe",Fullpath_Gvim,false)
return


; shell
!^p::
;~ StartProgram("pwsh.exe","C:\Windows\System32\runas.exe /profile /env /user:he-win10\Administrator /savecred pwsh",false)
StartProgram("pwsh.exe","pwsh",true)
return

!^u::
StartProgram("wsl.exe","C:\Windows\System32\wsl.exe -d ubuntu1804",false)
/* if WinExist("ahk_exe " . "wsl.exe"){
 *     WinActivate, ahk_exe wsl.exe
 * }else{
 *     Run, C:\Windows\System32\wsl.exe -d ubuntu1804,c:\
 * }
 */
return

!^k::
StartProgram("ConEmu64.exe","C:\Program Files (x86)\cmder_mini\vendor\conemu-maximus5\ConEmu64.exe",true)
return

!^.::
StartProgram("bash.exe","""C:\Program Files\Git\bin\bash.exe"" --login -i ""C:\Program Files\Docker Toolbox\start.sh""",false)
return

!^,::
StartProgram("mintty.exe","D:\Users\blueo\scoop\apps\msys2\current\mingw64.exe zsh",false)
return

; explorer
!^e::
StartProgram("Everything.exe","C:\Program Files\Everything\Everything.exe",false)
return

!^r::
StartProgram("Explorer.exe","C:\Windows\explorer.exe",false)
return

;remote
!^m::
StartProgram("MobaXterm.EXE","C:\Program Files (x86)\Mobatek\MobaXterm\MobaXterm.exe",false)
return

!^t::
StartProgram("WinSCP.exe","C:\Program Files (x86)\WinSCP\WinSCP.exe",false)
return

;database
!^h::
StartProgram("heidisql.exe","C:\Program Files\HeidiSQL\heidisql.exe",false)
return

; documents
!^s::
StartProgram("soffice.exe","C:\Program Files\LibreOffice\program\soffice.exe",false)
return

!^d::
StartProgram("PDFXCview.exe","C:\Program Files\Tracker Software\PDF Viewer\PDFXCview.exe",false)
return

!^n::
StartProgram("VNote.exe","C:\Program Files\VNote\VNote.exe",false)
return

!^y::
StartProgram("Evernote.exe","C:\Program Files (x86)\Yinxiang Biji\Ó¡Ïó±Ê¼Ç\Evernote.exe",false)
return