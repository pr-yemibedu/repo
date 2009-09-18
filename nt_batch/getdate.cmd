@echo off

call :get_date
echo %ret%

:get_date
setlocal
set date_file_path="%temp%\~getdate_%random%.tmp"
date /t > %date_file_path%
for /f "tokens=2" %%i in ('type %date_file_path%') do set current_date=%%i
del /f /q %date_file_path%
set ret=%current_date%
endlocal & set ret=%ret%
goto :eof
