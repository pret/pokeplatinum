#ifndef _MSL_CPP_STD_INTTYPES_H
#define _MSL_CPP_STD_INTTYPES_H

#if _MSL_C99

#ifdef __cplusplus

#if _MSL_OS_X_VERSION > 2

namespace std {
    using ::imaxdiv_t;
    using ::imaxabs;
    using ::imaxdiv;
    using ::strtoimax;
    using ::strtoumax;
    #if _MSL_WIDE_CHAR
    using ::wcstoimax;
    using ::wcstoumax;
    #endif
}

#endif

#endif

#endif

#endif
