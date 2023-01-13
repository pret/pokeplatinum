#ifndef _MSL_STDIO_H
#define _MSL_STDIO_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#include <cstdio>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
using std::FILE;
using std::fpos_t;
using std::size_t;
using std::clearerr;
using std::fclose;
using std::feof;
using std::ferror;
using std::fflush;
using std::fgetc;
using std::fgetpos;
using std::fgets;
#if _MSL_OS_DISK_FILE_SUPPORT
using std::fopen;
using std::fprintf;
#endif
using std::fputc;
using std::fputs;
using std::fread;
#if _MSL_OS_DISK_FILE_SUPPORT
using std::freopen;
#endif
using std::fscanf;
using std::fseek;
using std::fsetpos;
using std::ftell;
using std::fwrite;
using std::getc;
using std::getchar;
using std::gets;
#if _MSL_OS_DISK_FILE_SUPPORT
using std::perror;
#endif
using std::printf;
using std::putc;
using std::putchar;
using std::puts;
#if _MSL_OS_DISK_FILE_SUPPORT
using std::remove;
using std::rename;
#endif
using std::rewind;
using std::scanf;
using std::setbuf;
using std::setvbuf;
using std::sprintf;
using std::snprintf;
using std::sscanf;
#if _MSL_OS_DISK_FILE_SUPPORT
using std::tmpfile;
using std::tmpnam;
#endif
using std::ungetc;
using std::vfprintf;
using std::vprintf;
using std::vsprintf;
using std::vfscanf;
using std::vscanf;
using std::vsscanf;
using std::vsnprintf;
#if defined(__STDC_WANT_SECURE_LIB__) && __STDC_WANT_SECURE_LIB__
using std::errno_t;
using std::rsize_t;
using std::fscanf_s;
using std::scanf_s;
using std::sscanf_s;
using std::vfscanf_s;
using std::vsscanf_s;
using std::gets_s;
#if _MSL_OS_DISK_FILE_SUPPORT
using std::fopen_s;
using std::freopen_s;
using std::tmpfile_s;
using std::tmpnam_s;
#endif
#endif
#endif

#endif

#endif
