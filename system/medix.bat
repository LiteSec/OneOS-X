@shift
@if "%1" equ "" exit >nul
@if "%1" neq "%var_749219%" if "%2" neq "%var_749219%" exit >nul
@echo off

if "%1" neq "" if "%2" equ "%var_749219%" (
system\vlc\vlc %1 --no-video-deco --no-embedded-video --fullscreen --no-qt-system-tray --qt-start-minimized --quiet --dummy-quiet -I dummy --play-and-exit
goto :eof
)
:medix
cls
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
:: 4x4 bro
:: 19
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo лллллллллллллллллллллллллллллл = Medix Player = ллллллллллллллллллллллллллллллл
echo.
echo.
echo [Open media file]
echo.
echo [About]
echo.
echo [Exit]
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                       %time%, %user1%
echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==3 (
if %x% geq 0 if %x% leq 16 (
goto medix_openfile
)
)

if %y%==5 (
if %x% geq 0 if %x% leq 6 (
goto medix_about
)
)

if %y%==7 (
if %x% geq 0 if %x% leq 5 (
goto :eof
)
)
goto medix

:medix_openfile
cls
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
:: 4x4 bro
:: 19
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo лллллллллллллллллллллллллллллл = Medix Player = ллллллллллллллллллллллллллллллл
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                       %time%, %user1%
echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
system\batbox /g 1 3
set /p medix_filename=Enter file path: 
if "%medix_filename%"=="" (
system\batbox /g 1 5
echo ERROR: Enter filename:
goto medix
) 
system\vlc\vlc %medix_filename% --no-video-deco --no-embedded-video --fullscreen --no-qt-system-tray --qt-start-minimized --quiet --dummy-quiet -I dummy --video-on-top --play-and-exit
goto medix

:medix_about
cls
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
:: 4x4 bro
:: 19
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo лллллллллллллллллллллллллллллл = Medix Player = ллллллллллллллллллллллллллллллл
echo.
echo.
echo. MediX 0.0.1 by LiteSec
echo. Based on VLC Media Player
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                       %time%, %user1%
echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

goto medix
