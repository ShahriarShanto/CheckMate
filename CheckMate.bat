@echo off
color a
title CheckMate v1.0
echo     ______ __                 __      __  ___        __      
echo    ^/ ____^/^/ ^/_   ___   _____ ^/ ^/__   ^/  ^|^/  ^/____ _ ^/ ^/_ ___ 
echo   ^/ ^/    ^/ __ \ ^/ _ \ ^/ ___^/^/ ^/^/_^/  ^/ ^/^|_^/ ^/^/ __ `^/^/ __^/^/ _ \
echo  / ^/___ ^/ ^/ ^/ ^/^/  __^/^/ ^/__ ^/ ,^<    ^/ ^/  ^/ ^/^/ ^/_^/ ^/^/ ^/_ ^/  __^/
echo  \____^/^/_^/ ^/_^/ \___^/ \___^/^/_^/^|_^|  ^/_^/  ^/_^/ \__,_^/ \__^/ \___^/ v1.0
echo.
echo  GitHub: https://github.com/ShahriarShanto/CheckMate
echo.
set dtime=%DATE% %TIME%
echo  Started on %dtime%
echo.

set banner=0
set corrfound=0

set "filtro=%1"
if [%filtro%]==[] (
    set "filtro=*.mp4"
	echo I will check all MP4 files in current folder
	echo.
    )

for /R %%a in (%filtro%) do call :runTest "%%a"

del "CheckMate Log.txt"
IF %corrfound%==1 (
	echo  Corrupted Files are listed in "Corrupted Files.txt"
	) ELSE (
	echo  All tested files are OK!
	)

echo.

PAUSE
exit /B

:runTest
	echo  Checking "%~nx1%"
    C:\CheckMate\ffmpeg.exe -v error -i "%~1" -f null - > "CheckMate Log.txt" 2>&1
	call :checklog "CheckMate Log.txt" "%~1"
	echo.
	goto END

:checklog
	IF %~z1==0 (
	echo  File is OK!
	) ELSE (
	color c
	echo  File is corrupted!
	set corrfound=1
	IF %banner%==0 (
	IF exist "Corrupted Files.txt" (
	echo.>>"Corrupted Files.txt"
	)
	echo ======== CheckMate ========>>"Corrupted Files.txt"
	echo.>>"Corrupted Files.txt"
	echo Started on %dtime%>>"Corrupted Files.txt"
	echo.>>"Corrupted Files.txt"
	echo Corrupted Files:>>"Corrupted Files.txt"
	set banner=1
	)
	echo.>>"Corrupted Files.txt"
	echo "%~nx2%">>"Corrupted Files.txt"
	)
	goto END

:END