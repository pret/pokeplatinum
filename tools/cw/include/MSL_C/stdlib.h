#ifndef _MSL_STDLIB_H
#define _MSL_STDLIB_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#include <cstdlib>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
using std::size_t;
using std::abort;
using std::atexit;
using std::exit;
#if  _MSL_C99
using std::_Exit;
#endif
using std::getenv;
using std::system;
using std::malloc;
using std::calloc;
using std::realloc;
using std::free;
using std::atol;
#if _MSL_LONGLONG
#if _MSL_C99
using std::atoll;
#endif
#endif
#ifndef _MSL_NO_MATH_LIB
using std::atof;
using std::strtod;
using std::strtold;
#if _MSL_C99
using std::strtof;
#endif
#endif
using std::atoi;
using std::strtol;
using std::strtoul;
#if _MSL_LONGLONG
#if _MSL_C99
using std::strtoll;
using std::strtoull;
#endif
#endif
#if _MSL_WIDE_CHAR
using std::mblen;
using std::mbstowcs;
using std::mbtowc;
using std::wctomb;
using std::wcstombs;
#endif
using std::bsearch;
using std::qsort;
using std::div_t;
using std::ldiv_t;
using std::abs;
using std::div;
using std::labs;
#if _MSL_LONGLONG
#if _MSL_C99
using std::llabs;
using std::lldiv_t;
using std::lldiv;
#endif
#endif
using std::ldiv;
using std::srand;
using std::rand;
#if __VEC__
using std::vec_calloc;
using std::vec_free;
using std::vec_malloc;
using std::vec_realloc;
#endif
#if defined(__STDC_WANT_SECURE_LIB__) && __STDC_WANT_SECURE_LIB__
using std::errno_t;
using std::rsize_t;
using std::getenv_s;
using std::bsearch_s;
using std::qsort_s;
#if _MSL_WIDE_CHAR
using std::wctomb_s;
#endif
#endif
#endif

#endif

#endif
