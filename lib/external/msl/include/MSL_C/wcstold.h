#ifndef _MSL_WCSTOLD_H
#define _MSL_WCSTOLD_H

#include <ansi_params.h>
#include <cstdio>

#ifdef __MWERKS__
    #if __MWERKS__ >= 0x3200
        #pragma implements_std_header("wchar.h")
    #endif
#endif

_MSL_BEGIN_EXTERN_C

extern long double _MSL_CDECL __wcstold(int max_width, __std(wint_t) (*ReadProc)(void *, __std(wint_t), int), void * ReadProcArg, int * chars_scanned, int * overflow) _MSL_CANT_THROW;

_MSL_END_EXTERN_C

_MSL_BEGIN_NAMESPACE_STD
_MSL_BEGIN_EXTERN_C

_MSL_IMP_EXP_C double _MSL_CDECL wcstod(const wchar_t * _MSL_RESTRICT, wchar_t * * _MSL_RESTRICT) _MSL_CANT_THROW;
_MSL_IMP_EXP_C float _MSL_CDECL wcstof(const wchar_t * _MSL_RESTRICT, wchar_t * * _MSL_RESTRICT) _MSL_CANT_THROW;
_MSL_IMP_EXP_C long double _MSL_CDECL wcstold(const wchar_t * _MSL_RESTRICT, wchar_t * * _MSL_RESTRICT) _MSL_CANT_THROW;

_MSL_END_EXTERN_C
    _MSL_END_NAMESPACE_STD

#endif
