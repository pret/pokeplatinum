#ifndef _MSL_STDARG_H
#define _MSL_STDARG_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#include <cstdarg>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
using std::va_list;
#endif

#endif

#endif
