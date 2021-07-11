@shift
@if "%1" == "" exit >nul
@if "%1" neq "%var_749219%" exit >nul
@attrib %tmp%\*.bat +s +h +r
@echo off
:boot
cls
title BeamTerm 1.3.2413
echo ллллллллллллллллллллллллллллллллл = BeamTerm = ллллллллллллллллллллллллллллллллл
echo.
echo Loading BeamTerm...
echo Compiling DFCI commands...
ping localhost -n 3 >nul
cls
echo ллллллллллллллллллллллллллллллллл = BeamTerm = ллллллллллллллллллллллллллллллллл
echo.
set bashsign=$
for /f "usebackq" %%i in (`hostname`) do set hostvar=%%i
:loop
set comm=
title %user1%@%hostvar% : %cd%
echo кФ[%user1%@%hostvar%][%bashsign%]
set /p comm=РФў 
if "%comm%"=="exit" goto :eof
if "%comm%"=="" goto consolerror
if "%comm:~0,1%"==" " goto consolerror
if "%comm:~0,1%"=="/" goto consolerror
if "%comm:~0,1%"=="^|" goto consolerror
if "%comm:~0,1%"=="\" goto consolerror
if "%comm:~0,1%"=="?" goto consolerror
if exist system\syscomm32\%comm%\\* goto isadir
:skipdirect
if exist system\syscomm32\%comm%.* (
call system\syscomm32\%comm%
goto loop
)
:consolerror
echo '%comm%':not found
goto loop
:isadir
if exist %cd%\bin\%comm%.* goto skipdirect
echo '%comm%':is a directory
goto loop
