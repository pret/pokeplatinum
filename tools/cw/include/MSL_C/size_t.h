#ifndef _MSL_SIZE_T_H
#define _MSL_SIZE_T_H

#include <ansi_params.h>

#ifndef RC_INVOKED

_MSL_BEGIN_NAMESPACE_STD
    _MSL_BEGIN_EXTERN_C

    #ifndef _MSL_SIZE_T_TYPE
        #define _MSL_SIZE_T_TYPE __typeof__(sizeof(0))
    #endif

    #ifndef _MSL_SIZE_T_DEFINED
        #define _MSL_SIZE_T_DEFINED
typedef _MSL_SIZE_T_TYPE size_t;
    #endif

_MSL_END_EXTERN_C
_MSL_END_NAMESPACE_STD

#endif

#endif
