/* this ALWAYS GENERATED file contains the definitions for the interfaces */


/* File created by MIDL compiler version 3.01.75 */
/* at Tue Apr 07 10:41:39 1998
 */
/* Compiler settings for ADOCE.idl:
    Oicf (OptLev=i2), W1, Zp8, env=Win32, ms_ext, c_ext
    error checks: none
*/
//@@MIDL_FILE_HEADING(  )
#include "rpc.h"
#include "rpcndr.h"
#ifndef COM_NO_WINDOWS_H
#include "windows.h"
#include "ole2.h"
#endif /*COM_NO_WINDOWS_H*/

#ifndef __ADOCE_h__
#define __ADOCE_h__

#ifdef __cplusplus
extern "C"{
#endif 

/* Forward Declarations */ 

#ifndef __IADOCECollection_FWD_DEFINED__
#define __IADOCECollection_FWD_DEFINED__
typedef interface IADOCECollection IADOCECollection;
#endif 	/* __IADOCECollection_FWD_DEFINED__ */


#ifndef __IADOCEField_FWD_DEFINED__
#define __IADOCEField_FWD_DEFINED__
typedef interface IADOCEField IADOCEField;
#endif 	/* __IADOCEField_FWD_DEFINED__ */


#ifndef __IADOCEFields_FWD_DEFINED__
#define __IADOCEFields_FWD_DEFINED__
typedef interface IADOCEFields IADOCEFields;
#endif 	/* __IADOCEFields_FWD_DEFINED__ */


#ifndef __IADOCERecordset_FWD_DEFINED__
#define __IADOCERecordset_FWD_DEFINED__
typedef interface IADOCERecordset IADOCERecordset;
#endif 	/* __IADOCERecordset_FWD_DEFINED__ */


#ifndef __ADOCERecordset_FWD_DEFINED__
#define __ADOCERecordset_FWD_DEFINED__

#ifdef __cplusplus
typedef class ADOCERecordset ADOCERecordset;
#else
typedef struct ADOCERecordset ADOCERecordset;
#endif /* __cplusplus */

#endif 	/* __ADOCERecordset_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

void __RPC_FAR * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void __RPC_FAR * ); 

/****************************************
 * Generated header for interface: __MIDL_itf_ADOCE_0000
 * at Tue Apr 07 10:41:39 1998
 * using MIDL 3.01.75
 ****************************************/
/* [local] */ 


typedef /* [public][public][public][public] */ 
enum __MIDL___MIDL_itf_ADOCE_0000_0001
    {	adOpenForwardOnly	= 0,
	adOpenKeyset	= 1,
	adOpenDynamic	= 2,
	adOpenStatic	= 3
    }	CursorTypeEnum;

typedef /* [public] */ 
enum __MIDL___MIDL_itf_ADOCE_0000_0002
    {	adPosUnknown	= -1,
	adPosBOF	= -2,
	adPosEOF	= -3
    }	PositionEnum;

typedef /* [public] */ 
enum __MIDL___MIDL_itf_ADOCE_0000_0003
    {	adCmdText	= 1,
	adCmdTable	= 2,
	adCmdStoredProc	= 4,
	adCmdUnknown	= 8
    }	CommandEnum;

typedef /* [public][public] */ 
enum __MIDL___MIDL_itf_ADOCE_0000_0004
    {	adBinary	= 128,
	adBoolean	= 11,
	adDate	= 7,
	adDouble	= 5,
	adInteger	= 3,
	adLongVarWChar	= 203,
	adSmallInt	= 2,
	adUnsignedInt	= 19,
	adUnsignedSmallInt	= 18,
	adVarWChar	= 202
    }	DataTypeEnum;

typedef /* [public][public] */ 
enum __MIDL___MIDL_itf_ADOCE_0000_0005
    {	adAddNew	= 0x1000400,
	adApproxPosition	= 0x4000,
	adBookmark	= 0x2000,
	adDelete	= 0x1000800,
	adHoldRecords	= 0x100,
	adMovePrevious	= 0x200,
	adResync	= 0x20000,
	adUpdate	= 0x1008000
    }	CursorOptionEnum;

typedef /* [public][public][public][public] */ 
enum __MIDL___MIDL_itf_ADOCE_0000_0006
    {	adLockReadOnly	= 1,
	adLockOptimistic	= 3
    }	LockTypeEnum;

typedef /* [public][public] */ 
enum __MIDL___MIDL_itf_ADOCE_0000_0007
    {	adEditNone	= 0,
	adEditInProgress	= 0x1,
	adEditAdd	= 0x2
    }	EditModeEnum;

typedef /* [public] */ 
enum __MIDL___MIDL_itf_ADOCE_0000_0008
    {	adErrInvalidArgument	= 0xbb9,
	adErrNoCurrentRecord	= 0xbcd,
	adErrIllegalOperation	= 0xc93,
	adErrFeatureNotAvailable	= 0xcb3,
	adErrItemNotFound	= 0xcc1,
	adErrObjectNotSet	= 0xd5c,
	adErrDataConversion	= 0xd5d,
	adErrObjectClosed	= 0xe78,
	adErrObjectOpen	= 0xe79,
	adErrProviderNotFound	= 0xe7a,
	adErrInvalidParamInfo	= 0xe7c,
	adErrInvalidConnection	= 0xe7d
    }	ErrorValueEnum;

typedef /* [public] */ 
enum __MIDL___MIDL_itf_ADOCE_0000_0009
    {	adFldMayDefer	= 2,
	adFldUpdatable	= 4,
	adFldUnknownUpdatable	= 8,
	adFldFixed	= 16,
	adFldIsNullable	= 32,
	adFldMayBeNull	= 64,
	adFldLong	= 128,
	adFldRowID	= 256
    }	FieldAttributeEnum;



extern RPC_IF_HANDLE __MIDL_itf_ADOCE_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_ADOCE_0000_v0_0_s_ifspec;

#ifndef __IADOCECollection_INTERFACE_DEFINED__
#define __IADOCECollection_INTERFACE_DEFINED__

/****************************************
 * Generated header for interface: IADOCECollection
 * at Tue Apr 07 10:41:39 1998
 * using MIDL 3.01.75
 ****************************************/
/* [unique][dual][uuid][object] */ 



EXTERN_C const IID IID_IADOCECollection;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    interface DECLSPEC_UUID("4BEB93DA-28D8-11D1-8321-00A024A88110")
    IADOCECollection : public IDispatch
    {
    public:
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Count( 
            /* [retval][out] */ long __RPC_FAR *pVal) = 0;
        
        virtual /* [id][restricted] */ HRESULT STDMETHODCALLTYPE _NewEnum( 
            /* [retval][out] */ IUnknown __RPC_FAR *__RPC_FAR *ppvObject) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Refresh( void) = 0;
        
        virtual /* [propget][hidden] */ HRESULT STDMETHODCALLTYPE get_Element( 
            VARIANT __RPC_FAR *pvar,
            int index) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IADOCECollectionVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( 
            IADOCECollection __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void __RPC_FAR *__RPC_FAR *ppvObject);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( 
            IADOCECollection __RPC_FAR * This);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( 
            IADOCECollection __RPC_FAR * This);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( 
            IADOCECollection __RPC_FAR * This,
            /* [out] */ UINT __RPC_FAR *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( 
            IADOCECollection __RPC_FAR * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( 
            IADOCECollection __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR __RPC_FAR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID __RPC_FAR *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( 
            IADOCECollection __RPC_FAR * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS __RPC_FAR *pDispParams,
            /* [out] */ VARIANT __RPC_FAR *pVarResult,
            /* [out] */ EXCEPINFO __RPC_FAR *pExcepInfo,
            /* [out] */ UINT __RPC_FAR *puArgErr);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Count )( 
            IADOCECollection __RPC_FAR * This,
            /* [retval][out] */ long __RPC_FAR *pVal);
        
        /* [id][restricted] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *_NewEnum )( 
            IADOCECollection __RPC_FAR * This,
            /* [retval][out] */ IUnknown __RPC_FAR *__RPC_FAR *ppvObject);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Refresh )( 
            IADOCECollection __RPC_FAR * This);
        
        /* [propget][hidden] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Element )( 
            IADOCECollection __RPC_FAR * This,
            VARIANT __RPC_FAR *pvar,
            int index);
        
        END_INTERFACE
    } IADOCECollectionVtbl;

    interface IADOCECollection
    {
        CONST_VTBL struct IADOCECollectionVtbl __RPC_FAR *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IADOCECollection_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IADOCECollection_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IADOCECollection_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IADOCECollection_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define IADOCECollection_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define IADOCECollection_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define IADOCECollection_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#define IADOCECollection_get_Count(This,pVal)	\
    (This)->lpVtbl -> get_Count(This,pVal)

#define IADOCECollection__NewEnum(This,ppvObject)	\
    (This)->lpVtbl -> _NewEnum(This,ppvObject)

#define IADOCECollection_Refresh(This)	\
    (This)->lpVtbl -> Refresh(This)

#define IADOCECollection_get_Element(This,pvar,index)	\
    (This)->lpVtbl -> get_Element(This,pvar,index)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCECollection_get_Count_Proxy( 
    IADOCECollection __RPC_FAR * This,
    /* [retval][out] */ long __RPC_FAR *pVal);


void __RPC_STUB IADOCECollection_get_Count_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][restricted] */ HRESULT STDMETHODCALLTYPE IADOCECollection__NewEnum_Proxy( 
    IADOCECollection __RPC_FAR * This,
    /* [retval][out] */ IUnknown __RPC_FAR *__RPC_FAR *ppvObject);


void __RPC_STUB IADOCECollection__NewEnum_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCECollection_Refresh_Proxy( 
    IADOCECollection __RPC_FAR * This);


void __RPC_STUB IADOCECollection_Refresh_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [propget][hidden] */ HRESULT STDMETHODCALLTYPE IADOCECollection_get_Element_Proxy( 
    IADOCECollection __RPC_FAR * This,
    VARIANT __RPC_FAR *pvar,
    int index);


void __RPC_STUB IADOCECollection_get_Element_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IADOCECollection_INTERFACE_DEFINED__ */


#ifndef __IADOCEField_INTERFACE_DEFINED__
#define __IADOCEField_INTERFACE_DEFINED__

/****************************************
 * Generated header for interface: IADOCEField
 * at Tue Apr 07 10:41:39 1998
 * using MIDL 3.01.75
 ****************************************/
/* [unique][dual][uuid][object] */ 



EXTERN_C const IID IID_IADOCEField;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    interface DECLSPEC_UUID("4BEB93D7-28D8-11D1-8321-00A024A88110")
    IADOCEField : public IDispatch
    {
    public:
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_ActualSize( 
            /* [retval][out] */ long __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Attributes( 
            /* [retval][out] */ long __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_DefinedSize( 
            /* [retval][out] */ long __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Name( 
            /* [retval][out] */ BSTR __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Type( 
            /* [retval][out] */ DataTypeEnum __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_UnderlyingValue( 
            /* [retval][out] */ VARIANT __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Value( 
            /* [retval][out] */ VARIANT __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_Value( 
            /* [in] */ VARIANT newVal) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IADOCEFieldVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( 
            IADOCEField __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void __RPC_FAR *__RPC_FAR *ppvObject);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( 
            IADOCEField __RPC_FAR * This);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( 
            IADOCEField __RPC_FAR * This);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( 
            IADOCEField __RPC_FAR * This,
            /* [out] */ UINT __RPC_FAR *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( 
            IADOCEField __RPC_FAR * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( 
            IADOCEField __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR __RPC_FAR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID __RPC_FAR *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( 
            IADOCEField __RPC_FAR * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS __RPC_FAR *pDispParams,
            /* [out] */ VARIANT __RPC_FAR *pVarResult,
            /* [out] */ EXCEPINFO __RPC_FAR *pExcepInfo,
            /* [out] */ UINT __RPC_FAR *puArgErr);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_ActualSize )( 
            IADOCEField __RPC_FAR * This,
            /* [retval][out] */ long __RPC_FAR *pVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Attributes )( 
            IADOCEField __RPC_FAR * This,
            /* [retval][out] */ long __RPC_FAR *pVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_DefinedSize )( 
            IADOCEField __RPC_FAR * This,
            /* [retval][out] */ long __RPC_FAR *pVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Name )( 
            IADOCEField __RPC_FAR * This,
            /* [retval][out] */ BSTR __RPC_FAR *pVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Type )( 
            IADOCEField __RPC_FAR * This,
            /* [retval][out] */ DataTypeEnum __RPC_FAR *pVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_UnderlyingValue )( 
            IADOCEField __RPC_FAR * This,
            /* [retval][out] */ VARIANT __RPC_FAR *pVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Value )( 
            IADOCEField __RPC_FAR * This,
            /* [retval][out] */ VARIANT __RPC_FAR *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *put_Value )( 
            IADOCEField __RPC_FAR * This,
            /* [in] */ VARIANT newVal);
        
        END_INTERFACE
    } IADOCEFieldVtbl;

    interface IADOCEField
    {
        CONST_VTBL struct IADOCEFieldVtbl __RPC_FAR *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IADOCEField_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IADOCEField_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IADOCEField_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IADOCEField_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define IADOCEField_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define IADOCEField_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define IADOCEField_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#define IADOCEField_get_ActualSize(This,pVal)	\
    (This)->lpVtbl -> get_ActualSize(This,pVal)

#define IADOCEField_get_Attributes(This,pVal)	\
    (This)->lpVtbl -> get_Attributes(This,pVal)

#define IADOCEField_get_DefinedSize(This,pVal)	\
    (This)->lpVtbl -> get_DefinedSize(This,pVal)

#define IADOCEField_get_Name(This,pVal)	\
    (This)->lpVtbl -> get_Name(This,pVal)

#define IADOCEField_get_Type(This,pVal)	\
    (This)->lpVtbl -> get_Type(This,pVal)

#define IADOCEField_get_UnderlyingValue(This,pVal)	\
    (This)->lpVtbl -> get_UnderlyingValue(This,pVal)

#define IADOCEField_get_Value(This,pVal)	\
    (This)->lpVtbl -> get_Value(This,pVal)

#define IADOCEField_put_Value(This,newVal)	\
    (This)->lpVtbl -> put_Value(This,newVal)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCEField_get_ActualSize_Proxy( 
    IADOCEField __RPC_FAR * This,
    /* [retval][out] */ long __RPC_FAR *pVal);


void __RPC_STUB IADOCEField_get_ActualSize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCEField_get_Attributes_Proxy( 
    IADOCEField __RPC_FAR * This,
    /* [retval][out] */ long __RPC_FAR *pVal);


void __RPC_STUB IADOCEField_get_Attributes_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCEField_get_DefinedSize_Proxy( 
    IADOCEField __RPC_FAR * This,
    /* [retval][out] */ long __RPC_FAR *pVal);


void __RPC_STUB IADOCEField_get_DefinedSize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCEField_get_Name_Proxy( 
    IADOCEField __RPC_FAR * This,
    /* [retval][out] */ BSTR __RPC_FAR *pVal);


void __RPC_STUB IADOCEField_get_Name_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCEField_get_Type_Proxy( 
    IADOCEField __RPC_FAR * This,
    /* [retval][out] */ DataTypeEnum __RPC_FAR *pVal);


void __RPC_STUB IADOCEField_get_Type_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCEField_get_UnderlyingValue_Proxy( 
    IADOCEField __RPC_FAR * This,
    /* [retval][out] */ VARIANT __RPC_FAR *pVal);


void __RPC_STUB IADOCEField_get_UnderlyingValue_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCEField_get_Value_Proxy( 
    IADOCEField __RPC_FAR * This,
    /* [retval][out] */ VARIANT __RPC_FAR *pVal);


void __RPC_STUB IADOCEField_get_Value_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propput] */ HRESULT STDMETHODCALLTYPE IADOCEField_put_Value_Proxy( 
    IADOCEField __RPC_FAR * This,
    /* [in] */ VARIANT newVal);


void __RPC_STUB IADOCEField_put_Value_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IADOCEField_INTERFACE_DEFINED__ */


#ifndef __IADOCEFields_INTERFACE_DEFINED__
#define __IADOCEFields_INTERFACE_DEFINED__

/****************************************
 * Generated header for interface: IADOCEFields
 * at Tue Apr 07 10:41:39 1998
 * using MIDL 3.01.75
 ****************************************/
/* [unique][dual][uuid][object] */ 



EXTERN_C const IID IID_IADOCEFields;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    interface DECLSPEC_UUID("4BEB93D6-28D8-11D1-8321-00A024A88110")
    IADOCEFields : public IADOCECollection
    {
    public:
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Item( 
            /* [in] */ VARIANT varIndex,
            /* [retval][out] */ IADOCEField __RPC_FAR *__RPC_FAR *pVal) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IADOCEFieldsVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( 
            IADOCEFields __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void __RPC_FAR *__RPC_FAR *ppvObject);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( 
            IADOCEFields __RPC_FAR * This);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( 
            IADOCEFields __RPC_FAR * This);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( 
            IADOCEFields __RPC_FAR * This,
            /* [out] */ UINT __RPC_FAR *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( 
            IADOCEFields __RPC_FAR * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( 
            IADOCEFields __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR __RPC_FAR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID __RPC_FAR *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( 
            IADOCEFields __RPC_FAR * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS __RPC_FAR *pDispParams,
            /* [out] */ VARIANT __RPC_FAR *pVarResult,
            /* [out] */ EXCEPINFO __RPC_FAR *pExcepInfo,
            /* [out] */ UINT __RPC_FAR *puArgErr);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Count )( 
            IADOCEFields __RPC_FAR * This,
            /* [retval][out] */ long __RPC_FAR *pVal);
        
        /* [id][restricted] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *_NewEnum )( 
            IADOCEFields __RPC_FAR * This,
            /* [retval][out] */ IUnknown __RPC_FAR *__RPC_FAR *ppvObject);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Refresh )( 
            IADOCEFields __RPC_FAR * This);
        
        /* [propget][hidden] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Element )( 
            IADOCEFields __RPC_FAR * This,
            VARIANT __RPC_FAR *pvar,
            int index);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Item )( 
            IADOCEFields __RPC_FAR * This,
            /* [in] */ VARIANT varIndex,
            /* [retval][out] */ IADOCEField __RPC_FAR *__RPC_FAR *pVal);
        
        END_INTERFACE
    } IADOCEFieldsVtbl;

    interface IADOCEFields
    {
        CONST_VTBL struct IADOCEFieldsVtbl __RPC_FAR *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IADOCEFields_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IADOCEFields_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IADOCEFields_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IADOCEFields_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define IADOCEFields_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define IADOCEFields_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define IADOCEFields_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#define IADOCEFields_get_Count(This,pVal)	\
    (This)->lpVtbl -> get_Count(This,pVal)

#define IADOCEFields__NewEnum(This,ppvObject)	\
    (This)->lpVtbl -> _NewEnum(This,ppvObject)

#define IADOCEFields_Refresh(This)	\
    (This)->lpVtbl -> Refresh(This)

#define IADOCEFields_get_Element(This,pvar,index)	\
    (This)->lpVtbl -> get_Element(This,pvar,index)


#define IADOCEFields_get_Item(This,varIndex,pVal)	\
    (This)->lpVtbl -> get_Item(This,varIndex,pVal)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCEFields_get_Item_Proxy( 
    IADOCEFields __RPC_FAR * This,
    /* [in] */ VARIANT varIndex,
    /* [retval][out] */ IADOCEField __RPC_FAR *__RPC_FAR *pVal);


void __RPC_STUB IADOCEFields_get_Item_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IADOCEFields_INTERFACE_DEFINED__ */


#ifndef __IADOCERecordset_INTERFACE_DEFINED__
#define __IADOCERecordset_INTERFACE_DEFINED__

/****************************************
 * Generated header for interface: IADOCERecordset
 * at Tue Apr 07 10:41:39 1998
 * using MIDL 3.01.75
 ****************************************/
/* [unique][dual][uuid][object] */ 



EXTERN_C const IID IID_IADOCERecordset;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    interface DECLSPEC_UUID("4BEB93D5-28D8-11D1-8321-00A024A88110")
    IADOCERecordset : public IDispatch
    {
    public:
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE AddNew( 
            /* [optional][in] */ VARIANT FieldList,
            /* [optional][in] */ VARIANT Values) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE CancelUpdate( void) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Clone( 
            /* [out][retval] */ IADOCERecordset __RPC_FAR *__RPC_FAR *ppvObject) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Close( void) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Delete( 
            /* [defaultvalue][in] */ long AffectRecords) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE GetRows( 
            /* [defaultvalue][in] */ long Rows,
            /* [optional][in] */ VARIANT Start,
            /* [optional][in] */ VARIANT Fields,
            /* [out][retval] */ VARIANT __RPC_FAR *pvar) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Move( 
            /* [in] */ long NumRecords,
            /* [optional][in] */ VARIANT Start) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE MoveFirst( void) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE MoveLast( void) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE MoveNext( void) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE MovePrevious( void) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Open( 
            /* [optional][in] */ VARIANT Source,
            /* [optional][in] */ VARIANT ActiveConnection,
            /* [defaultvalue][in] */ CursorTypeEnum CursorType,
            /* [defaultvalue][in] */ LockTypeEnum LockType,
            /* [defaultvalue][in] */ long Options) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Requery( void) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Supports( 
            /* [in] */ CursorOptionEnum CursorOptions,
            /* [out][retval] */ VARIANT_BOOL __RPC_FAR *pb) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Update( 
            /* [optional][in] */ VARIANT Fields,
            /* [optional][in] */ VARIANT Values) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_AbsolutePage( 
            /* [retval][out] */ long __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_AbsolutePage( 
            /* [in] */ long newVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_AbsolutePosition( 
            /* [retval][out] */ long __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_AbsolutePosition( 
            /* [in] */ long newVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_BOF( 
            /* [retval][out] */ VARIANT_BOOL __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Bookmark( 
            /* [retval][out] */ VARIANT __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_Bookmark( 
            /* [in] */ VARIANT newVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_CacheSize( 
            /* [retval][out] */ long __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_CacheSize( 
            /* [in] */ long newVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_CursorType( 
            /* [retval][out] */ CursorTypeEnum __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_CursorType( 
            /* [in] */ CursorTypeEnum newVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_EditMode( 
            /* [retval][out] */ EditModeEnum __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_EOF( 
            /* [retval][out] */ VARIANT_BOOL __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Fields( 
            /* [retval][out] */ IADOCEFields __RPC_FAR *__RPC_FAR *pvObject) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_LockType( 
            /* [retval][out] */ LockTypeEnum __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_LockType( 
            /* [in] */ LockTypeEnum newVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_PageCount( 
            /* [retval][out] */ long __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_PageSize( 
            /* [retval][out] */ long __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_PageSize( 
            /* [in] */ long newVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_RecordCount( 
            /* [retval][out] */ long __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Source( 
            /* [retval][out] */ BSTR __RPC_FAR *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_Source( 
            /* [in] */ BSTR newVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_ActiveConnection( 
            /* [retval][out] */ IDispatch __RPC_FAR *__RPC_FAR *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_ActiveConnection( 
            /* [in] */ BSTR newVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_ErrorDescription( 
            /* [retval][out] */ BSTR __RPC_FAR *pVal) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IADOCERecordsetVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void __RPC_FAR *__RPC_FAR *ppvObject);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( 
            IADOCERecordset __RPC_FAR * This);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( 
            IADOCERecordset __RPC_FAR * This);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( 
            IADOCERecordset __RPC_FAR * This,
            /* [out] */ UINT __RPC_FAR *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR __RPC_FAR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID __RPC_FAR *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS __RPC_FAR *pDispParams,
            /* [out] */ VARIANT __RPC_FAR *pVarResult,
            /* [out] */ EXCEPINFO __RPC_FAR *pExcepInfo,
            /* [out] */ UINT __RPC_FAR *puArgErr);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *AddNew )( 
            IADOCERecordset __RPC_FAR * This,
            /* [optional][in] */ VARIANT FieldList,
            /* [optional][in] */ VARIANT Values);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *CancelUpdate )( 
            IADOCERecordset __RPC_FAR * This);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Clone )( 
            IADOCERecordset __RPC_FAR * This,
            /* [out][retval] */ IADOCERecordset __RPC_FAR *__RPC_FAR *ppvObject);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Close )( 
            IADOCERecordset __RPC_FAR * This);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Delete )( 
            IADOCERecordset __RPC_FAR * This,
            /* [defaultvalue][in] */ long AffectRecords);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetRows )( 
            IADOCERecordset __RPC_FAR * This,
            /* [defaultvalue][in] */ long Rows,
            /* [optional][in] */ VARIANT Start,
            /* [optional][in] */ VARIANT Fields,
            /* [out][retval] */ VARIANT __RPC_FAR *pvar);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Move )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ long NumRecords,
            /* [optional][in] */ VARIANT Start);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *MoveFirst )( 
            IADOCERecordset __RPC_FAR * This);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *MoveLast )( 
            IADOCERecordset __RPC_FAR * This);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *MoveNext )( 
            IADOCERecordset __RPC_FAR * This);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *MovePrevious )( 
            IADOCERecordset __RPC_FAR * This);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Open )( 
            IADOCERecordset __RPC_FAR * This,
            /* [optional][in] */ VARIANT Source,
            /* [optional][in] */ VARIANT ActiveConnection,
            /* [defaultvalue][in] */ CursorTypeEnum CursorType,
            /* [defaultvalue][in] */ LockTypeEnum LockType,
            /* [defaultvalue][in] */ long Options);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Requery )( 
            IADOCERecordset __RPC_FAR * This);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Supports )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ CursorOptionEnum CursorOptions,
            /* [out][retval] */ VARIANT_BOOL __RPC_FAR *pb);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Update )( 
            IADOCERecordset __RPC_FAR * This,
            /* [optional][in] */ VARIANT Fields,
            /* [optional][in] */ VARIANT Values);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_AbsolutePage )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ long __RPC_FAR *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *put_AbsolutePage )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ long newVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_AbsolutePosition )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ long __RPC_FAR *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *put_AbsolutePosition )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ long newVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_BOF )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ VARIANT_BOOL __RPC_FAR *pVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Bookmark )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ VARIANT __RPC_FAR *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *put_Bookmark )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ VARIANT newVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_CacheSize )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ long __RPC_FAR *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *put_CacheSize )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ long newVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_CursorType )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ CursorTypeEnum __RPC_FAR *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *put_CursorType )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ CursorTypeEnum newVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_EditMode )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ EditModeEnum __RPC_FAR *pVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_EOF )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ VARIANT_BOOL __RPC_FAR *pVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Fields )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ IADOCEFields __RPC_FAR *__RPC_FAR *pvObject);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_LockType )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ LockTypeEnum __RPC_FAR *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *put_LockType )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ LockTypeEnum newVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_PageCount )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ long __RPC_FAR *pVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_PageSize )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ long __RPC_FAR *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *put_PageSize )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ long newVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_RecordCount )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ long __RPC_FAR *pVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Source )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ BSTR __RPC_FAR *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *put_Source )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ BSTR newVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_ActiveConnection )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ IDispatch __RPC_FAR *__RPC_FAR *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *put_ActiveConnection )( 
            IADOCERecordset __RPC_FAR * This,
            /* [in] */ BSTR newVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_ErrorDescription )( 
            IADOCERecordset __RPC_FAR * This,
            /* [retval][out] */ BSTR __RPC_FAR *pVal);
        
        END_INTERFACE
    } IADOCERecordsetVtbl;

    interface IADOCERecordset
    {
        CONST_VTBL struct IADOCERecordsetVtbl __RPC_FAR *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IADOCERecordset_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IADOCERecordset_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IADOCERecordset_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IADOCERecordset_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define IADOCERecordset_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define IADOCERecordset_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define IADOCERecordset_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#define IADOCERecordset_AddNew(This,FieldList,Values)	\
    (This)->lpVtbl -> AddNew(This,FieldList,Values)

#define IADOCERecordset_CancelUpdate(This)	\
    (This)->lpVtbl -> CancelUpdate(This)

#define IADOCERecordset_Clone(This,ppvObject)	\
    (This)->lpVtbl -> Clone(This,ppvObject)

#define IADOCERecordset_Close(This)	\
    (This)->lpVtbl -> Close(This)

#define IADOCERecordset_Delete(This,AffectRecords)	\
    (This)->lpVtbl -> Delete(This,AffectRecords)

#define IADOCERecordset_GetRows(This,Rows,Start,Fields,pvar)	\
    (This)->lpVtbl -> GetRows(This,Rows,Start,Fields,pvar)

#define IADOCERecordset_Move(This,NumRecords,Start)	\
    (This)->lpVtbl -> Move(This,NumRecords,Start)

#define IADOCERecordset_MoveFirst(This)	\
    (This)->lpVtbl -> MoveFirst(This)

#define IADOCERecordset_MoveLast(This)	\
    (This)->lpVtbl -> MoveLast(This)

#define IADOCERecordset_MoveNext(This)	\
    (This)->lpVtbl -> MoveNext(This)

#define IADOCERecordset_MovePrevious(This)	\
    (This)->lpVtbl -> MovePrevious(This)

#define IADOCERecordset_Open(This,Source,ActiveConnection,CursorType,LockType,Options)	\
    (This)->lpVtbl -> Open(This,Source,ActiveConnection,CursorType,LockType,Options)

#define IADOCERecordset_Requery(This)	\
    (This)->lpVtbl -> Requery(This)

#define IADOCERecordset_Supports(This,CursorOptions,pb)	\
    (This)->lpVtbl -> Supports(This,CursorOptions,pb)

#define IADOCERecordset_Update(This,Fields,Values)	\
    (This)->lpVtbl -> Update(This,Fields,Values)

#define IADOCERecordset_get_AbsolutePage(This,pVal)	\
    (This)->lpVtbl -> get_AbsolutePage(This,pVal)

#define IADOCERecordset_put_AbsolutePage(This,newVal)	\
    (This)->lpVtbl -> put_AbsolutePage(This,newVal)

#define IADOCERecordset_get_AbsolutePosition(This,pVal)	\
    (This)->lpVtbl -> get_AbsolutePosition(This,pVal)

#define IADOCERecordset_put_AbsolutePosition(This,newVal)	\
    (This)->lpVtbl -> put_AbsolutePosition(This,newVal)

#define IADOCERecordset_get_BOF(This,pVal)	\
    (This)->lpVtbl -> get_BOF(This,pVal)

#define IADOCERecordset_get_Bookmark(This,pVal)	\
    (This)->lpVtbl -> get_Bookmark(This,pVal)

#define IADOCERecordset_put_Bookmark(This,newVal)	\
    (This)->lpVtbl -> put_Bookmark(This,newVal)

#define IADOCERecordset_get_CacheSize(This,pVal)	\
    (This)->lpVtbl -> get_CacheSize(This,pVal)

#define IADOCERecordset_put_CacheSize(This,newVal)	\
    (This)->lpVtbl -> put_CacheSize(This,newVal)

#define IADOCERecordset_get_CursorType(This,pVal)	\
    (This)->lpVtbl -> get_CursorType(This,pVal)

#define IADOCERecordset_put_CursorType(This,newVal)	\
    (This)->lpVtbl -> put_CursorType(This,newVal)

#define IADOCERecordset_get_EditMode(This,pVal)	\
    (This)->lpVtbl -> get_EditMode(This,pVal)

#define IADOCERecordset_get_EOF(This,pVal)	\
    (This)->lpVtbl -> get_EOF(This,pVal)

#define IADOCERecordset_get_Fields(This,pvObject)	\
    (This)->lpVtbl -> get_Fields(This,pvObject)

#define IADOCERecordset_get_LockType(This,pVal)	\
    (This)->lpVtbl -> get_LockType(This,pVal)

#define IADOCERecordset_put_LockType(This,newVal)	\
    (This)->lpVtbl -> put_LockType(This,newVal)

#define IADOCERecordset_get_PageCount(This,pVal)	\
    (This)->lpVtbl -> get_PageCount(This,pVal)

#define IADOCERecordset_get_PageSize(This,pVal)	\
    (This)->lpVtbl -> get_PageSize(This,pVal)

#define IADOCERecordset_put_PageSize(This,newVal)	\
    (This)->lpVtbl -> put_PageSize(This,newVal)

#define IADOCERecordset_get_RecordCount(This,pVal)	\
    (This)->lpVtbl -> get_RecordCount(This,pVal)

#define IADOCERecordset_get_Source(This,pVal)	\
    (This)->lpVtbl -> get_Source(This,pVal)

#define IADOCERecordset_put_Source(This,newVal)	\
    (This)->lpVtbl -> put_Source(This,newVal)

#define IADOCERecordset_get_ActiveConnection(This,pVal)	\
    (This)->lpVtbl -> get_ActiveConnection(This,pVal)

#define IADOCERecordset_put_ActiveConnection(This,newVal)	\
    (This)->lpVtbl -> put_ActiveConnection(This,newVal)

#define IADOCERecordset_get_ErrorDescription(This,pVal)	\
    (This)->lpVtbl -> get_ErrorDescription(This,pVal)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_AddNew_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [optional][in] */ VARIANT FieldList,
    /* [optional][in] */ VARIANT Values);


void __RPC_STUB IADOCERecordset_AddNew_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_CancelUpdate_Proxy( 
    IADOCERecordset __RPC_FAR * This);


void __RPC_STUB IADOCERecordset_CancelUpdate_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_Clone_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [out][retval] */ IADOCERecordset __RPC_FAR *__RPC_FAR *ppvObject);


void __RPC_STUB IADOCERecordset_Clone_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_Close_Proxy( 
    IADOCERecordset __RPC_FAR * This);


void __RPC_STUB IADOCERecordset_Close_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_Delete_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [defaultvalue][in] */ long AffectRecords);


void __RPC_STUB IADOCERecordset_Delete_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_GetRows_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [defaultvalue][in] */ long Rows,
    /* [optional][in] */ VARIANT Start,
    /* [optional][in] */ VARIANT Fields,
    /* [out][retval] */ VARIANT __RPC_FAR *pvar);


void __RPC_STUB IADOCERecordset_GetRows_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_Move_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [in] */ long NumRecords,
    /* [optional][in] */ VARIANT Start);


void __RPC_STUB IADOCERecordset_Move_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_MoveFirst_Proxy( 
    IADOCERecordset __RPC_FAR * This);


void __RPC_STUB IADOCERecordset_MoveFirst_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_MoveLast_Proxy( 
    IADOCERecordset __RPC_FAR * This);


void __RPC_STUB IADOCERecordset_MoveLast_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_MoveNext_Proxy( 
    IADOCERecordset __RPC_FAR * This);


void __RPC_STUB IADOCERecordset_MoveNext_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_MovePrevious_Proxy( 
    IADOCERecordset __RPC_FAR * This);


void __RPC_STUB IADOCERecordset_MovePrevious_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_Open_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [optional][in] */ VARIANT Source,
    /* [optional][in] */ VARIANT ActiveConnection,
    /* [defaultvalue][in] */ CursorTypeEnum CursorType,
    /* [defaultvalue][in] */ LockTypeEnum LockType,
    /* [defaultvalue][in] */ long Options);


void __RPC_STUB IADOCERecordset_Open_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_Requery_Proxy( 
    IADOCERecordset __RPC_FAR * This);


void __RPC_STUB IADOCERecordset_Requery_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_Supports_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [in] */ CursorOptionEnum CursorOptions,
    /* [out][retval] */ VARIANT_BOOL __RPC_FAR *pb);


void __RPC_STUB IADOCERecordset_Supports_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_Update_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [optional][in] */ VARIANT Fields,
    /* [optional][in] */ VARIANT Values);


void __RPC_STUB IADOCERecordset_Update_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_AbsolutePage_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ long __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_AbsolutePage_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propput] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_put_AbsolutePage_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [in] */ long newVal);


void __RPC_STUB IADOCERecordset_put_AbsolutePage_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_AbsolutePosition_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ long __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_AbsolutePosition_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propput] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_put_AbsolutePosition_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [in] */ long newVal);


void __RPC_STUB IADOCERecordset_put_AbsolutePosition_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_BOF_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ VARIANT_BOOL __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_BOF_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_Bookmark_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ VARIANT __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_Bookmark_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propput] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_put_Bookmark_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [in] */ VARIANT newVal);


void __RPC_STUB IADOCERecordset_put_Bookmark_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_CacheSize_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ long __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_CacheSize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propput] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_put_CacheSize_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [in] */ long newVal);


void __RPC_STUB IADOCERecordset_put_CacheSize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_CursorType_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ CursorTypeEnum __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_CursorType_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propput] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_put_CursorType_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [in] */ CursorTypeEnum newVal);


void __RPC_STUB IADOCERecordset_put_CursorType_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_EditMode_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ EditModeEnum __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_EditMode_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_EOF_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ VARIANT_BOOL __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_EOF_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_Fields_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ IADOCEFields __RPC_FAR *__RPC_FAR *pvObject);


void __RPC_STUB IADOCERecordset_get_Fields_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_LockType_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ LockTypeEnum __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_LockType_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propput] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_put_LockType_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [in] */ LockTypeEnum newVal);


void __RPC_STUB IADOCERecordset_put_LockType_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_PageCount_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ long __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_PageCount_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_PageSize_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ long __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_PageSize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propput] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_put_PageSize_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [in] */ long newVal);


void __RPC_STUB IADOCERecordset_put_PageSize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_RecordCount_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ long __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_RecordCount_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_Source_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ BSTR __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_Source_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propput] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_put_Source_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [in] */ BSTR newVal);


void __RPC_STUB IADOCERecordset_put_Source_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_ActiveConnection_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ IDispatch __RPC_FAR *__RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_ActiveConnection_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propput] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_put_ActiveConnection_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [in] */ BSTR newVal);


void __RPC_STUB IADOCERecordset_put_ActiveConnection_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [id][propget] */ HRESULT STDMETHODCALLTYPE IADOCERecordset_get_ErrorDescription_Proxy( 
    IADOCERecordset __RPC_FAR * This,
    /* [retval][out] */ BSTR __RPC_FAR *pVal);


void __RPC_STUB IADOCERecordset_get_ErrorDescription_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IADOCERecordset_INTERFACE_DEFINED__ */



#ifndef __ADOCELib_LIBRARY_DEFINED__
#define __ADOCELib_LIBRARY_DEFINED__

/****************************************
 * Generated header for library: ADOCELib
 * at Tue Apr 07 10:41:39 1998
 * using MIDL 3.01.75
 ****************************************/
/* [version][uuid] */ 



EXTERN_C const IID LIBID_ADOCELib;

#ifdef __cplusplus
EXTERN_C const CLSID CLSID_ADOCERecordset;

class DECLSPEC_UUID("4BEB93D3-28D8-11D1-8321-00A024A88110")
ADOCERecordset;
#endif
#endif /* __ADOCELib_LIBRARY_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

unsigned long             __RPC_USER  BSTR_UserSize(     unsigned long __RPC_FAR *, unsigned long            , BSTR __RPC_FAR * ); 
unsigned char __RPC_FAR * __RPC_USER  BSTR_UserMarshal(  unsigned long __RPC_FAR *, unsigned char __RPC_FAR *, BSTR __RPC_FAR * ); 
unsigned char __RPC_FAR * __RPC_USER  BSTR_UserUnmarshal(unsigned long __RPC_FAR *, unsigned char __RPC_FAR *, BSTR __RPC_FAR * ); 
void                      __RPC_USER  BSTR_UserFree(     unsigned long __RPC_FAR *, BSTR __RPC_FAR * ); 

unsigned long             __RPC_USER  VARIANT_UserSize(     unsigned long __RPC_FAR *, unsigned long            , VARIANT __RPC_FAR * ); 
unsigned char __RPC_FAR * __RPC_USER  VARIANT_UserMarshal(  unsigned long __RPC_FAR *, unsigned char __RPC_FAR *, VARIANT __RPC_FAR * ); 
unsigned char __RPC_FAR * __RPC_USER  VARIANT_UserUnmarshal(unsigned long __RPC_FAR *, unsigned char __RPC_FAR *, VARIANT __RPC_FAR * ); 
void                      __RPC_USER  VARIANT_UserFree(     unsigned long __RPC_FAR *, VARIANT __RPC_FAR * ); 

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif
