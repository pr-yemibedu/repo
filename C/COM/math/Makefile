#
# Chapter 7 - Makefile
#
#
# Flags - Always compiles debug.
#
CPP_FLAGS=/c /MTd /Zi /Od /D_DEBUG
EXE_LINK_FLAGS=/DEBUG
DLL_LINK_FLAGS=/DLL /DEBUG

LIBS=UUID.lib Advapi32.lib Ole32.lib

#################################################
#
# Targets
#
all : client component

client: Client.exe
component : Math.dll 
	   

#################################################
#
# Shared source files
#

GUIDS.obj : GUIDS.cpp 
	cl $(CPP_FLAGS) GUIDS.cpp

Registry.obj : Registry.cpp Registry.h
	cl $(CPP_FLAGS) Registry.cpp

#################################################
#
# component source files
#

Math.obj : Math.cpp CFactory.cpp IMath.h Registry.h
	cl $(CPP_FLAGS) Math.cpp CFactory.cpp

#################################################
#
# Client source files
#

Client.obj : Client.cpp IMath.h 
	cl $(CPP_FLAGS) Client.cpp


#################################################
#
# Link component and automatically register component.
#

Math.dll : Math.obj	GUIDs.obj Registry.obj Math.def 
	link $(DLL_LINK_FLAGS) Math.obj GUIDs.obj CFactory.obj Registry.obj $(LIBS) /DEF:Math.def 
	regsvr32 -s Math.dll
	
#################################################
#
# Link client.
#

Client.exe : Client.obj GUIDs.obj
	link $(EXE_LINK_FLAGS) Client.obj GUIDs.obj $(LIBS)
	
clean :
    del *.obj *.lib *.exp *.dll *.pdb *.exe *.ilk

