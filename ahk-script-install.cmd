@echo off
setlocal EnableDelayedExpansion

set startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
echo "startup: %startup%"
copy ahk\default.ahk "%startup%\default.ahk"
if exist "%startup%\clipjump" mkdir "%startup%\clipjump"
xcopy /y /s ahk\clipjump "%startup%\clipjump"

REM AutoHotkey "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\default.ahk"
