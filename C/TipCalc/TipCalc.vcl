<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: TipCalc - Win32 (WCE ARM) Release--------------------
</h3>
<h3>Command Lines</h3>
Creating command line "rc.exe /l 0x409 /fo"ARMRel/TipCalc.res" /d UNDER_CE=211 /d _WIN32_WCE=211 /d "UNICODE" /d "_UNICODE" /d "NDEBUG" /d "WIN32_PLATFORM_HPCPRO" /d "ARM" /d "_ARM_" /d "_AFXDLL" /r "C:\Amir\C++\TipCalc\TipCalc.rc"" 
Creating temporary file "C:\TEMP\RSP105.tmp" with contents
[
/nologo /W3 /GX- /D "ARM" /D "_ARM_" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /D "NDEBUG" /D "_AFXDLL" /Fp"ARMRel/TipCalc.pch" /Yu"stdafx.h" /Fo"ARMRel/" /Oxs /MC  /c 
"C:\Amir\C++\TipCalc\TipCalc.cpp"
"C:\Amir\C++\TipCalc\TipCalcDlg.cpp"
]
Creating command line "clarm.exe @C:\TEMP\RSP105.tmp" 
Creating temporary file "C:\TEMP\RSP106.tmp" with contents
[
/nologo /W3 /GX- /D "ARM" /D "_ARM_" /D UNDER_CE=211 /D _WIN32_WCE=211 /D "WIN32_PLATFORM_HPCPRO" /D "UNICODE" /D "_UNICODE" /D "NDEBUG" /D "_AFXDLL" /Fp"ARMRel/TipCalc.pch" /Yc"stdafx.h" /Fo"ARMRel/" /Oxs /MC  /c 
"C:\Amir\C++\TipCalc\StdAfx.cpp"
]
Creating command line "clarm.exe @C:\TEMP\RSP106.tmp" 
Creating temporary file "C:\TEMP\RSP107.tmp" with contents
[
/nologo /base:"0x00010000" /stack:0x10000,0x1000 /entry:"wWinMainCRTStartup" /incremental:no /pdb:"ARMRel/TipCalc.pdb" /out:"ARMRel/TipCalc.exe" /subsystem:windowsce,2.11 /align:"4096" /MACHINE:ARM 
".\ARMRel\TipCalc.obj"
".\ARMRel\TipCalcDlg.obj"
".\ARMRel\StdAfx.obj"
".\ARMRel\TipCalc.res"
]
Creating command line "link.exe @C:\TEMP\RSP107.tmp"
<h3>Output Window</h3>
Compiling resources...
Compiling...
StdAfx.cpp
Compiling...
TipCalc.cpp
TipCalcDlg.cpp
C:\Amir\C++\TipCalc\TipCalcDlg.cpp(77) : warning C4244: 'initializing' : conversion from 'double' to 'float', possible loss of data
Generating Code...
Linking...



<h3>Results</h3>
TipCalc.exe - 0 error(s), 1 warning(s)
</pre>
</body>
</html>
