/* this file contains the actual definitions of */
/* the IIDs and CLSIDs */

/* link this file in with the server and any clients */


/* File created by MIDL compiler version 5.01.0164 */
/* at Sat Nov 09 15:55:39 2002
 */
/* Compiler settings for C:\Data\dev\C\DCOM\HelloServ\HelloServ.idl:
    Oicf (OptLev=i2), W1, Zp8, env=Win32, ms_ext, c_ext
    error checks: allocation ref bounds_check enum stub_data 
*/
//@@MIDL_FILE_HEADING(  )
#ifdef __cplusplus
extern "C"{
#endif 


#ifndef __IID_DEFINED__
#define __IID_DEFINED__

typedef struct _IID
{
    unsigned long x;
    unsigned short s1;
    unsigned short s2;
    unsigned char  c[8];
} IID;

#endif // __IID_DEFINED__

#ifndef CLSID_DEFINED
#define CLSID_DEFINED
typedef IID CLSID;
#endif // CLSID_DEFINED

const IID IID_IHelloWorld = {0x52E81E0A,0x2655,0x4BFB,{0x88,0xCC,0x98,0x1F,0xCE,0x47,0x34,0xD0}};


const IID LIBID_HELLOSERVLib = {0x97081F06,0x0A6B,0x4576,{0x9B,0x14,0x3B,0xBC,0x58,0x46,0x34,0x21}};


const IID DIID_DHelloWorldEvents = {0xE47E8CA4,0x2E10,0x4E38,{0x88,0x3E,0xBC,0xD9,0x6F,0xA1,0xD2,0xA2}};


const CLSID CLSID_HelloWorld = {0x1FF1CC64,0xD9E3,0x4AC5,{0x83,0xB5,0x30,0x63,0x8C,0xFA,0xAC,0x17}};


#ifdef __cplusplus
}
#endif

