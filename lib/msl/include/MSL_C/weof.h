#ifndef _MSL_WEOF_H
#define _MSL_WEOF_H

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#if _MSL_WIDE_CHAR

#ifndef RC_INVOKED

    #include <wchar_t.h>

    #ifndef _MSL_WEOF
        #define _MSL_WEOF ((__std(wint_t))(-1))
    #endif

    #ifndef WEOF
        #define WEOF _MSL_WEOF
    #endif

#endif

#endif

#endif

#endif
