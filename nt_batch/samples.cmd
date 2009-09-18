@echo off
rem nt batch script samples

echo %0
echo %~0
echo absolute path of this script: %~dpnx0
echo fully qualified path name: %~f0
echo file extension: %~x0
echo bare name of this script: %~n0
echo directory path for this script minus drive letter: %~p0
echo drive for this script: %~d0
echo date/time of file: %~t0
echo size of file %~z0
echo attributes of file: %~a0

echo current directory string: %cd%
echo current date: %date%
echo current time: %time%
echo random decimal number between 0 and 32767: %random%
echo current ERRORLEVEL value: %errorlevel%
echo original command line that invoked the command processor: %cmdcmdline%

rem variable manipulation
ECHO Windows NT tilde vars:
ECHO.
ECHO filename               %%~f0  - %~f0
ECHO drive                  %%~d0  - %~d0
ECHO path                   %%~p0  - %~p0
ECHO filename - extension   %%~n0  - %~n0
ECHO extension              %%~x0  - %~x0
ECHO drive + path           %%~dp0 - %~dp0
ECHO Shortname              %%~s0  - %~s0 
ECHO filename + extension   %%~nx0 - %~nx0
ECHO file attributes        %%~a0  - %~a0
ECHO date/time of file      %%~t0  - %~t0
ECHO file size              %%~z0  - %~z0
ECHO.
ECHO The 0 is for it's own filename. You can replace the 0 with the 
ECHO parameter requested. 1 for the first, 2 for the second, etc etc.
ECHO.
ECHO.
ECHO With NT you can also select a range of chars from a variable as shown below.
ECHO.
ECHO Sample var "X=C:\WINNT\MyFileName.DLL"
ECHO.
SET X=C:\WINNT\MyFileName.DLL
ECHO ECHO %%X%%            = %X%
ECHO ECHO %%X:~0,2%%       = %X:~0,2%
ECHO ECHO %%X:~0,9%%       = %X:~0,9%
ECHO ECHO %%X:~9,14%%      = %X:~9,14%
ECHO.
ECHO All command line arguments variable %*
pause
