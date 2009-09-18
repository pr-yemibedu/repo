set drive=%~d0
set root_dir=%~dp0
%drive%
cd %root_dir%
regsvr32 Person.dll
tlbimp Person.dll /out:NETPerson.dll
csc /debug+ /out:Test.exe /reference:NETPerson.dll /target:exe Test.cs
pause
