# Microsoft Visual C++ Generated NMAKE File, Format Version 40000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

!IF "$(CFG)" == ""
CFG=CRACKERS - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to CRACKERS - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "CRACKERS - Win32 Release" && "$(CFG)" !=\
 "CRACKERS - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "CRACKERS.MAK" CFG="CRACKERS - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "CRACKERS - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "CRACKERS - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "CRACKERS - Win32 Debug"
RSC=rc.exe
MTL=mktyplib.exe
CPP=cl.exe

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir Release
# PROP BASE Intermediate_Dir Release
# PROP BASE Target_Dir
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir Release
# PROP Intermediate_Dir Release
# PROP Target_Dir
OUTDIR=.\Release
INTDIR=.\Release

ALL : "$(OUTDIR)\CRACKERS.exe"

CLEAN : 
	-@erase ".\Release\CRACKERS.exe"
	-@erase ".\Release\CRACKERS.OBJ"
	-@erase ".\Release\CRACKERS.pch"
	-@erase ".\Release\NOTIFY.OBJ"
	-@erase ".\Release\FILES.OBJ"
	-@erase ".\Release\DLGHELP.OBJ"
	-@erase ".\Release\TEXT.OBJ"
	-@erase ".\Release\FONTS.OBJ"
	-@erase ".\Release\comments.obj"
	-@erase ".\Release\HEADERS.OBJ"
	-@erase ".\Release\DATA.OBJ"
	-@erase ".\Release\dbgmem.obj"
	-@erase ".\Release\PROPERTY.OBJ"
	-@erase ".\Release\EDITMSGS.OBJ"
	-@erase ".\Release\CRACKERS.res"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/CRACKERS.res" /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/CRACKERS.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comctl32.lib /nologo /subsystem:windows /machine:I386
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comctl32.lib /nologo\
 /subsystem:windows /incremental:no /pdb:"$(OUTDIR)/CRACKERS.pdb" /machine:I386\
 /def:".\CRACKERS.DEF" /out:"$(OUTDIR)/CRACKERS.exe" 
DEF_FILE= \
	".\CRACKERS.DEF"
LINK32_OBJS= \
	"$(INTDIR)/CRACKERS.OBJ" \
	"$(INTDIR)/NOTIFY.OBJ" \
	"$(INTDIR)/FILES.OBJ" \
	"$(INTDIR)/DLGHELP.OBJ" \
	"$(INTDIR)/TEXT.OBJ" \
	"$(INTDIR)/FONTS.OBJ" \
	"$(INTDIR)/comments.obj" \
	"$(INTDIR)/HEADERS.OBJ" \
	"$(INTDIR)/DATA.OBJ" \
	"$(INTDIR)/dbgmem.obj" \
	"$(INTDIR)/PROPERTY.OBJ" \
	"$(INTDIR)/EDITMSGS.OBJ" \
	"$(INTDIR)/CRACKERS.res"

"$(OUTDIR)\CRACKERS.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir Debug
# PROP BASE Intermediate_Dir Debug
# PROP BASE Target_Dir
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir Debug
# PROP Intermediate_Dir Debug
# PROP Target_Dir
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "$(OUTDIR)\CRACKERS.exe"

CLEAN : 
	-@erase ".\Debug\vc40.pdb"
	-@erase ".\Debug\CRACKERS.pch"
	-@erase ".\Debug\CRACKERS.exe"
	-@erase ".\Debug\PROPERTY.OBJ"
	-@erase ".\Debug\dbgmem.obj"
	-@erase ".\Debug\EDITMSGS.OBJ"
	-@erase ".\Debug\DLGHELP.OBJ"
	-@erase ".\Debug\CRACKERS.OBJ"
	-@erase ".\Debug\FILES.OBJ"
	-@erase ".\Debug\HEADERS.OBJ"
	-@erase ".\Debug\NOTIFY.OBJ"
	-@erase ".\Debug\TEXT.OBJ"
	-@erase ".\Debug\FONTS.OBJ"
	-@erase ".\Debug\comments.obj"
	-@erase ".\Debug\DATA.OBJ"
	-@erase ".\Debug\CRACKERS.res"
	-@erase ".\Debug\CRACKERS.ilk"
	-@erase ".\Debug\CRACKERS.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/CRACKERS.res" /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/CRACKERS.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comctl32.lib /nologo /subsystem:windows /debug /machine:I386
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comctl32.lib /nologo\
 /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)/CRACKERS.pdb" /debug\
 /machine:I386 /def:".\CRACKERS.DEF" /out:"$(OUTDIR)/CRACKERS.exe" 
DEF_FILE= \
	".\CRACKERS.DEF"
LINK32_OBJS= \
	"$(INTDIR)/PROPERTY.OBJ" \
	"$(INTDIR)/dbgmem.obj" \
	"$(INTDIR)/EDITMSGS.OBJ" \
	"$(INTDIR)/DLGHELP.OBJ" \
	"$(INTDIR)/CRACKERS.OBJ" \
	"$(INTDIR)/FILES.OBJ" \
	"$(INTDIR)/HEADERS.OBJ" \
	"$(INTDIR)/NOTIFY.OBJ" \
	"$(INTDIR)/TEXT.OBJ" \
	"$(INTDIR)/FONTS.OBJ" \
	"$(INTDIR)/comments.obj" \
	"$(INTDIR)/DATA.OBJ" \
	"$(INTDIR)/CRACKERS.res"

"$(OUTDIR)\CRACKERS.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "CRACKERS - Win32 Release"
# Name "CRACKERS - Win32 Debug"

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\CRACKERS.RC
DEP_RSC_CRACK=\
	".\CRACKERS.ICO"\
	".\CRACKERS.CUR"\
	

"$(INTDIR)\CRACKERS.res" : $(SOURCE) $(DEP_RSC_CRACK) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\CRACKERS.C
DEP_CPP_CRACKE=\
	".\..\..\PWRPROGM\yaolib\dbgmem.h"\
	"..\..\PWRPROGM\yaolib\FILES.H"\
	"..\..\PWRPROGM\yaolib\FONTS.H"\
	"..\..\PWRPROGM\yaolib\HANDLERS.H"\
	".\comments.h"\
	".\CRACKERS.H"\
	".\data.h"\
	".\PROPERTY.H"\
	".\RESOURCE.H"\
	".\resrc1.h"\
	

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

"$(INTDIR)\CRACKERS.OBJ" : $(SOURCE) $(DEP_CPP_CRACKE) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(CPP) /nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yu"windowsx.h"

BuildCmds= \
	$(CPP) /nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\CRACKERS.OBJ" : $(SOURCE) $(DEP_CPP_CRACKE) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_CRACKE) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\HEADERS.C

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yc

BuildCmds= \
	$(CPP) /nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yc /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\HEADERS.OBJ" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\CRACKERS.pch" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yc

BuildCmds= \
	$(CPP) /nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yc /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\HEADERS.OBJ" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\CRACKERS.pch" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\comments.c
DEP_CPP_COMME=\
	".\..\..\PWRPROGM\yaolib\notify.h"\
	".\CRACKERS.H"\
	".\data.h"\
	".\RESOURCE.H"\
	

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

"$(INTDIR)\comments.obj" : $(SOURCE) $(DEP_CPP_COMME) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(CPP) /nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yu"windowsx.h"

BuildCmds= \
	$(CPP) /nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\comments.obj" : $(SOURCE) $(DEP_CPP_COMME) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_COMME) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\CRACKERS.DEF

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PWRPROGM\yaolib\FILES.C
DEP_CPP_FILES=\
	".\..\..\PWRPROGM\yaolib\dbgmem.h"\
	

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

"$(INTDIR)\FILES.OBJ" : $(SOURCE) $(DEP_CPP_FILES) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(CPP) /nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yu"windowsx.h"

BuildCmds= \
	$(CPP) /nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\FILES.OBJ" : $(SOURCE) $(DEP_CPP_FILES) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_FILES) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PWRPROGM\yaolib\FONTS.C

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

"$(INTDIR)\FONTS.OBJ" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CRACKERS.pch"
   $(CPP) /nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yu"windowsx.h"

BuildCmds= \
	$(CPP) /nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\FONTS.OBJ" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DATA.C
DEP_CPP_DATA_=\
	".\..\..\PWRPROGM\yaolib\dbgmem.h"\
	"..\..\PWRPROGM\yaolib\FILES.H"\
	".\..\..\PWRPROGM\yaolib\text.h"\
	".\CRACKERS.H"\
	".\data.h"\
	

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

"$(INTDIR)\DATA.OBJ" : $(SOURCE) $(DEP_CPP_DATA_) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(CPP) /nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yu"windowsx.h"

BuildCmds= \
	$(CPP) /nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\DATA.OBJ" : $(SOURCE) $(DEP_CPP_DATA_) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_DATA_) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PWRPROGM\yaolib\TEXT.C
DEP_CPP_TEXT_=\
	".\..\..\PWRPROGM\yaolib\text.h"\
	

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

"$(INTDIR)\TEXT.OBJ" : $(SOURCE) $(DEP_CPP_TEXT_) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(CPP) /nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yu"windowsx.h"

BuildCmds= \
	$(CPP) /nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\TEXT.OBJ" : $(SOURCE) $(DEP_CPP_TEXT_) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_TEXT_) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PROPERTY.C
DEP_CPP_PROPE=\
	".\comments.h"\
	".\EDITMSGS.H"\
	".\PROPERTY.H"\
	".\RESOURCE.H"\
	".\resrc1.h"\
	

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

"$(INTDIR)\PROPERTY.OBJ" : $(SOURCE) $(DEP_CPP_PROPE) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(CPP) /nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yu"windowsx.h"

BuildCmds= \
	$(CPP) /nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\PROPERTY.OBJ" : $(SOURCE) $(DEP_CPP_PROPE) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_PROPE) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EDITMSGS.C
DEP_CPP_EDITM=\
	"..\..\PWRPROGM\yaolib\DLGHELP.H"\
	"..\..\PWRPROGM\yaolib\FILES.H"\
	".\..\..\PWRPROGM\yaolib\notify.h"\
	".\CRACKERS.H"\
	".\data.h"\
	".\RESOURCE.H"\
	".\resrc1.h"\
	

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

"$(INTDIR)\EDITMSGS.OBJ" : $(SOURCE) $(DEP_CPP_EDITM) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(CPP) /nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yu"windowsx.h"

BuildCmds= \
	$(CPP) /nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\EDITMSGS.OBJ" : $(SOURCE) $(DEP_CPP_EDITM) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_EDITM) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PWRPROGM\yaolib\NOTIFY.C
DEP_CPP_NOTIF=\
	".\..\..\PWRPROGM\yaolib\notify.h"\
	

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

"$(INTDIR)\NOTIFY.OBJ" : $(SOURCE) $(DEP_CPP_NOTIF) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(CPP) /nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yu"windowsx.h"

BuildCmds= \
	$(CPP) /nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\NOTIFY.OBJ" : $(SOURCE) $(DEP_CPP_NOTIF) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_NOTIF) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PWRPROGM\yaolib\DLGHELP.C

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

"$(INTDIR)\DLGHELP.OBJ" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CRACKERS.pch"
   $(CPP) /nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yu"windowsx.h"

BuildCmds= \
	$(CPP) /nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\DLGHELP.OBJ" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PWRPROGM\yaolib\dbgmem.c
DEP_CPP_DBGME=\
	".\..\..\PWRPROGM\yaolib\dbgmem.h"\
	

!IF  "$(CFG)" == "CRACKERS - Win32 Release"

# ADD CPP /Yu"windowsx.h"

"$(INTDIR)\dbgmem.obj" : $(SOURCE) $(DEP_CPP_DBGME) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(CPP) /nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "CRACKERS - Win32 Debug"

# ADD CPP /Yu"windowsx.h"

BuildCmds= \
	$(CPP) /nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)/CRACKERS.pch" /Yu"windowsx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\dbgmem.obj" : $(SOURCE) $(DEP_CPP_DBGME) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

"$(INTDIR)\vc40.pdb" : $(SOURCE) $(DEP_CPP_DBGME) "$(INTDIR)"\
 "$(INTDIR)\CRACKERS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
