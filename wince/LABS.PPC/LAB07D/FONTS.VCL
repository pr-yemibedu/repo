<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: fonts - Win32 (WCE x86em) Debug--------------------
</h3>
<h3>Command Lines</h3>
Creating command line "rc.exe /l 0x409 /fo"X86EMDbg/fonts.res" /d UNDER_CE=300 /d _WIN32_WCE=300 /d "UNICODE" /d "_UNICODE" /d "DEBUG" /d "WIN32_PLATFORM_PSPC" /d "_X86_" /d "x86" /d "i486" /r "C:\WINCE\LABS.PPC\lab07d\fonts.rc"" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP200.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "i486" /D UNDER_CE=300 /D _WIN32_WCE=300 /D "WIN32" /D "STRICT" /D "_WIN32_WCE_EMULATION" /D "INTERNATIONAL" /D "USA" /D "INTLMSG_CODEPAGE" /D "WIN32_PLATFORM_PSPC" /D "UNICODE" /D "_UNICODE" /D "_X86_" /D "x86" /Fp"X86EMDbg/fonts.pch" /Yu"stdafx.h" /Fo"X86EMDbg/" /Fd"X86EMDbg/" /Gz /c 
"C:\WINCE\LABS.PPC\lab07d\fonts.cpp"
]
Creating command line "cl.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP200.tmp" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP201.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "i486" /D UNDER_CE=300 /D _WIN32_WCE=300 /D "WIN32" /D "STRICT" /D "_WIN32_WCE_EMULATION" /D "INTERNATIONAL" /D "USA" /D "INTLMSG_CODEPAGE" /D "WIN32_PLATFORM_PSPC" /D "UNICODE" /D "_UNICODE" /D "_X86_" /D "x86" /Fp"X86EMDbg/fonts.pch" /Yc"stdafx.h" /Fo"X86EMDbg/" /Fd"X86EMDbg/" /Gz /c 
"C:\WINCE\LABS.PPC\lab07d\StdAfx.cpp"
]
Creating command line "cl.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP201.tmp" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP202.tmp" with contents
[
commctrl.lib coredll.lib corelibc.lib aygshell.lib /nologo /stack:0x10000,0x1000 /subsystem:windows /incremental:yes /pdb:"X86EMDbg/fonts.pdb" /debug /nodefaultlib:"OLDNAMES.lib" /nodefaultlib:libc.lib /nodefaultlib:libcd.lib /nodefaultlib:libcmt.lib /nodefaultlib:libcmtd.lib /nodefaultlib:msvcrt.lib /nodefaultlib:msvcrtd.lib /nodefaultlib:oldnames.lib /out:"X86EMDbg/fonts.exe" /windowsce:emulation /MACHINE:IX86 
.\X86EMDbg\fonts.obj
.\X86EMDbg\StdAfx.obj
.\X86EMDbg\fonts.res
]
Creating command line "link.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP202.tmp"
<h3>Output Window</h3>
Compiling resources...
Compiling...
StdAfx.cpp
Compiling...
fonts.cpp
Linking...



<h3>Results</h3>
fonts.exe - 0 error(s), 0 warning(s)
</pre>
</body>
</html>
