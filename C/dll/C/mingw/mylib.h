#ifndef _MYLIB_H
#define _MYLIB_H

#ifdef BUILD_DLL
// the dll exports
#define EXPORT __declspec(dllexport)
#else
// the exe imports
#define EXPORT __declspec(dllimport)
#endif

// function to be imported/exported
EXPORT int add(int,int);
#endif