@echo on
if not exist "MyComponent.snk" sn -k MyComponent.snk
if "%errorlevel%" == "0" csc /target:library MyComponent.cs
if "%errorlevel%" == "0" csc /reference:MyComponent.dll /target:exe MyProgram.cs
if "%errorlevel%" == "0" MyProgram.exe
