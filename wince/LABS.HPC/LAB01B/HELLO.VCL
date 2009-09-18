<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: HELLO - Win32 (WCE x86em) Debug--------------------
</h3>
<h3>Command Lines</h3>
Creating command line "rc.exe /l 0x409 /fo"X86EMDbg/HELLO.res" /d UNDER_CE=211 /d _WIN32_WCE=211 /d "UNICODE" /d "_UNICODE" /d "DEBUG" /d "WIN32_PLATFORM_HPCPRO" /d "_X86_" /d "x86" /d "i486" /r "C:\WINCE\LABS.HPC\lab01b\HELLO.rc"" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP9F.tmp" with contents
[
/nologo /W3 /GX- /Zi /Od /D "DEBUG" /D "i486" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32" /D "STRICT" /D "_WIN32_WCE_EMULATION" /D "INTERNATIONAL" /D "USA" /D "INTLMSG_CODEPAGE" /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /D "_X86_" /D "x86" /Fp"X86EMDbg/HELLO.pch" /Yu"stdafx.h" /Fo"X86EMDbg/" /Fd"X86EMDbg/" /Gz /c 
"C:\WINCE\LABS.HPC\lab01b\HELLO.cpp"
]
Creating command line "cl.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSP9F.tmp" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSPA0.tmp" with contents
[
/nologo /W3 /GX- /Zi /Od /D "DEBUG" /D "i486" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32" /D "STRICT" /D "_WIN32_WCE_EMULATION" /D "INTERNATIONAL" /D "USA" /D "INTLMSG_CODEPAGE" /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /D "_X86_" /D "x86" /Fp"X86EMDbg/HELLO.pch" /Yc"stdafx.h" /Fo"X86EMDbg/" /Fd"X86EMDbg/" /Gz /c 
"C:\WINCE\LABS.HPC\lab01b\StdAfx.cpp"
]
Creating command line "cl.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSPA0.tmp" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSPA1.tmp" with contents
[
commctrl.lib coredll.lib corelibc.lib  /nologo /stack:0x10000,0x1000 /subsystem:windows /incremental:yes /pdb:"X86EMDbg/HELLO.pdb" /debug /nodefaultlib:"OLDNAMES.lib" /nodefaultlib:libc.lib /nodefaultlib:libcd.lib /nodefaultlib:libcmt.lib /nodefaultlib:libcmtd.lib /nodefaultlib:msvcrt.lib /nodefaultlib:msvcrtd.lib /nodefaultlib:oldnames.lib /out:"X86EMDbg/HELLO.exe" /windowsce:emulation /MACHINE:IX86  
.\X86EMDbg\StdAfx.obj
.\X86EMDbg\HELLO.res
.\X86EMDbg\HELLO.obj
]
Creating command line "link.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSPA1.tmp"
<h3>Output Window</h3>
Compiling resources...
Compiling...
StdAfx.cpp
Compiling...
HELLO.cpp
Linking...



<h3>Results</h3>
HELLO.exe - 0 error(s), 0 warning(s)
</pre>
</body>
</html>
