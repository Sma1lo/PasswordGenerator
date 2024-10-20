@echo off
setlocal enabledelayedexpansion

set /p passwordLength="Enter the password length: "
set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()"
set "password="

for /L %%i in (1,1,%passwordLength%) do (
    set /a "randIndex=!random! %% 72"
    set "password=!password!!chars:~!randIndex!,1!"
)
echo Generated password: !password!

endlocal
pause
