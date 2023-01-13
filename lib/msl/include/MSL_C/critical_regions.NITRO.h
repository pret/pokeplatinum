#ifndef _MSL_CRITICAL_REGIONS_PTHREADS_H
#define _MSL_CRITICAL_REGIONS_PTHREADS_H

#include <msl_thread_local_data.h>
#include <nitro/os/common/thread.h>
#include <nitro/os/common/mutex.h>

_MSL_BEGIN_EXTERN_C

_MSL_IMP_EXP_C extern OSMutex __cs[num_critical_regions];
extern int __cs_id[num_critical_regions];
extern int __cs_ref[num_critical_regions];

_MSL_INLINE void __init_critical_regions (void) _MSL_CANT_THROW {
    int i;

    for (i = 0; i < num_critical_regions; i++) {
        OS_InitMutex(&__cs[i]);
    }
}

_MSL_INLINE void __kill_critical_regions (void) _MSL_CANT_THROW {
}

_MSL_INLINE void __begin_critical_region (int region) _MSL_CANT_THROW {
    OSThread * currentThread;

    if (OS_TryLockMutex(&__cs[region]) == 0) {
        currentThread = OS_GetCurrentThread();
        __cs_id[region] = OS_GetThreadId(currentThread);
        __cs_ref[region] = 1;
    } else {
        currentThread = OS_GetCurrentThread();
        OS_GetThreadId(currentThread);
        if (OS_GetThreadId(currentThread) == __cs_id[region]) {
            __cs_ref[region]++;
        } else {
            OS_LockMutex(&__cs[region]);
            currentThread = OS_GetCurrentThread();
            __cs_id[region] = OS_GetThreadId(currentThread);
            __cs_ref[region] = 1;
        }
    }
}

_MSL_INLINE void __end_critical_region (int region) _MSL_CANT_THROW {
    if (--__cs_ref[region] == 0) {
        OS_UnlockMutex(&__cs[region]);
    }
}

_MSL_END_EXTERN_C

#endif
