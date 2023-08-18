#ifndef _MSL_EXTRAS_STRING_H
#define _MSL_EXTRAS_STRING_H

_MSL_BEGIN_EXTERN_C

	_MSL_IMP_EXP_C	int _MSL_CDECL stricmp(const char *, const char *) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C	int _MSL_CDECL strnicmp(const char *, const char *, __std(size_t)) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C	int _MSL_CDECL strcmpi(const char *, const char *) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C	int _MSL_CDECL strncmpi(const char *, const char *, __std(size_t)) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C 	int	_MSL_CDECL strcasecmp (const char *, const char *) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C 	int	_MSL_CDECL strncasecmp(const char *, const char *, __std(size_t)) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C	char * _MSL_CDECL strset(char *, int ) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C	char * _MSL_CDECL strnset(char *, int , __std(size_t)) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C	char * _MSL_CDECL strrev(char *) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C	char * _MSL_CDECL strupr(char *) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C	char * _MSL_CDECL strspnp(char *, const char *) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C  char * _MSL_CDECL strlwr (char *) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C  char * _MSL_CDECL strdup(const char *str) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C	int _MSL_CDECL stricoll(const char *, const char *) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C	int _MSL_CDECL strncoll(const char *, const char *, __std(size_t)) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C	int _MSL_CDECL strnicoll(const char *, const char *, __std(size_t)) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C	int _MSL_CDECL strerror_r(int, char *, __std(size_t)) _MSL_CANT_THROW;
	_MSL_IMP_EXP_C char * _MSL_CDECL strtok_r(char * _MSL_RESTRICT, const char * _MSL_RESTRICT, char ** _MSL_RESTRICT) _MSL_CANT_THROW;

_MSL_END_EXTERN_C

#endif /* _MSL_EXTRAS_STRING_H */