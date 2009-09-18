// Arithmetic.cpp : Implementation of CArithmetic
#include "stdafx.h"
#include "MathServer.h"
#include "Arithmetic.h"

/////////////////////////////////////////////////////////////////////////////
// CArithmetic


STDMETHODIMP CArithmetic::Add(LONG a, LONG b, LONG* ret)
{
	// TODO: Add your implementation code here
	*ret = a + b;
	return S_OK;
}
