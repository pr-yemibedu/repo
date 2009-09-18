set app=Trace
del .\*.exe .\*.pdb
csc /debug+ /define:TRACE /out:.\%app%.exe %app%.cs
pause
