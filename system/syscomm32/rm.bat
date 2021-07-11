IF "%~1" == "" (
echo No file entered to delete.
goto eof
) else (
goto delete
)




:delete
del /F "%1"
echo %1 was deleted.
goto eof



:eof
