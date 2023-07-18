#ifndef _MSL_COMPLEX_H
#define _MSL_COMPLEX_H

#ifdef __cplusplus

#include <complex>

#ifndef _MSL_NO_CPP_NAMESPACE
    #if _MSL_FLOATING_POINT && !defined(_MSL_NO_MATH_LIB)
using std::complex;
    #endif
#endif

#else

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #if !__MACH__
    #error You must have the non-MSL C header file access path before the MSL access path
    #endif
#else

#endif

#endif

#endif
