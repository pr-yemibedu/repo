!include <win32.mak>

LIBS = kernel32.lib user32.lib rasapi32.lib tapi32.lib

RasBaud.exe : RasBaud.obj Tapiinfo.obj
	$(link) $(debug) $** $(LIBS) -out:$*.exe 

RasBaud.obj: RasBaud.c
	$(cc) $(cdebug) $(cflags) $(cvarsmt) RasBaud.c

Tapiinfo.obj: Tapiinfo.c
	$(cc) $(cdebug) $(cflags) $(cvarsmt) Tapiinfo.c

nmake cleanall :
	-del *.exe *.obj