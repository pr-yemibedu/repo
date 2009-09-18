<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: Notify - Win32 (WCE MIPS) Debug--------------------
</h3>
<h3>Command Lines</h3>
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP424.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "MIPS" /D "_MIPS_" /D UNDER_CE=300 /D _WIN32_WCE=300 /D "WIN32_PLATFORM_PSPC" /D "UNICODE" /D "_UNICODE" /Fp"MIPSDbg/Notify.pch" /Yu"stdafx.h" /Fo"MIPSDbg/" /Fd"MIPSDbg/" /MC /c 
"C:\WINCE\LABS.PPC\lab11b\Notify.cpp"
]
Creating command line "clmips.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP424.tmp" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP425.tmp" with contents
[
commctrl.lib coredll.lib aygshell.lib /nologo /base:"0x00010000" /stack:0x10000,0x1000 /entry:"WinMainCRTStartup" /incremental:yes /pdb:"MIPSDbg/Notify.pdb" /debug /nodefaultlib:"libc.lib /nodefaultlib:libcd.lib /nodefaultlib:libcmt.lib /nodefaultlib:libcmtd.lib /nodefaultlib:msvcrt.lib /nodefaultlib:msvcrtd.lib /nodefaultlib:oldnames.lib" /out:"MIPSDbg/Notify.exe" /subsystem:windowsce,3.00 /MACHINE:MIPS 
.\MIPSDbg\Notify.obj
.\MIPSDbg\StdAfx.obj
.\MIPSDbg\Notify.res
]
Creating command line "link.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP425.tmp"
<h3>Output Window</h3>
Compiling...
Notify.cpp
Linking...



<h3>Results</h3>
Notify.exe - 0 error(s), 0 warning(s)
</pre>
</body>
</html>
