#ifndef _MSL_FILE_IO_H
#define _MSL_FILE_IO_H

#include <ansi_params.h>
#include <cstdio>

_MSL_BEGIN_EXTERN_C

#if _MSL_OS_DISK_FILE_SUPPORT
extern _MSL_IMP_EXP_C __std(__file_modes) __temp_file_mode;

int _MSL_CDECL __open_file(const char * name, __std(__file_modes) mode, __std(__file_handle) * handle) _MSL_CANT_THROW;
int _MSL_CDECL __open_temp_file(__std(__file_handle) * handle) _MSL_CANT_THROW;

int __read_file(__std(__file_handle) handle, unsigned char * buffer, __std(size_t) * count, __std(__ref_con) ref_con) _MSL_CANT_THROW;
int __write_file(__std(__file_handle) handle, unsigned char * buffer, __std(size_t) * count, __std(__ref_con) ref_con) _MSL_CANT_THROW;
int __position_file(__std(__file_handle) handle, __std(fpos_t) * position, int mode, __std(__ref_con) ref_con) _MSL_CANT_THROW;
int __close_file(__std(__file_handle) handle) _MSL_CANT_THROW;

void _MSL_CDECL __temp_file_name(char * name_str, void *) _MSL_CANT_THROW;
int _MSL_CDECL __delete_file(const char * name) _MSL_CANT_THROW;
int _MSL_CDECL __rename_file(const char * old_name, const char * new_name) _MSL_CANT_THROW;

_MSL_IMP_EXP_C __std(FILE) * _MSL_CDECL __reopen(__std(FILE) * file) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL __get_file_modes(const char * mode, __std(__file_modes) * modes) _MSL_CANT_THROW;
#endif

#if _MSL_WFILEIO_AVAILABLE
int _MSL_CDECL __wopen_file(const wchar_t * name, __std(__file_modes) mode, __std(__file_handle) * handle) _MSL_CANT_THROW;
void _MSL_CDECL __wtemp_file_name(wchar_t * name_str, void *) _MSL_CANT_THROW;
int _MSL_CDECL __wdelete_file(const wchar_t * name) _MSL_CANT_THROW;
int _MSL_CDECL __wrename_file(const wchar_t * old_name, const wchar_t * new_name) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL __wget_file_modes(const wchar_t * mode, __std(__file_modes) * modes) _MSL_CANT_THROW;
#endif

char * _MSL_CDECL __msl_itoa(int, char *, int) _MSL_CANT_THROW;
char * _MSL_CDECL __msl_strrev(char *) _MSL_CANT_THROW;
int _MSL_CDECL __msl_strnicmp(const char *, const char *, int) _MSL_CANT_THROW;

#if _MSL_OS_DISK_FILE_SUPPORT
char * _MSL_CDECL __msl_getcwd(char *, int) _MSL_CANT_THROW;
#endif

char * _MSL_CDECL __msl_strdup(const char *) _MSL_CANT_THROW;

_MSL_END_EXTERN_C

#endif
