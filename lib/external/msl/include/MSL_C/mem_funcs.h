#ifndef _MSL_MEM_FUNCS
#define _MSL_MEM_FUNCS

#include <ansi_params.h>

#ifndef _MSL_LONG_COPY_MIN
    #define _MSL_LONG_COPY_MIN 32
#endif

#define __min_bytes_for_long_copy _MSL_LONG_COPY_MIN

_MSL_BEGIN_EXTERN_C

void _MSL_CDECL __copy_mem(void * dst, const void * src, unsigned long n) _MSL_CANT_THROW;
void _MSL_CDECL __move_mem(void * dst, const void * src, unsigned long n) _MSL_CANT_THROW;
void _MSL_CDECL __copy_longs_aligned(void * dst, const void * src, unsigned long n) _MSL_CANT_THROW;
void _MSL_CDECL __copy_longs_rev_aligned(void * dst, const void * src, unsigned long n) _MSL_CANT_THROW;
void _MSL_CDECL __copy_longs_unaligned(void * dst, const void * src, unsigned long n) _MSL_CANT_THROW;
void _MSL_CDECL __copy_longs_rev_unaligned(void * dst, const void * src, unsigned long n) _MSL_CANT_THROW;
void _MSL_CDECL __fill_mem(void * dst, int val, unsigned long n) _MSL_CANT_THROW;

_MSL_END_EXTERN_C

#endif
