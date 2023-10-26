#ifndef _MSL_EXTRAS_TIME_H
#define _MSL_EXTRAS_TIME_H

_MSL_BEGIN_EXTERN_C

#if _MSL_OS_TIME_SUPPORT

_MSL_IMP_EXP_C char * _MSL_CDECL				asctime_r(const struct __std(tm) *, char *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C char * _MSL_CDECL				ctime_r(const __std(time_t) *, char *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C struct __std(tm) * _MSL_CDECL	localtime_r(const __std(time_t) *, struct __std(tm) *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C char * _MSL_CDECL				strdate(char *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C struct __std(tm) * _MSL_CDECL	gmtime_r(const __std(time_t) *, struct __std(tm) *) _MSL_CANT_THROW;

#endif /* _MSL_OS_TIME_SUPPORT */

_MSL_END_EXTERN_C

#endif /* _MSL_EXTRAS_TIME_H */