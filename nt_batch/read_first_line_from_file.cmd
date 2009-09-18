@echo off

call :read_line_from_file c:\temp\line.txt
echo %ret%

goto end

:read_line_from_file
setlocal
for /f "tokens=*" %%i in ('type "%1"') do set result=%%i
set ret=%result%
endlocal & set ret=%ret%
goto :eof

:end
