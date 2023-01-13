#ifndef _MSL_ANSI_PARMS_H
#define _MSL_ANSI_PARMS_H

#include <msl_c_version.h>
#include <mslGlobals.h>

#if defined(_No_Console) && !defined(_MSL_CONSOLE_SUPPORT)
#define _MSL_CONSOLE_SUPPORT 0
#endif

#ifndef _MSL_CONSOLE_SUPPORT
#define _MSL_CONSOLE_SUPPORT 1
#endif

#if defined(_Unbuffered_Console) && !defined(_MSL_BUFFERED_CONSOLE)
#define _MSL_BUFFERED_CONSOLE 0
#endif

#ifndef _MSL_BUFFERED_CONSOLE
#define _MSL_BUFFERED_CONSOLE 1
#endif

#ifndef _MSL_CONSOLE_FILE_IS_DISK_FILE
#define _MSL_CONSOLE_FILE_IS_DISK_FILE 0
#endif

#ifndef _MSL_FILE_CONSOLE_ROUTINES
#define _MSL_FILE_CONSOLE_ROUTINES 0
#endif

#ifndef _MSL_NULL_CONSOLE_ROUTINES
    #if _MSL_CONSOLE_SUPPORT
        #define _MSL_NULL_CONSOLE_ROUTINES 0
    #else
        #define _MSL_NULL_CONSOLE_ROUTINES 1
    #endif
#endif

#if defined(_No_Disk_File_OS_Support) && !defined(_MSL_OS_DISK_FILE_SUPPORT)
#define _MSL_OS_DISK_FILE_SUPPORT 0
#endif

#ifndef _MSL_OS_DISK_FILE_SUPPORT
#define _MSL_OS_DISK_FILE_SUPPORT 1
#endif

#if defined(_No_Alloc_OS_Support) && !defined(_MSL_OS_ALLOC_SUPPORT)
#define _MSL_OS_ALLOC_SUPPORT 0
#endif

#ifndef _MSL_OS_ALLOC_SUPPORT
#define _MSL_OS_ALLOC_SUPPORT 1
#endif

#if !_MSL_OS_ALLOC_SUPPORT && defined(_MSL_OS_DIRECT_MALLOC)
#error Defining _MSL_OS_DIRECT_MALLOC requires _MSL_OS_ALLOC_SUPPORT
#endif

#if defined(_No_Time_OS_Support) && !defined(_MSL_OS_TIME_SUPPORT)
#define _MSL_OS_TIME_SUPPORT 0
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

#ifndef _MSL_TM_STRUCT_AVAILABLE
#define _MSL_TM_STRUCT_AVAILABLE 1
#endif

#ifndef _MSL_TIME_T_IS_LOCALTIME
#define _MSL_TIME_T_IS_LOCALTIME 1
#endif

#if _MSL_OS_TIME_SUPPORT && ((!_MSL_CLOCK_T_AVAILABLE) || (!_MSL_TIME_T_AVAILABLE))
#error _MSL_CLOCK_T_AVAILABLE and _MSL_TIME_T_AVAILABLE must match _MSL_OS_TIME_SUPPORT
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

#ifndef _MSL_LONGLONG
#define _MSL_LONGLONG 1
#endif

#if defined(_No_Floating_Point) && !defined(_MSL_FLOATING_POINT)
#define _MSL_FLOATING_POINT 0
#endif

#ifndef _MSL_FLOATING_POINT
#define _MSL_FLOATING_POINT 1
#endif

#ifndef _MSL_WIDE_CHAR
#define _MSL_WIDE_CHAR 0
#endif

#ifndef _MSL_USES_SUN_MATH_LIB
#define _MSL_USES_SUN_MATH_LIB 0
#endif

#ifndef _MSL_C99
#define _MSL_C99 1
#endif

#ifndef _MSL_C_HAS_CPP_EXTENSIONS
#ifdef __cplusplus
#define _MSL_C_HAS_CPP_EXTENSIONS 1
#else
#define _MSL_C_HAS_CPP_EXTENSIONS 0
#endif
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

#ifndef _MSL_C_LOCALE_ONLY
#define _MSL_C_LOCALE_ONLY 0
#endif

#ifndef _MSL_FLOATING_POINT_IO
#define _MSL_FLOATING_POINT_IO 1
#endif

#ifndef _MSL_USES_EXIT_PROCESS
#define _MSL_USES_EXIT_PROCESS 0
#endif

#ifndef _MSL_USING_MW_C_HEADERS
#define _MSL_USING_MW_C_HEADERS 1
#endif

#ifndef _MSL_PUT_THIRD_PARTY_C_IN_STD
#define _MSL_PUT_THIRD_PARTY_C_IN_STD 0
#endif

#ifndef _MSL_IMP_EXP
#define _MSL_IMP_EXP
#endif

#ifndef _MSL_IMP_EXP_C
#define _MSL_IMP_EXP_C _MSL_IMP_EXP
#endif

#ifndef _MSL_IMP_EXP_SIOUX
#define _MSL_IMP_EXP_SIOUX _MSL_IMP_EXP
#endif

#ifndef _MSL_IMP_EXP_RUNTIME
#define _MSL_IMP_EXP_RUNTIME _MSL_IMP_EXP
#endif

#ifndef _MSL_MALLOC_IS_ALTIVEC_ALIGNED
#define _MSL_MALLOC_IS_ALTIVEC_ALIGNED 0
#endif

#ifndef _MSL_WFILEIO_AVAILABLE
#define _MSL_WFILEIO_AVAILABLE 0
#endif

#ifndef _MSL_FLOAT_HEX
    #if _MSL_C99
        #define _MSL_FLOAT_HEX 1
    #else
        #define _MSL_FLOAT_HEX 0
    #endif
#endif

#ifndef _MSL_CDECL
#define _MSL_CDECL
#endif

#ifndef _MSL_MATH_CDECL
#define _MSL_MATH_CDECL
#endif

#ifndef _MSL_INLINE
#define _MSL_INLINE __inline
#endif

#ifndef _MSL_DO_NOT_INLINE
#define _MSL_DO_NOT_INLINE __declspec(weak)
#endif

#ifndef _MSL_LOCALDATA
#define _MSL_LOCALDATA(_a) _a
#endif

#ifndef _MSL_LOCALDATA_AVAILABLE
#define _MSL_LOCALDATA_AVAILABLE 1
#endif

#ifndef _MSL_RESTRICT
    #if defined(__MWERKS__)
        #if __option(c99)
            #define _MSL_RESTRICT restrict
        #else
            #define _MSL_RESTRICT
        #endif
    #else
        #define _MSL_RESTRICT
    #endif
#endif

#ifndef _MSL_MATH_ERRHANDLING
#define _MSL_MATH_ERRHANDLING 1
#endif

#ifndef _MSL_LITTLE_ENDIAN
    #if defined(__MWERKS__)
        #if __option(little_endian)
            #define _MSL_LITTLE_ENDIAN 1
        #else
            #define _MSL_LITTLE_ENDIAN 0
        #endif
    #else
        #define _MSL_LITTLE_ENDIAN 0
    #endif
#endif

#ifdef __cplusplus
    #define _MSL_BEGIN_EXTERN_C extern "C" {
    #define _MSL_END_EXTERN_C }

    #ifdef _MSL_USING_NAMESPACE
        #define _MSL_BEGIN_NAMESPACE_STD namespace std {
        #define _MSL_END_NAMESPACE_STD }

        #define __std(ref) ::std::ref
        #define __global() ::
    #else
        #define _MSL_BEGIN_NAMESPACE_STD
        #define _MSL_END_NAMESPACE_STD

        #define __std(ref) ref
        #define __global()
    #endif
#else
    #define _MSL_BEGIN_EXTERN_C
    #define _MSL_END_EXTERN_C

    #define _MSL_BEGIN_NAMESPACE_STD
    #define _MSL_END_NAMESPACE_STD

    #define __std(ref) ref
    #define __global()
#endif

#if !defined(_MSL_NO_THROW_SPECS)
    #ifndef _MSL_NO_THROW
        #if defined(__cplusplus)
            #define _MSL_NO_THROW throw()
        #else
            #define _MSL_NO_THROW
        #endif
    #endif
    #ifndef _MSL_CANT_THROW
        #define _MSL_CANT_THROW __attribute__((nothrow))
    #endif
#else
    #ifndef _MSL_NO_THROW
        #define _MSL_NO_THROW
    #endif
    #ifndef _MSL_CANT_THROW
        #define _MSL_CANT_THROW
    #endif
#endif

#ifndef _MSL_ATTRIBUTE_CONST
    #define _MSL_ATTRIBUTE_CONST __attribute__((const))
#endif

#if !defined(_MSL_USE_INLINE) && !defined(RC_INVOKED) && defined(__MWERKS__)
    #if !__option(dont_inline)
        #define _MSL_USE_INLINE 1
    #endif
#endif

#ifndef __has_intrinsic
    #define __has_intrinsic(_a) 0
#endif

#endif
