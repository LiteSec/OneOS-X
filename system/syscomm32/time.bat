for /f "delims=" %%a in ('time /t') do @set time=%%a
echo The time is %time%.