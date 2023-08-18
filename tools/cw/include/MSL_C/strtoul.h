#ifndef _MSL_STRTOUL_H
#define _MSL_STRTOUL_H

#include <ansi_params.h>
#include <cstdio>

_MSL_BEGIN_EXTERN_C

extern unsigned long _MSL_CDECL __strtoul(int base,
                                          int max_width,
                                          int(_MSL_CDECL * ReadProc)(void *, int, int),
                                          void * ReadProcArg,
                                          int * chars_scanned,
                                          int * negative,
                                          int * overflow) _MSL_CANT_THROW;

#if _MSL_LONGLONG
extern unsigned long long _MSL_CDECL __strtoull(int base, int max_width, int(_MSL_CDECL * ReadProc)(void *, int, int), void * ReadProcArg, int * chars_scanned, int * negative, int * overflow) _MSL_CANT_THROW;
#endif

_MSL_END_EXTERN_C

#endif
