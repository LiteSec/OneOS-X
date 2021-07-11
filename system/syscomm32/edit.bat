IF "%~1" == "" (
echo No file entered to edit.
goto eof
) else (
goto edit
)


:edit
echo To exit, press CRTL + Z and then enter.
if NOT exist "%1" goto skip
type %1
:skip
copy con %1

:eof