#ifndef _MSL_LOCALE_API_H
#define _MSL_LOCALE_API_H

#include <ansi_params.h>
#include <wchar_t.h>
#include <size_t.h>

#define _MSL_LOCALE_NONE 0
#define _MSL_LOCALE_C 1
#define _MSL_LOCALE_CUTF8 2

#ifndef _MSL_DEFAULT_LOCALE
    #define _MSL_DEFAULT_LOCALE _MSL_LOCALE_C
#endif

#define _LOCALE_NAME_LEN 48
#define _COMPONENT_NAME_LEN 8
#define _LOCALE_CMPT_COUNT 5

#pragma options align=native
#pragma warn_padding off

#if _MSL_WIDE_CHAR
typedef int (* __decode_mbyte) (wchar_t *, const char *, __std (size_t));
typedef int (* __encode_mbyte) (char *, wchar_t);
#endif

#if !_MSL_C_LOCALE_ONLY

struct _loc_mon_cmpt_vals {
    char * mon_decimal_point;
    char * mon_thousands_sep;
    char * mon_grouping;
    char * positive_sign;
    char * negative_sign;
    char * currency_symbol;
    char frac_digits;
    char p_cs_precedes;
    char n_cs_precedes;
    char p_sep_by_space;
    char n_sep_by_space;
    char p_sign_posn;
    char n_sign_posn;
    char * int_curr_symbol;
    char int_frac_digits;
    char int_p_cs_precedes;
    char int_n_cs_precedes;
    char int_p_sep_by_space;
    char int_n_sep_by_space;
    char int_p_sign_posn;
    char int_n_sign_posn;
};

struct _loc_mon_cmpt {
    char CmptName[_COMPONENT_NAME_LEN];
    char * mon_decimal_point;
    char * mon_thousands_sep;
    char * mon_grouping;
    char * positive_sign;
    char * negative_sign;
    char * currency_symbol;
    char frac_digits;
    char p_cs_precedes;
    char n_cs_precedes;
    char p_sep_by_space;
    char n_sep_by_space;
    char p_sign_posn;
    char n_sign_posn;
    char * int_curr_symbol;
    char int_frac_digits;
    char int_p_cs_precedes;
    char int_n_cs_precedes;
    char int_p_sep_by_space;
    char int_n_sep_by_space;
    char int_p_sign_posn;
    char int_n_sign_posn;
};

struct _loc_coll_cmpt {
    char CmptName[_COMPONENT_NAME_LEN];
    int char_start_value;
    int char_coll_tab_size;
    short char_spec_accents;
    unsigned short * char_coll_table_ptr;
    unsigned short * wchar_coll_seq_ptr;
};
#else

struct _loc_coll_cmpt {
    int char_start_value;
    int char_coll_tab_size;
    short char_spec_accents;
    unsigned short * char_coll_table_ptr;
};

#endif

#if !_MSL_C_LOCALE_ONLY
struct _loc_ctype_cmpt {
#if !_MSL_C_LOCALE_ONLY
    char CmptName[_COMPONENT_NAME_LEN];
    const unsigned short * ctype_map_ptr;
    const unsigned char * upper_map_ptr;
    const unsigned char * lower_map_ptr;
#if _MSL_WIDE_CHAR
#if _MSL_C99
    const unsigned short * wctype_map_ptr;
    const wchar_t * wupper_map_ptr;
    const wchar_t * wlower_map_ptr;
#endif
    __decode_mbyte decode_mb;
    __encode_mbyte encode_wc;
#endif
#endif
};

#elif _MSL_WIDE_CHAR && _MSL_C_LOCALE_ONLY

struct _loc_ctype_cmpt {
    __decode_mbyte decode_mb;
    __encode_mbyte encode_wc;
};

#endif

#if !_MSL_C_LOCALE_ONLY

struct _loc_num_cmpt_vals {
    char * decimal_point;
    char * thousands_sep;
    char * grouping;
};

struct _loc_num_cmpt {
    char CmptName[_COMPONENT_NAME_LEN];
    char * decimal_point;
    char * thousands_sep;
    char * grouping;
};

#endif

struct _loc_time_cmpt {
#if !_MSL_C_LOCALE_ONLY
    char CmptName[_COMPONENT_NAME_LEN];
#endif
    char * am_pm;
    char * DateTime_Format;
    char * Twelve_hr_format;
    char * Date_Format;
    char * Time_Format;
    char * Day_Names;

    char * MonthNames;
    char * TimeZone;
};

#if _MSL_C_LOCALE_ONLY
struct __locale {
    struct _loc_time_cmpt * time_cmpt_ptr;
    struct _loc_coll_cmpt * coll_cmpt_ptr;

      #if _MSL_WIDE_CHAR
    struct _loc_ctype_cmpt * ctype_cmpt_ptr;
      #endif
};
#else
struct __locale {
    struct __locale * next_locale;
    char locale_name[_LOCALE_NAME_LEN];
    struct _loc_coll_cmpt * coll_cmpt_ptr;
    struct _loc_ctype_cmpt * ctype_cmpt_ptr;
    struct _loc_mon_cmpt * mon_cmpt_ptr;
    struct _loc_num_cmpt * num_cmpt_ptr;
    struct _loc_time_cmpt * time_cmpt_ptr;
};
#endif

_MSL_BEGIN_EXTERN_C

_MSL_IMP_EXP_C extern struct __locale _current_locale;

_MSL_END_EXTERN_C

#pragma warn_padding reset
#pragma options align=reset

#endif
