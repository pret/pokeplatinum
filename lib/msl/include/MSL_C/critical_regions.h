#ifndef _MSL_CRITICAL_REGIONS_H
#define _MSL_CRITICAL_REGIONS_H

#include <ansi_params.h>

_MSL_BEGIN_EXTERN_C

	enum critical_regions 
	{
		atexit_funcs_access		=0,
		malloc_pool_access		=1,
		stdin_access			=2,	
		stdout_access			=3,	
		stderr_access			=4,	
		files_access			=5,	
		console_status_access	=6,	
		signal_funcs_access		=7,	
		thread_access			=8,	
		num_critical_regions	=9	
	};

	#if _MSL_THREADSAFE

		_MSL_INLINE void _MSL_CDECL __init_critical_regions(void) _MSL_CANT_THROW;
		_MSL_INLINE void _MSL_CDECL __kill_critical_regions(void) _MSL_CANT_THROW;		
		_MSL_INLINE void _MSL_CDECL __begin_critical_region(int region) _MSL_CANT_THROW;
		_MSL_INLINE void _MSL_CDECL __end_critical_region(int region) _MSL_CANT_THROW;
	
		#if __dest_os == __arm_bare
			#include <critical_regions.NITRO.h>		
		#elif _MSL_PTHREADS
			#include <critical_regions.pthreads.h>
		#endif 

	#else
	
	    #define __init_critical_regions()
	    #define __kill_critical_regions()
		#define __begin_critical_region(x)
		#define __end_critical_region(x)
	
	#endif 

_MSL_END_EXTERN_C

#endif 




















