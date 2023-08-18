#ifndef _MSL_BUFFER_IO_H
#define _MSL_BUFFER_IO_H

#include <ansi_params.h>
#include <cstdio>

_MSL_BEGIN_EXTERN_C

enum {
    __align_buffer,
    __dont_align_buffer
};

void _MSL_CDECL __convert_from_newlines(unsigned char * p, __std(size_t) * n) _MSL_CANT_THROW;
void _MSL_CDECL __convert_to_newlines(unsigned char * p, __std(size_t) * n) _MSL_CANT_THROW;
void _MSL_CDECL __prep_buffer(__std(FILE) *) _MSL_CANT_THROW;
int _MSL_CDECL __load_buffer(__std(FILE) *, __std(size_t) * bytes_loaded, int alignment) _MSL_CANT_THROW;
int _MSL_CDECL __flush_buffer(__std(FILE) *, __std(size_t) * bytes_flushed) _MSL_CANT_THROW;

_MSL_END_EXTERN_C

#endif
