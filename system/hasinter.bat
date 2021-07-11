@echo off
ECHO Checking connection, please wait...
PING -n 1 www.google.com|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto :SUCCESS
IF     ERRORLEVEL 1 goto :TRYAGAIN

:TRYAGAIN
ECHO FAILURE!
ECHO Let me try a bit more, please wait...
@echo off
PING -n 3 www.google.com|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto :SUCCESS2
IF     ERRORLEVEL 1 goto :TRYIP

:TRYIP
ECHO FAILURE!
ECHO Checking DNS...
ECHO Lets try by IP address...
@echo off
ping -n 1 216.239.37.99|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto :SUCCESSDNS
IF     ERRORLEVEL 1 goto :TRYROUTER

:TRYROUTER
ECHO FAILURE!
ECHO Lets try pinging the router....
ping -n 2 192.168.1.1|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto :ROUTERSUCCESS
IF     ERRORLEVEL 1 goto :NETDOWN

:ROUTERSUCCESS
ECHO It appears that you can reach the router, but internet is unreachable.
goto :FAILURE

:NETDOWN
ECHO FAILURE!
ECHO It appears that you having network issues, the router cannot be reached.
goto :FAILURE

:SUCCESSDNS
ECHO It appears that you are having DNS issues.
goto :FAILURE

:SUCCESS
ECHO You have an active Internet connection
set noi=no

goto END

:SUCCESS2
ECHO You have an active internet connection but some packet loss was detected.
set noi=yes

goto :END

:FAILURE
ECHO You do not have an active Internet connection
set noi=yes

goto :END

:END