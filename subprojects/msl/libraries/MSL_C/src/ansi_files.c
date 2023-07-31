#include <ansi_params.h>
#include <ansi_files.h>
#include <console_io.h>
#include <critical_regions.h>
#include <file_io.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#if !_MSL_CONSOLE_SUPPORT && !_MSL_NULL_CONSOLE_ROUTINES
    #error Turning off _MSL_CONSOLE_SUPPORT requires _MSL_NULL_CONSOLE_ROUTINES!
#endif

#if _MSL_FILE_CONSOLE_ROUTINES && !_MSL_FILE_CONSOLE_ROUTINES
    #error Turning on _MSL_FILE_CONSOLE_ROUTINES requires _MSL_FILE_CONSOLE_ROUTINES!
#endif

#if _MSL_FILE_CONSOLE_ROUTINES && _MSL_NULL_CONSOLE_ROUTINES
    #error _MSL_FILE_CONSOLE_ROUTINES and _MSL_NULL_CONSOLE_ROUTINES cannot both be on at the same time!
#endif

FILE __files[_STATIC_FILES] =
{
    {
        0,
        {
            __must_exist,
            __read,
            console_buff_mode,
            __console_file,
            __unoriented,
            0
        },
        {
            __neutral,
            0,
            0,
            0
        },
        0,
        0,
        {0, 0},
        {0, 0},
        0,
        stdin_buff,
        console_buff_size,
        stdin_buff,
        0,
        0,
        0,
        0,
        0,
        __read_console,
        __write_console,
        __close_console,
        0,
    },

    {
        1,
        {
            __must_exist,
            __write,
            console_buff_mode,
            __console_file,
            __unoriented,
            0
        },
        {
            __neutral,
            0,
            0,
            0
        },
        0,
        0,
        {0, 0},
        {0, 0},
        0,
        stdout_buff,
        console_buff_size,
        stdout_buff,
        0,
        0,
        0,
        0,
        0,
        __read_console,
        __write_console,
        __close_console,
        0,
    },

    {
        2,
        {
            __must_exist,
            __write,
            _IONBF,
            __console_file,
            __unoriented,
            0
        },
        {
            __neutral,
            0,
            0,
            0
        },
        0,
        0,
        {0, 0},
        {0, 0},
        0,
        stderr_buff,
        console_buff_size,
        stderr_buff,
        0,
        0,
        0,
        0,
        0,
        __read_console,
        __write_console,
        __close_console,
        0,
    }
};

int _MSL_CDECL __flush_line_buffered_output_files (void)
{
    int result = 0;
    FILE * p = &__files[0];

    #if !_MSL_OS_DISK_FILE_SUPPORT
    int file_index = 1;
    #endif

    while (p != NULL) {
        if (p->mode.file_kind != __closed_file &&
            (p->mode.buffer_mode & _IOLBF) &&
            p->state.io_state == __writing) {
            if (fflush(p)) {
                result = EOF;
            }
        }

        #if _MSL_OS_DISK_FILE_SUPPORT
        p = p->next_file_struct;
        #else
        if (file_index < _STATIC_FILES) {
            p = &__files[file_index++];
        } else {
            p = NULL;
        }
        #endif
    }

    return (result);
}

int _MSL_CDECL __flush_all (void)
{
    int result = 0;
    FILE * p = &__files[0];

    #if !_MSL_OS_DISK_FILE_SUPPORT
    int file_index = 1;
    #endif

    while (p != NULL) {
        if (p->mode.file_kind != __closed_file) {
            if (fflush(p)) {
                result = EOF;
            }
        }

        #if _MSL_OS_DISK_FILE_SUPPORT
        p = p->next_file_struct;
        #else
        if (file_index < _STATIC_FILES) {
            p = &__files[file_index++];
        } else {
            p = NULL;
        }
        #endif
    }

    return (result);
}
