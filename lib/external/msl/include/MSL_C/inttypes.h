#ifndef _MSL_INTTYPES_H
#define _MSL_INTTYPES_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#include <cinttypes>
#include <stdint.h>

#if _MSL_C99

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
using std::imaxdiv_t;
using std::imaxabs;
using std::imaxdiv;
using std::strtoimax;
using std::strtoumax;
    #if _MSL_WIDE_CHAR
using std::wcstoimax;
using std::wcstoumax;
    #endif
#endif

#endif
#endif
#endif
