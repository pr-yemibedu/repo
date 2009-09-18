set drive=%~d0
set root_dir=%~dp0
%drive%
cd %root_dir%
del /f /q *.exe *.netmodule *.dll *.pdb
csc /target:module /out:Person.netmodule Person.cs
csc /target:exe /out:Test.exe /addmodule:Person.netmodule Test.cs
pause
