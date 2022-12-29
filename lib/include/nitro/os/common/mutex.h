#ifndef NITRO_OS_MUTEX_H_
#define NITRO_OS_MUTEX_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/os/common/thread.h>

#ifndef SDK_THREAD_INFINITY
typedef struct OSMutex OSMutex;
#endif

#pragma warn_padding off
struct OSMutex {
    OSThreadQueue queue;
    OSThread * thread;
    s32 count;

#ifndef SDK_THREAD_INFINITY
    OSMutex * prev;
    OSMutex * next;
#else
    OSMutexLink link;
#endif
};
#pragma warn_padding reset

void OS_InitMutex(OSMutex * mutex);

void OS_LockMutex(OSMutex * mutex);

void OS_UnlockMutex(OSMutex * mutex);

BOOL OS_TryLockMutex(OSMutex * mutex);

void OSi_UnlockAllMutex(OSThread * thread);

#ifdef __cplusplus
}
#endif

#endif
