<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: TIMERS - Win32 (WCE MIPS) Debug--------------------
</h3>
<h3>Command Lines</h3>
Creating command line "rc.exe /l 0x409 /fo"MIPSDbg/TIMERS.res" /d UNDER_CE=300 /d _WIN32_WCE=300 /d "UNICODE" /d "_UNICODE" /d "DEBUG" /d "WIN32_PLATFORM_PSPC" /d "MIPS" /d "_MIPS_" /r "C:\WINCE\LABS.PPC\lab11a\TIMERS.rc"" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP405.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "MIPS" /D "_MIPS_" /D UNDER_CE=300 /D _WIN32_WCE=300 /D "WIN32_PLATFORM_PSPC" /D "UNICODE" /D "_UNICODE" /Fp"MIPSDbg/TIMERS.pch" /Yu"stdafx.h" /Fo"MIPSDbg/" /Fd"MIPSDbg/" /MC /c 
"C:\WINCE\LABS.PPC\lab11a\TIMERS.cpp"
]
Creating command line "clmips.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP405.tmp" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP406.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "MIPS" /D "_MIPS_" /D UNDER_CE=300 /D _WIN32_WCE=300 /D "WIN32_PLATFORM_PSPC" /D "UNICODE" /D "_UNICODE" /Fp"MIPSDbg/TIMERS.pch" /Yc"stdafx.h" /Fo"MIPSDbg/" /Fd"MIPSDbg/" /MC /c 
"C:\WINCE\LABS.PPC\lab11a\StdAfx.cpp"
]
Creating command line "clmips.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP406.tmp" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP407.tmp" with contents
[
commctrl.lib coredll.lib aygshell.lib /nologo /base:"0x00010000" /stack:0x10000,0x1000 /entry:"WinMainCRTStartup" /incremental:yes /pdb:"MIPSDbg/TIMERS.pdb" /debug /nodefaultlib:"libc.lib /nodefaultlib:libcd.lib /nodefaultlib:libcmt.lib /nodefaultlib:libcmtd.lib /nodefaultlib:msvcrt.lib /nodefaultlib:msvcrtd.lib /nodefaultlib:oldnames.lib" /out:"MIPSDbg/TIMERS.exe" /subsystem:windowsce,3.00 /MACHINE:MIPS 
.\MIPSDbg\StdAfx.obj
.\MIPSDbg\TIMERS.obj
.\MIPSDbg\TIMERS.res
]
Creating command line "link.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP407.tmp"
<h3>Output Window</h3>
Compiling resources...
Compiling...
StdAfx.cpp
Compiling...
TIMERS.cpp
Linking...



<h3>Results</h3>
TIMERS.exe - 0 error(s), 0 warning(s)
</pre>
</body>
</html>
