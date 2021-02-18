@echo off
setlocal EnableDelayedExpansion

set startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
@echo "startup: %startup%"

copy vbox-startup.cmd "%startup%\vbox-startup.cmd"
