<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: EDITOR - Win32 (WCE x86em) Debug--------------------
</h3>
<h3>Command Lines</h3>
Creating temporary file "C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP169.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "i486" /D UNDER_CE=300 /D _WIN32_WCE=300 /D "WIN32" /D "STRICT" /D "_WIN32_WCE_EMULATION" /D "INTERNATIONAL" /D "USA" /D "INTLMSG_CODEPAGE" /D "WIN32_PLATFORM_PSPC" /D "UNICODE" /D "_UNICODE" /D "_X86_" /D "x86" /Fp"X86EMDbg/EDITOR.pch" /Yu"stdafx.h" /Fo"X86EMDbg/" /Fd"X86EMDbg/" /Gz /c 
"C:\Development\wince\LABS.PPC\LAB13B\EDITOR.cpp"
]
Creating command line "cl.exe @C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP169.tmp" 
Creating temporary file "C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP16A.tmp" with contents
[
commctrl.lib coredll.lib corelibc.lib aygshell.lib /nologo /stack:0x10000,0x1000 /subsystem:windows /incremental:yes /pdb:"X86EMDbg/EDITOR.pdb" /debug /nodefaultlib:"OLDNAMES.lib" /nodefaultlib:libc.lib /nodefaultlib:libcd.lib /nodefaultlib:libcmt.lib /nodefaultlib:libcmtd.lib /nodefaultlib:msvcrt.lib /nodefaultlib:msvcrtd.lib /nodefaultlib:oldnames.lib /out:"X86EMDbg/EDITOR.exe" /windowsce:emulation /MACHINE:IX86 
.\X86EMDbg\EDITOR.obj
.\X86EMDbg\StdAfx.obj
.\X86EMDbg\EDITOR.res
]
Creating command line "link.exe @C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP16A.tmp"
<h3>Output Window</h3>
Compiling...
EDITOR.cpp
C:\Development\wince\LABS.PPC\LAB13B\EDITOR.cpp(162) : warning C4101: 'szHello' : unreferenced local variable
C:\Development\wince\LABS.PPC\LAB13B\EDITOR.cpp(161) : warning C4101: 'ps' : unreferenced local variable
C:\Development\wince\LABS.PPC\LAB13B\EDITOR.cpp(160) : warning C4101: 'hdc' : unreferenced local variable
Linking...



<h3>Results</h3>
EDITOR.exe - 0 error(s), 3 warning(s)
</pre>
</body>
</html>
