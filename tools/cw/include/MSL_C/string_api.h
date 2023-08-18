#ifndef _MSL_STRING_API_H
#define _MSL_STRING_API_H

#define __max_errstr 40

_MSL_BEGIN_NAMESPACE_STD
_MSL_BEGIN_EXTERN_C

char * _MSL_CDECL __strerror(int, char *) _MSL_CANT_THROW;
void * _MSL_CDECL __memrchr(const void *, int, size_t) _MSL_CANT_THROW;

_MSL_END_EXTERN_C
    _MSL_END_NAMESPACE_STD

#endif
