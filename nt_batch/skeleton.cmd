@echo OFF
@if not "%ECHO%"=="" echo %ECHO%
@if not "%OS%"=="Windows_NT" goto DOSEXIT
rem $Workfile: skeleton.bat $ $Revision: 2 $ $Date: 12/04/97 9:51a $
rem $Archive: skeleton.bat $

rem Set local scope and call MAIN procedure
setlocal & pushd & set RET=
set SCRIPTNAME=%~n0
set SCRIPTPATH=%~f0
set DEBUG=1
if "%DEBUG%"=="1" (set TRACE=echo) else (set TRACE=rem)
rem call _mtplib :INIT %SCRIPTPATH%
if /i {%1}=={/help} (call :HELP %2) & (goto :HELPEXIT)
if /i {%1}=={/?} (call :HELP %2) & (goto :HELPEXIT)
call :MAIN %*
:HELPEXIT
popd & endlocal & set RET=%RET%
goto :EOF

rem
/////////////////////////////////////////////////////////////////////////
rem HELP procedure
rem Display brief on-line help message
rem
:HELP
if defined TRACE %TRACE% [proc %0 %*]
rem Put help message here...

goto :EOF

rem
 /////////////////////////////////////////////////////////////////////////
rem MAIN procedure
 rem
:MAIN
if defined TRACE %TRACE% [proc %0 %*]

call :HELLO_WORLD

goto :EOF

rem
/////////////////////////////////////////////////////////////////////////
rem Additional procedures go here...
rem
:HELLO_WORLD
if defined TRACE %TRACE% [proc %0 %*]
pushd & set RET=
@echo OFF
rem ****************************
echo hello world
rem ****************************
@echo OFF
popd & set RET=%RET%
goto :EOF

rem These must be the FINAL LINES in the script...
:DOSEXIT
echo This script requires Windows NT

rem