/**
 * Math.cpp - Math implementation
 */

#include "Math.h"

/**
 * Constructor
 */
Math::Math() : m_cRef(1)
{
    InterlockedIncrement(&g_cComponents);
}

/**
 * Destructor
 */
Math::~Math()
{
    InterlockedDecrement(&g_cComponents); 
}

/**
 * IUnknown implementation
 */
HRESULT __stdcall Math::QueryInterface(const IID& iid, void** ppv)
{    
	if (iid == IID_IUnknown)
	{
		*ppv = static_cast<IAdd*>(this) ; 
	}
	else if (iid == IID_IADD)
	{
		*ppv = static_cast<IAdd*>(this) ;
	}
	else if (iid == IID_ISUBTRACT)
	{
		*ppv = static_cast<ISubtract*>(this) ; 
	}
	else
	{
		*ppv = NULL ;
		return E_NOINTERFACE ;
	}
	reinterpret_cast<IUnknown*>(*ppv)->AddRef() ;
	return S_OK ;
}

ULONG __stdcall Math::AddRef()
{
	return InterlockedIncrement(&m_cRef) ;
}

ULONG __stdcall Math::Release() 
{
	if (InterlockedDecrement(&m_cRef) == 0)
	{
		delete this ;
		return 0 ;
	}
	return m_cRef ;
}

/**
 * IAdd Implementation
 */
long _stdcall Math::Add(long a, long b)
{
    return (a + b);
}

/**
 * ISubtract Implementation
 */
long _stdcall Math::Subtract(long a, long b)
{
    return (a - b);
}
