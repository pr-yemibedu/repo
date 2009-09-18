// mycomtest.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "C:\Development\C++\code\VC\projects\test\test.h"

int main(int argc, char* argv[])
{

	IFoo *pFoo = NULL;
	HRESULT hr = CoCreateInstance(CLSID_Foo, NULL, CLSCTX_ALL,
                IID_IFoo, (void **)&pFoo);


	return 0;
}

