@echo off
color a
title Setup CheckMate v1.0
echo     ______ __                 __      __  ___        __      
echo    ^/ ____^/^/ ^/_   ___   _____ ^/ ^/__   ^/  ^|^/  ^/____ _ ^/ ^/_ ___ 
echo   ^/ ^/    ^/ __ \ ^/ _ \ ^/ ___^/^/ ^/^/_^/  ^/ ^/^|_^/ ^/^/ __ `^/^/ __^/^/ _ \
echo  / ^/___ ^/ ^/ ^/ ^/^/  __^/^/ ^/__ ^/ ,^<    ^/ ^/  ^/ ^/^/ ^/_^/ ^/^/ ^/_ ^/  __^/
echo  \____^/^/_^/ ^/_^/ \___^/ \___^/^/_^/^|_^|  ^/_^/  ^/_^/ \__,_^/ \__^/ \___^/ v1.0
echo.
echo  Copying files to C:\CheckMate\
echo.
xcopy ffmpeg.exe C:\CheckMate\ /V /Q /Y >nul 2>&1
echo  .
xcopy CheckMate.bat C:\CheckMate\ /V /Q /Y >nul 2>&1
echo  .
echo.
echo  Done!
echo.
echo  Now, please add C:\CheckMate\ to your PATH
echo.
PAUSE