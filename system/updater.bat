@echo off
color f0
title OneOS X Updater
echo Welcome to the OneOS X Updater!
echo.
echo Please close all running instances of OneOS X if they have not closed already.
echo.
timeout 1 >NUL
echo Please wait, preparing update...
if exist oneos.bat (
echo Sorry!
echo OneOS X Updater is UNSUPPORTED with Open Source versions!
echo.
echo Please update at oneos.litesec.co
pause
exit
) else (
goto ok1_startU
)
:ok1_startU
del /F /Q oneos.exe
if exist oneos.exe (
echo OneOS X Updater has permission problems, please
echo update from oneos.litesec.co
pause
exit
) else (
goto ok2
)
:ok2
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://dl.litesec.co/oneos_update/oneos.exe', 'oneos.exe')"
if exist oneos.exe (
goto ok3
) else (
echo OneOS X Updater has permission problems, please
echo update from oneos.litesec.co. ERROR: writeFailure
pause
exit
)
:ok3
echo OneOS X has been updated.
echo Restarting...
shutdown -r -t 00
exit