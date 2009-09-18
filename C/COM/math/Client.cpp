//
// Client.cpp - client implementation
//
#include <iostream.h>
#include <objbase.h>

#include "IMath.h"

void trace(const char* msg) { cout << "Client: \t\t" << msg << endl ;}

//
// main function
//
int main()
{
	// Initialize COM Library
	CoInitialize(NULL) ;

	trace("Call CoCreateInstance to create") ;
	trace("  component and get interface IX.") ;
	IAdd* pIAdd = NULL ; 
	HRESULT hr = ::CoCreateInstance(CLSID_Math,
	                                NULL, 
	                                CLSCTX_INPROC_SERVER,
	                                IID_IADD, 
	                                (void**)&pIAdd) ;
	if (SUCCEEDED(hr))
	{
		trace("Succeeded getting IAdd.") ;
		cout << "1 + 1 = " << pIAdd->Add(1, 1) << endl ;          // Use interface IX.

		trace("Release IAdd interface.") ;
		pIAdd->Release() ;
	}
	else
	{
		cout << "Client: \t\tCould not create component. hr = "
		     << hex << hr << endl ;    
	}

	// Uninitialize COM Library
	CoUninitialize() ;

	return 0 ;
}
