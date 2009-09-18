// ICompDoc.h : interface of the CICompDoc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_ICOMPDOC_H__70C57362_E371_42FF_8B18_9274EDC51E41__INCLUDED_)
#define AFX_ICOMPDOC_H__70C57362_E371_42FF_8B18_9274EDC51E41__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000


class CICompDoc : public CDocument
{
protected: // create from serialization only
	CICompDoc();
	DECLARE_DYNCREATE(CICompDoc)

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CICompDoc)
	public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CICompDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CICompDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft eMbedded Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ICOMPDOC_H__70C57362_E371_42FF_8B18_9274EDC51E41__INCLUDED_)
