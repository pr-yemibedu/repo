<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: WINMAIN - Win32 (WCE x86em) Debug--------------------
</h3>
<h3>Command Lines</h3>
Creating command line "rc.exe /l 0x409 /fo"X86EMDbg/WINMAIN.res" /d UNDER_CE=211 /d _WIN32_WCE=211 /d "UNICODE" /d "_UNICODE" /d "DEBUG" /d "WIN32_PLATFORM_HPCPRO" /d "_X86_" /d "x86" /d "i486" /r "C:\WINCE\LABS.HPC\Lab02c\WINMAIN.rc"" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSPE4.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "i486" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32" /D "STRICT" /D "_WIN32_WCE_EMULATION" /D "INTERNATIONAL" /D "USA" /D "INTLMSG_CODEPAGE" /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /D "_X86_" /D "x86" /Fp"X86EMDbg/WINMAIN.pch" /Yu"stdafx.h" /Fo"X86EMDbg/" /Fd"X86EMDbg/" /Gz /c 
"C:\WINCE\LABS.HPC\Lab02c\WINMAIN.cpp"
]
Creating command line "cl.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSPE4.tmp" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSPE5.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "i486" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32" /D "STRICT" /D "_WIN32_WCE_EMULATION" /D "INTERNATIONAL" /D "USA" /D "INTLMSG_CODEPAGE" /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /D "_X86_" /D "x86" /Fp"X86EMDbg/WINMAIN.pch" /Yc"stdafx.h" /Fo"X86EMDbg/" /Fd"X86EMDbg/" /Gz /c 
"C:\WINCE\LABS.HPC\Lab02c\StdAfx.cpp"
]
Creating command line "cl.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSPE5.tmp" 
Creating temporary file "C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSPE6.tmp" with contents
[
commctrl.lib coredll.lib corelibc.lib /nologo /stack:0x10000,0x1000 /subsystem:windows /incremental:yes /pdb:"X86EMDbg/WINMAIN.pdb" /debug /nodefaultlib:"OLDNAMES.lib" /nodefaultlib:libc.lib /nodefaultlib:libcd.lib /nodefaultlib:libcmt.lib /nodefaultlib:libcmtd.lib /nodefaultlib:msvcrt.lib /nodefaultlib:msvcrtd.lib /nodefaultlib:oldnames.lib /out:"X86EMDbg/WINMAIN.exe" /windowsce:emulation /MACHINE:IX86 
.\X86EMDbg\StdAfx.obj
.\X86EMDbg\WINMAIN.obj
.\X86EMDbg\WINMAIN.res
]
Creating command line "link.exe @C:\WINNT\Profiles\Paul\LOCALS~1\Temp\RSPE6.tmp"
<h3>Output Window</h3>
Compiling resources...
Compiling...
StdAfx.cpp
Compiling...
WINMAIN.cpp
Linking...



<h3>Results</h3>
WINMAIN.exe - 0 error(s), 0 warning(s)
</pre>
</body>
</html>
