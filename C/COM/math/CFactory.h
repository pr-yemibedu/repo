#ifndef __CFACTORY__
#define __CFACTORY__

#include <objbase.h>

/**
 *Class factory
 */
class CFactory : public IClassFactory
{
public:
	// IUnknown
	virtual HRESULT __stdcall QueryInterface(const IID& iid, void** ppv) ;         
	virtual ULONG   __stdcall AddRef() ;
	virtual ULONG   __stdcall Release() ;

	// Interface IClassFactory
	virtual HRESULT __stdcall CreateInstance(IUnknown* pUnknownOuter,
	                                         const IID& iid,
	                                         void** ppv) ;
	virtual HRESULT __stdcall LockServer(BOOL bLock) ; 

	// Constructor
	CFactory() : m_cRef(1) {}

	// Destructor
	~CFactory() {}

private:
	long m_cRef ;
} ;

#endif