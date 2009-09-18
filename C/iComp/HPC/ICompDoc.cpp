// ICompDoc.cpp : implementation of the CICompDoc class
//

#include "stdafx.h"
#include "IComp.h"

#include "ICompDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CICompDoc

IMPLEMENT_DYNCREATE(CICompDoc, CDocument)

BEGIN_MESSAGE_MAP(CICompDoc, CDocument)
	//{{AFX_MSG_MAP(CICompDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CICompDoc construction/destruction

CICompDoc::CICompDoc()
{
	// TODO: add one-time construction code here

}

CICompDoc::~CICompDoc()
{
}

BOOL CICompDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)

	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CICompDoc serialization

void CICompDoc::Serialize(CArchive& ar)
{
	if (ar.IsStoring())
	{
		// TODO: add storing code here
	}
	else
	{
		// TODO: add loading code here
	}
}

/////////////////////////////////////////////////////////////////////////////
// CICompDoc diagnostics

#ifdef _DEBUG
void CICompDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CICompDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CICompDoc commands
