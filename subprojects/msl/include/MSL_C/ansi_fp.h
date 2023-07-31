#ifndef _MSL_ANSI_FP_H
#define _MSL_ANSI_FP_H

#include <ansi_params.h>
#include <cmath>

#pragma options align=native

_MSL_BEGIN_EXTERN_C

    #ifndef _MSL_SIGDIGLEN
        #define _MSL_SIGDIGLEN 32
    #endif

    #define SIGDIGLEN _MSL_SIGDIGLEN

    #define FLOATDECIMAL ((char)(0))
    #define FIXEDDECIMAL ((char)(1))

typedef struct decimal {
    char sgn;
    char unused;
    short exp;
    struct {
        unsigned char length;
        unsigned char text[SIGDIGLEN];
        unsigned char unused;
    } sig;
} decimal;

typedef struct decform {
    char style;
    char unused;
    short digits;
} decform;

    #if _MSL_FLOATING_POINT

_MSL_IMP_EXP_C void _MSL_CDECL __num2dec(const decform * f, double x, decimal * d) _MSL_CANT_THROW;
_MSL_IMP_EXP_C double _MSL_CDECL __dec2num(const decimal * d) _MSL_CANT_THROW;

    #endif

_MSL_END_EXTERN_C

#pragma options align=reset

#endif
