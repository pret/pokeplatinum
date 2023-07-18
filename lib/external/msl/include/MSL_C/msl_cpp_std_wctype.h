#ifndef _MSL_CPP_STD_WCTYPE_H
#define _MSL_CPP_STD_WCTYPE_H

#ifdef __cplusplus

#if _MSL_OS_X_VERSION > 2

namespace std {
#if _MSL_WIDE_CHAR
using ::wctrans_t;
using ::wctype_t;
using ::wint_t;
using ::iswalnum;
using ::iswalpha;
#if _MSL_C99
using ::iswblank;
#endif
using ::iswcntrl;
using ::iswctype;
using ::iswdigit;
using ::iswgraph;
using ::iswlower;
using ::iswprint;
using ::iswpunct;
using ::iswspace;
using ::iswupper;
using ::iswxdigit;
using ::towctrans;
using ::towlower;
using ::towupper;
using ::wctrans;
using ::wctype;
#endif
}

#endif

#endif

#endif
