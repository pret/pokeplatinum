#ifndef _MSL_WSCANF_H
#define _MSL_WSCANF_H

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

_MSL_IMP_EXP_C int _MSL_CDECL fwscanf(FILE * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, ...) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL wscanf(const wchar_t * _MSL_RESTRICT, ...) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL swscanf(const wchar_t * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, ...) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL vswscanf(const wchar_t * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, va_list) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL vfwscanf(FILE * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, va_list) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL vwscanf(const wchar_t * _MSL_RESTRICT, va_list) _MSL_CANT_THROW;

#if defined(__STDC_WANT_SECURE_LIB__) && __STDC_WANT_SECURE_LIB__
_MSL_IMP_EXP_C int _MSL_CDECL fwscanf_s(FILE * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, ...) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL wscanf_s(const wchar_t * _MSL_RESTRICT, ...) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL swscanf_s(const wchar_t * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, ...) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL vswscanf_s(const wchar_t * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, va_list) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL vfwscanf_s(FILE * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, va_list) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL vwscanf_s(const wchar_t * _MSL_RESTRICT, va_list) _MSL_CANT_THROW;
#endif

_MSL_END_EXTERN_C
    _MSL_END_NAMESPACE_STD

#endif
