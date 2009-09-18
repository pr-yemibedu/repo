//
// GUIDs.cpp
//   - Defines all IIDs and CLSIDs for the client and the component.
//     The declaration of these GUIDs is in Iface.h
//
#include <objbase.h>
	
// {44812EAF-15B2-431e-A371-17058947C381}
extern "C" const IID IID_IADD = 
    { 0x44812eaf, 0x15b2, 0x431e,
    { 0xa3, 0x71, 0x17, 0x5, 0x89, 0x47, 0xc3, 0x81 } };


// {14968DF7-C4C1-4506-93AD-771C98704DFF}
extern "C" const IID IID_ISUBTRACT = 
    { 0x14968df7, 0xc4c1, 0x4506,
    { 0x93, 0xad, 0x77, 0x1c, 0x98, 0x70, 0x4d, 0xff } };

// {6EF86101-B850-4c31-8B2C-915678A3314B}
extern "C" const CLSID CLSID_Math =
    { 0x6ef86101, 0xb850, 0x4c31,
    { 0x8b, 0x2c, 0x91, 0x56, 0x78, 0xa3, 0x31, 0x4b } };
