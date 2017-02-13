@echo off
echo This will istall DEV-KIT to the current directory

choice /M "Do you have proxy?"
if errorlevel 2 goto start 

set /p proxy="Enter proxy:port "
set /p login="Enter login:"
set "psCommand=powershell -Command "$pword = read-host 'Enter Password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set password=%%p
set http_proxy=http://%login%:%password%@%proxy%
set https_proxy=https://%login%:%password%@%proxy%

:start

make download
make install
