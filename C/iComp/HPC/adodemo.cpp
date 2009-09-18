/*************************************************************************



THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
PARTICULAR PURPOSE.

Copyright  1998  Microsoft Corporation.  All Rights Reserved.

module: adodemo.cpp

Abstract: Simple Windows CE application that uses ADOCE. 

***************************************************************************/

#include <windows.h>
#include <tchar.h>

#include "adoce.h"
#include "resource.h"

HINSTANCE         g_hInst = NULL;
IADOCERecordset*  g_pRecordSet = NULL;
HWND              g_hWndMain = NULL;
bool              g_bValidQuery = false;
long              g_cRows = 0;
long              g_cFields = 0;
IADOCEFields*     g_pFields = NULL;

#define MSG_LIMIT   256
#define MAX_QUERY   2048
#define FIELD_COUNT 3

/*************************************************************************

    MsgError

***************************************************************************/

void MsgError(TCHAR* pszFormat, ...)
{
    TCHAR   szMsg[MSG_LIMIT];
    va_list vArgs;

    va_start(vArgs, pszFormat);

    wvsprintf(szMsg, pszFormat, vArgs);

    MessageBox(g_hWndMain, 
               szMsg, _T("ADO Demo"), MB_OK | MB_ICONERROR);

    va_end(vArgs);
}

/*************************************************************************

    AdoError

***************************************************************************/

void AdoError(HRESULT hr)
{
    BSTR bstrError = 0;

    if (SUCCEEDED(g_pRecordSet->get_ErrorDescription(&bstrError)))
    {
        if (bstrError && *bstrError)
        {
            SetDlgItemText(g_hWndMain, IDC_ERROR, bstrError);
            SysFreeString(bstrError);
			return;
        }
    }

	TCHAR szError[MSG_LIMIT];

	wsprintf(szError, _T("Error %x"), hr);
    SetDlgItemText(g_hWndMain, IDC_ERROR, szError);
}

/*************************************************************************

    GetFieldList

***************************************************************************/

bool GetFieldList(VARIANT *pvarFields)
{
    SAFEARRAY      *pArray = NULL;
    SAFEARRAYBOUND  bound[1];
    HRESULT         hr = S_OK;
    int             cFields = 0;
    VARIANT        *pvTmp;

    bound[0].lLbound = 0;
    bound[0].cElements = g_cFields;

    pArray = SafeArrayCreate(VT_VARIANT, 1, bound);
    if (!pArray)
        return false;

    pvTmp = (VARIANT *)pArray->pvData;
    for (int i = 0; i < g_cFields; i++)
    {
        pvTmp[i].vt = VT_I4;
        pvTmp[i].lVal = i;
    }

    pvarFields->vt = VT_ARRAY | VT_VARIANT;
    pvarFields->parray = pArray;

    return true;
}

/*************************************************************************

    ReadRowToWindow

***************************************************************************/

void ReadRowToWindow()
{
    VARIANT    varStart, varFields, varData, varCopy;
    HRESULT    hr;
    SAFEARRAY* psrgData;
    VARIANT*   pVar;
    long       lPos;
    TCHAR      szTmp[MSG_LIMIT];

    // setup parameters
    VariantInit(&varStart);
    VariantInit(&varFields);
    VariantInit(&varData);

    // We only want to read the first three fields of the table so we
    // build a safe array listing the fields we want. To get all fields
    // leave this parameter empty.
    if (!GetFieldList(&varFields))
    {
        return;
    }

    hr = g_pRecordSet->GetRows(1, varStart, varFields, &varData);
    VariantClear(&varFields);
    if (FAILED(hr))
    {
        AdoError(hr);
        return;
    }

    // GetRows automatically moves the cursor forward so we move back
    // one to make moving back and forward and deleting easier.
    hr = g_pRecordSet->MovePrevious();
    if (FAILED(hr))
    {
        AdoError(hr);
        return;
    }

    psrgData = varData.parray;

    // check that we got what we expected
    if (   (2 != psrgData->cDims)
        || (1 != (long)psrgData->rgsabound[0].cElements)
        || (g_cFields != (long)psrgData->rgsabound[1].cElements))
    {
        VariantClear(&varData);
        return;
    }

    // Get a pointer to the data
    pVar = (VARIANT *)(psrgData->pvData);

    g_bValidQuery = true;

    VariantInit(&varCopy);
    for (int i = 0; i < g_cFields; i++)
    {
        if (pVar->vt != VT_NULL)
        {
            hr = VariantChangeType(&varCopy, pVar, 0, VT_BSTR);
            if (FAILED(hr))
            {
                MsgError(_T("Could not convert field %d to string"), i);
            }
            else
            {
                SetDlgItemText(g_hWndMain, IDC_FIELD1 + i, varCopy.bstrVal);
                VariantClear(&varCopy);
            }
        }

        ++pVar;
    }

    // Update the position and count on the screen

    hr = g_pRecordSet->get_AbsolutePosition(&lPos);
    if (FAILED(hr))
        return;

    wsprintf(szTmp, _T("Record #%d of %d records"), lPos, g_cRows);
    SetDlgItemText(g_hWndMain, IDC_COUNT, szTmp);

    if (lPos == 1)
        EnableWindow(GetDlgItem(g_hWndMain, IDC_BACK), FALSE);
    else
        EnableWindow(GetDlgItem(g_hWndMain, IDC_BACK), TRUE);
        

    if (lPos == g_cRows)
        EnableWindow(GetDlgItem(g_hWndMain, IDC_FWD), FALSE);
    else
        EnableWindow(GetDlgItem(g_hWndMain, IDC_FWD), TRUE);
}

/*************************************************************************

    ExecuteQuery    

***************************************************************************/

void ExecuteQuery()
{
    static TCHAR  szQuery[MAX_QUERY + 1];
    HRESULT       hr;
    VARIANT       varSQL, varSource, varIndex;
    IADOCEFields* pFieldsCol = NULL;
    IADOCEField*  pField = NULL;
    BSTR          bstrName;
    int           i;
    VARIANT_BOOL  bSupported;

    g_bValidQuery = false;

    EnableWindow(GetDlgItem(g_hWndMain, IDC_ADDNEW), FALSE);
    EnableWindow(GetDlgItem(g_hWndMain, IDC_DELETE), FALSE);
    EnableWindow(GetDlgItem(g_hWndMain, IDC_HOME), FALSE);
    EnableWindow(GetDlgItem(g_hWndMain, IDC_BACK), FALSE);
    EnableWindow(GetDlgItem(g_hWndMain, IDC_COUNT), FALSE);
    EnableWindow(GetDlgItem(g_hWndMain, IDC_FWD), FALSE);
    EnableWindow(GetDlgItem(g_hWndMain, IDC_END), FALSE);

    SetDlgItemText(g_hWndMain, IDC_ERROR, _T(""));
    SetDlgItemText(g_hWndMain, IDC_COUNT, _T(""));

    for (i = 0; i < g_cFields; i++)
    {
        SetDlgItemText(g_hWndMain, IDC_LABEL1 + i, _T(""));
        SetDlgItemText(g_hWndMain, IDC_FIELD1 + i, _T(""));
    }

    GetDlgItemText(g_hWndMain, IDC_QUERY, szQuery, MAX_QUERY);
    
    if (g_pFields)
        g_pFields->Release();

    // close the previous query
    (void)g_pRecordSet->Close();

    // setup parameters
    VariantInit(&varSQL);
    VariantInit(&varSource);

    varSQL.vt = VT_BSTR;
    varSQL.bstrVal = SysAllocString(szQuery);

    // Open the recordset with the SQL string
    hr = g_pRecordSet->Open(varSQL, varSource,
                            adOpenKeyset, adLockOptimistic, adCmdUnknown);
    VariantClear(&varSQL);
    if (FAILED(hr))
    {
        AdoError(hr);
        return;
    }

    // check we have a result from the SQL we passed in
    hr = g_pRecordSet->get_RecordCount(&g_cRows);
    if (FAILED(hr))
    {
        MessageBox(g_hWndMain, _T("No result"), _T("ADO Demo"), MB_OK);
        return;
    }

    if (FAILED(hr = g_pRecordSet->get_Fields(&g_pFields)))
    {
        AdoError(hr);
        return;
    }

    // Get the fields collection so that we can update the field names
    if (FAILED(hr = g_pFields->get_Count(&g_cFields)))
    {
        goto exit;
    }

    if (g_cFields > FIELD_COUNT)
    {
        g_cFields = FIELD_COUNT;
    }

    VariantInit(&varIndex);
    varIndex.vt = VT_I4;

    for (i = 0; i < g_cFields; i++)
    {
        varIndex.lVal = i;

        if (FAILED(hr = g_pFields->get_Item(varIndex, &pField)))
            goto exit;

        if (FAILED(hr = pField->get_Name(&bstrName)))
            goto exit;

        SetDlgItemText(g_hWndMain, IDC_LABEL1 + i, bstrName);

        SysFreeString(bstrName);

        pField->Release();
        pField = NULL;
    }

    if (g_cRows)
    {
        // move to the start
        if (FAILED(hr = g_pRecordSet->MoveFirst()))
        {
            AdoError(hr);
            goto exit;
        }   

        ReadRowToWindow();
    }   


    // Enable /disable buttons depending on what actions can be performed 
    // on the table

    EnableWindow(GetDlgItem(g_hWndMain, IDC_HOME), TRUE);
    EnableWindow(GetDlgItem(g_hWndMain, IDC_END), TRUE);
    if (g_cRows > 1)
        EnableWindow(GetDlgItem(g_hWndMain, IDC_FWD), TRUE);

    hr = g_pRecordSet->Supports(adAddNew, &bSupported);
    if (FAILED(hr))
    {
        AdoError(hr);
        goto exit;
    }

    if (bSupported == VARIANT_TRUE)
        EnableWindow(GetDlgItem(g_hWndMain, IDC_ADDNEW), TRUE);

    hr = g_pRecordSet->Supports(adDelete, &bSupported);
    if (FAILED(hr))
    {
        AdoError(hr);
        goto exit;
    }

    if (bSupported == VARIANT_TRUE)
        EnableWindow(GetDlgItem(g_hWndMain, IDC_DELETE), TRUE);

exit:
    if (pField)
        pField->Release();

}

/*************************************************************************

    AddRow  

***************************************************************************/

void AddRow()
{
    HRESULT         hr;
    VARIANT        *pvSave = NULL;
    SAFEARRAYBOUND  bound[1];
    SAFEARRAY      *pOrds;
    SAFEARRAY      *pData;
    VARIANT         vtOrds, vtData, *pvData, *pvOrds;
    int             cText = 0;

    bound[0].lLbound = 0;
    bound[0].cElements = g_cFields;

    pOrds = SafeArrayCreate(VT_VARIANT, 1, bound);
    if (!pOrds)
    {
        AdoError(E_OUTOFMEMORY);
        return;
    }

    pData = SafeArrayCreate(VT_VARIANT, 1, bound);
    if (!pData)
    {
        SafeArrayDestroy(pOrds);
        AdoError(E_OUTOFMEMORY);
        return;
    }

    pvOrds = (VARIANT *)pOrds->pvData;
    pvData = (VARIANT *)pData->pvData;

    for (int i = 0; i < g_cFields; i++)
    {
        cText = GetWindowTextLength(GetDlgItem(g_hWndMain, IDC_FIELD1 + i));

        VariantInit(&pvData[i]);
        VariantInit(&pvOrds[i]);

        pvData[i].vt = VT_BSTR;
        pvData[i].bstrVal = SysAllocStringLen(NULL, cText + 1);
        GetDlgItemText(g_hWndMain, IDC_FIELD1 + i, pvData[i].bstrVal, cText + 1);

        pvOrds[i].vt = VT_I4;
        pvOrds[i].lVal = i;
    }

    VariantInit(&vtOrds);
    VariantInit(&vtData);

    vtOrds.vt = VT_ARRAY | VT_VARIANT;
    vtOrds.parray = pOrds;

    vtData.vt = VT_ARRAY | VT_VARIANT;
    vtData.parray = pData;

    hr = g_pRecordSet->AddNew(vtOrds, vtData);
    if (S_OK == hr)
    {
        hr = g_pRecordSet->get_RecordCount(&g_cRows);
        if (FAILED(hr))
            AdoError(hr);
        else
            ReadRowToWindow();
    }
    else
        AdoError(hr);


    SafeArrayDestroy(pOrds);
    SafeArrayDestroy(pData);
}

/*************************************************************************

    DeleteRow   

***************************************************************************/

void DeleteRow()
{
    HRESULT hr = g_pRecordSet->Delete(1);
    if (FAILED(hr))
    {
        AdoError(hr);
        return;
    }

    hr = g_pRecordSet->MoveFirst();
    if (FAILED(hr))
    {
        AdoError(hr);
        return;
    }

    for (int i = 0; i < g_cFields; i++)
    {
        SetDlgItemText(g_hWndMain, IDC_FIELD1 + i, _T(""));
    }

    SetDlgItemText(g_hWndMain, IDC_COUNT, _T(""));

    hr = g_pRecordSet->get_RecordCount(&g_cRows);
    if (FAILED(hr))
        AdoError(hr);
    else if (g_cRows)
        ReadRowToWindow();
}

/*************************************************************************

    MoveFirst   

***************************************************************************/

void MoveFirst()
{
    HRESULT hr = g_pRecordSet->MoveFirst();
    if (FAILED(hr))
    {
        AdoError(hr);
        return;
    }

    ReadRowToWindow();
}

/*************************************************************************

    MoveLast    

***************************************************************************/

void MoveLast()
{
    HRESULT hr = g_pRecordSet->MoveLast();
    if (FAILED(hr))
    {
        AdoError(hr);
        return;
    }

    ReadRowToWindow();
}

/*************************************************************************

    MoveNext    

***************************************************************************/

void MoveNext()
{
    HRESULT hr = g_pRecordSet->MoveNext();
    if (FAILED(hr))
    {
        AdoError(hr);
        return;
    }

    ReadRowToWindow();
}

/*************************************************************************

    MovePrev    

***************************************************************************/

void MovePrev()
{
    HRESULT hr = g_pRecordSet->MovePrevious();
    if (FAILED(hr))
    {
        AdoError(hr);
        return;
    }

    ReadRowToWindow();
}

/*************************************************************************

    MainDlgProc 

***************************************************************************/

BOOL CALLBACK MainDlgProc(HWND hWnd, UINT message, 
                          WPARAM wParam, LPARAM lParam )
{
    switch (message)
    {
    case WM_INITDIALOG:
        g_hWndMain = hWnd;
        break;
            
    case WM_COMMAND:
        switch(LOWORD(wParam))
        {
        case IDCANCEL:
            EndDialog(hWnd, 0);
            break;

        case IDC_EXECUTE:
            ExecuteQuery();
            break;

        case IDC_DELETE:
            DeleteRow();
            break;

        case IDC_ADDNEW:
            AddRow();
            break;

        case IDC_HOME:
            MoveFirst();
            break;

        case IDC_END:
            MoveLast();
            break;

        case IDC_BACK:
            MovePrev();
            break;

        case IDC_FWD:
            MoveNext();
            break;
        }
        break;

    default:
        break;
    }

    return FALSE;
}


/*************************************************************************

    WinMain 

***************************************************************************/

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, 
               LPTSTR lpszCmdLine, int nCmdShow) 
{ 
    HRESULT hr;
    int    iRc = FALSE;

    UNREFERENCED_PARAMETER(lpszCmdLine);

    g_hInst = hInstance;  // save instance handle 


    // initialize the COM system
    if (FAILED(CoInitializeEx(NULL, COINIT_MULTITHREADED)))
    {
        MsgError(_T("Error initializing COM"));
        goto exit;
    }

    // get the Recordset interface
    if (FAILED(hr = CoCreateInstance(CLSID_ADOCERecordset, NULL,
                        CLSCTX_INPROC_SERVER, IID_IADOCERecordset,
                        (void**)&g_pRecordSet)))
    {
        MsgError(_T("Could not load ADOCE"));
        goto exit;
    }

    DialogBox(hInstance, MAKEINTRESOURCE(IDD_MAIN), NULL, MainDlgProc);

exit:
    if (g_pFields)
        g_pFields->Release();

    if (g_pRecordSet)
        g_pRecordSet->Release();

    // shut down COM 
    CoUninitialize();

    // Return the exit code to Windows. 
    return iRc; 
} 


