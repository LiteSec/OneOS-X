echo Pesto Installer
set /p d=Please enter your U3 usb drive letter: 
dfci32\u3-tool %d% -R
dfci32\u3-tool %d% -l U3.iso
