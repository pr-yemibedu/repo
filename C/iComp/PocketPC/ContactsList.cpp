// ContactsList.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "ContactsList.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CContactsList

CContactsList::CContactsList()
{
}

CContactsList::~CContactsList()
{
}


BEGIN_MESSAGE_MAP(CContactsList, CListBox)
	//{{AFX_MSG_MAP(CContactsList)
	ON_WM_LBUTTONDOWN()
	ON_WM_TIMER()
	ON_WM_LBUTTONUP()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CContactsList message handlers

CPoint pt;

void CContactsList::OnLButtonDown(UINT nFlags, CPoint point) 
{
	BOOL bOutside;
	UINT uItem = ItemFromPoint(point, bOutside);

	CRect rect;
	GetItemRect(uItem, rect);

//	if (!bOutside)
	{
		SetCurSel(uItem);
		SetAnchorIndex(uItem);
		pt.x = rect.left;
		pt.y = point.y;
		ClientToScreen(&pt);
		SetTimer(1, 500, NULL);
		ASSERT(GetAnchorIndex() == uItem);
	}

//	CListBox::OnLButtonDown(nFlags, point);
}

void CContactsList::OnTimer(UINT nIDEvent) 
{
	KillTimer(1);
    CMenu menu;
    if (menu.LoadMenu(IDR_POPUP))
    {
        CMenu* pPopup = menu.GetSubMenu(0);
        ASSERT(pPopup != NULL);

        pPopup->TrackPopupMenu(TPM_LEFTALIGN,
            pt.x, pt.y,
            GetOwner()); // use main window for cmds
    }
	
	CListBox::OnTimer(nIDEvent);
}

void CContactsList::OnLButtonUp(UINT nFlags, CPoint point) 
{

	KillTimer(1);
//	CListBox::OnLButtonUp(nFlags, point);
}
