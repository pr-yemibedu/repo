<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: SAVE - Win32 (WCE ARM) Debug--------------------
</h3>
<h3>Command Lines</h3>
Creating temporary file "C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP578.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "ARM" /D "_ARM_" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /Fp"ARMDbg/SAVE.pch" /Yu"stdafx.h" /Fo"ARMDbg/" /Fd"ARMDbg/" /MC /c 
"C:\WINCE\LABS.HPC\Lab15b\SAVE.cpp"
]
Creating command line "clarm.exe @C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP578.tmp" 
Creating temporary file "C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP579.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "ARM" /D "_ARM_" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /Fp"ARMDbg/SAVE.pch" /Yc"stdafx.h" /Fo"ARMDbg/" /Fd"ARMDbg/" /MC /c 
"C:\WINCE\LABS.HPC\Lab15b\StdAfx.cpp"
]
Creating command line "clarm.exe @C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP579.tmp" 
Creating temporary file "C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP57A.tmp" with contents
[
commctrl.lib coredll.lib commdlg.lib /nologo /base:"0x00010000" /stack:0x10000,0x1000 /entry:"WinMainCRTStartup" /incremental:yes /pdb:"ARMDbg/SAVE.pdb" /debug /nodefaultlib:"libc.lib /nodefaultlib:libcd.lib /nodefaultlib:libcmt.lib /nodefaultlib:libcmtd.lib /nodefaultlib:msvcrt.lib /nodefaultlib:msvcrtd.lib /nodefaultlib:oldnames.lib" /out:"ARMDbg/SAVE.exe" /subsystem:windowsce,2.11 /align:"4096" /MACHINE:ARM 
.\ARMDbg\SAVE.obj
.\ARMDbg\StdAfx.obj
.\ARMDbg\SAVE.res
]
Creating command line "link.exe @C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP57A.tmp"
<h3>Output Window</h3>
Compiling...
StdAfx.cpp
Compiling...
SAVE.cpp
Linking...



<h3>Results</h3>
SAVE.exe - 0 error(s), 0 warning(s)
</pre>
</body>
</html>
