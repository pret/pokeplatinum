#ifndef _MSL_CTYPE_API_H
#define _MSL_CTYPE_API_H

_MSL_BEGIN_EXTERN_C

    #if !_MSL_C_LOCALE_ONLY
        #define __msl_cmap_size 256
    #else
        #define __msl_cmap_size 128
    #endif

    #if !_MSL_C_LOCALE_ONLY
extern _MSL_IMP_EXP_C const unsigned short __msl_ctype_map[__msl_cmap_size];
extern _MSL_IMP_EXP_C const unsigned char __lower_map[__msl_cmap_size];
extern _MSL_IMP_EXP_C const unsigned char __upper_map[__msl_cmap_size];
    #endif

extern _MSL_IMP_EXP_C const unsigned short __ctype_mapC[__msl_cmap_size];
extern _MSL_IMP_EXP_C const unsigned char __lower_mapC[__msl_cmap_size];
extern _MSL_IMP_EXP_C const unsigned char __upper_mapC[__msl_cmap_size];

_MSL_END_EXTERN_C

#ifndef RC_INVOKED

_MSL_BEGIN_NAMESPACE_STD
#if _MSL_USE_INLINE

#if _MSL_C_LOCALE_ONLY
    #define _MSL_CMAP_ACCESS __ctype_mapC
    #define _MSL_CLOWER_ACCESS __lower_mapC
    #define _MSL_CUPPER_ACCESS __upper_mapC
#else
    #define _MSL_CMAP_ACCESS _MSL_LOCALDATA(_current_locale).ctype_cmpt_ptr->ctype_map_ptr
    #define _MSL_CLOWER_ACCESS _MSL_LOCALDATA(_current_locale).ctype_cmpt_ptr->lower_map_ptr
    #define _MSL_CUPPER_ACCESS _MSL_LOCALDATA(_current_locale).ctype_cmpt_ptr->upper_map_ptr
#endif

#endif
_MSL_END_NAMESPACE_STD

#endif

#define __msl_alpha 0x0001
#define __msl_blank 0x0002
#define __msl_cntrl 0x0004
#define __msl_digit 0x0008
#define __msl_graph 0x0010
#define __msl_lower 0x0020
#define __msl_print 0x0040
#define __msl_punct 0x0080
#define __msl_space 0x0100
#define __msl_upper 0x0200
#define __msl_xdigit 0x0400

#define __msl_alnum (__msl_alpha | __msl_digit)

#endif
