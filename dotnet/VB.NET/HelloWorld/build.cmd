del .\*.exe .\*.pdb
vbc.exe /t:exe /debug+ /optionstrict+ /out:.\HelloWorld.exe HelloWorld.vb
pause