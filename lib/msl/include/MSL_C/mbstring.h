#ifndef _MSL_MBSTRING
#define _MSL_MBSTRING

#include <ansi_params.h>
#include <wchar_t.h>
#include <size_t.h>

_MSL_IMP_EXP_C  int __utf8_to_unicode(wchar_t *, const char *, __std(size_t)) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int __unicode_to_UTF8(char * _MSL_RESTRICT, wchar_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C  int __mbtowc_noconv(wchar_t *, const char *, __std(size_t)) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int __wctomb_noconv(char *, wchar_t wchar) _MSL_CANT_THROW;

#endif
