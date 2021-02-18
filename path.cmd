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
  call :append_path %~2
  exit /b %ERRORLEVEL%
)
if "x%~1" == "xquery" (
  call :show_path
  exit /b %ERRORLEVEL%
)
exit /b 0

call :checkparams
goto :EOF

:append_path
@echo "%1"
REM  set value=%path%;%1
REM  reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_EXPAND_SZ /d "%value%" /f
exit /b 0

:show_path
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path
exit /b 0

:printhelp
echo Usage:
echo     %~1 query or append path...
echo.
echo Options:
echo     -help ^| --help ^| -? ^| /?         Display this help and exit
echo.
exit /b 0

:EOF
exit /b 0
