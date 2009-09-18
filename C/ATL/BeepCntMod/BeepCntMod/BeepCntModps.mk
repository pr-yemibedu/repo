
BeepCntModps.dll: dlldata.obj BeepCntMod_p.obj BeepCntMod_i.obj
	link /dll /out:BeepCntModps.dll /def:BeepCntModps.def /entry:DllMain dlldata.obj BeepCntMod_p.obj BeepCntMod_i.obj \
		kernel32.lib rpcndr.lib rpcns4.lib rpcrt4.lib oleaut32.lib uuid.lib \

.c.obj:
	cl /c /Ox /DWIN32 /D_WIN32_WINNT=0x0400 /DREGISTER_PROXY_DLL \
		$<

clean:
	@del BeepCntModps.dll
	@del BeepCntModps.lib
	@del BeepCntModps.exp
	@del dlldata.obj
	@del BeepCntMod_p.obj
	@del BeepCntMod_i.obj
