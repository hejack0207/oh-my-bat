@echo off
setlocal EnableDelayedExpansion

set startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
@echo "startup: %startup%"

copy ahk\CapsLocks.ahk c:\CapsLocks.ahk"
copy ahk\default.ahk "%startup%\default.ahk"

REM  if exist "%startup%\clipjump" mkdir "%startup%\clipjump"
REM  xcopy /y /s ahk\clipjump "%startup%\clipjump"
REM AutoHotkey "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\default.ahk"
