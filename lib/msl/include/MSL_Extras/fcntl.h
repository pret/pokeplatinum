#ifndef _MSL_FCNTL_H
#define _MSL_FCNTL_H

#include <ansi_params.h>
#include <sys/stat.h>

#define O_TEXT 0x0                  /* 960827: Added this for Visual C++ compatibility. */
#define O_RDWR 0x1                  /* open the file in read/write mode */	/*- mm 980420 -*/
#define O_RDONLY 0x2                /* open the file in read only mode */	/*- mm 980420 -*/
#define O_WRONLY 0x4                /* open the file in write only mode */	/*- mm 980420 -*/
#define O_APPEND 0x0100             /* open the file in append mode */
#define O_CREAT 0x0200              /* create the file if it doesn't exist */
#define O_EXCL 0x0400               /* if the file already exists don't create it again */
#define O_TRUNC 0x0800              /* truncate the file after opening it */
#define O_NRESOLVE 0x1000           /* Don't resolve any aliases */
#define O_ALIAS 0x2000              /* Open alias file (if the file is an alias) */
#define O_RSRC 0x4000               /* Open the resource fork */
#define O_BINARY 0x8000             /* open the file in binary mode (default is text mode) */
#define F_DUPFD 0x0                 /* return a duplicate file descriptor */

_MSL_BEGIN_EXTERN_C

    #if _MSL_OS_DISK_FILE_SUPPORT
_MSL_IMP_EXP_C int _MSL_CDECL open(const char *, int, ...) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL creat(const char *, mode_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL fcntl(int, int, ...) _MSL_CANT_THROW;
    #endif

#if _MSL_WFILEIO_AVAILABLE
    #include <wchar_t.h>
_MSL_IMP_EXP_C int _MSL_CDECL _wopen(const wchar_t *, int, ...) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL _wcreat(const wchar_t *, mode_t) _MSL_CANT_THROW;
#endif

_MSL_END_EXTERN_C

#endif /* _MSL_FCNTL_H */