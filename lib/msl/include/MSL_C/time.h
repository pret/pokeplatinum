#ifndef _MSL_TIME_H
#define _MSL_TIME_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#include <ctime>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)

using std::size_t;

#if _MSL_CLOCK_T_AVAILABLE
using std::clock_t;
#endif

#if _MSL_TIME_T_AVAILABLE
using std::time_t;
#endif

#if _MSL_FLOATING_POINT && _MSL_TIME_T_AVAILABLE
using std::difftime;
#endif

#if _MSL_OS_TIME_SUPPORT
using std::tm;
using std::clock;
using std::gmtime;
using std::time;
using std::asctime;
using std::ctime;
using std::localtime;
using std::mktime;
using std::strftime;

#if defined(__STDC_WANT_SECURE_LIB__) && __STDC_WANT_SECURE_LIB__
using std::errno_t;
using std::rsize_t;
using std::asctime_s;
using std::ctime_s;
using std::gmtime_s;
using std::localtime_s;
#endif

#endif

#endif

#endif

#endif
