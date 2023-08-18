#ifndef _MSL_WSTDIO_H
#define _MSL_WSTDIO_H

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

_MSL_IMP_EXP_C wchar_t _MSL_CDECL putwc(wchar_t, FILE *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t _MSL_CDECL fputwc(wchar_t, FILE *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t _MSL_CDECL getwc(FILE *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t _MSL_CDECL fgetwc(FILE *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL fputws(const wchar_t * _MSL_RESTRICT, FILE * _MSL_RESTRICT) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL fgetws(wchar_t * _MSL_RESTRICT, int, FILE * _MSL_RESTRICT) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t _MSL_CDECL putwchar(wchar_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t _MSL_CDECL getwchar(void) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL fwide(FILE *, int) _MSL_CANT_THROW;

_MSL_END_EXTERN_C
    _MSL_END_NAMESPACE_STD

#endif
