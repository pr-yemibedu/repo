// ContactsDoc.cpp : implementation of the CContactsDoc class
//

#include "stdafx.h"
#include "Contacts.h"

#include "ContactsDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CContactsDoc

IMPLEMENT_DYNCREATE(CContactsDoc, CDocument)

BEGIN_MESSAGE_MAP(CContactsDoc, CDocument)
	//{{AFX_MSG_MAP(CContactsDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CContactsDoc construction/destruction

CContactsDoc::CContactsDoc()
{
	// TODO: add one-time construction code here

}

CContactsDoc::~CContactsDoc()
{
}

BOOL CContactsDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)

	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CContactsDoc serialization

void CContactsDoc::Serialize(CArchive& ar)
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
// CContactsDoc diagnostics

#ifdef _DEBUG
void CContactsDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CContactsDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CContactsDoc commands
