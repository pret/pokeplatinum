#ifndef _MSL_WCHAR_T_H
#define _MSL_WCHAR_T_H

#include <ansi_params.h>

#ifndef _MSL_WCHAR_T_TYPE
    #define _MSL_WCHAR_T_TYPE unsigned short
#endif

#ifndef _MSL_WCHAR_MIN
    #define _MSL_WCHAR_MIN 0
#endif

#ifndef _MSL_WCHAR_MAX
    #define _MSL_WCHAR_MAX 0xffffU
#endif

#ifdef __MWERKS__
    #if (!defined(__cplusplus) || !__option(wchar_type))
        #ifdef __cplusplus
extern "C" {
        #endif

typedef _MSL_WCHAR_T_TYPE wchar_t;

        #ifdef __cplusplus
}
        #endif
    #endif
#elif __GNUC__
        #ifdef __cplusplus
extern "C" {
        #endif

typedef _MSL_WCHAR_T_TYPE wchar_t;

        #ifdef __cplusplus
}
        #endif
#endif

#ifdef __cplusplus
    #ifdef _MSL_USING_NAMESPACE
namespace std {
    #endif
extern "C" {
#endif

#ifndef WCHAR_MIN
    #define WCHAR_MIN _MSL_WCHAR_MIN
#endif

#ifndef WCHAR_MAX
    #define WCHAR_MAX _MSL_WCHAR_MAX
#endif

typedef wchar_t wint_t;
typedef wchar_t wctype_t;
typedef int mbstate_t;
typedef wchar_t Wint_t;

#ifdef __cplusplus
}
    #ifdef _MSL_USING_NAMESPACE
}
    #endif
#endif

#endif
