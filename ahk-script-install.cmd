@echo off
setlocal EnableDelayedExpansion

set startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
@echo "startup: %startup%"

copy ahk\CapsLocks.ahk c:\CapsLocks.ahk"
copy ahk\customized.ahk c:\customized.ahk"
copy ahk\vim_mouse_2.ahk c:\vim_mouse_2.ahk"
copy ahk\startup.ahk "%startup%\startup.ahk"

REM  if exist "%startup%\clipjump" mkdir "%startup%\clipjump"
REM  xcopy /y /s ahk\clipjump "%startup%\clipjump"
REM AutoHotkey "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\default.ahk"
