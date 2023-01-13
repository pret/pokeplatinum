#ifndef _MSL_WMEM_H
#define _MSL_WMEM_H

#include <ansi_params.h>
#include <mem_funcs.h>
#include <cstddef>

#ifdef __MWERKS__
    #if __MWERKS__ >= 0x3200
        #pragma implements_std_header("wchar.h")
    #endif
#endif

_MSL_BEGIN_NAMESPACE_STD
_MSL_BEGIN_EXTERN_C

_MSL_IMP_EXP_C wchar_t * _MSL_CDECL(wmemcpy)(wchar_t * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, size_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL(wmemmove)(wchar_t *, const wchar_t *, size_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL(wmemset)(wchar_t *, wchar_t, size_t) _MSL_CANT_THROW;
#if !defined(__cplusplus) || __embedded_cplusplus != 0
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL(wmemchr)(const wchar_t *, wchar_t, size_t) _MSL_CANT_THROW;
#else
_MSL_IMP_EXP_C const wchar_t * _MSL_CDECL(wmemchr)(const wchar_t *, wchar_t, size_t) _MSL_CANT_THROW;
#endif
_MSL_IMP_EXP_C     int _MSL_CDECL(wmemcmp)(const wchar_t *, const wchar_t *, size_t) _MSL_CANT_THROW;

#if defined(__STDC_WANT_SECURE_LIB__) && __STDC_WANT_SECURE_LIB__
_MSL_IMP_EXP_C errno_t _MSL_CDECL(wmemcpy_s)(wchar_t * _MSL_RESTRICT, rsize_t, const wchar_t * _MSL_RESTRICT, rsize_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C errno_t _MSL_CDECL(wmemmove_s)(wchar_t *, rsize_t, const wchar_t *, rsize_t) _MSL_CANT_THROW;
#endif

_MSL_END_EXTERN_C

    #if defined(__cplusplus) && __embedded_cplusplus == 0

inline
wchar_t * _MSL_CDECL wmemchr (wchar_t * s, wchar_t c, size_t n) _MSL_CANT_THROW {
    return const_cast<wchar_t *>(wmemchr(static_cast<const wchar_t *>(s), c, n));
}

    #endif

_MSL_END_NAMESPACE_STD

#endif
