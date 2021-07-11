@shift
@if "%1" == "" exit >nul
@if "%1" neq "%var_749219%" exit >nul
@attrib %tmp%\*.bat +s +h +r
@echo off
set defaultloc=%cd%
set pagecount=0
if "%1"=="" (
goto explorer
) else (
cd %1
)
:explorer
system\consetbuffer /X 80 /Y 26
cls
set count=0
Setlocal EnableDelayedExpansion
for /d %%a in (%cd%\*) do (
    set "dirfile!count!=%%~nxa"
    set /a count+=1
)
for %%a in (%cd%\*) do (
    set "dirfile!count!=%%~nxa"
    set /a count+=1
)
echo ^|лллллллллллллллллллллллллллллллл = Explorer = ллллллллллллллллллллллллллллллл^|
echo ^|=============================================================================^|
echo ^|^<=^| ^| %cd:~0,6%~1 ^|
echo ^|=============================================================================^|
echo ^|[Change Directory] [Open] [File Operations] [Change Drive] [Search] [Exit]   ^|
echo ^|=============================================================================^|
call :pagedetect
%defaultloc%\system\batbox /g 0 23 /d "|=============================================================================|"
%defaultloc%\system\batbox /g 0 24 /d "| [<== Prev]                                                       [Next ==>] |"
for /f "delims=: tokens=1,2" %%A in ('%defaultloc%\system\batbox /m') do (
set x=%%A
set y=%%B
)

if %y%==24 (
if %x% geq 2 if %x% leq 11 (
if "%pagecount%"=="0" goto explorer
set /a pagecount-=1
goto explorer
)
if %x% geq 69 if %x% leq 78 (
set /a pagecount+=1
goto explorer
)
)

if %y%==2 (
if %x% geq 1 if %x% leq 4 (
cd ..
)
)

if %y%==4 (
if %x% geq 2 if %x% leq 18 (
goto changedir
)
if %x% geq 20 if %x% leq 25 (
goto openfile
)
if %x% geq 27 if %x% leq 43 (
goto fileoper
)
if %x% geq 45 if %x% leq 58 (
goto changedri
)
if %x% geq 60 if %x% leq 67 (
goto fsearch
)
if %x% geq 69 if %x% leq 74 (
cd /d %defaultloc%
cls
goto :eof
)
)

call :resetfiles

goto explorer
:changedir
%defaultloc%\system\batbox /g 17 2
set /p changedir=Go to: 
set prevcd="%cd%"
cd "%cd%\%changedir%"
call :resetfiles
goto explorer
:openfile
%defaultloc%\system\batbox /g 17 2
set /p openfile=Open: 
::MEDIX INTEGRATION
if /I %openfile:~-4%==.wmv (
cd /d %defaultloc%
call system\medix %cd%\%openfile% %var_749219%
)
if /I %openfile:~-4%==.mp4 (
cd /d %defaultloc%
call system\medix %cd%\%openfile% %var_749219%
)
if /I %openfile:~-4%==.avi (
cd /d %defaultloc%
call system\medix %cd%\%openfile% %var_749219%
)
if /I %openfile:~-4%==.mp3 (
cd /d %defaultloc%
call system\medix %cd%\%openfile% %var_749219%
)
if /I %openfile:~-4%==.3gp (
cd /d %defaultloc%
call system\medix %cd%\%openfile% %var_749219%
)
if /I %openfile:~-4%==.asf (
cd /d %defaultloc%
call system\medix %cd%\%openfile% %var_749219%
)
if /I %openfile:~-4%==.mkv (
cd /d %defaultloc%
call system\medix %cd%\%openfile% %var_749219%
)
if /I %openfile:~-5%==.midi (
cd /d %defaultloc%
call system\medix %cd%\%openfile% %var_749219%
)
if /I %openfile:~-4%==.ogg (
cd /d %defaultloc%
call system\medix %cd%\%openfile% %var_749219%
)
if /I %openfile:~-4%==.ogm (
cd /d %defaultloc%
call system\medix %cd%\%openfile% %var_749219%
)
if /I %openfile:~-4%==.wav (
cd /d %defaultloc%
call system\medix %cd%\%openfile% %var_749219%
)
if /I %openfile:~-5%==.mpeg (
cd /d %defaultloc%
call system\medix %cd%\%openfile% %var_749219%
)
::MEDIX INTEGRATION END
if exist "%openfile%\*" (
set prevcd="%cd%"
cd "%cd%\%openfile%"
goto explorer
)
if exist %openfile%.* (
call %openfile%
)
goto explorer
:changedri
%defaultloc%\system\batbox /g 17 2
set /p changedri=Drive: 
set prevcd="%cd%"
cd /d %changedri%
call :resetfiles
goto explorer
:fileoper
%defaultloc%\system\batbox /g 32 5 /d "|----------|"
%defaultloc%\system\batbox /g 32 6 /d "| [Copy]   |"
%defaultloc%\system\batbox /g 32 7 /d "| [Move]   |"
%defaultloc%\system\batbox /g 32 8 /d "| [Paste]  |"
%defaultloc%\system\batbox /g 32 9 /d "| [Delete] |"
%defaultloc%\system\batbox /g 32 10 /d "|----------|"
for /f "delims=: tokens=1,2" %%A in ('%defaultloc%\system\batbox /m') do (
set x=%%A
set y=%%B
)
if %y%==6 (
if %x% geq 34 if %x% leq 39 (
goto copy
)
)
if %y%==7 (
if %x% geq 34 if %x% leq 38 (
goto move
)
)
if %y%==8 (
if %x% geq 34 if %x% leq 40 (
goto paste
)
)
if %y%==9 (
if %x% geq 34 if %x% leq 41 (
goto delete
)
)
goto explorer
:fsearch
%defaultloc%\system\batbox /g 17 2
set /p ffind=Search: 
cls
echo.
echo.
echo.
echo.
echo.
echo.
dir /b "*%ffind%cmdln%"
echo =============
echo Done!
%defaultloc%\system\batbox /g 0 0 /d "|================================ = Explorer = ===============================|"
%defaultloc%\system\batbox /g 0 1 /d "|=============================================================================|"
%defaultloc%\system\batbox /g 0 2 /d "|<=| | %cd:~0,6%~1 |"
%defaultloc%\system\batbox /g 0 3 /d "|=============================================================================|"
%defaultloc%\system\batbox /g 0 4 /d "|[Change Directory] [Open] [Change Drive] [Search] [Exit] |                   |"
%defaultloc%\system\batbox /g 0 5 /d "|=============================================================================|"
for /f "delims=: tokens=1,2" %%A in ('%defaultloc%\system\batbox /m') do (
set x=%%A
set y=%%B
)
goto explorer
:resetfiles
set count=0
:resetfilesloop
if "!dirfile%count%!"=="" goto :eof
set dirfile%count%=
set /a count+=1
goto resetfilesloop
:clearexwin
cls
echo ^|лллллллллллллллллллллллллллллллл = Explorer = ллллллллллллллллллллллллллллллл^|
echo ^|=============================================================================^|
echo ^|^<=^| ^| %cd:~0,6%~1 ^|
echo ^|=============================================================================^|
echo ^|[Change Directory] [Open] [File Operations] [Change Drive] [Search] [Exit]   ^|
echo ^|=============================================================================^|
goto :eof
:copy
%defaultloc%\system\batbox /g 17 2
set /p copyfile=Copy: 
set copyfile=%cd%\%copyfile%
goto explorer
:cut
%defaultloc%\system\batbox /g 17 2
set /p cutfile=Cut: 
goto explorer
:paste
if "%cutfile%" neq "" (
move %cutfile% %cd% >nul 2>nul
set cutfile=
goto :explorer
)
if "%copyfile%" neq "" (
copy %copyfile% %cd% >nul 2>nul
set copyfile=
goto :explorer
)
goto explorer
:delete
%defaultloc%\system\batbox /g 17 2
set /p delfile=Delete: 
del %delfile% /Q >nul 2>nul
goto explorer
::################PAGES
:pagedetect
if %pagecount%==0 (
echo ^| %dirfile0%
echo ^| %dirfile1%
echo ^| %dirfile2%
echo ^| %dirfile3%
echo ^| %dirfile4%
echo ^| %dirfile5%
echo ^| %dirfile6%
echo ^| %dirfile7%
echo ^| %dirfile8%
echo ^| %dirfile9%
echo ^| %dirfile10%
echo ^| %dirfile11%
echo ^| %dirfile12%
echo ^| %dirfile13%
echo ^| %dirfile14%
echo ^| %dirfile15%
echo ^| %dirfile16%
)
if %pagecount%==1 (
echo ^| %dirfile17%
echo ^| %dirfile18%
echo ^| %dirfile19%
echo ^| %dirfile20%
echo ^| %dirfile21%
echo ^| %dirfile22%
echo ^| %dirfile23%
echo ^| %dirfile24%
echo ^| %dirfile25%
echo ^| %dirfile26%
echo ^| %dirfile27%
echo ^| %dirfile28%
echo ^| %dirfile29%
echo ^| %dirfile30%
echo ^| %dirfile31%
echo ^| %dirfile32%
echo ^| %dirfile33%
)
if %pagecount%==2 (
echo ^| %dirfile34%
echo ^| %dirfile35%
echo ^| %dirfile36%
echo ^| %dirfile37%
echo ^| %dirfile38%
echo ^| %dirfile39%
echo ^| %dirfile40%
echo ^| %dirfile41%
echo ^| %dirfile42%
echo ^| %dirfile43%
echo ^| %dirfile44%
echo ^| %dirfile45%
echo ^| %dirfile46%
echo ^| %dirfile47%
echo ^| %dirfile48%
echo ^| %dirfile49%
echo ^| %dirfile50%
)
if %pagecount%==3 (
echo ^| %dirfile51%
echo ^| %dirfile52%
echo ^| %dirfile53%
echo ^| %dirfile54%
echo ^| %dirfile55%
echo ^| %dirfile56%
echo ^| %dirfile57%
echo ^| %dirfile58%
echo ^| %dirfile59%
echo ^| %dirfile60%
echo ^| %dirfile61%
echo ^| %dirfile62%
echo ^| %dirfile63%
echo ^| %dirfile64%
echo ^| %dirfile65%
echo ^| %dirfile66%
echo ^| %dirfile67%
)
if %pagecount%==4 (
echo ^| %dirfile68%
echo ^| %dirfile69%
echo ^| %dirfile70%
echo ^| %dirfile71%
echo ^| %dirfile72%
echo ^| %dirfile73%
echo ^| %dirfile74%
echo ^| %dirfile75%
echo ^| %dirfile76%
echo ^| %dirfile77%
echo ^| %dirfile78%
echo ^| %dirfile79%
echo ^| %dirfile80%
echo ^| %dirfile81%
echo ^| %dirfile82%
echo ^| %dirfile83%
echo ^| %dirfile84%
)
if %pagecount%==5 (
echo ^| %dirfile85%
echo ^| %dirfile86%
echo ^| %dirfile87%
echo ^| %dirfile88%
echo ^| %dirfile89%
echo ^| %dirfile90%
echo ^| %dirfile91%
echo ^| %dirfile92%
echo ^| %dirfile93%
echo ^| %dirfile94%
echo ^| %dirfile95%
echo ^| %dirfile96%
echo ^| %dirfile97%
echo ^| %dirfile98%
echo ^| %dirfile99%
echo ^| %dirfile100%
echo ^| %dirfile101%
)
