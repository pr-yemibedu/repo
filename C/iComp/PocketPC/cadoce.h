
/****************************************************************
*                        ADOCEVC								*
*																*
*   This is a wrapper class for ADOCE.  Ideally, there would be *
*	a wizard for this, but lacking that, a wrapper class is the *
*	next best thing.  Feel free to modify the class for your	*
*	particular needs, and remember--this is provided "As is" as	*
*	a sample, and is not intended to meet the rigors of			*
*	production code.  I simply wanted to give you a starting	*
*	point.														*
*																*										*
*	Note:  check out the comments.  I've tried to explain what  *
*	I was doing, and when I encountered errors I added a section*
*	marked off with "=====" to explain what I found and how I	*
*	worked around it.  Happy Coding.							*
****************************************************************/

//#if !defined(AFX_cVCCEado_H__B7A35495_8631_11D2_9A4E_0080C70C539B__INCLUDED_)
//#define AFX_cVCCEado_H__B7A35495_8631_11D2_9A4E_0080C70C539B__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000


// ADOCE include file (Supplied by Microsoft)
#include <adoce30.h>

class cADOCE  
{
public:
	BOOL Supports(CursorOptionEnum Option);
	long GetAbsolutePosition();
	HRESULT SetAbsolutePosition(long Recno);
	HRESULT AddNew();
	void Update();
	void Delete();
	COleVariant GetValue(long Col);
	HRESULT SetValue(long Col, COleVariant* VData);
	BSTR Name(long Col);
	IADOCEField* Item(long lColumn);
	long FieldCount();
	IADOCEFields* Fields();
	BOOL isEOF();
	BOOL BOF();
	long RecordCount();
	IADOCERecordset* RecordSet();
	void Close();
	// Default = Forward Only, Read Only
	BOOL Open(BSTR sSource, CursorTypeEnum CursorType = adOpenForwardOnly, 
				LockTypeEnum LockType = adLockReadOnly, long lOptions = 0);

	CString SQLstr;					// Holds a SQL Command
	
	void MoveFirst();
	void MoveLast();
	void MovePrev();
	void MoveNext();

	cADOCE();
	virtual ~cADOCE();
	
private:
	HRESULT hr;
	IADOCEFields*     g_pFields;	// Fields Collection
	IADOCEField*	  pField;		// Field Object
	IADOCERecordset*  g_pRecordSet;	// Recordset Interface
	BOOL	GetRecordSetInterface();
	void	AdoError();
};

//#endif // !defined(AFX_cVCCEado_H__B7A35495_8631_11D2_9A4E_0080C70C539B__INCLUDED_)




