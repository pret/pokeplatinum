#ifndef _MSL_THREAD_LOCAL_DATA_H
#define _MSL_THREAD_LOCAL_DATA_H

#include <ansi_params.h>

#if _MSL_THREADSAFE && _MSL_LOCALDATA_AVAILABLE
    #if _MSL_PTHREADS
        #include <thread_local_data_pthreads.h>
    #endif
#endif

#endif
