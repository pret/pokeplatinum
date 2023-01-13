#ifndef _MSL_WSTRING_H
#define _MSL_WSTRING_H

#include <ansi_params.h>
#include <size_t.h>
#include <wchar_t.h>

#ifdef __MWERKS__
    #if __MWERKS__ >= 0x3200
        #pragma implements_std_header("wchar.h")
    #endif
#endif

_MSL_BEGIN_NAMESPACE_STD
_MSL_BEGIN_EXTERN_C

_MSL_IMP_EXP_C size_t _MSL_CDECL(wcslen)(const wchar_t *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL(wcscpy)(wchar_t * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL wcsncpy(wchar_t * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, size_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL wcscat(wchar_t * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL wcsncat(wchar_t * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, size_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL wcscmp(const wchar_t *, const wchar_t *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL wcsncmp(const wchar_t *, const wchar_t *, size_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL wcscoll(const wchar_t *, const wchar_t *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C size_t _MSL_CDECL wcsxfrm(wchar_t * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, size_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C size_t _MSL_CDECL wcsspn(const wchar_t *, const wchar_t *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C size_t _MSL_CDECL wcscspn(const wchar_t *, const wchar_t *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL wcstok(wchar_t * _MSL_RESTRICT, const wchar_t * _MSL_RESTRICT, wchar_t * * _MSL_RESTRICT) _MSL_CANT_THROW;
#if !defined(__cplusplus) || __embedded_cplusplus != 0
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL wcschr(const wchar_t *, wchar_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL wcspbrk(const wchar_t *, const wchar_t *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL wcsrchr(const wchar_t *, wchar_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C wchar_t * _MSL_CDECL wcsstr(const wchar_t *, const wchar_t *) _MSL_CANT_THROW;
#else
_MSL_IMP_EXP_C const wchar_t * _MSL_CDECL wcschr(const wchar_t *, wchar_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C const wchar_t * _MSL_CDECL wcspbrk(const wchar_t *, const wchar_t *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C const wchar_t * _MSL_CDECL wcsrchr(const wchar_t *, wchar_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C const wchar_t * _MSL_CDECL wcsstr(const wchar_t *, const wchar_t *) _MSL_CANT_THROW;
#endif

#if defined(__STDC_WANT_SECURE_LIB__) && __STDC_WANT_SECURE_LIB__
_MSL_IMP_EXP_C size_t _MSL_CDECL(wcsnlen_s)(const wchar_t *, size_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C errno_t _MSL_CDECL(wcscpy_s)(wchar_t * _MSL_RESTRICT, rsize_t, const wchar_t * _MSL_RESTRICT) _MSL_CANT_THROW;
_MSL_IMP_EXP_C errno_t _MSL_CDECL wcsncpy_s(wchar_t * _MSL_RESTRICT, rsize_t, const wchar_t * _MSL_RESTRICT, rsize_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C errno_t _MSL_CDECL wcscat_s(wchar_t * _MSL_RESTRICT, rsize_t, const wchar_t * _MSL_RESTRICT) _MSL_CANT_THROW;
_MSL_IMP_EXP_C errno_t _MSL_CDECL wcsncat_s(wchar_t * _MSL_RESTRICT, rsize_t, const wchar_t * _MSL_RESTRICT, rsize_t) _MSL_CANT_THROW;
#endif

_MSL_END_EXTERN_C

    #if defined(__cplusplus) && __embedded_cplusplus == 0

inline
wchar_t * _MSL_CDECL wcschr (wchar_t * s, wchar_t c) _MSL_CANT_THROW {
    return const_cast<wchar_t *>(wcschr(static_cast<const wchar_t *>(s), c));
}

inline
wchar_t * _MSL_CDECL wcspbrk (wchar_t * s1, const wchar_t * s2) _MSL_CANT_THROW {
    return const_cast<wchar_t *>(wcspbrk(static_cast<const wchar_t *>(s1), s2));
}

inline
wchar_t * _MSL_CDECL wcsrchr (wchar_t * s, wchar_t c) _MSL_CANT_THROW {
    return const_cast<wchar_t *>(wcsrchr(static_cast<const wchar_t *>(s), c));
}

inline
wchar_t * _MSL_CDECL wcsstr (wchar_t * s1, const wchar_t * s2) _MSL_CANT_THROW {
    return const_cast<wchar_t *>(wcsstr(static_cast<const wchar_t *>(s1), s2));
}

    #endif

_MSL_END_NAMESPACE_STD

#endif
