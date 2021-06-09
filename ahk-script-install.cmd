@echo off
setlocal EnableDelayedExpansion

set startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
@echo "startup: %startup%"

REM  mkdir c:\ahk
REM  copy ahk\CapsLocks.ahk c:\ahk\CapsLocks.ahk"
REM  copy ahk\customized.ahk c:\ahk\customized.ahk"
REM  copy ahk\vim_mouse_2.ahk c:\ahk\vim_mouse_2.ahk"
REM  mkdir c:\ahk\bug.n
REM  xcopy /y /s ahk\bug.n c:\ahk\bug.n

if not exist "%startup%\startup.ahk" (
	copy ahk\startup.ahk "%startup%\startup.ahk"
)

REM  if exist "%startup%\clipjump" mkdir "%startup%\clipjump"
REM  xcopy /y /s ahk\clipjump "%startup%\clipjump"
REM AutoHotkey "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\default.ahk"
