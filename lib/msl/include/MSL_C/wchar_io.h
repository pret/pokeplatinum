#ifndef _MSL_WCHAR_IO_H
#define _MSL_WCHAR_IO_H

#include <ansi_params.h>
#include <file_struc.h>
#include <wchar_t.h>

#ifdef __MWERKS__
    #if __MWERKS__ >= 0x3200
        #pragma implements_std_header("wchar.h")
    #endif
#endif

_MSL_BEGIN_NAMESPACE_STD
_MSL_BEGIN_EXTERN_C

wchar_t _MSL_CDECL __put_wchar(wchar_t, FILE *) _MSL_CANT_THROW;
wchar_t _MSL_CDECL __get_wchar(FILE *) _MSL_CANT_THROW;

_MSL_IMP_EXP_C wchar_t _MSL_CDECL(getwchar)(void) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t _MSL_CDECL ungetwc(wchar_t, FILE *) _MSL_CANT_THROW;

_MSL_END_EXTERN_C
    _MSL_END_NAMESPACE_STD

#endif
