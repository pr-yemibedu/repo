set drive=%~d0
set root_dir=%~dp0
%drive%
cd %root_dir%
del /f /q *.dll *.exe *.pdb *.netmodule
csc /debug+ /out:Launch.exe /target:exe Launch.cs
pause
