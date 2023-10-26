#ifndef __ansi_prefix__
#define __ansi_prefix__

#include <os_enum.h>

#define __dest_os __arm_bare

#ifndef _MSL_CONSOLE_SUPPORT
    #define _MSL_CONSOLE_SUPPORT 1
#endif

#ifndef _MSL_OS_DISK_FILE_SUPPORT
    #define _MSL_OS_DISK_FILE_SUPPORT 0
#endif

#ifndef _MSL_OS_TIME_SUPPORT
    #define _MSL_OS_TIME_SUPPORT 1
#endif

#ifndef _MSL_CLOCK_T_AVAILABLE
    #define _MSL_CLOCK_T_AVAILABLE 1
#endif

#ifndef _MSL_TIME_T_AVAILABLE
    #define _MSL_TIME_T_AVAILABLE 1
#endif

#if _MSL_OS_TIME_SUPPORT && ((!_MSL_CLOCK_T_AVAILABLE) || (!_MSL_TIME_T_AVAILABLE))
    #error _MSL_CLOCK_T_AVAILABLE and _MSL_CLOCK_T_AVAILABLE must match _MSL_OS_TIME_SUPPORT
#endif

#ifndef _MSL_THREADSAFE
    #define _MSL_THREADSAFE 0
#endif

#ifndef _MSL_PTHREADS
    #define _MSL_PTHREADS 0
#endif

#if _MSL_PTHREADS && !_MSL_THREADSAFE
    #error _MSL_PTHREADS and _MSL_THREADSAFE must match
#endif

#ifndef _MSL_LOCALDATA_AVAILABLE
    #define _MSL_LOCALDATA_AVAILABLE 1
#endif

#ifndef _MSL_OS_ALLOC_SUPPORT
    #define _MSL_OS_ALLOC_SUPPORT 0
#endif

#ifndef _MSL_HEAP_EXTERN_PROTOTYPES
    #define _MSL_HEAP_EXTERN_PROTOTYPES \
    extern char __heap_addr[]; \
    extern char __heap_size[];
#endif

#ifndef _MSL_HEAP_START
    #define _MSL_HEAP_START __heap_addr
#endif

#ifndef _MSL_HEAP_SIZE
    #define _MSL_HEAP_SIZE __heap_size
#endif

#ifndef _MSL_LONGLONG
    #define _MSL_LONGLONG 1
#endif

#ifndef _MSL_FLOATING_POINT
    #define _MSL_FLOATING_POINT 1
#endif

#ifndef _MSL_WIDE_CHAR
    #define _MSL_WIDE_CHAR 1
#endif

#ifndef _MSL_USES_SUN_MATH_LIB
    #define _MSL_USES_SUN_MATH_LIB 1
#endif

#ifndef _MSL_POSIX
    #define _MSL_POSIX 0
#endif

#ifndef _MSL_NEEDS_EXTRAS
    #define _MSL_NEEDS_EXTRAS 0
#endif

#ifndef _MSL_STRERROR_KNOWS_ERROR_NAMES
    #define _MSL_STRERROR_KNOWS_ERROR_NAMES 1
#endif

#ifndef _MSL_ASSERT_DISPLAYS_FUNC
    #define _MSL_ASSERT_DISPLAYS_FUNC 1
#endif

#ifndef _MSL_C_LOCALE_ONLY
    #define _MSL_C_LOCALE_ONLY 1
#endif

#ifndef _MSL_C99
    #define _MSL_C99 1
#endif

#if !_MSL_C99 && !_MSL_C_LOCALE_ONLY
    #error _MSL_C_LOCALE_ONLY must be turned on if _MSL_C99 is off
#endif

#ifndef _MSL_FLOATING_POINT_IO
    #define _MSL_FLOATING_POINT_IO 1
#endif

#ifndef _MSL_USES_EXIT_PROCESS
    #define _MSL_USES_EXIT_PROCESS 1
#endif

#ifndef _MSL_FLT_EVAL_METHOD
    #define _MSL_FLT_EVAL_METHOD 0
#endif

#if defined(__cplusplus)
    #define _MSL_USING_NAMESPACE
#endif

#define __ANSI_OVERLOAD__

#define _MSL_INTEGRAL_MATH

#if SDK_CW
    #undef _MSL_OS_TIME_SUPPORT
    #define _MSL_OS_TIME_SUPPORT 0
#endif

#endif
