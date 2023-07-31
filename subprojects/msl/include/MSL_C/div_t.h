#ifndef _MSL_DIV_T_H
#define _MSL_DIV_T_H

#pragma options align=native

_MSL_BEGIN_NAMESPACE_STD
    _MSL_BEGIN_EXTERN_C

typedef struct {
    int quot;
    int rem;
} div_t;

typedef struct {
    long quot;
    long rem;
} ldiv_t;

    #if _MSL_C99 || defined(__cplusplus)
    #if _MSL_LONGLONG
typedef struct {
    long long quot;
    long long rem;
} lldiv_t;
    #endif
    #endif

_MSL_END_EXTERN_C
    _MSL_END_NAMESPACE_STD

#pragma options align=reset

#endif
