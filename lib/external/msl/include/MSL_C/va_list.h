#ifndef _MSL_VA_LIST_H
#define _MSL_VA_LIST_H

_MSL_BEGIN_NAMESPACE_STD
    _MSL_BEGIN_EXTERN_C

    #ifndef _MSL_VA_LIST_TYPE
        #define _MSL_VA_LIST_TYPE char *
    #endif

    #ifndef _MSL_VA_LIST_DEFINED
typedef _MSL_VA_LIST_TYPE va_list;
        #define _MSL_VA_LIST_DEFINED
    #endif

_MSL_END_EXTERN_C
_MSL_END_NAMESPACE_STD

#endif
