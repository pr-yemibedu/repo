#ifndef __IMATH__
#define __IMATH__

//
// IMath.h - 
//    Declarations of interfaces, IIDs, and CLSID
//    shared by the client and the component.
//
interface IAdd : IUnknown
{
	virtual long __stdcall Add(long, long) = 0;
};


interface ISubtract : IUnknown
{
	virtual long __stdcall Subtract(long, long) = 0;
};


//
// Declaration of GUIDs for interfaces and component.
//   These constants are defined in GUIDs.cpp.
//
extern "C" const IID IID_IADD;
extern "C" const IID IID_ISUBTRACT;

extern "C" const CLSID CLSID_Math;

#endif