@echo off
PING -n 1 www.google.com|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto :success
IF ERRORLEVEL 1 goto :success


:success
set noi=no
goto :eof


:failure
set noi=yes
goto :eof