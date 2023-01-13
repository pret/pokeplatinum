#ifndef _MSL_LOCALE_H
#define _MSL_LOCALE_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#include <clocale>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
using std::lconv;
using std::localeconv;
using std::setlocale;
#endif

#endif

#endif
