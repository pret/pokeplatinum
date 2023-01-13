#ifndef _MSL_STRTOLD_H
#define _MSL_STRTOLD_H

#include <ansi_params.h>
#include <cstdio>

_MSL_BEGIN_EXTERN_C

extern long double _MSL_CDECL __strtold(int max_width,
                                        int(_MSL_CDECL * ReadProc)(void *, int, int),
                                        void * ReadProcArg,
                                        int * chars_scanned,
                                        int * overflow) _MSL_CANT_THROW;

_MSL_END_EXTERN_C

#endif
