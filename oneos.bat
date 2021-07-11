@shift
@if "%1" == "1ogk790sm3o9y9cm30970vhalpoqbvmzi4020tmswrocmzpwrpaqezmigq1476969jdiwmzalouunaiwnzlowimaloyqpmbfywlaopm19764mzuwoidwmzwyeonlfghqdeie" echo
@set var_749219=%1
@echo off
system\conshowcursor /hide
system\consetbuffer /X 80 /Y 26
system\batbox /f 0
color 07
ping localhost -n 2 >nul
call system\safemode.bat
set oneosrootfol=%cd%
set uptime=%time%
echo set safemode=^0> system\safemode.bat
set debug=0
set build=1069
for /f %%a in (system\settings.conf) do set %%a
if NOT exist system\downloaded1.info (
goto make_hasinter2
)
if NOT exist system\downloaded29.info (
goto make_hasinter3
)
:bios
cls
::   ________________________________________________________________________________
echo                                   ÛÛ      ÛÛ
echo                                    ÛÛ    ÛÛ
echo                                     ÛÛÛÛÛÛ 
echo                                       ÛÛ
echo                                       ÛÛ
echo.             
echo                           	   Ypsilon
echo ________________________________________________________________________________
echo Searching for boot.ini...
if exist system\boot.ini (
echo Found boot.ini /system
) else (
echo Couldn't find boot.ini, creating...
echo ::OneOS X Boot File> system\boot.ini
echo defloc=C:\ONEOS\>> system\boot.ini
echo settings=C:\ONEOS\SYSTEM\SETTING.CONF>> system\boot.ini
echo #ENABLE_FASTBOOT=0>> system\boot.ini
)
echo Booting up kernel...
ping localhost -n 2 >nul
:: 0 closed correctly
:: 1 closed incorrectly
echo Making sure that files exist for startup...
if NOT exist system\safeclose.bat (
echo set safeclose=^0> system\safeclose.bat
)
call system\safeclose.bat
echo ERRORCODE: %safeclose%
choice /T:n,02 /C:sn "Hold S to boot into Safe Mode"
if %errorlevel% == 1 (
set safemode=1 
system\chgcolor 0c
echo WARNING! SAFE MODE HAS BEEN ENABLED!
ping localhost -n 3 >NUL
)
if "%safeclose%"=="1" goto errorreport
echo set safeclose=^1> system\safeclose.bat
::this is getting useless
call system\users\1.bat
ping localhost -n 1 >NUL
:startup
cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
if not exist "%appdata%\LiteSec" (
md "%appdata%\LiteSec"
echo ^10> "%appdata%\LiteSec\oneosx.dll"
echo 1ufn8i1ndu3> "%appdata%\LiteSec\sysfile32.dll"
attrib "%appdata%\LiteSec" +s +h
)
if not exist "%appdata%\LiteSec\sysfile32.dll" (
echo ^10> "%appdata%\LiteSec\oneosx.dll"
echo 1ufn8i1ndu3> "%appdata%\LiteSec\sysfile32.dll"
)
attrib "%appdata%\LiteSec" +s +h
echo Û
ping localhost -n 1 >NUL
call system\hasinter2.bat
if "%noi%"=="yes" (
start system\noin.vbs
goto loadingbrooo
) else (
goto loadingbrooo
)
:loadingbrooo
if NOT exist system\users\1.bat goto create
cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛ
call system\users\1.bat
ping localhost -n 1 >NUL
cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛÛ
ping localhost -n 1 >NUL
if "%safemode%"=="1 " goto updatedlskip
set xram=%random%
echo Checking for updates....
if exist system/update.bat (
del /F /Q system\update.bat
)
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://dl.litesec.co/updateoneos/update.bat', 'system\update.bat')" >NUL
title OneOS: X Bootable by LiteSec LLC - Build %build%
:updatedlskip


cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛ
ping localhost -n 2 >NUL

cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 2 >NUL
cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
if "%safemode%"=="1" goto finu
if "%debug%"=="1" (
set noi=yes
) else ( 
goto imrunningoutoflabelnames
)
:imrunningoutoflabelnames
if "%noi%"=="yes" goto finu
if exist system\update.bat (
call system\update.bat
)
if "%latest%"=="" goto finu
if %build% LSS %latest% (
echo You are running an outdated version of OneOS X.
echo Updating now with opdate3...
echo.
pause
goto finu_update
) else (
goto finu
)

:finu_update
start system\updater.bat
echo set safeclose=^0> system\safeclose.bat
exit

:finu
cls
title OneOS: X Bootable by LiteSec LLC - Build %build%
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                    Loading....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ Done ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo set safeclose=^0> system\safeclose.bat
if not exist "%appdata%\LiteSec" (
md "%appdata%\LiteSec"
echo ^10> "%appdata%\LiteSec\oneosx.dll"
echo 1ufn8i1ndu3> "%appdata%\LiteSec\sysfile32.dll"
)

set /p checkactiv=<"%appdata%\LiteSec\sysfile32.dll"
if "%checkactiv%"=="1037GB619CO2YG71QOR78RBW712IO87AN27FJJ74O9DK286NDCOLWO39GNE38GS93HHT810VJ284VJWI8T83UASIQPMFTEOZHW728GK919J28J2928TJE8218I3848W2928R8CN283928F28292848J1829FJ18737NSNFUQANNIQ91JNC" (
goto checkedactfin
) else (
if "%trialmodeon%"=="1" goto desktop
goto pkey
)

:checkedactfin
ping localhost -n 1 >NUL
goto desktop

:errorreport
cls
ping localhost -n 3 >NUL
title Error!
call :setcolour
::   ________________________________________________________________________________
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ________________________________________________________________________________
system\chgcolor %backcol%c
echo Uh oh!
echo.
system\chgcolor %backcol%%linecol%
ping localhost -n 1 >NUL
echo OneOS X did not close correctly!
echo A detailed walkthrough of the error is below:
echo.
echo ========================
echo Called event: org.litesec.oneos:Start
echo Extras?: %safeclose%
echo Cause: OneOS X Init Process
echo Information: OneOS X failed to complete the startup process. OneOS X will now
echo boot into safe mode.
echo ========================
pause
echo set safemode=^1> system\safemode.bat
echo set safeclose=^0> system\safeclose.bat
cls
oneos

:desktop
cls
call :systemsounds logoff
call :setcolour
::   ________________________________________________________________________________
echo.
echo.
echo              Û             ÛÛÛÛÛÛÛÛ     ÛÛÛÛÛÛÛÛ    Û    ÛÛÛÛÛÛÛÛÛÛ
echo              Û            Û        Û    Û      Û    Û    Û        Û
echo              Û            Û        Û    Û           Û    Û        Û
echo              Û            Û        Û    Û    ÛÛÛ    Û    Û        Û
echo              Û            Û        Û    Û      Û    Û    Û        Û
echo              ÛÛÛÛÛÛÛÛÛÛ    ÛÛÛÛÛÛÛÛ     ÛÛÛÛÛÛÛÛ    Û    Û        Û
echo ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
if "%safemode%"=="1 " (
echo                                                    RESTART TO DISABLE SAFE MODE
) else (
echo.
)
echo                                     ÛÛÛÛÛÛ
echo                                    ÛÛÛÛÛÛÛÛ
echo                                     ÛÛÛÛÛÛ
echo                                    %user1%
echo.
set acclog=failxD
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==15 (
if %x% geq 33 if %x% leq 40 (
set name=%user1
goto password
)
)
if %y%==16 (
if %x% geq 32 if %x% leq 41 (
set name=%user1
goto password
)
)
if %y%==17 (
if %x% geq 33 if %x% leq 40 (
set name=%user1
goto password
)
)

:password
set password=lmao
if "%debug%"=="1" (
goto desktop1s
) else (
goto passwordnodebug
)
:passwordnodebug
set /p password="Password: "
if "%password%"=="%user1password%" (
call :checkreminder
goto desktop1s
) else (
echo Failed Password.
pause
goto desktop
)

:desktop1s
call :systemsounds startup
:desktop1
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
:: 4x4 bro
::
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = Desktop = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo                                                                         Shutdown
system\chgcolor %backcol%2
echo    Û
echo   ÛÛÛ
echo  Û   Û
system\chgcolor %backcol%%linecol%
echo   All
echo.
system\chgcolor %backcol%6
echo  ÛÛÛÛÛÛ
system\chgcolor %backcol%1
echo  Û    Û
echo  Û    Û
echo  ÛÛÛÛÛÛ
system\chgcolor %backcol%%linecol%
echo  Notes
echo.
system\chgcolor %backcol%c
echo   Û Û
echo    Û
echo   Û Û
system\chgcolor %backcol%%linecol%
echo   Exit
system\chgcolor %backcol%%linecol%
echo.
echo.
echo.
echo.
echo                                                       %time%, %user1%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==2 (
if %x% geq 72 if %x% leq 81 (
goto desktop1logout
)
)
if %y%==4 (
if %x% geq 2 if %x% leq 4 (
goto desktop1all
)
)
if %y%==5 (
if %x% geq 1 if %x% leq 5 (
goto desktop1all
)
)
if %y%==6 (
if %x% geq 0 if %x% leq 6 (
goto desktop1all
)
)
if %y%==7 (
if %x% geq 1 if %x% leq 5 (
goto desktop1all
)
)

if %y%==9 (
if %x% geq 0 if %x% leq 7 (
goto edit
)
)
if %y%==10 (
if %x% geq 0 if %x% leq 7 (
goto edit
)
)
if %y%==11 (
if %x% geq 0 if %x% leq 7 (
goto edit
)
)
if %y%==12 (
if %x% geq 0 if %x% leq 7 (
goto edit
)
)
if %y%==13 (
if %x% geq 0 if %x% leq 6 (
goto edit
)
)

if %y%==15 (
if %x% geq 1 if %x% leq 5 (
echo set safeclose=^0> system\safeclose.bat
exit
)
)
if %y%==16 (
if %x% geq 2 if %x% leq 4 (
echo set safeclose=^0> system\safeclose.bat
exit
)
)
if %y%==17 (
if %x% geq 1 if %x% leq 5 (
echo set safeclose=^0> system\safeclose.bat
exit
)
)
if %y%==18 (
if %x% geq 1 if %x% leq 6 (
echo set safeclose=^0> system\safeclose.bat
exit
)
)
goto desktop1
:checkreminder
if not exist system\docs\reminders\1.bat (
goto :eof
)
system\chgcolor %backcol%8
system\batbox /g 14 5 /d "+================================================+"
system\batbox /g 14 6 /d "|                    Reminder                    |"
system\batbox /g 14 7 /d "|                                                |"
system\batbox /g 14 8 /d "|                                                |"
system\batbox /g 14 9 /d "|                                                |"
system\batbox /g 14 10 /d "|                                                |"
system\batbox /g 14 11 /d "|                                                |"
system\batbox /g 14 12 /d "|                                                |"
system\batbox /g 14 13 /d "|                                                |"
system\batbox /g 14 14 /d "|                                                |"
system\batbox /g 14 15 /d "| [Click to exit]                                |"
system\batbox /g 14 16 /d "+================================================+"
system\batbox /g 16 8
call system\docs\reminders\1.bat
system\batbox /m >nul
cls
goto :eof
:create
cls
call :setcolour
::   ______________________________________________________________________________
echo.
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ________________________________________________________________________________
echo.
system\chgcolor %backcol%%linecol%
echo Welcome to OneOS X, the simple advanced OS!
echo.
echo Let's get you set up...
if not exist system (
mkdir system
mkdir system\users
)
if not exist system\users mkdir system\users
ping localhost -n 4 >NUL
cls
call :setcolour
echo.
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ________________________________________________________________________________
echo.
system\chgcolor %backcol%1
echo Compiling DFCI commands....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
call :setcolour
echo.
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ________________________________________________________________________________
echo.
system\chgcolor %backcol%1
echo Compiling DFCI commands....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
call :setcolour
echo.
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ________________________________________________________________________________
echo.
system\chgcolor %backcol%1
echo Compiling DFCI commands....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
call :setcolour
echo.
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ________________________________________________________________________________
echo.
system\chgcolor %backcol%1
echo Compiling DFCI commands....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
call :setcolour
echo.
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ________________________________________________________________________________
echo.
system\chgcolor %backcol%1
echo Compiling DFCI commands....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
call :setcolour
echo.
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ________________________________________________________________________________
echo.
system\chgcolor %backcol%1
echo Compiling DFCI commands....
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 1 >NUL
cls
:pkey
cls
if exist "%appdata%\LiteSec\sysfile32.dll" (
set /p checkactiv=<"%appdata%\LiteSec\sysfile32.dll"
if "%checkactiv%"=="1037GB619CO2YG71QOR78RBW712IO87AN27FJJ74O9DK286NDCOLWO39GNE38GS93HHT810VJ284VJWI8T83UASIQPMFTEOZHW728GK919J28J2928TJE8218I3848W2928R8CN283928F28292848J1829FJ18737NSNFUQANNIQ91JNC" goto name
)
set /p usagecount=<"%appdata%\LiteSec\oneosx.dll"
call :setcolour
::   ______________________________________________________________________________
echo.
echo.      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ________________________________________________________________________________
echo.
system\chgcolor %backcol%%linecol%
echo To use full version of OneOS X, you should activate it. However, you can use
echo the trial version to test OneOS X, and after expiracy you should activate.
echo.
echo [Enter product key]
echo [Trial version ^(%usagecount% left^)] 
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==21 (
if %x% geq 0 if %x% leq 18 (
goto activateoneos
)
)

if %y%==22 (
if %x% geq 0 if %x% leq 18 (
if exist %appdata%\LiteSec\oneosx.dll (
call :checkiftrialexpired
)
)
)


goto pkey

:checkiftrialexpired
set /p usagecount=<"%appdata%\LiteSec\oneosx.dll"
if "%usagecount%"=="0" call :trialexpired
set /a usagecount=%usagecount%-1
echo ^%usagecount%> "%appdata%\LiteSec\oneosx.dll"
set trial=1
goto name

:trialexpired
echo Trial period has expired! To continue using OneOS, activate it.
ping localhost -n 3 >nul
goto pkey

:activateoneos
cls
call :setcolour
::   ______________________________________________________________________________
echo.
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ________________________________________________________________________________
echo.
system\chgcolor %backcol%%linecol%
set /p oneosxprodukey=Enter your OneOS X product key: 
if "%oneosxprodukey%"=="" goto activateoneos
echo Activating, please wait...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://node32.litesec.co/oneosxproductkeys.prk', 'system\ooxpk.prk')"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://node32.litesec.co/usedkeys.prk', 'system\usedkeys.prk')"
setlocal enableDelayedExpansion
set chars=EMIYQDTUSHLVZJAGP-XKNFROBCW.
for /L %%N in (10 1 28) do (
for /F %%C in ("!chars:~%%N,1!") do (
set "oneosxprodukey=!oneosxprodukey:%%C=_%%N!"
)
)
setlocal disableDelayedExpansion
for /f %%a in (system\ooxpk.prk) do (
call :verifyusedkey
if "%%a"=="%oneosxprodukey%" (
echo 1037GB619CO2YG71QOR78RBW712IO87AN27FJJ74O9DK286NDCOLWO39GNE38GS93HHT810VJ284VJWI8T83UASIQPMFTEOZHW728GK919J28J2928TJE8218I3848W2928R8CN283928F28292848J1829FJ18737NSNFUQANNIQ91JNC> "%appdata%\LiteSec\sysfile32.dll"
echo ^%oneosxprodukey% >> system\usedkeys.prk
echo open ftp://username@server.addr:337 -passive=on> system\script.txt
echo bin>> system\script.txt
echo cd UploadHere>> system\script.txt
echo rm usedkeys.prk>> system\script.txt
echo put system\usedkeys.prk>> system\script.txt
echo bye>> system\script.txt
system\winscp.com -n /script=system\script.txt >nul
echo Activated!
ping localhost -n 3 >nul
del system\ooxpk.prk /Q
del system\usedkeys.prk /Q
goto name
)
)
echo Sorry, the product key is invalid.
ping localhost -n 2 >nul
del system\ooxpk.prk /Q
goto pkey
:verifyusedkey
for /f %%b in (system\usedkeys.prk) do (
if "%%b"=="%oneosxprodukey%" (
echo Sorry, the key was already used.
ping localhost -n 2 >nul
goto pkey
)
)
goto :eof
:name
cls
call :setcolour
::   ______________________________________________________________________________
echo.
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ________________________________________________________________________________
echo.
system\chgcolor %backcol%%linecol%
set /p choice=Choose your name: 
set user1=%choice%
set /p yn=Your user name is %user1%. Correct? [Y/N]:
if /i "%yn:~0,1%"=="y" (
goto cuser1pass
) else (
goto name
)

:cuser1pass
set /p choice=Choose a password: 
set user1password=%choice%
set choice=
set /p choice=Retype your password: 
if %choice% neq %user1password% (
echo  Password mismatch!
ping localhost -n 3 >nul
goto cuser1pass
) else (
goto saveuser1stuff
)

:saveuser1stuff
(
echo set user1=%user1%
echo set user1password=%user1password%
echo set version=%version%
)>system\users\1.bat
echo.
echo.
echo Your user account has been saved.
pause
goto startuplogo

:desktop1all
call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = Desktop = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo.
system\chgcolor %backcol%8
echo               ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo               Û                  All programs                  Û
echo               Û                                                Û
echo               Û Command Prompt              Notepad            Û
echo               Û Control Panel               WebBrowser         Û
echo               Û OneCloud                    OneChat            Û
echo               Û Apps                        OneMail            Û
echo               Û NEO                         Explorer           Û
echo               Û Back...                     MediX              Û
echo               Û                                                Û
echo               Û                                                Û
echo               ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
system\chgcolor %backcol%%linecol%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                       %time%, %user1%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==7 (
if %x% geq 15 if %x% leq 30 (
call system\beamterm %var_749219%
goto desktop1all
)
if %x% geq 43 if %x% leq 51 (
goto edit
goto desktop1all
)
)

if %y%==8 (
if %x% geq 15 if %x% leq 22 (
goto desktop1control
)
if %x% geq 43 if %x% leq 49 (
call system\links http://www.litesec.co
goto desktop1all
)
)

if %y%==9 (
if %x% geq 15 if %x% leq 24 (
goto onecloud
)
if %x% geq 43 if %x% leq 51 (
goto 1chat
goto desktop1all
)
)

if %y%==10 (
if %x% geq 15 if %x% leq 20 (
goto apps
)
if %x% geq 43 if %x% leq 51 (
goto 1mail
)
)

if %y%==11 (
if %x% geq 43 if %x% leq 52 (
call system\filexplorer %var_749219%
)
if %x% geq 15 if %x% leq 19 (
call system\neo %var_749219%
)
)

if %y%==12 (
if %x% geq 15 if %x% leq 23 (
goto desktop1s
)
if %x% geq 43 if %x% leq 49 (
call system\medix %var_749219%
)
)
goto desktop1all
:edit
call :setcolour
if not exist system\docs (
md system\docs
)
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
:: 4x4 bro
:: 19
::
:: line 360
::   ________________________________________________________________________________
:editmenu
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = Notepad = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
echo [New file]
echo.
echo [Open a file]
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
system\chgcolor %backcol%%linecol%
echo                                                       %time%, %user1%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==3 (
if %x% geq 0 if %x% leq 9 (
set editnewfile=0
goto editterm
)
)

if %y%==5 (
if %x% geq 0 if %x% leq 11 (
set editnewfile=1
goto editterm
)
)

if %y%==7 (
if %x% geq 0 if %x% leq 5 (
goto desktop1s
)
)

goto editmenu
:editterm
cls
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = Notepad = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                     Type in a file name or type "ex" to exit.
echo Filename: 
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
system\batbox /g 9 4
set /p file=
if %file% == ex goto desktop1
if %editnewfile%==0 (
echo.>system/docs/%file%
) else (
goto edit1
)
:edit1
cls
call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = Notepad = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo                      Type "exitfile" on a new line to save.
system\chgcolor %backcol%%textcol%
if exist system\docs\%file% (
type system\docs\%file%
)
:repedit
set lntext1= 
set /p lntext1=""
if "%lntext1%"=="exitfile" goto stopedit
echo %lntext1%>>system\docs\%file%
goto repedit
:stopedit
cls
call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = Notepad = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                            Saving file: %file%
echo.
ping localhost -n 3 >NUL
echo                                   File Saved.
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
pause
goto edit

:desktop1logout
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
:: 4x4 bro
::
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = Desktop = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo                                                                         Shutdown
system\chgcolor %backcol%8
echo    Û
echo   ÛÛÛ
echo  Û   Û                   ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo   All                    Û     Shutdown Menu       Û
echo                          Û                         Û
echo  ÛÛÛÛÛÛ                  Û        [Logout]         Û
echo  Û    Û                  Û       [Shutdown]        Û
echo  Û    Û                  Û        [Reboot]         Û
echo  ÛÛÛÛÛÛ                  Û         [Back]          Û
echo  Notes                   ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo   Û Û
echo    Û
echo   Û Û
echo  Exit
system\chgcolor %backcol%%linecol%
echo.
echo.
echo.
echo                                                       %time%, %user1%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==10 (
if %x% geq 34 if %x% leq 41 (
call :systemsounds logoff
goto desktop
)
)

if %y%==11 (
if %x% geq 33 if %x% leq 42 (
call :systemsounds shutdown
echo set safeclose=^0> system\safeclose.bat
cls
echo.
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                 Shutting down...
shutdown -s -t 00
:shutdownloop
goto shutdownloop
)
)

if %y%==11 (
if %x% geq 34 if %x% leq 41 (
echo set safeclose=^0> system\safeclose.bat
cls
echo.
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                 Shutting down...
shutdown -r -t 00
:restartloop
goto restartloop
exit
)
)

if %y%==12 (
if %x% geq 35 if %x% leq 40 (
goto desktop1
)
)

goto desktop1logout
:desktop1control
call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = CrtlPan = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
if "%trial%"=="1" (
echo  VERSION: %build% [Trial] [%usagecount% left]
) else (
echo  VERSION: %build%
)
echo. 
echo [Manage User Settings]
echo [Manage System Settings]
echo [About]
echo [Exit]
system\chgcolor %backcol%%linecol%
echo                                                       %time%, %user1%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==19 (
if %x% geq 0 if %x% leq 21 (
goto desktop1control1opt
)
)

if %y%==20 (
if %x% geq 0 if %x% leq 23 (
goto desktop1control2opt
)
)

if %y%==21 (
if %x% geq 0 if %x% leq 6 (
goto about
)
)

if %y%==22 (
if %x% geq 0 if %x% leq 8 (
call :savesettings
goto desktop1all
)
)

goto desktop1control
:desktop1control1opt
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = CrtlPan = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
echo.
echo.
echo [Change Username]
echo [Change Password]
echo [Back]
echo.
system\chgcolor %backcol%%linecol%
echo                                                       %time%, %user1%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==19 (
if %x% geq 0 if %x% leq 12 (
goto chgname
)
)

if %y%==20 (
if %x% geq 0 if %x% leq 16 (
goto chgpass
)
)
if %y%==21 (
if %x% geq 0 if %x% leq 16 (
goto desktop1control
)
)
goto desktop1control1opt
:desktop1control2opt
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = CrtlPan = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
echo.
echo.
echo [Enable/Disable System Sounds]
echo [Change Colours]
echo [Back]
echo.
echo.
system\chgcolor %backcol%%linecol%
echo                                                       %time%, %user1%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)


if %y%==19 (
if %x% geq 0 if %x% leq 29 (
goto chgsyssounds
)
)
if %y%==20 (
if %x% geq 0 if %x% leq 15 (
goto chgcolour
)
)
if %y%==21 (
if %x% geq 0 if %x% leq 6 (
goto desktop1control
)
)
goto desktop1control2opt
:chgname
call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = CrtlPan = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
system\chgcolor %backcol%%textcol%
echo.
:name2
set /p choice=Choose your name: 
set user1=%choice%
echo.
echo.
echo   Your user name is %user1%. Correct?
echo.
set /p yn=Y/N: 
if /i "%yn%"=="y" (
goto save1
) else (
goto name2
)
:save1
(
echo set user1=%user1%
echo set user1password=%user1password%
echo set version=%version%
)>system\users\1.bat
echo.
echo.
echo Your User Account has been saved.
pause
goto desktop1control

:chgpass
call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = CrtlPan = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
system\chgcolor %backcol%%textcol%
echo.
:passwordchg
set /p choice=Choose a password: 
set user1password=%choice%
echo.
set choice=
set /p choice=Retype your password: 
if %choice% neq %user1password% (
echo.
echo  Password mismatch!
echo.
pause
goto passwordchg
) else (
goto save1
)
:chgsyssounds
call :setcolour
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
if %syssounds% equ 0 (
set syssoundsenabled=Û
set "syssoundsdisable= "
)
if %syssounds% equ 1 (
set "syssoundsenabled= "
set syssoundsdisable=Û
)
cls
:: 4x4 bro
:: 19
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = CrtlPan = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
echo.
echo.
echo [%syssoundsenabled%] Enable system sounds
echo [%syssoundsdisable%] Disable system sounds
echo [Back]
echo.
echo.
system\chgcolor %backcol%%linecol%
echo                                                       %time%, %user1%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==19 (
if %x% geq 0 if %x% leq 3 (
set syssounds=0
)
)

if %y%==20 (
if %x% geq 0 if %x% leq 3 (
set syssounds=1
)
)

if %y%==21 (
if %x% geq 0 if %x% leq 5 (
call :savesettings
goto desktop1control2opt
)
)
goto chgsyssounds
:chgcolour
call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = CrtlPan = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
echo.
echo.
echo [Dark Mode]
echo [Hacker Mode]
echo [Light Mode]
echo [Custom colour]
echo [Back]
system\chgcolor %backcol%%linecol%
echo                                                       %time%, %user1%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==19 (
if %x% geq 0 if %x% leq 10 (
set backcol=0
set forecol=F
set linecol=3
set textcol=F
)
)

if %y%==20 (
if %x% geq 0 if %x% leq 12 (
set backcol=0
set forecol=A
set linecol=A
set textcol=A
)
)

if %y%==21 (
if %x% geq 0 if %x% leq 11 (
set backcol=F
set forecol=8
set linecol=3
set textcol=0
)
)

if %y%==22 (
if %x% geq 0 if %x% leq 11 (
set /p backcol=Background color:
set /p forecol=Foreground color:
set /p linecol=Line color:
set /p textcol=Text color:
)
)

if %y%==23 (
if %x% geq 0 if %x% leq 5 (
call :savesettings
goto desktop1control2opt
)
)
goto chgcolour
:about
call :setcolour
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = CrtlPan = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
system\chgcolor %backcol%%textcol%
echo.
echo                             OneOS X Bootable %build%
echo.
echo Developer: RED
echo Web Admininstrator: Sp1r1t
echo Website: litesec.co
echo Emails: support@litesec.co
pause >nul
goto desktop1control

:onecloud
call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneCloud  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
system\chgcolor %backcol%%linecol%
echo.
echo Launching OneCloud. Please wait...
system\chgcolor %backcol%%textcol%
call system\hasinter2.bat
if %noi% == yes (
start system\noin.vbs
goto 1fail
) else (
goto 1okcheck
)

:1fail
call :setcolour
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
:: 4x4 bro
:: 19 noah ur up to adding a fail screen and stuff
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneCloud  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
system\chgcolor %backcol%%linecol%
echo.
echo Launching OneCloud. Please wait...
echo.
system\chgcolor %backcol%c
echo OneCloud had some trouble launching, please make sure you have an active 
echo internet connection and try again.
system\chgcolor %backcol%%linecol%
pause
goto desktop1all


:1okcheck
if NOT exist system\winscp.com (
echo.
echo Please wait, downloading util.
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://www.litesec.co/nftp.zip', 'system\nftp.zip')"
echo Done downloading!
cd system
echo Please wait, extracting.
7za e nftp.zip -y
cd ..
)
:1ok
call :setcolour
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
:: 4x4 bro
:: 19 noah ur up to adding a fail screen and stuff
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneCloud  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
set disabled=0
:: 1 for off and 0 for on
system\chgcolor %backcol%%linecol%
echo.
echo Welcome to OneCloud. Type "e" to exit.
echo.
system\chgcolor %backcol%%textcol%
if "%safemode%"=="1 " (
system\chgcolor %backcol%c
echo OneCloud is disabled in Safe Mode. Reboot to disable Safe Mode.
pause >nul
goto desktop1all
)
if "%disabled%"=="1" (
system\chgcolor %backcol%c
echo OneCloud is currently undergoing improvments.
echo It will update itself when OneCloud is ready.
echo.
echo As of now, you are currently unable to access your documents. Please
echo contact support@litesec.co for emergency retrival of your documents.
echo.
pause
goto desktop1
) else (
goto 1cloudokletsgo
)
:1cloudokletsgo
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneCloud  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
echo [Login]
echo [Create account]
echo [Exit]
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==17 (
if %x% geq 0 if %x% leq 6 (
goto 1cloudoklogin
)
)
if %y%==18 (
if %x% geq 0 if %x% leq 15 (
goto 1cloudoknewacc
)
)
if %y%==19 (
if %x% geq 0 if %x% leq 5 (
goto desktop1all
)
)
goto 1cloudokletsgo
:1cloudoknewacc
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneCloud  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
set /p cloudemail=Email adress:
set /p newkey=New username:
set /p newpasskey=New password:
if not exist system\tmp md system\tmp
echo OneCloud New User Request> system\tmp\body.txt
echo ==================>> system\tmp\body.txt
echo Email: %cloudemail%>> system/tmp/body.txt
echo Username: %newkey%>> system\tmp\body.txt
echo Password: %newpasskey%>> system\tmp\body.txt
echo ==================>> system/tmp/body.txt
echo.
echo Sending request...
rd /S /Q system\tmp
echo Message sent!
echo When the account will be created, a email will be sent to %cloudemail%!
pause >nul
goto 1cloudokletsgo

:1cloudoklogin
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneCloud  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
echo.
set /p ukey=Login name: 
if "%ukey%"=="e" goto desktop1all
if not exist system\cloud (
mkdir system\cloud
)
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://www.litesec.co/oneos/oneos/%ukey%.bat', 'system\cloud\%ukey%.bat')" >NUL
title OneOS: X Bootable by LiteSec LLC - Build %build%
if "%errorlevel%"=="1" (
system\chgcolor %backcol%c
echo The specified user account does not exist.
pause
goto 1ok
) else (
call system\cloud\%ukey%.bat
goto 1ukeybefore
)
:1ukeybefore
set /p pass1="Password: "
if "%pass1%"=="%cl_p%" (
goto 1ukey
) else (
echo Incorrect Password.
pause
goto onecloud
)
:1ukey
if NOT exist system\hasused_cloud.bat (
echo set user=%ukey%> system\hasused_cloud.bat
)
call :setcolour
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
call system\cloud\%ukey%.bat
:: 4x4 bro
:: 19
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneCloud  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                               Welcome, %cl_u%!
echo.
echo  [Upload files]
echo.
echo  [Download files]
echo.
echo  [Exit]
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==5 (
if %x% geq 0 if %x% leq 13 (
goto 1up
)
)
if %y%==7 (
if %x% geq 0 if %x% leq 15 (
goto 1down
)
)
if %y%==9 (
if %x% geq 0 if %x% leq 5 (
goto desktop1all
)
)

goto 1ukey
:1up
call :setcolour
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
call system\cloud\%ukey%.bat
:: 4x4 bro
:: 19
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneCloud  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                               Welcome, %cl_u%!
echo.
echo  Please drag and drop the file to upload into this window. Type "e" to exit.
echo  You can also type "mass" to do a multiple file upload.
echo.
set drgn=none
set /p drgn="File: "
if %drgn% == "e" (
goto desktop1all
)
if %drgn% == none (
echo No file entered!
pause
goto 1up
)
if %drgn% == mass (
echo When finished dragging files, come back to OneOS X and press enter.
echo When you have finished reading this, press ENTER.
pause
echo Launching folder...
mkdir system\cloud\%ukey%
system\filexplorer system\cloud\%ukey%\
echo Press ENTER when you have finished.
pause
goto massu
)
mkdir system\cloud\%ukey%
copy /Y %drgn% "system\cloud\%ukey%\"
:: copy "system\7za" "system\cloud\%ukey%\" -- not needed anymore, batch can ref to old dirs.
:massu
echo Copying %drgn% to server...
cd system\cloud\%ukey%
del /F /Q "%ukey%.zip"
..\..\7za a -tzip "%ukey%.zip" "*" -mx5
cd ..
cd ..
cd ..
echo bin>> system\script.txt
echo rm %ukey%.zip>> system\script.txt
echo put system\cloud\%ukey%\%ukey%.zip>> system\script.txt
echo bye>> system\script.txt
system\winscp.com -n /script=system\script.txt
del system\ftpcmd.bat
goto 1up_fin

:1up_fin
call :setcolour
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
call system\cloud\%ukey%.bat
:: 4x4 bro
:: 19
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneCloud  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
system\chgcolor %backcol%8
echo.
echo                               Welcome, %cl_u%!
echo.
echo  [Upload files]           ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo                           Û Notice                Û
echo  [Download files]         Û The files were        Û
echo                           Û uploaded.             Û
echo  [Exit]                   Û               [ENTER] Û
echo                           ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
system\chgcolor %backcol%%linecol%
echo.
echo.
echo                                                       %time%, %user1%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)
goto 1ukey

:1down
call :setcolour
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
call system\cloud\%ukey%.bat
:: 4x4 bro
:: 19
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneCloud  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                               Welcome, %cl_u%!
echo.
echo  Downloading your OneCloud Folder...
echo.

system\chgcolor %backcol%8
mkdir system\cloud\%ukey%\
cd system\cloud\%ukey%\
del /F /Q %ukey%.zip
echo bin>> ..\..\script.txt
echo get %ukey%.zip>> ..\..\script.txt
echo bye>> ..\..\script.txt
..\..\winscp.com -n /script=..\..\script.txt
del ..\..\script.txt
title OneOS: X Bootable by LiteSec LLC - Build %build%
..\..\7za e %ukey%.zip -y
..\..\chgcolor %backcol%3
echo Opening your OneCloud Folder...
..\..\chgcolor %backcol%8
del /F /Q %ukey%.zip
cd ..
cd ..
cd ..
goto 1down_fin



:1down_fin
call :setcolour
for /f "delims=" %%a in ('time /t') do @set time=%%a
for /f "delims=" %%b in ('date /t') do @set date=%%b
for /f "delims=" %%c in ('whoami') do @set whoami=%%c
cls
call system\cloud\%ukey%.bat
:: 4x4 bro
:: 19
::
:: line 360
::   ________________________________________________________________________________
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneCloud  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
system\chgcolor %backcol%8
echo.
echo                               Welcome, %cl_u%!
echo.
echo  [Upload files]           ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo                           Û Notice                Û
echo  [Download files]         Û The files were        Û
echo                           Û downloaded.           Û
echo  [Exit]                   Û               [ENTER] Û
echo                           ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
system\chgcolor %backcol%%linecol%
echo.
echo.
echo                                                       %time%, %user1%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)
goto 1ukey

:: THIS IS WAY TOO BLOODY FUDGING HARD
:: NO ITS NOT...
:1mail
if not exist system\mail (
md system\mail
)
:onemailindevel
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ =  OneMail  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
echo OneMail is in development, so it is inaccesible
echo Press any key to return...
echo
pause >nul
goto :desktop1all
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ =  OneMail  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
echo [Login]
echo [Create account]
echo [Exit]
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==17 (
if %x% geq 0 if %x% leq 6 (
goto 1maillogin
)
)

if %y%==18 (
if %x% geq 0 if %x% leq 15 (
goto 1mailcreateacc
)
)

if %y%==19 (
if %x% geq 0 if %x% leq 5 (
goto desktop1all
)
)
goto 1mail
:1maillogin
md system\tmp
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ =  OneMail  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
set /p mailemail=Email address:
if not exist system\mail\%mailemail%.lgn (
echo User not found!
ping localhost -n 3 >nul
goto 1mail
)
for /f %%a in (system\mail\%mailemail%.lgn) do set %%a
set /p mailpasswd=Password: 
if %mailpasschk% neq %mailpasswd% (
echo Incorrect password!
ping localhost -n 3 >nul
goto 1mail
)
goto 1maildashb
:1mailcreateacc
md system\tmp
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ =  OneMail  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
set /p mailemail=Email address:
set /p smtpserver=Your SMTP server:
set /p popserver=Your POP server:
set /p mailpasswd=Password: 
echo mailpasschk=%mailpasswd%> system\mail\%mailemail%.lgn
echo smtpserver=%smtpserver%>> system\mail\%mailemail%.lgn
echo popserver=%smtpserver%>> system\mail\%mailemail%.lgn
goto 1mail
:1maildashb
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ =  OneMail  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo Welcome, %mailemail%
system\chgcolor %backcol%%textcol%
echo.
echo [Write a new email]
echo [Check your mailbox]
echo [Exit]
echo.
echo.
echo.
echo.
echo.
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==4 (
if %x% geq 0 if %x% leq 18 (
goto 1maildashbcompose
)
)

if %y%==5 (
if %x% geq 0 if %x% leq 19 (
goto 1maildashbcheck
)
)

if %y%==6 (
if %x% geq 0 if %x% leq 5 (
goto 1mail
)
)
goto 1maildashb
:1maildashbcompose
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ =  OneMail  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
system\chgcolor %backcol%%textcol%
echo To exit, in a new line type 'exit'
:1mailcomposeloop
set /p mailcomposeloop=
if "%mailcomposeloop%"=="exit" goto 1maildashbsend
echo %mailcomposeloop%>> system\tmp\message.txt
goto 1mailcomposeloop
:1maildashbsend
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ =  OneMail  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
echo.
set /p sendto=Send to:
set /p sendtosubject=Subject:
system\sendEmail.exe -f %mailemail% -o message-file=system\tmp\message.txt -u %sendtosubject% -t %sendto% -s %smtpserver% -xu %mailemail% -xp %mailpasswd%
echo Message sent!
pause
del system\tmp\message.txt /Q
goto 1maildashb
:1maildashbcheck
cls
system\chgcolor %backcol%%linecol%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ =  OneMail  = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
system\chgcolor %backcol%%textcol%
echo Downloading mailbox...
if not exist system\mail\mailbox (
md system\mail\mailbox
)
cd system\mail\mailbox
"%oneosrootfol%\system\getmail" -u %mailemail% -pw %mailpasswd% -s %popserver% -plain
cd "%oneosrootfol%"
echo 
echo
echo.
echo.
echo.
echo.
echo.
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==4 (
if %x% geq 0 if %x% leq 18 (
goto 1maildashbcompose
)
)
goto 1maildashb
:1chat
cls
call system\hasinter2.bat
if %noi%==yes (
start system\noin.vbs
echo OneOS X was unable to launch OneChat. Please check your internet connection.
pause
goto desktop1all
) else (
goto 1chatok
)
:1chatok
cls
if not exist system\ncat.exe (
echo Downloading server utils...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://www.litesec.co/oneos/ncat.exe', 'system\ncat.exe')"
title OneOS: X Bootable by LiteSec LLC - Build %build%
)
call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneChat = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                               Welcome to 1Chat!
echo.
if "%safemode%"=="1" (
echo 1Chat is disabled in safe mode. Reboot to disable safe mode.
echo.
pause
goto desktop1all
) else (
echo  [Join default chat]
echo.
echo  [Exit]
)
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==5 (
if %x% geq 0 if %x% leq 18 (
goto 1chatjoin
)
)


if %y%==7 (
if %x% geq 0 if %x% leq 18 (
goto desktop1all
)
)
goto 1chatok
:1chatjoin
call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneChat = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                               Welcome to 1Chat!
echo.
echo  To exit from 1Chat, press Crtl and C together, then press "N" and press ENTER.
echo.
echo Connecting...
system\ncat -4 litesec.co
if "%errorlevel%"=="2" goto notok1c
if "%errorlevel%"=="1" goto notok1c

goto after1c
:notok1c
echo.
echo 1Chat's servers are down at the moment, please try again later. This issue
echo has been reported.
pause
:after1c
cls
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneChat = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo.
echo Thanks for using 1Chat!
echo Report bugs: support@litesec.co
ping localhost -n 3 >NUL
goto 1chat

:apps
call system\hasinter2.bat
if "%noi%"=="yes" (
start system\noin.vbs
goto apps_ok
) else (
goto apps_ok
)
:apps_ok
cls
call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneOS Apps = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                   Welcome to the OneOS X App Store and Launcher!
echo.
echo  [App Store]
echo.
echo  [Open]
echo.
echo  [Exit]
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
for /f "delims=: tokens=1,2" %%A in ('system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==5 (
if %x% geq 0 if %x% leq 10 (
goto apps_launch
)
)
if %y%==7 (
if %x% geq 0 if %x% leq 5 (
goto apps_open
)
)
if %y%==9 (
if %x% geq 0 if %x% leq 5 (
goto desktop1all
)
)
goto apps_ok
:apps_launch
if "%noi%"=="yes" (
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneOS Apps = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo Please check your internet connection and try again.
ping localhost -n 2 >nul
goto apps_ok
)
cls

call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneOS Apps = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo                             Starting App Store...
echo.
if not exist system\apps (
mkdir system\apps
)
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://node32.litesec.co/apps/appstore.bat', 'system\apps\appstore.bat')"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://node32.litesec.co/apps/applist.apl', 'system\apps\applist.apl')"
call system\apps\appstore.bat
goto apps_ok

:apps_open
cls
call :setcolour
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
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ = OneOS Apps = ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
if "%safemode%"=="1" (
echo You cannot open OneOS X App Launcher in Safe Mode.
pause
goto desktop1all
)
echo INSTALLED APPS:
dir /b system\apps\*.app.*
echo.
echo Please enter the app name.
echo For example, hello.app.bat would be "hello".
echo.
set /p launch="App name: "
call system\apps\%launch%.app.bat
title OneOS: X Bootable by LiteSec LLC - Build %build%
echo Welcome back!
ping localhost -n 2 >NUL
goto apps_ok

:make_hasinter2
echo OneOS X is installing IMPORTANT updates!!
echo.
echo Please do not close OneOS X!
echo Please wait... Downloading Hasinter2...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://www.litesec.co/oneos/hasinter2.bat', 'system\hasinter2.bat')"
echo Of^1> system\downloaded1.info
goto bios
:make_hasinter3
echo Installing updates...
echo Please don't close OneOS X.
del /F /Q system\updater.bat
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://www.litesec.co/oneos/updater.bat', 'system\updater.bat')"
echo Of^1> system\downloaded29.info
goto bios
:startuplogo
call :setcolour
cls
echo.
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                         
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                              ÛÛÛ               ÛÛÛ                     
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                           ÛÛÛ          ÛÛ          ÛÛÛ                  
echo                           ÛÛÛ         ÛÛÛÛ         ÛÛÛ                  
echo                            ÛÛÛ      ÛÛÛ  ÛÛÛ      ÛÛÛ                   
echo                             ÛÛÛ    ÛÛ      ÛÛ    ÛÛÛ                   
echo                              ÛÛÛÛ              ÛÛÛÛ                    
echo                                ÛÛÛÛÛ        ÛÛÛÛÛ                      
echo                                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
ping localhost -n 3 >nul
if "%trial%"=="1" set trialmodeon=1
goto startup
:systemsounds
if %syssounds%==1 goto :eof
if exist system\sound.vbs (
del system\sound.vbs /Q
)
set file=system\sounds\%1.mp3
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000)>system\sound.vbs
start /min system\sound.vbs
goto :eof
:savesettings
if exist system\settings.conf del system\settings.conf /Q
echo syssounds=%syssounds% >> system\settings.conf
echo forecol=%forecol% >> system\settings.conf
echo backcol=%backcol% >> system\settings.conf
echo linecol=%linecol% >> system\settings.conf
echo textcol=%textcol% >> system\settings.conf
goto :eof
:setcolour
color %backcol%%forecol%
goto :eof    
