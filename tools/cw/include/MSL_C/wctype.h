#ifndef _MSL_WCTYPE_H
#define _MSL_WCTYPE_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #if !__MACH__
    #error You must have the non-MSL C header file access path before the MSL access path
    #endif
#else

#include <cwctype>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
#if _MSL_WIDE_CHAR
using std::wctrans_t;
using std::wctype_t;
using std::wint_t;
using std::iswalnum;
using std::iswalpha;
    #if _MSL_C99
using std::iswblank;
    #endif
using std::iswcntrl;
using std::iswctype;
using std::iswdigit;
using std::iswgraph;
using std::iswlower;
using std::iswprint;
using std::iswpunct;
using std::iswspace;
using std::iswupper;
using std::iswxdigit;
using std::towctrans;
using std::towlower;
using std::towupper;
using std::wctrans;
using std::wctype;
#endif
#endif

#endif

#endif
