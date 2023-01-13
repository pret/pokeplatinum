#ifndef _MSL_CPP_STD_TIME_H
#define _MSL_CPP_STD_TIME_H

#ifdef __cplusplus

namespace std {
using ::size_t;

#if _MSL_CLOCK_T_AVAILABLE
using ::clock_t;
#endif

#if _MSL_TIME_T_AVAILABLE
using ::time_t;
#endif

#if _MSL_FLOATING_POINT
using ::difftime;
#endif

#if _MSL_OS_TIME_SUPPORT
using ::tm;
using ::clock;
using ::gmtime;
using ::time;
using ::asctime;
using ::ctime;
using ::localtime;
using ::mktime;
using ::strftime;

#if defined(__STDC_WANT_SECURE_LIB__) && __STDC_WANT_SECURE_LIB__
using ::errno_t;
using ::rsize_t;
using ::asctime_s;
using ::ctime_s;
using ::gmtime_s;
using ::localtime_s;
#endif

#endif
}

#endif

#endif
