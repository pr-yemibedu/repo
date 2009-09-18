// Foo.cpp : Implementation of CFoo
#include "stdafx.h"
#include "Test.h"
#include "Foo.h"

/////////////////////////////////////////////////////////////////////////////
// CFoo


STDMETHODIMP CFoo::add(int *a, int *b, int *c)
{
	// TODO: Add your implementation code here
	*c = add(*a, *b);

	return S_OK;
}

STDMETHODIMP CFoo::get_size(long *pVal)
{
	
	*pVal = lSize;

	return S_OK;
}

STDMETHODIMP CFoo::put_size(long newVal)
{
	lSize = newVal;

	return S_OK;
}

int CFoo::add(int a, int b)
{
	return a + b;
}

STDMETHODIMP CFoo::multiply(long *a, long *b, long *c)
{
	// TODO: Add your implementation code here
	*c = *a * *b;

	return S_OK;
}
