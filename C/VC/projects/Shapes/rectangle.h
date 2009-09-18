// rectangle.h: interface for the rectangle class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_RECTANGLE_H__ACDE55EC_82D6_4284_8058_441704B45B9F__INCLUDED_)
#define AFX_RECTANGLE_H__ACDE55EC_82D6_4284_8058_441704B45B9F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "shape.h"

class rectangle : public shape  
{
public:
	rectangle();
	virtual ~rectangle();
	virtual const char* toString() const;

};

#endif // !defined(AFX_RECTANGLE_H__ACDE55EC_82D6_4284_8058_441704B45B9F__INCLUDED_)
