<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: COLORS - Win32 (WCE ARM) Debug--------------------
</h3>
<h3>Command Lines</h3>
Creating command line "rc.exe /l 0x409 /fo"ARMDbg/COLORS.res" /d UNDER_CE=211 /d _WIN32_WCE=211 /d "UNICODE" /d "_UNICODE" /d "DEBUG" /d "WIN32_PLATFORM_HPCPRO" /d "ARM" /d "_ARM_" /r "C:\WINCE\LABS.HPC\Lab15d\COLORS.rc"" 
Creating temporary file "C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP5B3.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "ARM" /D "_ARM_" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /Fp"ARMDbg/COLORS.pch" /Yu"stdafx.h" /Fo"ARMDbg/" /Fd"ARMDbg/" /MC /c 
"C:\WINCE\LABS.HPC\Lab15d\COLORS.cpp"
]
Creating command line "clarm.exe @C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP5B3.tmp" 
Creating temporary file "C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP5B4.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "ARM" /D "_ARM_" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /Fp"ARMDbg/COLORS.pch" /Yc"stdafx.h" /Fo"ARMDbg/" /Fd"ARMDbg/" /MC /c 
"C:\WINCE\LABS.HPC\Lab15d\StdAfx.cpp"
]
Creating command line "clarm.exe @C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP5B4.tmp" 
Creating temporary file "C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP5B5.tmp" with contents
[
commctrl.lib coredll.lib commdlg.lib /nologo /base:"0x00010000" /stack:0x10000,0x1000 /entry:"WinMainCRTStartup" /incremental:yes /pdb:"ARMDbg/COLORS.pdb" /debug /nodefaultlib:"libc.lib /nodefaultlib:libcd.lib /nodefaultlib:libcmt.lib /nodefaultlib:libcmtd.lib /nodefaultlib:msvcrt.lib /nodefaultlib:msvcrtd.lib /nodefaultlib:oldnames.lib" /out:"ARMDbg/COLORS.exe" /subsystem:windowsce,2.11 /align:"4096" /MACHINE:ARM 
.\ARMDbg\COLORS.obj
.\ARMDbg\StdAfx.obj
.\ARMDbg\COLORS.res
]
Creating command line "link.exe @C:\DOCUME~1\RENTAL~1\LOCALS~1\Temp\RSP5B5.tmp"
<h3>Output Window</h3>
Compiling resources...
Compiling...
StdAfx.cpp
Compiling...
COLORS.cpp
Linking...



<h3>Results</h3>
COLORS.exe - 0 error(s), 0 warning(s)
</pre>
</body>
</html>
