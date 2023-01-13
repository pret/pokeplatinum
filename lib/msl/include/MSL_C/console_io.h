#ifndef _MSL_CONSOLE_IO_H
#define _MSL_CONSOLE_IO_H

#include <ansi_params.h>
#include <cstdio>

_MSL_BEGIN_EXTERN_C

    #if _MSL_CONSOLE_SUPPORT
int _MSL_CDECL __read_console(__std(__file_handle) handle, unsigned char * buffer, __std(size_t) * count, __std(__ref_con) ref_con);
int _MSL_CDECL __write_console(__std(__file_handle) handle, unsigned char * buffer, __std(size_t) * count, __std(__ref_con) ref_con);
int _MSL_CDECL __close_console(__std(__file_handle) handle) _MSL_CANT_THROW;
    #endif

_MSL_END_EXTERN_C

#endif
