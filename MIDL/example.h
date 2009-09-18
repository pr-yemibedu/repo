/* this ALWAYS GENERATED file contains the definitions for the interfaces */


/* File created by MIDL compiler version 5.01.0164 */
/* at Mon Oct 14 08:53:44 2002
 */
/* Compiler settings for example.idl:
    Os (OptLev=s), W1, Zp8, env=Win32, ms_ext, c_ext
    error checks: allocation ref bounds_check enum stub_data 
*/
//@@MIDL_FILE_HEADING(  )


/* verify that the <rpcndr.h> version is high enough to compile this file*/
#ifndef __REQUIRED_RPCNDR_H_VERSION__
#define __REQUIRED_RPCNDR_H_VERSION__ 440
#endif

#include "rpc.h"
#include "rpcndr.h"

#ifndef __example_h__
#define __example_h__

#ifdef __cplusplus
extern "C"{
#endif 

/* Forward Declarations */ 

void __RPC_FAR * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void __RPC_FAR * ); 

#ifndef __MyInterface_INTERFACE_DEFINED__
#define __MyInterface_INTERFACE_DEFINED__

/* interface MyInterface */
/* [auto_handle][version][uuid] */ 

#define	INT_ARRAY_LEN	( 100 )

void MyRemoteProc( 
    /* [in] */ int param1,
    /* [out] */ int __RPC_FAR outArray[ 100 ]);



extern RPC_IF_HANDLE MyInterface_v1_0_c_ifspec;
extern RPC_IF_HANDLE MyInterface_v1_0_s_ifspec;
#endif /* __MyInterface_INTERFACE_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif
