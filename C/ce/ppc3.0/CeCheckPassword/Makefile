DLLNAME=CeCheckPassword
RCFILE=$(SAMPLE)
CC=cl.exe
LINK=link.exe
RC=rc.exe

#CDEBUG=-DDEBUG=1 -Zi -Fd$(SAMPLE).pdb
#LDEBUG=-debug -debugtype:cv -pdb:$(SAMPLE).pdb

LIBS=rapi.lib

CDEFINES=-DUNDER_CE -DUNICODE -D_UNICODE -DWIN32 -DSTRICT \
	-Dx86 -Di486 -D_X86_ -D_WIN32_WCE=300 \
	-D_WIN32_WCE_EMULATION -DUSA \
	-DINTLMSG_CODEPAGE=1252

RDEFINES=-DUNDER_CE -DUNICODE -D_UNICODE -DWIN32 -DSTRICT \
	-Dx86 -Di486 -D_X86_ -D_WIN32_WCE=300 \
	-D_WIN32_WCE_EMULATION -DUSA \
	-DINTLMSG_CODEPAGE=1252

LDEFINES=-nologo -subsystem:windows -incremental:no \
         -out:$(SAMPLE).exe -machine:x86 -nodefaultlib -entry:WinMainCRTStartup \
         $(LDEBUG) $(LIBS) 

all: \
	$(DLLNAME).dll

clean: \
	; \
	del /Q *.obj *.res *.exe

$(DLLNAME).dll:
    cl /LD /I"C:\Development\General\WindowsCETools\wce300\MS Pocket PC\support\ActiveSync\inc" $(DLLNAME).c $(DLLNAME).def $(LIBS) /Fec:\development\dll\$(DLLNAME).dll