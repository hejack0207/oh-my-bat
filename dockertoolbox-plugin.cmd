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

call :appendpath "C:\Program Files\Docker Toolbox"
goto :EOF

:appendpath
set value=%path%;%1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Sessions Manager\Environment" /v Path /t REG_EXPAND_SZ /d "%value%" /f
exit /b 0

:printhelp
echo Usage:
echo     %~1 [options]
echo.
echo Options:
echo     install			  install default ahk script
echo     uninstall			  uninstall ahk script
echo     -help ^| --help ^| -? ^| /?         Display this help and exit
echo.
exit /b 0

:EOF
exit /b 0
