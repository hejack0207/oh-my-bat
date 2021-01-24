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
exit /b 0

call :checkparams
@echo "%1"
call :appendpath "%1"
goto :EOF

:appendpath
set value=%path%;%1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Sessions Manager\Environment" /v Path /t REG_EXPAND_SZ /d "%value%" /f
exit /b 0

:printhelp
echo Usage:
echo     %~1 [options] path...
echo.
echo Options:
echo     -help ^| --help ^| -? ^| /?         Display this help and exit
echo.
exit /b 0

:EOF
exit /b 0
