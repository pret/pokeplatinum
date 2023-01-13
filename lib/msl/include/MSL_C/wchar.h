#ifndef _MSL_WCHAR_H
#define _MSL_WCHAR_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #if !__MACH__
    #error You must have the non-MSL C header file access path before the MSL access path
    #endif
#else

#include <cwchar>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
#if _MSL_WIDE_CHAR
using std::mbstate_t;
using std::wint_t;
using std::size_t;
using std::btowc;
using std::fgetwc;
using std::fgetws;
using std::fputwc;
using std::fputws;
using std::fwide;
using std::fwprintf;
using std::fwscanf;
using std::getwc;
using std::getwchar;
using std::mbrlen;
using std::mbrtowc;
using std::mbsinit;
using std::mbsrtowcs;
using std::putwc;
using std::putwchar;
using std::swprintf;
using std::swscanf;
using std::ungetwc;
using std::vfwprintf;
using std::vswprintf;
using std::vwprintf;
using std::wcrtomb;
using std::wcscat;
using std::wcschr;
using std::wcscmp;
using std::wcscoll;
using std::wcscpy;
using std::wcscspn;
#if _MSL_OS_TIME_SUPPORT
using std::wcsftime;
#endif
using std::wcslen;
using std::wcsncat;
using std::wcsncmp;
using std::wcsncpy;
using std::wcspbrk;
using std::wcsrchr;
using std::wcsrtombs;
using std::wcsspn;
using std::wcsstr;
using std::wcstod;
#if _MSL_C99
using std::wcstof;
using std::wcstold;
#endif
using std::wcstok;
using std::wcstol;
#if _MSL_C99
#if _MSL_LONGLONG
using std::wcstoll;
using std::wcstoull;
#endif
#endif
using std::wcstoul;
using std::wcsxfrm;
using std::wctob;
using std::wmemchr;
using std::wmemcmp;
using std::wmemcpy;
using std::wmemmove;
using std::wmemset;
using std::wprintf;
using std::wscanf;
#if defined(__STDC_WANT_SECURE_LIB__) && __STDC_WANT_SECURE_LIB__
using std::errno_t;
using std::rsize_t;
using std::wmemcpy_s;
using std::wmemmove_s;
using std::fwscanf_s;
using std::wscanf_s;
using std::swscanf_s;
using std::vswscanf_s;
using std::vfwscanf_s;
using std::vwscanf_s;
using std::wcsnlen_s;
using std::wcscpy_s;
using std::wcsncpy_s;
using std::wcscat_s;
using std::wcsncat_s;
#endif
#endif
#endif

#endif

#endif
