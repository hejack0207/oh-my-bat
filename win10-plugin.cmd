@echo off
@echo hi

call :hosts_file
exit /b

:hosts_file
@echo /c/Windows/System32/drivers/etc/hosts
exit /b 0

:: created by hejack0207
