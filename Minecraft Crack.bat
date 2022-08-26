@Echo off
@Mode 48,15
@Title %~n0
Batbox /h 0

:Loop
Call Button  10 4 "Open MC" 24 4 "Enable MC hack" 10 8 "  Client  " 24 8 "Disable MC hack" # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (OpenMC.bat)
if %errorlevel%==2 (install.reg)
if %errorlevel%==3 (client.exe)
if %errorlevel%==4 (uninstall.reg)
goto Loop