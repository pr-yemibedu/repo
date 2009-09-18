<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: Contacts - Win32 (WCE ARM) Debug--------------------
</h3>
<h3>Command Lines</h3>
Creating command line "rc.exe /l 0x409 /fo"ARMDbg/Contacts.res" /d UNDER_CE=300 /d _WIN32_WCE=300 /d "UNICODE" /d "_UNICODE" /d "DEBUG" /d "WIN32_PLATFORM_PSPC" /d "ARM" /d "_ARM_" /d "_AFXDLL" /r "C:\Development\C++\code\iComp\PocketPC\Contacts.rc"" 
Creating temporary file "C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP8.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "ARM" /D "_ARM_" /D UNDER_CE=300 /D _WIN32_WCE=300 /D "WIN32_PLATFORM_PSPC" /D "UNICODE" /D "_UNICODE" /D "_AFXDLL" /FR"ARMDbg/" /Fp"ARMDbg/Contacts.pch" /Yu"stdafx.h" /Fo"ARMDbg/" /Fd"ARMDbg/" /MC /c 
"C:\Development\C++\code\iComp\PocketPC\AddCustomerDlg.cpp"
"C:\Development\C++\code\iComp\PocketPC\AddSample.cpp"
"C:\Development\C++\code\iComp\PocketPC\CallDate.cpp"
"C:\Development\C++\code\iComp\PocketPC\CallDetails.cpp"
"C:\Development\C++\code\iComp\PocketPC\CallInformation.cpp"
"C:\Development\C++\code\iComp\PocketPC\CallNotes.cpp"
"C:\Development\C++\code\iComp\PocketPC\CallPIN.cpp"
"C:\Development\C++\code\iComp\PocketPC\CallSamples.cpp"
"C:\Development\C++\code\iComp\PocketPC\CallSampleSignature.cpp"
"C:\Development\C++\code\iComp\PocketPC\CallTopics.cpp"
"C:\Development\C++\code\iComp\PocketPC\cedb.cpp"
"C:\Development\C++\code\iComp\PocketPC\ContactList.cpp"
"C:\Development\C++\code\iComp\PocketPC\Contacts.cpp"
"C:\Development\C++\code\iComp\PocketPC\ContactsDoc.cpp"
"C:\Development\C++\code\iComp\PocketPC\ContactsList.cpp"
"C:\Development\C++\code\iComp\PocketPC\CustList.cpp"
"C:\Development\C++\code\iComp\PocketPC\CustomerInformation.cpp"
"C:\Development\C++\code\iComp\PocketPC\HtmlWnd.cpp"
"C:\Development\C++\code\iComp\PocketPC\MainFrm.cpp"
"C:\Development\C++\code\iComp\PocketPC\ProfileDlg.cpp"
"C:\Development\C++\code\iComp\PocketPC\SignatureWnd.cpp"
"C:\Development\C++\code\iComp\PocketPC\TodayView.cpp"
]
Creating command line "clarm.exe @C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP8.tmp" 
Creating temporary file "C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP9.tmp" with contents
[
/nologo /W3 /Zi /Od /D "DEBUG" /D "ARM" /D "_ARM_" /D UNDER_CE=300 /D _WIN32_WCE=300 /D "WIN32_PLATFORM_PSPC" /D "UNICODE" /D "_UNICODE" /D "_AFXDLL" /FR"ARMDbg/" /Fp"ARMDbg/Contacts.pch" /Yc"stdafx.h" /Fo"ARMDbg/" /Fd"ARMDbg/" /MC /c 
"C:\Development\C++\code\iComp\PocketPC\StdAfx.cpp"
]
Creating command line "clarm.exe @C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSP9.tmp" 
Creating temporary file "C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSPA.tmp" with contents
[
htmlview.lib voicectl.lib /nologo /base:"0x00010000" /stack:0x10000,0x1000 /entry:"wWinMainCRTStartup" /incremental:yes /pdb:"ARMDbg/Contacts.pdb" /debug /out:"ARMDbg/Contacts.exe" /subsystem:windowsce,3.00 /align:"4096" /MACHINE:ARM 
".\ARMDbg\AddCustomerDlg.obj"
".\ARMDbg\AddSample.obj"
".\ARMDbg\CallDate.obj"
".\ARMDbg\CallDetails.obj"
".\ARMDbg\CallInformation.obj"
".\ARMDbg\CallNotes.obj"
".\ARMDbg\CallPIN.obj"
".\ARMDbg\CallSamples.obj"
".\ARMDbg\CallSampleSignature.obj"
".\ARMDbg\CallTopics.obj"
".\ARMDbg\cedb.obj"
".\ARMDbg\ContactList.obj"
".\ARMDbg\Contacts.obj"
".\ARMDbg\ContactsDoc.obj"
".\ARMDbg\ContactsList.obj"
".\ARMDbg\CustList.obj"
".\ARMDbg\CustomerInformation.obj"
".\ARMDbg\HtmlWnd.obj"
".\ARMDbg\MainFrm.obj"
".\ARMDbg\ProfileDlg.obj"
".\ARMDbg\SignatureWnd.obj"
".\ARMDbg\StdAfx.obj"
".\ARMDbg\TodayView.obj"
".\ARMDbg\Contacts.res"
]
Creating command line "link.exe @C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSPA.tmp"
<h3>Output Window</h3>
Compiling resources...
Compiling...
StdAfx.cpp
Compiling...
AddCustomerDlg.cpp
AddSample.cpp
CallDate.cpp
CallDetails.cpp
CallInformation.cpp
CallNotes.cpp
CallPIN.cpp
CallSamples.cpp
CallSampleSignature.cpp
CallTopics.cpp
cedb.cpp
ContactList.cpp
Contacts.cpp
ContactsDoc.cpp
ContactsList.cpp
C:\Development\C++\code\iComp\PocketPC\ContactsList.cpp(54) : warning C4018: '==' : signed/unsigned mismatch
CustList.cpp
CustomerInformation.cpp
HtmlWnd.cpp
MainFrm.cpp
ProfileDlg.cpp
Generating Code...
Compiling...
SignatureWnd.cpp
C:\Development\C++\code\iComp\PocketPC\SignatureWnd.cpp(121) : warning C4244: 'initializing' : conversion from 'double' to 'int', possible loss of data
TodayView.cpp
Generating Code...
Linking...
Creating temporary file "C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSPD.tmp" with contents
[
/nologo /o"ARMDbg/Contacts.bsc" 
".\ARMDbg\StdAfx.sbr"
".\ARMDbg\AddCustomerDlg.sbr"
".\ARMDbg\AddSample.sbr"
".\ARMDbg\CallDate.sbr"
".\ARMDbg\CallDetails.sbr"
".\ARMDbg\CallInformation.sbr"
".\ARMDbg\CallNotes.sbr"
".\ARMDbg\CallPIN.sbr"
".\ARMDbg\CallSamples.sbr"
".\ARMDbg\CallSampleSignature.sbr"
".\ARMDbg\CallTopics.sbr"
".\ARMDbg\cedb.sbr"
".\ARMDbg\ContactList.sbr"
".\ARMDbg\Contacts.sbr"
".\ARMDbg\ContactsDoc.sbr"
".\ARMDbg\ContactsList.sbr"
".\ARMDbg\CustList.sbr"
".\ARMDbg\CustomerInformation.sbr"
".\ARMDbg\HtmlWnd.sbr"
".\ARMDbg\MainFrm.sbr"
".\ARMDbg\ProfileDlg.sbr"
".\ARMDbg\SignatureWnd.sbr"
".\ARMDbg\TodayView.sbr"]
Creating command line "bscmake.exe @C:\DOCUME~1\pfeilbr\LOCALS~1\Temp\RSPD.tmp"
Creating browse info file...
<h3>Output Window</h3>



<h3>Results</h3>
Contacts.exe - 0 error(s), 2 warning(s)
</pre>
</body>
</html>
