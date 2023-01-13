#ifndef _MSL_ISO646_H
#define _MSL_ISO646_H

#include <ansi_params.h>

#if _MSL_C99

#if !_MSL_USING_MW_C_HEADERS
    #if !__MACH__
    #error You must have the non-MSL C header file access path before the MSL access path
    #endif
#else

#include <ciso646>

#endif

#endif

#endif
