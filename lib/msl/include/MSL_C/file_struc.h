#ifndef _MSL_FILE_STRUC_H
#define _MSL_FILE_STRUC_H

#include <size_t.h>

#if _MSL_WIDE_CHAR
    #include <wchar_t.h>
#endif

#ifndef RC_INVOKED

#pragma options align=native
#pragma warn_padding off

_MSL_BEGIN_NAMESPACE_STD
    _MSL_BEGIN_EXTERN_C

enum __file_kinds {
    __closed_file,
    __disk_file,
    __console_file,
    __unavailable_file
};

enum __open_modes {
    __must_exist,
    __create_if_necessary,
    __create_or_truncate
};

#if _MSL_WIDE_CHAR
enum __file_orientation {
    __unoriented,
    __char_oriented,
    __wide_oriented
};
#endif

enum __io_modes {
    __read              = 1,
    __write             = 2,
    __read_write        = 3,
    __append            = 4
};

typedef struct {
    unsigned int open_mode   : 2;
    unsigned int io_mode     : 3;
    unsigned int buffer_mode : 2;
    unsigned int file_kind   : 3;

    #if _MSL_WIDE_CHAR
    unsigned int file_orientation : 2;
    #endif

    unsigned int binary_io   : 1;
} __file_modes;

enum __io_states {
    __neutral,
    __writing,
    __reading,
    __rereading
};

typedef struct {
    unsigned int io_state    : 3;
    unsigned int free_buffer : 1;
    unsigned char eof;
    unsigned char error;
} __file_state;

typedef unsigned long __file_handle;

typedef unsigned long fpos_t;

typedef struct _FILE FILE;

enum __io_results {
    __no_io_error,
    __io_error,
    __io_EOF
};

typedef void * __ref_con;
typedef void (* __idle_proc)  (void);
typedef int (* __pos_proc)   (__file_handle file, fpos_t * position, int mode, __ref_con ref_con);
typedef int (* __io_proc)    (__file_handle file, unsigned char * buff, size_t * count, __ref_con ref_con);
typedef int (* __close_proc) (__file_handle file);

#define __ungetc_buffer_size 2

struct _FILE {
    __file_handle handle;
    __file_modes mode;
    __file_state state;

    #if _MSL_OS_DISK_FILE_SUPPORT
    unsigned char is_dynamically_allocated;
    #endif

    unsigned char char_buffer;
    unsigned char char_buffer_overflow;
    unsigned char ungetc_buffer[__ungetc_buffer_size];

    #if _MSL_WIDE_CHAR
    wchar_t ungetwc_buffer[__ungetc_buffer_size];
    #endif

    unsigned long position;
    unsigned char * buffer;
    unsigned long buffer_size;
    unsigned char * buffer_ptr;
    unsigned long buffer_len;
    unsigned long buffer_alignment;
    unsigned long saved_buffer_len;
    unsigned long buffer_pos;
    __pos_proc position_proc;
    __io_proc read_proc;
    __io_proc write_proc;
    __close_proc close_proc;
    __ref_con ref_con;

    #if _MSL_OS_DISK_FILE_SUPPORT
    struct _FILE * next_file_struct;
    #endif
};

#define _IONBF 0
#define _IOLBF 1
#define _IOFBF 2

#ifndef _MSL_BUFSIZ
    #define _MSL_BUFSIZ 4096
#endif

#define BUFSIZ _MSL_BUFSIZ

#if !_MSL_OS_DISK_FILE_SUPPORT
    #if !_MSL_CONSOLE_SUPPORT
        #define FOPEN_MAX 0
    #else
        #define FOPEN_MAX 3
    #endif
    #define _STATIC_FILES 3
#else
    #define FOPEN_MAX 35
    #define _STATIC_FILES 4
#endif

#define _MSL_FILENAME_MAX 256

#define FILENAME_MAX _MSL_FILENAME_MAX

#define L_tmpnam _MSL_FILENAME_MAX
#define TMP_MAX 32767

#if defined(__STDC_WANT_SECURE_LIB__) && __STDC_WANT_SECURE_LIB__
    #define L_tmpnam_s _MSL_FILENAME_MAX
    #define TMP_MAX_S 32767
#endif

#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2

#define stdin (&__std(__files[0]))
#define stdout (&__std(__files[1]))
#define stderr (&__std(__files[2]))

extern _MSL_IMP_EXP_C FILE __files[];

_MSL_END_EXTERN_C
    _MSL_END_NAMESPACE_STD

#pragma warn_padding reset
#pragma options align=reset

#endif

#endif
