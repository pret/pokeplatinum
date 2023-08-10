#ifndef _MSL_WCSTOUL_H
#define _MSL_WCSTOUL_H

#include <ansi_params.h>

#if _MSL_WIDE_CHAR

#include <wchar_t.h>

#ifdef __MWERKS__
    #if __MWERKS__ >= 0x3200
        #pragma implements_std_header("wchar.h")
    #endif
#endif

_MSL_BEGIN_EXTERN_C

_MSL_IMP_EXP_C int _MSL_CDECL watoi(const wchar_t *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C long _MSL_CDECL watol(const wchar_t *) _MSL_CANT_THROW;

extern unsigned long _MSL_CDECL __wcstoul(int base, int max_width, __std(wint_t) (*ReadProc)(void *, __std(wint_t), int), void * ReadProcArg, int * chars_scanned, int * negative, int * overflow) _MSL_CANT_THROW;

#if _MSL_LONGLONG
extern unsigned long long _MSL_CDECL __wcstoull(int base, int max_width, __std(wint_t) (*ReadProc)(void *, __std(wint_t), int), void * ReadProcArg, int * chars_scanned, int * negative, int * overflow) _MSL_CANT_THROW;
#endif

_MSL_END_EXTERN_C

_MSL_BEGIN_NAMESPACE_STD
_MSL_BEGIN_EXTERN_C

_MSL_IMP_EXP_C unsigned long _MSL_CDECL wcstoul(const wchar_t * _MSL_RESTRICT, wchar_t * * _MSL_RESTRICT, int) _MSL_CANT_THROW;
    #if _MSL_C99
    #if _MSL_LONGLONG
_MSL_IMP_EXP_C unsigned long long _MSL_CDECL wcstoull(const wchar_t * _MSL_RESTRICT, wchar_t * * _MSL_RESTRICT, int) _MSL_CANT_THROW;
_MSL_IMP_EXP_C long long _MSL_CDECL wcstoll(const wchar_t * _MSL_RESTRICT, wchar_t * * _MSL_RESTRICT, int) _MSL_CANT_THROW;
    #endif
    #endif
_MSL_IMP_EXP_C long _MSL_CDECL wcstol(const wchar_t * _MSL_RESTRICT, wchar_t * * _MSL_RESTRICT, int) _MSL_CANT_THROW;

_MSL_END_EXTERN_C
    _MSL_END_NAMESPACE_STD

#endif
#endif
