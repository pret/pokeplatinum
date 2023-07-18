#ifndef _MSL_WPRINTF_H
#define _MSL_WPRINTF_H

#include <ansi_params.h>
#include <file_struc.h>
#include <va_list.h>

#ifdef __MWERKS__
    #if __MWERKS__ >= 0x3200
        #pragma implements_std_header("wchar.h")
    #endif
#endif

_MSL_BEGIN_NAMESPACE_STD
_MSL_BEGIN_EXTERN_C

_MSL_IMP_EXP_C int _MSL_CDECL fwprintf(FILE * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, ...) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL wprintf(const wchar_t * _MSL_RESTRICT, ...) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL swprintf(wchar_t * _MSL_RESTRICT, size_t, const wchar_t * _MSL_RESTRICT, ...) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL vfwprintf(FILE * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, va_list) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL vswprintf(wchar_t * _MSL_RESTRICT, size_t, const wchar_t * _MSL_RESTRICT, va_list) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL vwprintf(const wchar_t * _MSL_RESTRICT, va_list) _MSL_CANT_THROW;

_MSL_END_EXTERN_C
    _MSL_END_NAMESPACE_STD

#endif
