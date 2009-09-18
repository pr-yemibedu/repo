// BeepCnt.h : Declaration of the CBeepCnt

#ifndef __BEEPCNT_H_
#define __BEEPCNT_H_

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CBeepCnt
class ATL_NO_VTABLE CBeepCnt : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CBeepCnt, &CLSID_BeepCnt>,
	public IDispatchImpl<IBeepCnt, &IID_IBeepCnt, &LIBID_BEEPCNTMODLib>
{
public:
	CBeepCnt()
	{
	}

DECLARE_REGISTRY_RESOURCEID(IDR_BEEPCNT)

DECLARE_PROTECT_FINAL_CONSTRUCT()

BEGIN_COM_MAP(CBeepCnt)
	COM_INTERFACE_ENTRY(IBeepCnt)
	COM_INTERFACE_ENTRY(IDispatch)
END_COM_MAP()

// IBeepCnt
public:
};

#endif //__BEEPCNT_H_
