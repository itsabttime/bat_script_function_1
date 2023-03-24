REM ======>
REM start of code VARIABLE USED: randomer, tempfile, quot, str
setlocal enabledelayedexpansion
set /a randomer=%random%
set tempfile=save%randomer%.temp.file%randomer%.conf.txt
dir > %tempfile%

for /f "skip=4 delims=" %%i in (%tempfile%) do for /f "tokens=*" %%a in ("%%i") do set quot="%%a"&echo !quot!&for /l %%f in (0,1,250) do set str=!quot:~%%f,5!&if "!str!"=="<DIR>" CALL :THERE %%f "%%a"

:THERE
set NUM=%~1
REM set /a start=NUM+1
set str="%~2"
echo !str!
echo NUM NUM IS %~1
for /l %%f in (!NUM!,1,250) do echo !str!&set res=!str:~%%f,1!&echo !res!&if "!res!"=="." echo %%f&(CALL :HERE %%f)
:done
:HERE
set numzr=%~1
REM end Labels Used: Here There Done
