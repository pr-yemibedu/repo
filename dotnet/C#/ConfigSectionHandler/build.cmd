@echo on
set root_drive=%~d0
set root_dir=%~dp0
%root_drive%
cd %root_dir%
del /f /q *.exe
del /f /q *.dll
csc /t:library /out:ConfigSectionHandler.dll ConfigSectionHandler.cs
csc /t:library /out:ConfigSectionObjects.dll ProgramInfo.cs
csc /r:ConfigSectionObjects.dll /out:ConfigSectionDemo.exe ConfigSectionDemo.cs
pause
