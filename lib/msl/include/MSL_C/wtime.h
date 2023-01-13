#ifndef _MSL_WTIME_H
#define _MSL_WTIME_H

#include <ansi_params.h>
#include <ctime>

#include <wchar_t.h>

#ifdef __MWERKS__
    #if __MWERKS__ >= 0x3200
        #pragma implements_std_header("wchar.h")
    #endif
#endif

_MSL_BEGIN_NAMESPACE_STD
    _MSL_BEGIN_EXTERN_C

#if _MSL_OS_TIME_SUPPORT
_MSL_IMP_EXP_C __std(size_t) _MSL_CDECL wcsftime(wchar_t * _MSL_RESTRICT, __std(size_t), const wchar_t * _MSL_RESTRICT, const struct __std(tm) * _MSL_RESTRICT) _MSL_CANT_THROW;
static int _MSL_CDECL wemit(wchar_t *, __std(size_t), __std(size_t) *, const wchar_t *, ...) _MSL_CANT_THROW;
#endif

_MSL_END_EXTERN_C
_MSL_END_NAMESPACE_STD

#endif
