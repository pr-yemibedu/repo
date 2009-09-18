set drive=%~d0
set root_dir=%~dp0
%drive%
cd %root_dir%
del /f /q *.snk *.exe *.pdb *.dll *.tlb *.netmodule
sn -k Person.snk
csc /out:Person.dll /target:library *.cs
rem al /out:Person.dll Person.netmodule /keyfile:Person.snk
tlbexp Person.dll /out:Person.tlb
regasm /tlb:Person.tlb Person.dll
gacutil /i Person.dll

pause
