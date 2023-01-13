#ifndef	_MSL_UNISTD_H
#define	_MSL_UNISTD_H

#include <ansi_params.h>
#include <size_t.h>

	/* macros for whence parameter of lseek() (taken from <stdio.h> */
	#define SEEK_SET	0
	#define SEEK_CUR	1
	#define SEEK_END	2

_MSL_BEGIN_EXTERN_C

	/* The following are symbolic constants for access() */		/*- mm 991216 -*/
	/* See Posix 2.9.1 */ 										/*- mm 991216 -*/
	#define F_OK	0		/* Test for existence of file */	/*- mm 991216 -*/
	#define W_OK	2		/* Test for write permission  */	/*- mm 991216 -*/
	#define R_OK	4		/* Test for read permission   */	/*- mm 991216 -*/
	#define X_OK	1		/* Test for execute permission*/	/*- mm 010626 -*/
	
	#if __dest_os != __win32_os	
		__inline  int _MSL_CDECL  getpid(void)  _MSL_CANT_THROW {return 9000;}					
	#endif
	
	__inline int _MSL_CDECL		  getppid(void)  _MSL_CANT_THROW	{return 8000 ;}	
	__inline int _MSL_CDECL    	  getuid(void) 	 _MSL_CANT_THROW	{return 200	 ;}	
	__inline int _MSL_CDECL	      geteuid(void)  _MSL_CANT_THROW	{return 200	 ;}
	__inline int _MSL_CDECL		  getgid(void) 	 _MSL_CANT_THROW	{return 100  ;}
	__inline int _MSL_CDECL	      getegid(void)  _MSL_CANT_THROW	{return 100  ;}
	__inline int _MSL_CDECL		  getpgrp(void)  _MSL_CANT_THROW	{return 9000 ;}

_MSL_END_EXTERN_C

#endif /* _MSL_UNISTD_H */