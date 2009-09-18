#if !defined(AFX_CEDB_H__08FAE5D1_04AB_4F90_B18D_487499B16AB6__INCLUDED_)
#define AFX_CEDB_H__08FAE5D1_04AB_4F90_B18D_487499B16AB6__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CeDb.h : header file
//

// Define app-defined values
const DWORD DB_IDENT_CUST  = 123;
const WCHAR DB_NAME_CUST[] = _T("Cust");
enum  {PROP_CUST_NMBR = 0,  
	   PROP_INST_CUST_IND,
	   PROP_ORG_NM,  
       PROP_LAST_NM,  
       PROP_FIRST_NM,   
       PROP_CUST_TYPE_CD, 
       PROP_SMPL_ACTV_IND,   
       PROP_FLD_ACTV_ACCT_NMBR,   
       PROP_RT_ORG_NMBR,   
       PROP_CUST_LOC_NMBR,   
       PROP_LOC_TYPE_CD,   
       PROP_ADDR_1,   
       PROP_ADDR_2,   
       PROP_CITY,   
       PROP_STATE_CD,   
       PROP_ZIP_CD,   
       PROP_TELE_NMBR,   
       PROP_FAX_NMBR,   
       PROP_DEA_NMBR,   
       PROP_MED_ED_NMBR,   
       PROP_STATE_LIC_NMBR,
	   PROP_NOTES};   

const DWORD DB_IDENT_DETAIL  = 124;
const WCHAR DB_NAME_DETAIL[] = _T("Details");
enum  {PROP_PROD_DTL_GRP_NMBR = 0,  
	   PROP_DTL_GRP_DESC};   

const DWORD DB_IDENT_SAMPLE  = 125;
const WCHAR DB_NAME_SAMPLE[] = _T("Samples");
enum  {PROP_SMPL_PROD_NMBR = 0,  
	   PROP_SMPL_PROD_DESC};   

const DWORD DB_IDENT_TOPIC  = 126;
const WCHAR DB_NAME_TOPIC[] = _T("Topics");
enum  {PROP_DTL_TOPIC_NMBR = 0,  
	   PROP_DTL_TOPIC_DESC};   



TCHAR* Trim(TCHAR *pChar);


#endif // !defined(AFX_CEDB_H__08FAE5D1_04AB_4F90_B18D_487499B16AB6__INCLUDED_)
