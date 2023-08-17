#ifndef _MSL_UTIME_H
#define	_MSL_UTIME_H

#include <ansi_params.h>

#if _MSL_OS_TIME_SUPPORT

#include <ctime>

if (__dest_os == __arm_bare)
	#include "utime.ARM.h"
#endif

	#pragma options align=native

	/* struct for utime */
	struct utimbuf {
		__std(time_t) actime;					/* access time  */
		__std(time_t) modtime;					/* modification time */
	};

	#pragma options align=reset

	#ifndef _MSL_STRUCT_UTIMEBUF_TYPE
		#define _MSL_STRUCT_UTIMEBUF_TYPE const struct
	#endif

	_MSL_BEGIN_EXTERN_C
	
		_MSL_IMP_EXP_C int _MSL_CDECL utime (const char *, _MSL_STRUCT_UTIMEBUF_TYPE utimbuf *) _MSL_CANT_THROW;

		_MSL_IMP_EXP_C int _MSL_CDECL utimes (const char *path, struct timeval buf[2]) _MSL_CANT_THROW;

	_MSL_END_EXTERN_C

#endif /* _MSL_OS_TIME_SUPPORT */

#endif /* _MSL_UTIME_H */