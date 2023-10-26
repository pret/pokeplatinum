#ifndef _MSL_EXTRAS_IO_H
#define _MSL_EXTRAS_IO_H

#include <ansi_params.h>
#include <size_t.h>

_MSL_BEGIN_EXTERN_C

	_MSL_IMP_EXP_C int _MSL_CDECL filelength(int) _MSL_CANT_THROW;
	
	#if _MSL_OS_DISK_FILE_SUPPORT
		_MSL_IMP_EXP_C int _MSL_CDECL chsize(int, long) _MSL_CANT_THROW;
		int _MSL_CDECL __msl_setfilesize(int, long) _MSL_CANT_THROW;
		__inline long _MSL_CDECL tell(int fildes) _MSL_CANT_THROW { return(lseek(fildes, 0L, SEEK_CUR)); }
	#endif

_MSL_END_EXTERN_C

#endif