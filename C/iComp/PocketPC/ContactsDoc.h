// ContactsDoc.h : interface of the CContactsDoc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_CONTACTSDOC_H__6549B73A_DCA9_446A_8E7F_8F331828AFD7__INCLUDED_)
#define AFX_CONTACTSDOC_H__6549B73A_DCA9_446A_8E7F_8F331828AFD7__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000


class CContactsDoc : public CDocument
{
protected: // create from serialization only
	CContactsDoc();
	DECLARE_DYNCREATE(CContactsDoc)

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CContactsDoc)
	public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CContactsDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CContactsDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft eMbedded Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CONTACTSDOC_H__6549B73A_DCA9_446A_8E7F_8F331828AFD7__INCLUDED_)
