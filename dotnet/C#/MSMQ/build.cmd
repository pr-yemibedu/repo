set drive=%~d0
set root_dir=%~dp0
%drive%
cd %root_dir%
csc /debug+ /out:MsmqTest.exe /lib:C:\windows\microsoft.net\Framework\v1.1.4322 /r:System.Messaging.dll /target:exe MsmqTest.cs
pause
