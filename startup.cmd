@echo off
setlocal EnableDelayedExpansion

:checkparams
rem Help option
if "x%~1" == "x-help" (
  call :printhelp "%~nx0"
  exit /b %ERRORLEVEL%
)
if "x%~1" == "x--help" (
  call :printhelp "%~nx0"
  exit /b %ERRORLEVEL%
)
if "x%~1" == "x-?" (
  call :printhelp "%~nx0"
  exit /b %ERRORLEVEL%
)
if "x%~1" == "x/?" (
  call :printhelp "%~nx0"
  exit /b %ERRORLEVEL%
)
if "x%~1" == "xappend" (
  call :append_startup "%~nx0"
  exit /b %ERRORLEVEL%
)
if "x%~1" == "xquery" (
  call :query_startup
  exit /b %ERRORLEVEL%
)
exit /b 0

call :checkparams
goto :EOF

:append_startup
REM  reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v vbox /d "C:\Program Files\Oracle\VirtualBox\VBoxHeadless.exe -s default"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v clipjump /d "C:\Program Files\AutoHotkey\AutoHotkey.exe D:\Program Files\msys64\home\Administrator\codes\oh-my-bat\ahk\clipjump\Clipjump.ahk" /f
exit /b 0

:query_startup
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
exit /b 0

:printhelp
echo Usage:
echo     %~1 [options] append or query ...
echo.
echo Options:
echo     -help ^| --help ^| -? ^| /?         Display this help and exit
echo.
exit /b 0

:EOF
exit /b 0
