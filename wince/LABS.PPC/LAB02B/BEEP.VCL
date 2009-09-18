<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: BEEP - Win32 (WCE x86em) Debug--------------------
</h3>
<h3>Command Lines</h3>
Creating command line "rc.exe /l 0x409 /fo"X86EMDbg/BEEP.res" /d UNDER_CE=211 /d _WIN32_WCE=211 /d "UNICODE" /d "_UNICODE" /d "DEBUG" /d "WIN32_PLATFORM_HPCPRO" /d "_X86_" /d "x86" /d "i486" /r "C:\Development\wince\LABS.PPC\LAB02B\BEEP.rc"" 
Creating temporary file "C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP12.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "i486" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32" /D "STRICT" /D "_WIN32_WCE_EMULATION" /D "INTERNATIONAL" /D "USA" /D "INTLMSG_CODEPAGE" /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /D "_X86_" /D "x86" /Fp"X86EMDbg/BEEP.pch" /Yu"stdafx.h" /Fo"X86EMDbg/" /Fd"X86EMDbg/" /Gz /c 
"C:\Development\wince\LABS.PPC\LAB02B\BEEP.cpp"
]
Creating command line "cl.exe @C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP12.tmp" 
Creating temporary file "C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP13.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "i486" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32" /D "STRICT" /D "_WIN32_WCE_EMULATION" /D "INTERNATIONAL" /D "USA" /D "INTLMSG_CODEPAGE" /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /D "_X86_" /D "x86" /Fp"X86EMDbg/BEEP.pch" /Yc"stdafx.h" /Fo"X86EMDbg/" /Fd"X86EMDbg/" /Gz /c 
"C:\Development\wince\LABS.PPC\LAB02B\StdAfx.cpp"
]
Creating command line "cl.exe @C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP13.tmp" 
Creating temporary file "C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP14.tmp" with contents
[
commctrl.lib coredll.lib corelibc.lib aygshell.lib /nologo /stack:0x10000,0x1000 /subsystem:windows /incremental:yes /pdb:"X86EMDbg/BEEP.pdb" /debug /nodefaultlib:"OLDNAMES.lib" /nodefaultlib:libc.lib /nodefaultlib:libcd.lib /nodefaultlib:libcmt.lib /nodefaultlib:libcmtd.lib /nodefaultlib:msvcrt.lib /nodefaultlib:msvcrtd.lib /out:"X86EMDbg/BEEP.exe" /windowsce:emulation /MACHINE:IX86 
.\X86EMDbg\BEEP.obj
.\X86EMDbg\StdAfx.obj
.\X86EMDbg\BEEP.res
]
Creating command line "link.exe @C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP14.tmp"
<h3>Output Window</h3>
Compiling resources...
Compiling...
StdAfx.cpp
Compiling...
BEEP.cpp
C:\Development\wince\LABS.PPC\LAB02B\BEEP.cpp(7) : fatal error C1083: Cannot open include file: 'aygshell.h': No such file or directory
Error executing cl.exe.



<h3>Results</h3>
BEEP.exe - 1 error(s), 0 warning(s)
</pre>
</body>
</html>
