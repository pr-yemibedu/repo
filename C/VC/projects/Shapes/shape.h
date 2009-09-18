// shape.h: interface for the shape class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_SHAPE_H__DFB77770_C255_4A59_A4BA_ECD1F9181410__INCLUDED_)
#define AFX_SHAPE_H__DFB77770_C255_4A59_A4BA_ECD1F9181410__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class shape  
{
public:
	shape();
	virtual ~shape();
	virtual const char* toString() const;

};

#endif // !defined(AFX_SHAPE_H__DFB77770_C255_4A59_A4BA_ECD1F9181410__INCLUDED_)
