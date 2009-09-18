<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: winmain - Win32 (WCE MIPS) Debug--------------------
</h3>
<h3>Command Lines</h3>
Creating command line "rc.exe /l 0x409 /fo"MIPSDbg/winmain.res" /d UNDER_CE=300 /d _WIN32_WCE=300 /d "UNICODE" /d "_UNICODE" /d "DEBUG" /d "WIN32_PLATFORM_PSPC" /d "MIPS" /d "_MIPS_" /r "C:\WINCE\LABS.PPC\lab02c\winmain.rc"" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP435.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "MIPS" /D "_MIPS_" /D UNDER_CE=300 /D _WIN32_WCE=300 /D "WIN32_PLATFORM_PSPC" /D "UNICODE" /D "_UNICODE" /Fp"MIPSDbg/winmain.pch" /Yu"stdafx.h" /Fo"MIPSDbg/" /Fd"MIPSDbg/" /MC /c 
"C:\WINCE\LABS.PPC\lab02c\winmain.cpp"
]
Creating command line "clmips.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP435.tmp" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP436.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "MIPS" /D "_MIPS_" /D UNDER_CE=300 /D _WIN32_WCE=300 /D "WIN32_PLATFORM_PSPC" /D "UNICODE" /D "_UNICODE" /Fp"MIPSDbg/winmain.pch" /Yc"stdafx.h" /Fo"MIPSDbg/" /Fd"MIPSDbg/" /MC /c 
"C:\WINCE\LABS.PPC\lab02c\StdAfx.cpp"
]
Creating command line "clmips.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP436.tmp" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP437.tmp" with contents
[
commctrl.lib coredll.lib aygshell.lib /nologo /base:"0x00010000" /stack:0x10000,0x1000 /entry:"WinMainCRTStartup" /incremental:yes /pdb:"MIPSDbg/winmain.pdb" /debug /nodefaultlib:"libc.lib /nodefaultlib:libcd.lib /nodefaultlib:libcmt.lib /nodefaultlib:libcmtd.lib /nodefaultlib:msvcrt.lib /nodefaultlib:msvcrtd.lib /nodefaultlib:oldnames.lib" /out:"MIPSDbg/winmain.exe" /subsystem:windowsce,3.00 /MACHINE:MIPS 
.\MIPSDbg\StdAfx.obj
.\MIPSDbg\winmain.obj
.\MIPSDbg\winmain.res
]
Creating command line "link.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP437.tmp"
<h3>Output Window</h3>
Compiling resources...
Compiling...
StdAfx.cpp
Compiling...
winmain.cpp
Linking...



<h3>Results</h3>
winmain.exe - 0 error(s), 0 warning(s)
</pre>
</body>
</html>
