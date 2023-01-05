#ifndef NITRO_OS_THREAD_H_
#define NITRO_OS_THREAD_H_

#include <nitro/misc.h>
#include <nitro/os/common/context.h>
#include <nitro/os/common/callTrace.h>
#include <nitro/version.h>

#ifdef __cplusplus
extern "C" {
#endif

#if SDK_VERSION_MAJOR >= 3
#define SDK_THREAD_INFINITY 1
#endif

#ifdef SDK_FINALROM

#define OS_NO_CALLTRACE
#endif

#ifndef SDK_THREAD_INFINITY

#define OS_THREAD_MAX_NUM 16
#endif

#define OS_THREAD_LAUNCHER_PRIORITY 16

#define OS_THREAD_PRIORITY_MIN 0
#define OS_THREAD_PRIORITY_MAX 31

typedef struct _OSThread OSThread;

#ifdef SDK_THREAD_INFINITY
typedef struct _OSThreadQueue OSThreadQueue;
typedef struct _OSThreadLink OSThreadLink;
typedef struct _OSMutexQueue OSMutexQueue;
typedef struct _OSMutexLink OSMutexLink;
typedef struct OSMutex OSMutex;
#endif

typedef struct OSiAlarm OSAlarm;

#ifdef SDK_THREAD_INFINITY
struct _OSThreadQueue {
    OSThread * head;
    OSThread * tail;
};

struct _OSThreadLink {
    OSThread * prev;
    OSThread * next;
};

struct _OSMutexQueue {
    OSMutex * head;
    OSMutex * tail;
};

struct _OSMutexLink {
    OSMutex * next;
    OSMutex * prev;
};

#endif

typedef enum {
    OS_THREAD_STATE_WAITING = 0,
    OS_THREAD_STATE_READY = 1,
    OS_THREAD_STATE_TERMINATED = 2
} OSThreadState;

#ifndef SDK_THREAD_INFINITY

#if (OS_THREAD_MAX_NUM <= 16)
typedef u16 OSThreadQueue;
#define OS_SIZEOF_OSTHREADQUEUE 16
#elif (OS_THREAD_MAX_NUM <= 32)
typedef u32 OSThreadQueue;
#define OS_SIZEOF_OSTHREADQUEUE 32
#else
 Error: no bit field any more
#endif
#endif
#define OS_THREAD_SPECIFIC_MAX 3
typedef void (* OSThreadDestructor) (void *);

struct _OSThread {
    OSContext context;
    OSThreadState state;
    OSThread * next;
    u32 id;
    u32 priority;

    void * profiler;

#ifdef SDK_THREAD_INFINITY
    OSThreadQueue * queue;
    OSThreadLink link;
#endif

#ifndef SDK_THREAD_INFINITY
    void * mutex;
    void * mutexQueueHead;
    void * mutexQueueTail;
#else
    OSMutex * mutex;
    OSMutexQueue mutexQueue;
#endif

    u32 stackTop;
    u32 stackBottom;
    u32 stackWarningOffset;

#ifndef SDK_THREAD_INFINITY
    OSThreadQueue joinQueue;
#if OS_SIZEOF_OSTHREADQUEUE == 16
    u16 padding;
#endif
#else
    OSThreadQueue joinQueue;

    void * specific[OS_THREAD_SPECIFIC_MAX];
    OSAlarm * alarmForSleep;
    OSThreadDestructor destructor;
    void * userParameter;

    int systemErrno;
#endif
};

typedef struct OSThreadInfo {
    u16 isNeedRescheduling;
#ifndef SDK_THREAD_INFINITY
    u16 max_entry;
    u16 irqDepth;
    u16 padding;
#else
    u16 irqDepth;
#endif
    OSThread * current;
    OSThread * list;
    void * switchCallback;
#ifndef SDK_THREAD_INFINITY
    OSThread * entry[OS_THREAD_MAX_NUM];
#endif
} OSThreadInfo;

#ifndef SDK_THREAD_INFINITY
#define OS_THREADINFO_OFFSET_ISNEEDRESCHEDULING 0
#define OS_THREADINFO_OFFSET_MAX_ENTRY 2
#define OS_THREADINFO_OFFSET_IRQDEPTH 4
#define OS_THREADINFO_OFFSET_PADDING 6
#define OS_THREADINFO_OFFSET_CURRENT 8
#define OS_THREADINFO_OFFSET_LIST 12
#define OS_THREADINFO_OFFSET_SWITCHCALLBACK 16
#define OS_THREADINFO_OFFSET_ENTRY 20
#else
#define OS_THREADINFO_OFFSET_ISNEEDRESCHEDULING 0
#define OS_THREADINFO_OFFSET_IRQDEPTH 2
#define OS_THREADINFO_OFFSET_CURRENT 4
#define OS_THREADINFO_OFFSET_LIST 8
#define OS_THREADINFO_OFFSET_SWITCHCALLBACK 12
#define OS_THREADINFO_OFFSET_ENTRY 16
#endif

#define OS_THREAD_OFFSET_CONTEXT 0
#define OS_THREAD_OFFSET_STATE (sizeof(OSContext))
#define OS_THREAD_OFFSET_NEXT (sizeof(OSContext) + sizeof(OSThreadState))
#define OS_THREAD_OFFSET_ID (OS_THREAD_OFFSET_NEXT + sizeof(OSThread *))

typedef enum {
    OS_STACK_NO_ERROR = 0,
    OS_STACK_OVERFLOW = 1,
    OS_STACK_ABOUT_TO_OVERFLOW = 2,
    OS_STACK_UNDERFLOW = 3
} OSStackStatus;

typedef void (* OSSwitchThreadCallback) (OSThread * from, OSThread * to);

void OSi_CheckStack(const char * file, int line, const OSThread * thread);
u32 OSi_GetSystemStackPointer(void);
u32 OSi_GetCurrentStackPointer(void);
OSThread * OSi_GetIdleThread(void);

void OS_InitThread(void);

BOOL OS_IsThreadAvailable(void);

void OS_CreateThread(OSThread * thread,
                     void (* func)(void *), void * arg, void * stack, u32 stackSize, u32 prio);

void OS_ExitThread(void);

void OS_DestroyThread(OSThread * thread);

#ifdef SDK_THREAD_INFINITY
void OS_KillThread(OSThread * thread, void * arg);
void OS_KillThreadWithPriority(OSThread * thread, void * arg, u32 prio);
#endif

void OS_JoinThread(OSThread * thread);

BOOL OS_IsThreadTerminated(const OSThread * thread);

OSThread * OS_SelectThread(void);

void OS_RescheduleThread(void);

extern void OS_YieldThread(void);

void OS_SleepThread(OSThreadQueue * queue);

void OS_SleepThreadDirect(OSThread * thread, OSThreadQueue * queue);

void OS_WakeupThread(OSThreadQueue * queue);

void OS_WakeupThreadDirect(OSThread * thread);

void OS_DumpThreadList(void);

int OS_GetNumberOfThread(void);

extern OSThreadInfo OSi_ThreadInfo;

static inline OSThreadInfo * OS_GetThreadInfo (void)
{
    return &OSi_ThreadInfo;
}

static inline u32 OS_GetMaxThreadId (void)
{
#ifndef SDK_THREAD_INFINITY
    return OS_GetThreadInfo()->max_entry;
#else
    return 0x7fffffff;
#endif
}

#ifndef SDK_THREAD_INFINITY
static inline OSThread * OS_GetThread (u32 id)
{
    SDK_ASSERTMSG(id < OS_THREAD_MAX_NUM, "Thread id illegal\n");
    return OS_GetThreadInfo()->entry[id];
}
#else
extern OSThread * OS_GetThread(u32 id);
#endif

static inline u32 OS_GetThreadId (const OSThread * thread)
{
    SDK_ASSERTMSG(thread, "null thread pointer.");
    return thread->id;
}

static inline OSThreadState OS_GetThreadState (const OSThread * thread)
{
    SDK_ASSERTMSG(thread, "null thread pointer.");
    return thread->state;
}

static inline OSContext * OS_GetThreadContext (const OSThread * thread)
{
    SDK_ASSERTMSG(thread, "null thread pointer.");
    return (OSContext *)&thread->context;
}

static inline BOOL OS_IsThreadRunnable (const OSThread * thread)
{
    return thread->state == OS_THREAD_STATE_READY;
}

static inline void OS_InitThreadQueue (OSThreadQueue * queue)
{
#ifndef SDK_THREAD_INFINITY
    *queue = 0;
#else
    queue->head = queue->tail = NULL;
#endif
}

static inline OSThread * OS_GetCurrentThread (void)
{
    return OS_GetThreadInfo()->current;
}

static inline void OS_SetCurrentThread (OSThread * thread)
{
    OS_GetThreadInfo()->current = thread;
}

void OS_SetThreadStackWarningOffset(OSThread * thread, u32 offset);

OSStackStatus OS_GetStackStatus(const OSThread * thread);

#if !defined(SDK_FINALROM) && !defined(SDK_NO_MESSAGE)
#define OS_CheckStack(thread) OSi_CheckStack(__FILE__, __LINE__, (const OSThread *)thread);
#else
#define OS_CheckStack(thread) ((void)0)
#endif

BOOL OS_SetThreadPriority(OSThread * thread, u32 prio);

u32 OS_GetThreadPriority(const OSThread * thread);

void OS_Sleep(u32 msec);

OSSwitchThreadCallback OS_SetSwitchThreadCallback(OSSwitchThreadCallback callback);

void OS_DumpThreadCallTrace(const OSThread * thread);

u32 OS_DisableScheduler(void);

u32 OS_EnableScheduler(void);

#ifdef SDK_THREAD_INFINITY

void OS_SetThreadDestructor(OSThread * thread, OSThreadDestructor dtor);

OSThreadDestructor OS_GetThreadDestructor(const OSThread * thread);

void OS_SetThreadParameter(OSThread * thread, void * parameter);

void * OS_GetThreadParameter(const OSThread * thread);

int OS_GetErrno(void);
#endif

BOOL OS_IsThreadInList(const OSThread * thread);

void OS_SetThreadDestructorStack(void * stack);

#ifdef SDK_THREAD_INFINITY

extern OSMutex * OSi_RemoveMutexLinkFromQueue(OSMutexQueue * queue);

void OSi_SetSystemErrno(OSThread * thread, int errno);

int OSi_GetSystemErrno(const OSThread * thread);

#define OSi_SPECIFIC_CPS 0

static inline void OSi_SetSpecificData (OSThread * thread, int index, void * data)
{
    SDK_ASSERT(thread && 0 <= index && index < OS_THREAD_SPECIFIC_MAX);
    thread->specific[index] = data;
}

static inline void * OSi_GetSpecificData (const OSThread * thread, int index)
{
    SDK_ASSERT(thread && 0 <= index && index < OS_THREAD_SPECIFIC_MAX);
    return thread->specific[index];
}
#endif

static inline OSThread * OS_GetThreadList (void)
{
    return OS_GetThreadInfo()->list;
}

static inline OSThread * OS_GetNextThread (const OSThread * thread)
{
    SDK_ASSERT(thread);
    return thread->next;
}

#ifdef __cplusplus
}
#endif

#endif
