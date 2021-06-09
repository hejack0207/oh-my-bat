REM  auto startup
call startup.cmd query | findstr -i putty 2> nul
if ERRORLEVEL 1 (
	call startup.cmd append "C:\Program Files\PuTTY\"
)
