#ifndef _MSL_CPP_STD_STDIO_H
#define _MSL_CPP_STD_STDIO_H

#ifdef __cplusplus

namespace std {
using ::FILE;
using ::fpos_t;
using ::size_t;
using ::clearerr;
using ::fclose;
using ::feof;
using ::ferror;
using ::fflush;
using ::fgetc;
using ::fgetpos;
using ::fgets;
#if _MSL_OS_DISK_FILE_SUPPORT
using ::fopen;
using ::fprintf;
#endif
using ::fputc;
using ::fputs;
using ::fread;
#if _MSL_OS_DISK_FILE_SUPPORT
using ::freopen;
#endif
using ::fscanf;
using ::fseek;
using ::fsetpos;
using ::ftell;
using ::fwrite;
using ::getc;
using ::getchar;
using ::gets;
#if _MSL_OS_DISK_FILE_SUPPORT
using ::perror;
#endif
using ::printf;
using ::putc;
using ::putchar;
using ::puts;
#if _MSL_OS_DISK_FILE_SUPPORT
using ::remove;
using ::rename;
#endif
using ::rewind;
using ::scanf;
using ::setbuf;
using ::setvbuf;
using ::sprintf;
using ::snprintf;
using ::sscanf;
#if _MSL_OS_DISK_FILE_SUPPORT
using ::tmpfile;
using ::tmpnam;
#endif
using ::ungetc;
using ::vfprintf;
using ::vprintf;
using ::vsprintf;
using ::vfscanf;
using ::vscanf;
using ::vsscanf;
using ::vsnprintf;
#if defined(__STDC_WANT_SECURE_LIB__) && __STDC_WANT_SECURE_LIB__
using ::errno_t;
using ::rsize_t;
using ::fscanf_s;
using ::scanf_s;
using ::sscanf_s;
using ::vfscanf_s;
using ::vsscanf_s;
using ::gets_s;
#if _MSL_OS_DISK_FILE_SUPPORT
using ::fopen_s;
using ::freopen_s;
using ::tmpfile_s;
using ::tmpnam_s;
#endif
#endif
}

#endif

#endif
