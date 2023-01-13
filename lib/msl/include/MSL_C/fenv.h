#ifndef _MSL_FENV_H
#define _MSL_FENV_H

#ifndef __FENV__
#define __FENV__

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #if !__MACH__
    #error You must have the non-MSL C header file access path before the MSL access path
    #else
    #include <CarbonCore/fenv.h>
    #endif
#else
#if _MSL_C99
#ifdef __POWERPC__

typedef long int fenv_t;
typedef long int fexcept_t;

    #define FE_DIVBYZERO 0x04000000
    #define FE_INEXACT 0x02000000
    #define FE_INVALID 0x20000000
    #define FE_OVERFLOW 0x10000000
    #define FE_UNDERFLOW 0x08000000

    #define FE_DOWNWARD 0x00000003
    #define FE_TONEAREST 0x00000000
    #define FE_TOWARDZERO 0x00000001
    #define FE_UPWARD 0x00000002
#endif

#ifdef __MIPS__
typedef long int fenv_t;
typedef long int fexcept_t;

    #define FE_INEXACT 0x00001000
    #define FE_UNDERFLOW 0x00002000
    #define FE_OVERFLOW 0x00004000
    #define FE_DIVBYZERO 0x00008000
    #define FE_INVALID 0x00010000

    #define FE_TONEAREST ((short)(-1))
    #define FE_UPWARD ((short)(-2))
    #define FE_DOWNWARD ((short)(-3))
    #define FE_TOWARDZERO ((short)(-4))
#endif

#if defined(__MC68K__) || defined(__COLDFIRE__)
    #if __MC68881__ || __COLDFIRE_HW_FPU__

typedef long fexcept_t;
typedef struct {
    long FPCR;
    long FPSR;
} fenv_t;

        #define FE_INEXACT ((long)(8))
        #define FE_DIVBYZERO ((long)(16))
        #define FE_UNDERFLOW ((long)(32))
        #define FE_OVERFLOW ((long)(64))
        #define FE_INVALID ((long)(128))
    #else

typedef short fexcept_t;
typedef short fenv_t;

        #define FE_INVALID ((short)(1))
        #define FE_UNDERFLOW ((short)(2))
        #define FE_OVERFLOW ((short)(4))
        #define FE_DIVBYZERO ((short)(8))
        #define FE_INEXACT ((short)(16))
    #endif

    #define FE_TONEAREST ((short)(0))
    #define FE_UPWARD ((short)(1))
    #define FE_DOWNWARD ((short)(2))
    #define FE_TOWARDZERO ((short)(3))

    #define FE_LDBLPREC ((short)(0))
    #define FE_DBLPREC ((short)(1))
    #define FE_FLTPREC ((short)(2))
#endif

#ifdef __INTEL__

typedef short fexcept_t;
typedef long fenv_t;

    #define FE_INVALID 0x0001
    #define FE_DIVBYZERO 0x0004
    #define FE_OVERFLOW 0x0008
    #define FE_UNDERFLOW 0x0010
    #define FE_INEXACT 0x0020

    #define FE_TONEAREST 0x00000000
    #define FE_TOWARDZERO 0x00000C00
    #define FE_UPWARD 0x00000800
    #define FE_DOWNWARD 0x00000400

    #define FE_LDBLPREC 0x00000300
    #define FE_DBLPREC 0x00000200
    #define FE_FLTPREC 0x00000000
#endif

#ifdef __arm

typedef unsigned int __ieee_edata_t;

typedef union {
    float f;
    float s;
    double d;
    int i;
    unsigned int ui;
#if !defined(__STRICT_ANSI__) || (defined(__STDC_VERSION__) && 199901L <= __STDC_VERSION__)
    long long l;
    unsigned long long ul;
#endif
    struct {int word1, word2;} str;
} __ieee_value_t;

typedef __ieee_value_t (* __ieee_handler_t) (__ieee_value_t, __ieee_value_t, __ieee_edata_t);

typedef struct {
    unsigned statusword;
    __ieee_handler_t invalid_handler;
    __ieee_handler_t divbyzero_handler;
    __ieee_handler_t overflow_handler;
    __ieee_handler_t underflow_handler;
    __ieee_handler_t inexact_handler;
} fenv_t, fexcept_t;

    #define FE_INVALID ((unsigned long)0x00000001)
    #define FE_DIVBYZERO ((unsigned long)0x00000002)
    #define FE_OVERFLOW ((unsigned long)0x00000004)
    #define FE_UNDERFLOW ((unsigned long)0x00000008)
    #define FE_INEXACT ((unsigned long)0x00000010)

    #define FE_TONEAREST ((unsigned long)0x00000000)
    #define FE_TOWARDZERO ((unsigned long)0x00C00000)
    #define FE_UPWARD ((unsigned long)0x00400000)
    #define FE_DOWNWARD ((unsigned long)0x00800000)
#endif

#ifdef __MIPS__
typedef long int fenv_t;
typedef long int fexcept_t;

    #define FE_INEXACT 0x00001000
    #define FE_UNDERFLOW 0x00002000
    #define FE_OVERFLOW 0x00004000
    #define FE_DIVBYZERO 0x00008000
    #define FE_INVALID 0x00010000
#endif

#define FE_ALL_EXCEPT (FE_INEXACT | FE_DIVBYZERO | FE_UNDERFLOW | FE_OVERFLOW | FE_INVALID)

_MSL_BEGIN_EXTERN_C

extern fenv_t _FE_DFL_ENV;
#define FE_DFL_ENV &_FE_DFL_ENV

_MSL_IMP_EXP_C void _MSL_MATH_CDECL feclearexcept(int) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void _MSL_MATH_CDECL fegetexceptflag(fexcept_t *, int) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void _MSL_MATH_CDECL fesetexceptflag(const fexcept_t *, int) _MSL_CANT_THROW;
#if (defined(__INTEL__) || defined(__arm))
    #define fegetexcept fegetexceptflag
    #define fesetexcept fesetexceptflag
#else
_MSL_IMP_EXP_C void _MSL_MATH_CDECL fegetexcept(fexcept_t *, int) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void _MSL_MATH_CDECL fesetexcept(const fexcept_t *, int) _MSL_CANT_THROW;
#endif
_MSL_IMP_EXP_C void _MSL_MATH_CDECL feraiseexcept(int) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_MATH_CDECL fetestexcept(int) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_MATH_CDECL fegetround(void) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_MATH_CDECL fesetround(int) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void _MSL_MATH_CDECL fegetenv(fenv_t *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_MATH_CDECL feholdexcept(fenv_t *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void _MSL_MATH_CDECL fesetenv(const fenv_t *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void _MSL_MATH_CDECL feupdateenv(const fenv_t *) _MSL_CANT_THROW;
#if (defined(__MC68K__) || defined(__INTEL__))
_MSL_IMP_EXP_C int _MSL_MATH_CDECL fegetprec(void) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_MATH_CDECL fesetprec(int) _MSL_CANT_THROW;
#endif

_MSL_END_EXTERN_C

#if defined(__INTEL__)
    #include <fenv_x87.h>
#elif defined(__arm)
    #include <fenv.ARM.h>
#endif

#endif
#endif
#endif
#endif
