#ifndef _MSL_EXTRAS_STDLIB_H
#define _MSL_EXTRAS_STDLIB_H

_MSL_BEGIN_EXTERN_C

_MSL_IMP_EXP_C int _MSL_CDECL rand_r(unsigned int *) _MSL_CANT_THROW;

_MSL_IMP_EXP_C char * _MSL_CDECL itoa(int, char *, int) _MSL_CANT_THROW;
_MSL_IMP_EXP_C char * _MSL_CDECL ultoa(unsigned long, char *, int) _MSL_CANT_THROW;

__inline char * _MSL_CDECL ltoa (long x, char * y, int z) _MSL_CANT_THROW {
    return (itoa(x, y, z));
}

    #if _MSL_FLOATING_POINT
_MSL_IMP_EXP_C char * _MSL_CDECL gcvt(double, int, char *) _MSL_CANT_THROW;
    #endif

_MSL_END_EXTERN_C

#endif /* _MSL_EXTRAS_STDLIB_H */