#ifndef __MATH__
#define __MATH__

/* Math.h */
#include <objbase.h>
#include "IMath.h"

///////////////////////////////////////////////////////////
//
// Global variables
//
static HMODULE g_hModule = NULL;   // DLL module handle
static long g_cComponents = 0;     // Count of active components
static long g_cServerLocks = 0;    // Count of locks

// Friendly name of component
const char g_szFriendlyName[] = "Math COM Example";

// Version-independent ProgID
const char g_szVerIndProgID[] = "Example.Math";

// ProgID
const char g_szProgID[] = "Example.Math.1";

class Math : public IAdd,
             public ISubtract
{
public:
    // Constructor/Destructor
    Math();
    ~Math();
    
	// IUnknown
	virtual HRESULT __stdcall QueryInterface(const IID& iid, void** ppv) ;
	virtual ULONG __stdcall AddRef() ;
	virtual ULONG __stdcall Release() ;
	
	// IAdd
	virtual long __stdcall Add(long, long);
	
	// ISubtract
	virtual long __stdcall Subtract(long, long);

private:
	// Reference count
	long m_cRef ;
};

#endif