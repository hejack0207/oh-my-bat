@echo off
rem  start "vbox headless" "C:\Program Files\Oracle\VirtualBox\VBoxHeadless.exe" -s default
rem  --type headless
rem  start "vbox headless" "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm default

where vboxmanage 2>nul
if errorlevel 1 (
	set vb="C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" 
) else (
	set vb=vboxmanage
)

set vm=%1

%vb% list vms | findstr -i %vm% >nul
if errorlevel 1 (
	echo "%vm% not found"
	exit /b 1
)

%vb% list runningvms | findstr -i %vm% >nul
if not errorlevel 1 (
	echo "%vm% already started"
	exit /b 1
)

%vb% startvm %vm% --type headless
