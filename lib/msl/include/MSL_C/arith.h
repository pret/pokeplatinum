#ifndef _MSL_ARITH_H
#define _MSL_ARITH_H

#include <ansi_params.h>
#include <div_t.h>

_MSL_BEGIN_EXTERN_C

int _MSL_CDECL __msl_add(int * x, int y) _MSL_CANT_THROW;
int _MSL_CDECL __msl_ladd(long * x, long y) _MSL_CANT_THROW;

int _MSL_CDECL __msl_mul(int * x, int y) _MSL_CANT_THROW;
int _MSL_CDECL __msl_lmul(long * x, long y) _MSL_CANT_THROW;

__std(ldiv_t) _MSL_CDECL __msl_ldiv(long x, long y) _MSL_CANT_THROW;
__std(div_t)  _MSL_CDECL __msl_div(int x, int y) _MSL_CANT_THROW;

    #if _MSL_LONGLONG

int _MSL_CDECL __lladd(long long * x, long long y) _MSL_CANT_THROW;
int _MSL_CDECL __llmul(long long * x, long long y) _MSL_CANT_THROW;
    #if _MSL_C99
__std(lldiv_t) _MSL_CDECL __lldiv(long long x, long long y) _MSL_CANT_THROW;
    #endif

    #endif

    #ifndef __MOTO__

int _MSL_CDECL __msl_mod(int x, int y) _MSL_CANT_THROW;
long _MSL_CDECL __msl_lmod(long x, long y) _MSL_CANT_THROW;

        #if _MSL_LONGLONG
long long _MSL_CDECL __llmod(long long x, long long y) _MSL_CANT_THROW;
        #endif

    #endif

_MSL_END_EXTERN_C

#endif
