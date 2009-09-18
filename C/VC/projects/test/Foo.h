// Foo.h : Declaration of the CFoo

#ifndef __FOO_H_
#define __FOO_H_

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CFoo
class ATL_NO_VTABLE CFoo : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CFoo, &CLSID_Foo>,
	public IDispatchImpl<IFoo, &IID_IFoo, &LIBID_TESTLib>
{
public:
	CFoo()
	{
	}

DECLARE_REGISTRY_RESOURCEID(IDR_FOO)

DECLARE_PROTECT_FINAL_CONSTRUCT()

BEGIN_COM_MAP(CFoo)
	COM_INTERFACE_ENTRY(IFoo)
	COM_INTERFACE_ENTRY(IDispatch)
END_COM_MAP()

// IFoo
public:
	STDMETHOD(multiply)(long* a, long* b, /*[in, out]*/ long* c);
	STDMETHOD(get_size)(/*[out, retval]*/ long *pVal);
	STDMETHOD(put_size)(/*[in]*/ long newVal);
	STDMETHOD(add)(int* a, int* b, /*[inout]*/ int* c);
private:
	int add(int a, int b);
	long lSize;
};

#endif //__FOO_H_
