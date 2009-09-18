<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: IComp - Win32 (WCE ARM) Release--------------------
</h3>
<h3>Command Lines</h3>
Creating temporary file "C:\DOCUME~1\ADMINI~1.WP0\LOCALS~1\Temp\RSPF3.tmp" with contents
[
/nologo /W3 /D "ARM" /D "_ARM_" /D UNDER_CE=300 /D _WIN32_WCE=300 /D "WIN32_PLATFORM_PSPC" /D "UNICODE" /D "_UNICODE" /D "NDEBUG" /D "_AFXDLL" /FR"ARMRel/" /Fp"ARMRel/IComp.pch" /Yu"stdafx.h" /Fo"ARMRel/" /Oxs /MC /c 
"C:\Projects\IComp\IComp.cpp"
]
Creating command line "clarm.exe @C:\DOCUME~1\ADMINI~1.WP0\LOCALS~1\Temp\RSPF3.tmp" 
Creating temporary file "C:\DOCUME~1\ADMINI~1.WP0\LOCALS~1\Temp\RSPF4.tmp" with contents
[
htmlview.lib /nologo /base:"0x00010000" /stack:0x10000,0x1000 /entry:"wWinMainCRTStartup" /incremental:no /pdb:"ARMRel/IComp.pdb" /out:"ARMRel/IComp.exe" /subsystem:windowsce,3.00 /align:"4096" /MACHINE:ARM 
.\ARMRel\cadoce.obj
.\ARMRel\CalendarView.obj
.\ARMRel\CallDlg.obj
.\ARMRel\cedb.obj
.\ARMRel\CustomerView.obj
.\ARMRel\FormNumberDlg.obj
.\ARMRel\HtmlWnd.obj
.\ARMRel\IComp.obj
.\ARMRel\ICompDoc.obj
.\ARMRel\ICompView.obj
.\ARMRel\MainFrm.obj
.\ARMRel\ReportView.obj
.\ARMRel\SignatureDlg.obj
.\ARMRel\SignatureWnd.obj
.\ARMRel\spltwndx.obj
.\ARMRel\StdAfx.obj
.\ARMRel\TodayView.obj
.\ARMRel\ViewBar.obj
.\ARMRel\IComp.res
]
Creating command line "link.exe @C:\DOCUME~1\ADMINI~1.WP0\LOCALS~1\Temp\RSPF4.tmp"
<h3>Output Window</h3>
Compiling...
IComp.cpp
Linking...
Creating temporary file "C:\DOCUME~1\ADMINI~1.WP0\LOCALS~1\Temp\RSPF7.tmp" with contents
[
/nologo /o"ARMRel/IComp.bsc" 
.\ARMRel\StdAfx.sbr
.\ARMRel\cadoce.sbr
.\ARMRel\CalendarView.sbr
.\ARMRel\CallDlg.sbr
.\ARMRel\cedb.sbr
.\ARMRel\CustomerView.sbr
.\ARMRel\FormNumberDlg.sbr
.\ARMRel\HtmlWnd.sbr
.\ARMRel\IComp.sbr
.\ARMRel\ICompDoc.sbr
.\ARMRel\ICompView.sbr
.\ARMRel\MainFrm.sbr
.\ARMRel\ReportView.sbr
.\ARMRel\SignatureDlg.sbr
.\ARMRel\SignatureWnd.sbr
.\ARMRel\spltwndx.sbr
.\ARMRel\TodayView.sbr
.\ARMRel\ViewBar.sbr]
Creating command line "bscmake.exe @C:\DOCUME~1\ADMINI~1.WP0\LOCALS~1\Temp\RSPF7.tmp"
Creating browse info file...
<h3>Output Window</h3>



<h3>Results</h3>
IComp.exe - 0 error(s), 0 warning(s)
</pre>
</body>
</html>
