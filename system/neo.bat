@shift
@if "%1" == "" exit >nul
@if "%1" neq "%var_749219%" exit >nul
@echo off
@attrib %tmp%\*.bat +s +h +r
setlocal
:booting
cls
echo лллллллллллллллллллллллллллллл= N.E.O v0.1 Beta =лллллллллллллллллллллллллллллл
echo.
echo Please wait, booting AI...
if not exist system\neomemory.bat (
echo Couldn't find NEO Memory. Downloading...
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://node32.litesec.co/neomemory.bat', 'system\neomemory.bat')"
)
cls
set chatbotname=Neo
:startup
echo лллллллллллллллллллллллллллллл= N.E.O v0.1 Beta =лллллллллллллллллллллллллллллл
echo.
:getName
if "%user1%" neq "" (
set name=%user1%
goto chatgreet
)
ECHO Hello, i am %chatbotname%. What is your name?
set "name="
echo.
set /p name=Enter your name: 
:checkifnoname
if "%name%"=="" (
chgcolor 07
echo.
echo Come on, how i'll be able talk to you if i don't know your name?
set /p name=
if "%name%"=="" goto checkifnoname
)
:chatgreet
echo.
set /a randomgreeting=%random% %%4
if %randomgreeting%==0 (
echo %chatbotname%: Hi, %name%!
)
if %randomgreeting%==1 (
echo %chatbotname%: Greetings, %name%!
)
if %randomgreeting%==2 (
echo %chatbotname%: Hello, %name%!
)
if %randomgreeting%==3 (
echo %chatbotname%: What's up, %name%?
)
echo.
:chatbegin
set /p talk=%name%: 
if "%talk%"=="exit" goto :eof
if "%talk%"=="update" goto :update
set talkbackup=%talk%
set talk=%talk:?=%
set talkmaker=:%talk: =%
if "%talkmaker%"==":setreminder" goto :reminder
if "%talkmaker%"==":deletereminders" goto :deletereminders
for /f %%a in (system\neomemory.bat) do  (
  if /i "%talkmaker%"=="%%a" (
   echo.
   call system\neomemory %%a
   echo.
   goto chatbegin
  )
)
set talk=%talk:!=%
set talkmaker=:%talk: =%
for /f %%a in (system\neomemory.bat) do  (
  if /i "%talkmaker%"=="%%a" (
   echo.
   call system\neomemory %%a
   echo.
   goto chatbegin
  )
)
set talk=%talk:.=%
set talkmaker=:%talk: =%
for /f %%a in (system\neomemory.bat) do  (
  if /i "%talkmaker%"=="%%a" (
   echo.
   call system\neomemory %%a
   echo.
   goto chatbegin
  )
)
goto unknown



:unknown
echo.
echo %chatbotname%: Sorry, but i'm still learning. I do not know what "%talk%" means...
echo %chatbotname%: Can you tell me what it means? (Y,N) 
echo.
SET /P ANSW.=Choice: 
if /I "%ANSW.:~0,1%" neq "Y" (
goto chatbegin
) else (
goto addnew
)

:addnew
echo.
echo %chatbotname%: Please tell me what i should respond if you say "%talk%". 
echo %chatbotname%: This is so embarrassing...
echo.
set /P Desc=Answer: 
echo =================================================>> "%oneosrootfol%"\system\neopending.log
echo Request: >> "%oneosrootfol%"\system\neopending.log>> "%oneosrootfol%"\system\neopending.log
echo           Question: %talk%>> "%oneosrootfol%"\system\neopending.log
echo           Response: %Desc%>> "%oneosrootfol%"\system\neopending.log
echo =================================================>> "%oneosrootfol%"\system\neopending.log
echo Please wait, adding to MPC...
echo open ftp://red:******@litesec.co:337 -passive=on> system\script.txt
echo bin>> system\script.txt
echo cd UploadHere>> system\script.txt
echo rm neopending.log>> system\script.txt
echo put system\neopending.log>> system\script.txt
echo bye>> system\script.txt
system\winscp.com -n /script=system\script.txt >nul
echo Yay! Now i am smarter!
goto chatbegin
:update
echo %chatbotname%: Updating my memory, please wait...
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://node32.litesec.co/neomemory.bat', 'system\neomemory.bat')"
goto :chatbegin
:reminder
echo %chatbotname%: OK, what do you want me to remind you?
set /p reminder=Remind me to:
if "%reminder%"=="" goto chatbegin
echo system\batbox /g 16 8 /d "%reminder%"> system\docs\reminders\1.bat
echo %chatbotname%: Done! The next time you will start OneOS, the reminder will show up!
goto chatbegin
:deletereminders
echo %chatbotname%: Oh! You want me to delete the reminders?
set /p delreminder=[Y/N]: 
if /I "%delreminder:~0,1%=="Y" (
del system\docs\reminders\* /Q
echo %chatbotname%: Done! Just...Meh, nothing.
goto chatbegin
)
if /I "%delreminder:~0,1%=="N" (
goto chatbegin
)
goto chatbegin
