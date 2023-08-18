#ifndef _MSL_WCTRANS_H
#define _MSL_WCTRANS_H

#include <ansi_params.h>

#if _MSL_WIDE_CHAR

#include <wchar_t.h>

#ifdef __MWERKS__
    #if __MWERKS__ >= 0x3200
        #pragma implements_std_header("wctype.h")
    #endif
#endif

_MSL_BEGIN_NAMESPACE_STD
    _MSL_BEGIN_EXTERN_C

typedef wchar_t wctrans_t;

_MSL_IMP_EXP_C wint_t _MSL_CDECL towctrans(wint_t, wctrans_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wctrans_t _MSL_CDECL wctrans(const char *) _MSL_CANT_THROW;

_MSL_END_EXTERN_C
    _MSL_END_NAMESPACE_STD

#endif

#endif
