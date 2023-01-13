#ifndef _MSL_STDDEF_H
#define _MSL_STDDEF_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#include <cstddef>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
using std::ptrdiff_t;
using std::size_t;
#endif

#endif

#endif
