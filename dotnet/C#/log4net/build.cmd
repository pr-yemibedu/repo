set drive=%~d0
set root_dir=%~dp0
%drive%
cd %root_dir%
csc /debug+ /out:Log4netExample.exe /reference:log4net.dll /target:exe Log4netExample.cs
pause
