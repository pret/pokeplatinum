#if defined(__STDC_WANT_SECURE_LIB__) && __STDC_WANT_SECURE_LIB__

    #ifndef __STDC_SECURE_LIB__
        #define __STDC_SECURE_LIB__ 200411L
    #endif

    #ifndef _MSL_ERRNO_T
        #define _MSL_ERRNO_T
typedef int errno_t;
    #endif

#endif
