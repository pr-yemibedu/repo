// MathClient.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "..\MathServer\MathServer.h"
#include "MathServerGUIDs.h"

int main(int argc, char* argv[])
{
    HRESULT hr;                       // COM error code
    IArithmetic *IArith;                  // pointer to interface

    hr = CoInitialize(0);             // initialize COM
    if (SUCCEEDED(hr))                // macro to check for success
    {
        hr = CoCreateInstance( 
                CLSID_Arithmetic,        // COM class id
                NULL,                 // outer unknown
                CLSCTX_INPROC_SERVER, // server INFO
                IID_IArithmetic,         // interface id
                (void**)&IArith );     // pointer to interface

        if (SUCCEEDED(hr))
        {
			LONG result;
            hr = IArith->Add(99999, 99999, &result);    // call method
			printf("%i\n", result);
            hr = IArith->Release();    // release interface
        }
    }
    CoUninitialize();                 // close COM
    return 0;

}

