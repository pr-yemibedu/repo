
MathServerps.dll: dlldata.obj MathServer_p.obj MathServer_i.obj
	link /dll /out:MathServerps.dll /def:MathServerps.def /entry:DllMain dlldata.obj MathServer_p.obj MathServer_i.obj \
		kernel32.lib rpcndr.lib rpcns4.lib rpcrt4.lib oleaut32.lib uuid.lib \

.c.obj:
	cl /c /Ox /DWIN32 /D_WIN32_WINNT=0x0400 /DREGISTER_PROXY_DLL \
		$<

clean:
	@del MathServerps.dll
	@del MathServerps.lib
	@del MathServerps.exp
	@del dlldata.obj
	@del MathServer_p.obj
	@del MathServer_i.obj
