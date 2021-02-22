@echo off
REM  start "vbox headless" "C:\Program Files\Oracle\VirtualBox\VBoxHeadless.exe" -s default
REM  --type headless
REM  start "vbox headless" "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm default
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm default --type headless
