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

if "x%~1" == "xinstall" shift & goto :install

if "x%~1" == "xview" shift & goto :view

exit /b 0

:install
copy default.ahk "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\default.ahk"
exit /b 0

:view
view "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\default.ahk"
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
