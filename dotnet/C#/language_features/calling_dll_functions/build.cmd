set app=DllImport
del .\*.exe .\*.pdb
csc /debug+ /out:.\%app%.exe %app%.cs
pause
