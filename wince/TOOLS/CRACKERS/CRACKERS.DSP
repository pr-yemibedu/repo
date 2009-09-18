# Microsoft Developer Studio Project File - Name="CRACKERS" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=CRACKERS - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Crackers.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Crackers.mak" CFG="CRACKERS - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "CRACKERS - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "CRACKERS - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Release"
# PROP BASE Intermediate_Dir ".\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir ".\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comctl32.lib /nologo /subsystem:windows /machine:I386

!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comctl32.lib /nologo /subsystem:windows /debug /machine:I386

!ENDIF 

# Begin Target

# Name "CRACKERS - Win32 Release"
# Name "CRACKERS - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=.\comments.c
# ADD CPP /Yu"windowsx.h"
# End Source File
# Begin Source File

SOURCE=.\CRACKERS.C
# ADD CPP /Yu"windowsx.h"
# End Source File
# Begin Source File

SOURCE=.\CRACKERS.DEF
# End Source File
# Begin Source File

SOURCE=.\CRACKERS.RC
# End Source File
# Begin Source File

SOURCE=.\DATA.C
# ADD CPP /Yu"windowsx.h"
# End Source File
# Begin Source File

SOURCE=.\dbgmem.c

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\DLGHELP.C

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\EDITMSGS.C
# ADD CPP /Yu"windowsx.h"
# End Source File
# Begin Source File

SOURCE=.\FILES.C

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\FONTS.C

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\HEADERS.C

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yc"windowsx.h"

!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yc

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\NOTIFY.C

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\PROPERTY.C
# ADD CPP /Yu"windowsx.h"
# End Source File
# Begin Source File

SOURCE=.\TEXT.C

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=.\comments.h
# End Source File
# Begin Source File

SOURCE=.\CRACKERS.H
# End Source File
# Begin Source File

SOURCE=.\data.h
# End Source File
# Begin Source File

SOURCE=.\EDITMSGS.H
# End Source File
# Begin Source File

SOURCE=.\PROPERTY.H
# End Source File
# Begin Source File

SOURCE=.\RESOURCE.H
# End Source File
# Begin Source File

SOURCE=.\resrc1.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\CRACKERS.CUR
# End Source File
# Begin Source File

SOURCE=.\CRACKERS.ICO
# End Source File
# End Group
# End Target
# End Project
