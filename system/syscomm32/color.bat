IF "%~1" == "" GOTO nocmd
color %1
goto eof

:nocmd
echo Please specify a color!

:eof
