set lmanv=3.00
IF "%~1" == "" (
GOTO lmaninfo
) else (
goto checkvars
)
:lmaninfo
echo LiteSec Package Manager ^(lman^)
echo.
echo Valid options:
echo 	INSTALL ^[package name^] : installs package
echo 	REMO ^[package name^] : removes package
echo 	QUERY ^[package name^] : tests if the package exists
echo 	UPDATE : updates main DFCI packages
echo.
echo lman Version is %lmanv%
echo Update log for %lmanv%:
echo 	+ Added update function.
goto eof




:checkvars
if /I "%1" == "install" (
goto install
)
if /I "%1" == "update" (
goto update
)
if /I "%1" == "remo" (
goto remove
)
if /I "%1" == "query" (
goto query
) else (
echo %1 is not a valid command!
goto eof
)

:install
if "%~2" == "" (
echo A package was not specified!
goto eof
) else (
goto instok
)
:instok
echo Checking for package...
timeout 1 >NUL
echo OK.
:chkec
if "%3" == "--force-yes" (
goto instokone
)
echo.
echo Confirm. lman is to download %2 , correct?
set /p choice=^> 
if "%choice%" == "YES" (
goto instokone
)
if "%choice%" == "NO" (
goto eof
) else (
echo Invalid answer, please enter YES or NO in capitals.
goto chkec
)
:instokone
set vexe=%2
powershell -command "(new-object System.Net.WebClient).DownloadFile('http://dl.litesec.co/listing.bat', 'dfci32\system\listing.bat')"
call dfci32\system\listing.bat

if "%filetd%" == "1" (
set downloadedFile=bat
powershell -command "(new-object System.Net.WebClient).DownloadFile('http://dl.litesec.co/%2.bat', 'dfci32\%2.bat')"
goto downloadfin
)
if  "%filetd%" == "2" (
set downloadedFile=exe
powershell -command "(new-object System.Net.WebClient).DownloadFile('http://dl.litesec.co/%2.exe', 'dfci32\%2.exe')"
goto downloadfin
) else (
echo The package is not listed in lman. Could not download.
goto eof
)
:downloadfin
echo The file %vexe%.%downloadedFile% was successfully downloaded.
set filetd=0
goto eof
:remove
if "%~2" == "" (
echo A package to remove was not specified!
goto eof
) else (
goto remok
)
:remok
echo lman is to remove package "%2" correct? ^[YES / NO^]
set /p choice=^> 
if "%choice%" == "YES" (
goto removepkg
)
if "%choice%" == "NO" (
goto eof
) else (
echo Invalid answer, please enter YES or NO in capitals.
goto remok
)
:removepkg
echo.
echo Removing package "%2" ...
DEL /f /q dfci32\%2.*
echo Removed packages %2 .
goto eof
:query
echo lman does not currently support query for packages.
goto eof

:update
echo lman is to update main packages? ^[YES / NO^]
set /p choice=^> 
if "%choice%" == "YES" (
goto updok
)
if "%choice%" == "NO" (
goto eof
) else (
echo Invalid answer, please enter YES or NO in capitals.
goto update
)
:updok
echo Updating Packages for DFCI... 	Please wait...
echo.
echo @echo off > dfci32\updr.bat
echo echo DFCI Updating... Please wait... >> dfci32\updr.bat
echo echo [Hit] http://dl.litesec.co/dfci_updates/dfci.bat >> dfci32\updr.bat
echo del /F /Q DFCI.bat >> dfci32\updr.bat
echo powershell -command "(new-object System.Net.WebClient).DownloadFile('http://dl.litesec.co/dfci_updates/DFCI.bat', 'DFCI.bat')" >> dfci32\updr.bat
echo start dfci32\delupd.bat >> dfci32\updr.bat
echo start DFCI.bat >> dfci32\updr.bat
echo exit >> dfci32\updr.bat
echo DFCI will be updated on next reboot.
goto eof

:eof