#ifndef _MSL_STDIO_POSIX_H
#define _MSL_STDIO_POSIX_H

#include <eof.h>
#include <file_struc.h>
#include <size_t.h>
#include <null.h>
#include <stdio_api.h>
#include <va_list.h>

_MSL_BEGIN_EXTERN_C

#if _MSL_OS_DISK_FILE_SUPPORT

_MSL_IMP_EXP_C int _MSL_CDECL fileno(__std(FILE) *) _MSL_CANT_THROW;

#endif

_MSL_END_EXTERN_C

#endif
