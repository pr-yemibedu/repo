/****************************************************************
*								cADOCE.cpp						*
*																*
*	ADOCE wrapper class implementation.							*
*																*
*	Notes:														*
*	-- ADO is COM based, and does not require MFC. I tried to	*
*	away from MFC in this wrapper class for compatibility with	*
*	those apps that may not use it.  However, one function here	*
*	does use MFC. AdoError.  If you are not using MFC, then you *
*	will want to modify this function.							*
****************************************************************/
#include "stdafx.h"

#include "cADOCE.h"
#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

#define MSG_LIMIT   256

// ADOCE Class Interface C-Style GUID's
#include "adoce_i.c"


cADOCE::cADOCE()
{
	// Clear private member variables
	g_pRecordSet = NULL;
	g_pFields = NULL;
	
	// Create the Recordset interface
	GetRecordSetInterface();
}

cADOCE::~cADOCE()
{
	// Close RecordSet
	Close();


}

BOOL cADOCE::GetRecordSetInterface()
{
	//////////////////////////////////////////////////
	// 
	//  First, get the recordset interface
	///////////////////////////////////////////////////

	// Create the Recordset interface
    hr = CoCreateInstance(CLSID_ADOCERecordset, NULL,
                        CLSCTX_INPROC_SERVER, IID_IADOCERecordset,
                        (void**)&g_pRecordSet);    
	
	// Check if Recordset was created
	if (FAILED(hr)) 
		return FALSE;
	else
		return TRUE;
}


BOOL cADOCE::Open(BSTR sSource, CursorTypeEnum CursorType, 
				LockTypeEnum LockType, long lOptions)
{
	//////////////////////////////////////////////////////////////
	//  Note that this is a multi-purpose function. There is	//
	//  no Command object in ADOCE, as there is in Desktop ADO.	//
	//  So if you need to create a Table or whatever, you load	//
	//	up a string with a SQL command, and pass it to Open.	//
	//////////////////////////////////////////////////////////////

	//============================================================
	// Note that the SQL query engine that ADOCE uses is not as 
	// full featured as the ones that you find on the desktop.
	// When I tried to pass it a command like "Create Table Table1
	// ( Field1 VARCHAR(25) PRIMARY KEY, Field2 VARCHAR(25) NULL)",
	// it threw "Syntax error near'XXX'" errors until I removed 
	// the PRIMARY KEY and NULL keywords.
	//============================================================

	//============================================================
	// Also Note that if you pass Open a Create Table Command, as
	// above, and if the table already exists it will throw an
	// error.  I just ignored the error, but you may want to
	// trap for it and handle it.
	//============================================================

	COleVariant vSQL;		// SQL Command
	COleVariant vConnection = TEXT("\\iComp.cdb");
					// but it must be declared for Open to work.
	
	// Release Fields Collection 
	if (g_pFields) g_pFields->Release();
	 
	 // Close Previous RecordSet
	Close();
	
	vSQL.vt = VT_BSTR;
	vSQL.bstrVal = sSource;

	// The default recordset is READ-ONLY, FORWARD-ONLY
	hr = g_pRecordSet->Open(vSQL, vConnection, 
					   CursorType, LockType, lOptions);

	// Check if OPEN method was successful
	if (FAILED(hr))
	{
		AdoError();
		return FALSE;
	}
	else
		return TRUE;
}


void cADOCE::Close()
{
	// Close Recordset if one exists
	if (g_pRecordSet)  
		(void)g_pRecordSet->Close();
}


IADOCERecordset* cADOCE::RecordSet()
{
	// Return RecordSet to calling function
	return g_pRecordSet;
}

BOOL cADOCE::Supports(CursorOptionEnum Option)
{
	//////////////////////////////////////////////////////////
	// This function queries the recordset, and returns true
	// if the requested Option is Supported.  Valid Options are:
	// 
	// Constant			Value		Description 
	// adAddNew			16778240	Supports the AddNew method. 
	// adApproxPosition 16384		Supports the AbsolutePosition and AbsolutePage properties. 
	// adBookmark		8192		Supports the Bookmark property. 
	// adDelete			16779264	Supports the Delete method. 
	// adMovePrevious	512			Supports the MovePrevious and Move methods to move the current record position backward. 
	// adUpdate			16809984	Supports the Update method. 
	// adHoldRecords	256			Not supported in ADOCE. 
	// adResync			131072		Not supported in ADOCE. 
	// adUpdateBatch	65536		Not supported in ADOCE. 
	////////////////////////////////////////////////////////////

	BOOL Result = FALSE;
	VARIANT_BOOL varResult;

	if(g_pRecordSet)
		hr = g_pRecordSet->Supports(Option, &varResult);
	
	if (FAILED(hr))
	{
		AdoError();
		return FALSE;
	}
	else
	{
		if(varResult == VARIANT_TRUE)
			Result = TRUE;
		else
			Result = FALSE;

		return Result;
	}

}
void cADOCE::MoveFirst()
{
    if(g_pRecordSet)
		hr = g_pRecordSet->MoveFirst();
    
	// Check if MOVE method was successful
	if (FAILED(hr))
    {
        AdoError();
        return;
    }
}


void cADOCE::MoveLast()
{
    if(g_pRecordSet)
		hr = g_pRecordSet->MoveLast();
    if (FAILED(hr))
    {
        AdoError();
        return;
    }
}


void cADOCE::MoveNext()
{
    
	if(g_pRecordSet)
		hr = g_pRecordSet->MoveNext();
    if (FAILED(hr))
    {
        AdoError();
        return;
    }
}

long cADOCE::GetAbsolutePosition()
{
	///////////////////////////////////////////////////////////
	// This Function gets the Absolute position of the Current
	// Record.
	// Notes:
	// -- You should not use this as a substitute for a record
	//	  number.  Subsequent additions and deletions can 
	//    invalidate the number returned.
	// -- There are 3 special return values that may be encountered:
	//    adPosUnknown = -1, adPosBOF = -2, and adPosEOF = -3
	///////////////////////////////////////////////////////////

	long Result = 0;
	HRESULT hr = S_OK;

	if(g_pRecordSet)
		hr = g_pRecordSet->get_AbsolutePosition(&Result);

	if (FAILED(hr))
    {
        AdoError();
        return Result;
    }
	return Result;
}

HRESULT cADOCE::SetAbsolutePosition(long Recno)
{
	///////////////////////////////////////////////////////////
	// This Function sets the Absolute position of the Recordset.
	// and makes that Record the current Record.
	//
	// Notes:
	// -- You should not use this as a substitute for a record
	//	  number.  Subsequent additions and deletions can 
	//    invalidate the number returned.
	///////////////////////////////////////////////////////////

	HRESULT hr = S_OK;

	//==================================================
	// -- Per the documentation, attempting to set the 
	// AbsolutePosition to zero or a negative number
	// will cause an error. However, when I tried
	// setting it to -5, it did not throw an error,
	// but a subsequent call to get_AbsolutePosition
	// returned -2 (adPosBOF).
	//==================================================
	if(g_pRecordSet)
		hr = g_pRecordSet->put_AbsolutePosition(Recno);

	if (FAILED(hr))
    {
        AdoError();
        return hr;
    }
	return hr;

}
void cADOCE::MovePrev()
{
    if(g_pRecordSet)
		hr = g_pRecordSet->MovePrevious();
    if (FAILED(hr))
    {
        AdoError();
        return;
    }
}



void cADOCE::AdoError()
{
	//////////////////////////////////////////////////////
	//  Get the error.
	//////////////////////////////////////////////////////
	BSTR bstrError = 0;
	
	// Get Error Message Description
	if (SUCCEEDED(g_pRecordSet->get_ErrorDescription(&bstrError)))
    {
        if (bstrError && *bstrError)
        {
            /////////////////////////////////////////////////
			// MFC is not required for ADO.  This is the only
			// place that I use it.  If your app doesn't use
			// MFC, then you should replace this with some
			// other error display method.
			/////////////////////////////////////////////////
			AfxMessageBox(bstrError, MB_OK,0);

            SysFreeString(bstrError);
			
			return;
        }
    }

}



long cADOCE::RecordCount()
{
	long lRows = 0;
	
	// Get the number of records
    if(g_pRecordSet)
		hr = g_pRecordSet->get_RecordCount(&lRows);

	return lRows;
}


BOOL cADOCE::isEOF()
{
	/////////////////////////////////////////////
	// Check if Recordset is at End Of File (EOF)
	/////////////////////////////////////////////
	
	VARIANT_BOOL bEOF;
	
	// Get Boolean value for EOF
	if(g_pRecordSet)
		hr = g_pRecordSet->get_EOF(&bEOF);

	if (bEOF == VARIANT_TRUE) 
		return TRUE;
	else
		return FALSE;
}

BOOL cADOCE::BOF()
{
	////////////////////////////////////////////////////
	// Check if Recordset is at Beginning Of File (BOF)
	////////////////////////////////////////////////////
	
	VARIANT_BOOL bBOF;
	
	// Get Boolean value for EOF
	if(g_pRecordSet)
		hr = g_pRecordSet->get_BOF(&bBOF);

	if (bBOF == VARIANT_TRUE) 
		return TRUE;
	else
		return FALSE;
}

IADOCEFields* cADOCE::Fields()
{
	/////////////////////////////////////////////////////
	// Get the Fields Collection.  I assume that the 
	// recordset is Open, otherwise You Lose.
	/////////////////////////////////////////////////////
	if(g_pRecordSet)
		hr = g_pRecordSet->get_Fields(&g_pFields);
    		
	return g_pFields;
}


long cADOCE::FieldCount()
{
	long lFields = 0;
	
	//////////////////////////////////////////////////////
	// Get the number of fields in the recordset, if it's
	// Open and if the Fields collection has been retrieved.
	//////////////////////////////////////////////////////
	if(g_pFields)
		hr = g_pFields->get_Count(&lFields);

	return lFields;
}


IADOCEField* cADOCE::Item(long lColumn)
{
	///////////////////////////////////////////////////////////////
	// Return a given field from the Fields collection
	///////////////////////////////////////////////////////////////

	VARIANT vColumn;
	VariantInit(&vColumn);
    vColumn.vt = VT_I4;

	pField = NULL;		
	
	vColumn.lVal = lColumn;
	
	//Get the Fields Collection, if required
	if(!g_pFields)
		g_pFields = Fields();
	// Retrieve the Item
	if(g_pFields)
		hr = g_pFields->get_Item(vColumn, &pField);

	// Return the Field Object
	return pField;
}	


BSTR cADOCE::Name(long Col)
{
	//////////////////////////////////////////////////////////////
	// Return the Name of a Field
	//////////////////////////////////////////////////////////////

	BSTR bstrData;
	IADOCEField* TargetField;

	// Get the Field.
	TargetField = Item(Col);

	
	if(TargetField)
		hr = TargetField->get_Name(&bstrData);

	// Return the NAME of the field
	return bstrData;
}


COleVariant cADOCE::GetValue(long Col)
{
	/////////////////////////////////////
	// Return the value of a field
	/////////////////////////////////////

	COleVariant vData;

	IADOCEField* TargetField;

	// Get the Field.
	TargetField = Item(Col);

	// Retrieve the field Value
	if(TargetField)
		hr = TargetField->get_Value(&vData);

	// Return the value
	return vData;
}

HRESULT cADOCE::AddNew()
{
	// Add a new Blank Record
	HRESULT hr;
	
	COleVariant vNull;

	////////////////////////////////////////////////////
	// Note that the parameters for AddNew are 2 variants
	// Containing SafeArrays.  the first one can contain
	// either the ordinals (number) of the fields, or a
	// list of field names.  the second contains an array
	// of values.  If you wanted to add a new record
	// that was fully populated, you would make up those
	// Safearrays and pass them to AddNew.
	//
	// For the sake of Simplicity, I'm just adding a blank
	// record.  To do that, you pass the Com equivalent
	// of a NULL.  this is defined as vNull below.
	//////////////////////////////////////////////////////

	vNull.vt = VT_ERROR;
	vNull.scode = DISP_E_PARAMNOTFOUND;

	if(g_pRecordSet)
		hr = g_pRecordSet->AddNew(vNull, vNull);
    
	if (FAILED(hr))
    {
        AdoError();
        return hr;
    }

	return hr;


}

void	cADOCE::Update()
{
	HRESULT hr;

	COleVariant vNull;
	////////////////////////////////////////////////////
	// See the comments in the AddNew function for an
	// explanation of the parameters.
	////////////////////////////////////////////////////

	vNull.vt = VT_ERROR;
	vNull.scode = DISP_E_PARAMNOTFOUND;

	if(g_pRecordSet)
		hr = g_pRecordSet->Update(vNull, vNull);
	
	if (FAILED(hr))
    {
        AdoError();
        return;
    }
	return;
}

void cADOCE::Delete()
{
	// a Simple Function
	HRESULT hr;
	//======================================================
	// Delete demands a RecordsAffected parameter. Per the
	// ADOCE docs it doesn't do anything, and the only valid
	// value for it is 1.  It's only there for compatibility with
	// Desktop ADO.

	// FYI, per My Experience while working on this, when
	// I set the parameter to something else, I got a
	// "Operation requested is not allowed in this context"
	// error.
	//=====================================================
	long RecordsAffected = 1;

	if(g_pRecordSet && !isEOF() && !isEOF())
		hr = g_pRecordSet->Delete(RecordsAffected);
	
	if (FAILED(hr))
    {
        AdoError();
        return;
    }
	
}
HRESULT cADOCE::SetValue(long Col, COleVariant* VData)
{
	///////////////////////////////////////////
	// Set the value of a field. the field is
	// controlled by the Col parameter. (First
	// Field is 0) The VData parameter holds the
	// value to be set
	///////////////////////////////////////////

	HRESULT hr;
	IADOCEField* TargetField;

	// Get il Fieldo.
	TargetField = Item(Col);

	// Set the value
	if(TargetField)
		hr = TargetField->put_Value(*VData);

	if (FAILED(hr))
    {
        AdoError();
        return hr;
    }

	// Return the HRESULT 
	return hr;
}
