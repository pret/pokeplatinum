#ifndef _MSL_ANSI_FILES_H
#define _MSL_ANSI_FILES_H

#include <ansi_params.h>
#include <cstdio>

#define set_eof(file)                       \
    do                                      \
    {                                       \
        (file)->state.io_state = __neutral; \
        (file)->state.eof = 1;              \
        (file)->buffer_len = 0;             \
    }                                       \
    while (0)

#define set_error(file)             \
    do                              \
    {                               \
        (file)->state.error = 1;    \
        (file)->buffer_len = 0;     \
    }                               \
    while (0)

#if _MSL_BUFFERED_CONSOLE

    #define console_buff_mode _IOLBF

    #define console_buff_size 256

typedef unsigned char console_buff[console_buff_size];

static console_buff stdin_buff;
static console_buff stdout_buff;
static console_buff stderr_buff;

#else

    #define console_buff_mode _IONBF

    #define console_buff_size 1

    #define stdin_buff &__files[0].char_buffer
    #define stdout_buff &__files[1].char_buffer
    #define stderr_buff &__files[2].char_buffer

#endif

_MSL_BEGIN_EXTERN_C

#if _MSL_OS_DISK_FILE_SUPPORT
    __std(FILE) * _MSL_CDECL __find_unopened_file(void) _MSL_CANT_THROW;
#endif

void _MSL_CDECL __init_file(__std(FILE) *, __std(__file_modes) mode, char * buff, __std(size_t)) _MSL_CANT_THROW;
void _MSL_CDECL __close_all(void) _MSL_CANT_THROW;
int _MSL_CDECL __flush_all(void) _MSL_CANT_THROW;
int _MSL_CDECL __flush_line_buffered_output_files(void) _MSL_CANT_THROW;

_MSL_END_EXTERN_C

#endif
