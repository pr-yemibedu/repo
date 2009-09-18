del .\*.dll .\*.exe .\*.pdb .\*.snk
sn -k key.snk
sn -p key.snk public.snk
csc /t:library /debug+ /out:.\MyComponent.dll MyComponent.cs AssemblyInfo.cs
csc /debug+ /reference:.\MyComponent.dll /out:.\Client.exe Client.cs
pause