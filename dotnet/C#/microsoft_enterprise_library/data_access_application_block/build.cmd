set drive=%~d0
set root_dir=%~dp0
%drive%
cd %root_dir%
csc /debug+ /out:DataAccessApplicationBlockExample.exe /lib:C:\windows\microsoft.net\Framework\v1.1.4322 /r:System.Data.dll,Microsoft.Practices.EnterpriseLibrary.Common.dll,Microsoft.Practices.EnterpriseLibrary.Configuration.dll,Microsoft.Practices.EnterpriseLibrary.Data.dll /target:exe DataAccessApplicationBlockExample.cs
pause
