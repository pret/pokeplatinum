#ifndef _MSL_STDBOOL_H
#define _MSL_STDBOOL_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#ifndef __cplusplus

#if !_MSL_C99
    #warning "MSL support for C99 is not enabled"
#else
    #ifdef __MWERKS__
        #if !__option(c99)
            #pragma c99 on

            #pragma ANSI_strict off
                #warning "Compiler support for C99 has been turned on"
            #pragma ANSI_strict reset
        #endif
    #endif

    #define bool _Bool
    #define true 1
    #define false 0
    #define __bool_true_false_are_defined 1
#endif

#else

#ifdef __MWERKS__
    #if !__option(bool)

        #ifndef bool
            #ifndef _MSL_BOOL_TYPE
                #define _MSL_BOOL_TYPE unsigned char
            #endif

typedef _MSL_BOOL_TYPE bool;
        #endif
        #ifndef true
            #define false static_cast<bool>(0)
            #define true static_cast<bool>(1)
            #define __bool_true_false_are_defined 1
        #endif

    #endif
#endif

#endif

#endif

#endif
