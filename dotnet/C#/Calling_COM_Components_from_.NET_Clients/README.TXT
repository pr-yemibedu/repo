Example of Calling COM Components from .NET Clients

Steps
1. Create COM object.  In this case it is a Project1.Person ActiveX COM
   object.
2. Register the COM dll.
   regsvr32 Person.dll
3. Create a Runtime-Callable Wrapper for the COM object.  This creates a .NET
   assembly that acts as a proxy to the *real* Person.dll COM object.
tlbimp Person.dll /out:NETPerson.dll

4. Create a .NET app in C# or VB.NET that uses the COM object.  The COM object
   type in the .NET app is referenced as NETPerson.Person.
5. Compile with:
   csc /debug+ /out:Test.exe /reference:NETPerson.dll /target:exe Test.cs
