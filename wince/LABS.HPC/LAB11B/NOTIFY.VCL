<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: NOTIFY - Win32 (WCE ARM) Debug--------------------
</h3>
<h3>Command Lines</h3>
Creating temporary file "C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP39A.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "ARM" /D "_ARM_" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /Fp"ARMDbg/NOTIFY.pch" /Yu"stdafx.h" /Fo"ARMDbg/" /Fd"ARMDbg/" /MC /c 
"c:\GOLD\labs.hpc\Lab11b\NOTIFY.cpp"
]
Creating command line "clarm.exe @C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP39A.tmp" 
Creating temporary file "C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP39B.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "ARM" /D "_ARM_" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /Fp"ARMDbg/NOTIFY.pch" /Yc"stdafx.h" /Fo"ARMDbg/" /Fd"ARMDbg/" /MC /c 
"c:\GOLD\labs.hpc\Lab11b\StdAfx.cpp"
]
Creating command line "clarm.exe @C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP39B.tmp" 
Creating temporary file "C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP39C.tmp" with contents
[
commctrl.lib coredll.lib /nologo /base:"0x00010000" /stack:0x10000,0x1000 /entry:"WinMainCRTStartup" /incremental:yes /pdb:"ARMDbg/NOTIFY.pdb" /debug /nodefaultlib:"libc.lib /nodefaultlib:libcd.lib /nodefaultlib:libcmt.lib /nodefaultlib:libcmtd.lib /nodefaultlib:msvcrt.lib /nodefaultlib:msvcrtd.lib /nodefaultlib:oldnames.lib" /out:"ARMDbg/NOTIFY.exe" /subsystem:windowsce,2.11 /align:"4096" /MACHINE:ARM 
.\ARMDbg\NOTIFY.obj
.\ARMDbg\StdAfx.obj
.\ARMDbg\NOTIFY.res
]
Creating command line "link.exe @C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP39C.tmp"
<h3>Output Window</h3>
Compiling...
StdAfx.cpp
Compiling...
NOTIFY.cpp
Linking...



<h3>Results</h3>
NOTIFY.exe - 0 error(s), 0 warning(s)
</pre>
</body>
</html>
