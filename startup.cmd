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
REM  reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v Path /t REG_EXPAND_SZ /d "%value%" /f
exit /b 0

:query_startup
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
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
