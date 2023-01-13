#ifndef _MSL_T_H
#define _MSL_T_H

#ifdef _INT32
    #undef _INT32
#endif

#ifdef _UINT32
    #undef _UINT32
#endif

#ifndef _MSL_INT32_TYPE
    #define _MSL_INT32_TYPE int
#endif

typedef _MSL_INT32_TYPE _INT32;
typedef unsigned _MSL_INT32_TYPE _UINT32;

#if _MSL_LONGLONG
    #ifdef _INT64
        #undef _INT64
    #endif

    #ifdef _UINT64
        #undef _UINT64
    #endif

    #ifndef _MSL_INT64_TYPE
        #define _MSL_INT64_TYPE long long
    #endif

typedef _MSL_INT64_TYPE _INT64;
typedef unsigned _MSL_INT64_TYPE _UINT64;
#endif

#endif
