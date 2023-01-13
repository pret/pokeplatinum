#ifndef _MSL_WCTYPE_API_H
#define _MSL_WCTYPE_API_H

#include <ansi_params.h>

#if _MSL_WIDE_CHAR

    #include <eof.h>
    #include <weof.h>
    #include <wchar_t.h>
    #include <wctrans.h>

_MSL_BEGIN_EXTERN_C

        #if !_MSL_C_LOCALE_ONLY
            #define __msl_wcmap_size 256
        #else
            #define __msl_wcmap_size 128
        #endif

        #if !_MSL_C_LOCALE_ONLY
extern _MSL_IMP_EXP_C const unsigned short __msl_wctype_map[__msl_wcmap_size];
extern _MSL_IMP_EXP_C const wchar_t __wlower_map[__msl_wcmap_size];
extern _MSL_IMP_EXP_C const wchar_t __wupper_map[__msl_wcmap_size];
        #endif

extern _MSL_IMP_EXP_C const unsigned short __wctype_mapC[__msl_wcmap_size];
extern _MSL_IMP_EXP_C const wchar_t __wlower_mapC[__msl_wcmap_size];
extern _MSL_IMP_EXP_C const wchar_t __wupper_mapC[__msl_wcmap_size];

_MSL_END_EXTERN_C

    #define __msl_walpha 0x0001
    #define __msl_wblank 0x0002
    #define __msl_wcntrl 0x0004
    #define __msl_wdigit 0x0008
    #define __msl_wgraph 0x0010
    #define __msl_wlower 0x0020
    #define __msl_wprint 0x0040
    #define __msl_wpunct 0x0080
    #define __msl_wspace 0x0100
    #define __msl_wupper 0x0200
    #define __msl_wxdigit 0x0400

    #define __msl_walnum (__msl_walpha | __msl_wdigit)

#endif

#endif
