#include <stdlib.h>
#include <string.h>
#include <stddef.h>
#include <buffer_io.h>
#include <critical_regions.h>

#ifndef _MSL_NEEDS_NEWLINE_CONVERT
    #define _MSL_NEEDS_NEWLINE_CONVERT 0
#endif

#if _MSL_NEEDS_NEWLINE_CONVERT

void __convert_from_newlines (unsigned char * buf, size_t * n)
{
    unsigned char * p = buf;
    size_t i = *n;
    while (i--) {
        if (*p == '\r') {
            *p = '\n';
        } else if (*p == '\n') {
            *p = '\r';
        }
        p++;
    }
}

void __convert_to_newlines (unsigned char * buf, size_t * n)
{
    unsigned char * p = buf;
    size_t i = *n;
    while (i--) {
        if (*p == '\n') {
            *p = '\r';
        } else if (*p == '\r') {
            *p = '\n';
        }
        p++;
    }
}

#else

void _MSL_CDECL __convert_from_newlines (unsigned char * p, size_t * n)
{
#pragma unused(p,n)
}

void _MSL_CDECL __convert_to_newlines (unsigned char * p, size_t * n)
{
#pragma unused(p,n)
}

#endif

void _MSL_CDECL __prep_buffer (FILE * file)
{
    file->buffer_ptr = file->buffer;
    file->buffer_len = file->buffer_size;
    file->buffer_len -= file->position & file->buffer_alignment;
    file->buffer_pos = file->position;
}

int _MSL_CDECL __load_buffer (FILE * file, size_t * bytes_loaded, int alignment)
{
    int ioresult;

    __prep_buffer(file);

    if (alignment == __dont_align_buffer) {
        file->buffer_len = file->buffer_size;
    }

    ioresult = (*file->read_proc)(file->handle, file->buffer, (size_t *)&file->buffer_len, file->ref_con);

    if (ioresult == __io_EOF) {
        file->buffer_len = 0;
    }

    if (bytes_loaded) {
        *bytes_loaded = file->buffer_len;
    }

    if (ioresult) {
        return (ioresult);
    }

    file->position += file->buffer_len;
#if (__dest_os == __win32_os || __dest_os == __wince_os || __dest_os == __dolphin_os)
    if (!file->mode.binary_io) {
        ptrdiff_t n = file->buffer_len;
        unsigned char * p = file->buffer;

        while (n--) {
            if (*p++ == '\n') {
                file->position++;
            }
        }
    }
#endif

    if (!file->mode.binary_io) {
        __convert_to_newlines(file->buffer, (size_t *)&file->buffer_len);
    }

    return (__no_io_error);
}

int _MSL_CDECL __flush_buffer (FILE * file, size_t * bytes_flushed)
{
    size_t buffer_len;
    int ioresult;

    buffer_len = file->buffer_ptr - file->buffer;

    if (buffer_len) {
        file->buffer_len = buffer_len;

        if (!file->mode.binary_io) {
            __convert_from_newlines(file->buffer, (size_t *)&file->buffer_len);
        }

        ioresult = (*file->write_proc)(file->handle, file->buffer, (size_t *)&file->buffer_len, file->ref_con);

        if (bytes_flushed) {
            *bytes_flushed = file->buffer_len;
        }

        if (ioresult) {
            return (ioresult);
        }

        file->position += file->buffer_len;
    }

    __prep_buffer(file);

    return (__no_io_error);
}

int _MSL_CDECL setvbuf (FILE * _MSL_RESTRICT file, char * _MSL_RESTRICT buff, int mode, size_t size)
{
    int kind = file->mode.file_kind;
    int crtrgn;

    if (mode == _IONBF) {
        fflush(file);
    }
    if (file->state.io_state != __neutral || kind == __closed_file) {
        return (-1);
    }

    if (mode != _IONBF && mode != _IOLBF && mode != _IOFBF) {
        return (-1);
    }

    if (file->buffer && file->state.free_buffer)
#if _MSL_OS_DISK_FILE_SUPPORT
    {free(file->buffer);}
#else
    {return (-1);}
#endif
    if (file == stdin) {
        crtrgn = stdin_access;
    } else if (file == stdout) {
        crtrgn = stdout_access;
    } else if (file == stderr) {
        crtrgn = stderr_access;
    } else {
        crtrgn = files_access;
    }
    __begin_critical_region(crtrgn);

    file->mode.buffer_mode = mode;
    file->state.free_buffer = 0;
    file->buffer = &file->char_buffer;
    file->buffer_ptr = &file->char_buffer;
    file->buffer_size = 1;
    file->buffer_len = 0;
    file->buffer_alignment = 0;

    if (mode == _IONBF || size < 1) {
        *(file->buffer_ptr) = '\0';
        __end_critical_region(crtrgn);
        return (0);
    }

    if (!buff) {
#if _MSL_OS_DISK_FILE_SUPPORT
        if (!(buff = (char *)malloc(size))) {
            __end_critical_region(crtrgn);
            return (-1);
        }

        file->state.free_buffer = 1;
#else
        __end_critical_region(crtrgn);
        return (-1);
#endif
    }

    file->buffer = (unsigned char *)buff;
    file->buffer_ptr = file->buffer;
    file->buffer_size = size;

#if (__dest_os == __mac_os) || (__dest_os == __mac_os_x)
#define alignment_mask (512L - 1L)

    file->buffer_alignment = 0;

    if (file->mode.file_kind == __disk_file && !(size & alignment_mask)) {
        file->buffer_alignment = alignment_mask;
    }
#else
    file->buffer_alignment = 0;
#endif
    __end_critical_region(crtrgn);

    return (0);
}

void _MSL_CDECL setbuf (FILE * _MSL_RESTRICT file, char * _MSL_RESTRICT buff)
{
    if (buff) {
        setvbuf(file, buff, _IOFBF, BUFSIZ);
    } else {
        setvbuf(file, 0, _IONBF, 0);
    }
}
