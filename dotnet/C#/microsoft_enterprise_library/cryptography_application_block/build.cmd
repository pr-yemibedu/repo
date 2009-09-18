set drive=%~d0
set root_dir=%~dp0
%drive%
cd %root_dir%
csc /debug+ /out:CryptographyApplicationBlockExample.exe /lib:C:\windows\microsoft.net\Framework\v1.1.4322 /r:Microsoft.Practices.EnterpriseLibrary.Common.dll,Microsoft.Practices.EnterpriseLibrary.Configuration.dll,Microsoft.Practices.EnterpriseLibrary.Security.Cryptography.dll,Microsoft.Practices.EnterpriseLibrary.Security.Cryptography.Configuration.Design.dll /target:exe CryptographyApplicationBlockExample.cs
pause
