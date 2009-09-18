set app=Parameters
del .\*.exe .\*.pdb
csc /debug+ /out:.\%app%.exe %app%.cs
pause
