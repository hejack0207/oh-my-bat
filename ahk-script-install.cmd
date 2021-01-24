@echo off
setlocal EnableDelayedExpansion

copy ahk\default.ahk "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\default.ahk"
AutoHotkey "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\default.ahk"
