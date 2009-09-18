// Arithmetic.h : Declaration of the CArithmetic

#ifndef __ARITHMETIC_H_
#define __ARITHMETIC_H_

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CArithmetic
class ATL_NO_VTABLE CArithmetic : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CArithmetic, &CLSID_Arithmetic>,
	public IArithmetic
{
public:
	CArithmetic()
	{
	}

DECLARE_REGISTRY_RESOURCEID(IDR_ARITHMETIC)
DECLARE_NOT_AGGREGATABLE(CArithmetic)

DECLARE_PROTECT_FINAL_CONSTRUCT()

BEGIN_COM_MAP(CArithmetic)
	COM_INTERFACE_ENTRY(IArithmetic)
END_COM_MAP()

// IArithmetic
public:
	STDMETHOD(Add)(/*[in]*/ LONG a, /*[in]*/ LONG b, /*[out,retval]*/ LONG* ret);
};

#endif //__ARITHMETIC_H_
