#include <nitro/os.h>
#include <nitro/mi.h>
#include <nitro/utest.h>

extern void SDK_SYS_STACKSIZE(void);
extern void SDK_IRQ_STACKSIZE(void);
#define OSi_SYS_STACKSIZE             ((s32)SDK_SYS_STACKSIZE)
#define OSi_IRQ_STACKSIZE             ((s32)SDK_IRQ_STACKSIZE)

#ifdef SDK_ARM9
    #define  OSi_STACK_CHECKNUM_BOTTOM     0xfddb597dUL
    #define  OSi_STACK_CHECKNUM_TOP        0x7bf9dd5bUL
    #define  OSi_STACK_CHECKNUM_WARN       0x597dfbd9UL
#else
    #define  OSi_STACK_CHECKNUM_BOTTOM     0xd73bfdf7UL
    #define  OSi_STACK_CHECKNUM_TOP        0xfbdd37bbUL
    #define  OSi_STACK_CHECKNUM_WARN       0xbdf7db3dUL
#endif

#ifdef SDK_ARM9
extern void SDK_SECTION_ARENA_DTCM_START(void);
void    SDK_AUTOLOAD_DTCM_END(void);
    #define  OSi_LAUNCHER_STACK_LO_DEFAULT    SDK_SECTION_ARENA_DTCM_START
    #define  OSi_LAUNCHER_STACK_HI_MAX        (HW_DTCM_SVC_STACK - OSi_IRQ_STACKSIZE)
    #define  OSi_LAUNCHER_STACK_BOTTOM        (HW_DTCM_SVC_STACK - OSi_IRQ_STACKSIZE)
#else
    #define  OSi_LAUNCHER_STACK_LO_DEFAULT    HW_WRAM
    #define  OSi_LAUNCHER_STACK_HI_MAX        (HW_PRV_WRAM_IRQ_STACK_END - OSi_IRQ_STACKSIZE)
    #define  OSi_LAUNCHER_STACK_BOTTOM        (HW_PRV_WRAM_IRQ_STACK_END - OSi_IRQ_STACKSIZE)
#endif

#ifdef SDK_CONTEXT_HAS_SP_SVC
#define OSi_IDLE_CHECKNUM_SIZE  (sizeof(u32) * 2 + HW_SVC_STACK_SIZE)
#else
#define OSi_IDLE_CHECKNUM_SIZE  (sizeof(u32) * 2)
#endif

#ifdef SDK_ARM9
#define OSi_IDLE_SVC_SIZE  (sizeof(u32) * 32)
#else
#define OSi_IDLE_SVC_SIZE  (sizeof(u32) * 16)
#endif

#define OSi_IDLE_THREAD_STACK_SIZE    (OSi_IDLE_CHECKNUM_SIZE + OSi_IDLE_SVC_SIZE)

OSThread OSi_LauncherThread;
OSThread OSi_IdleThread;

OSThreadInfo OSi_ThreadInfo;

OSThread **OSi_CurrentThreadPtr;
#define       OSi_GetCurrentThread()    (*OSi_CurrentThreadPtr)

BOOL OSi_IsThreadInitialized = FALSE;

u32 OSi_IdleThreadStack[OSi_IDLE_THREAD_STACK_SIZE / sizeof(u32)];

void *OSi_SystemCallbackInSwitchThread = NULL;

u32 OSi_RescheduleCount = 0;

#ifdef SDK_THREAD_INFINITY
static int OSi_ThreadIdCount = 0;
#endif

void *OSi_StackForDestructor = NULL;

#ifndef SDK_THREAD_INFINITY
static int OSi_SearchFreeEntry(void);
#endif
static void OSi_CancelThreadAlarmForSleep(OSThread *thread);
static void OSi_InsertThreadToList(OSThread *thread);
static void OSi_RemoveThreadFromList(OSThread *thread);
static void OSi_SleepAlarmCallback(void *arg);
static void OSi_IdleThreadProc(void *);
void OSi_SetSystemCallbackInSwitchThread(void *callback);

static void OSi_ExitThread_ArgSpecified(OSThread *thread, void *arg);
static void OSi_ExitThread(void *arg);
static void OSi_ExitThread_Destroy(void);

static void OSi_RescheduleThread(void);

#ifdef SDK_THREAD_INFINITY

static int OSi_GetUnusedThreadId (void)
{
	++OSi_ThreadIdCount;
	SDK_ASSERT(OSi_ThreadIdCount > 0);
	return OSi_ThreadIdCount;
}
#endif

#ifdef SDK_THREAD_INFINITY

static void OSi_InsertLinkToQueue (OSThreadQueue *queue, OSThread *thread)
{
	OSThread *next = queue->head;

	while (next && next->priority <= thread->priority) {
		if (next == thread) {
			return;
		}
		next = next->link.next;
	}

	if (!next) {
		OSThread *prev = queue->tail;

		if (!prev) {
			queue->head = thread;
		} else {
			prev->link.next = thread;
		}

		thread->link.prev = prev;
		thread->link.next = NULL;
		queue->tail = thread;
	} else {
		OSThread *prev = next->link.prev;

		if (!prev) {
			queue->head = thread;
		} else {
			prev->link.next = thread;
		}

		thread->link.prev = prev;
		thread->link.next = next;
		next->link.prev = thread;
	}
}

static OSThread *OSi_RemoveLinkFromQueue (OSThreadQueue *queue)
{
	OSThread *t = queue->head;

	if (t) {
		OSThread *next = t->link.next;

		queue->head = next;

		if (next) {
			next->link.prev = NULL;
		} else {
			queue->tail = NULL;
			t->queue = NULL;
		}
	}

	return t;
}

static OSThread *OSi_RemoveSpecifiedLinkFromQueue (OSThreadQueue *queue, OSThread *thread)
{
	OSThread *t = queue->head;
	OSThread *next;
	OSThread *prev;

	while (t) {
		next = t->link.next;

		if (t == thread) {
			prev = t->link.prev;

			if (queue->head == t) {
				queue->head = next;
			} else {
				prev->link.next = next;
			}

			if (queue->tail == t) {
				queue->tail = prev;
			} else {
				next->link.prev = prev;
			}

			break;
		}

		t = next;
	}

	return t;
}

OSMutex *OSi_RemoveMutexLinkFromQueue (OSMutexQueue *queue)
{
	OSMutex *t = queue->head;

	if (t) {
		OSMutex *next = t->link.next;

		queue->head = next;

		if (next) {
			next->link.prev = NULL;
		} else {
			queue->tail = NULL;
		}
	}

	return t;
}

#endif

void OSi_SetSystemCallbackInSwitchThread (void *callback)
{
	OSi_SystemCallbackInSwitchThread = callback;
}

#ifndef SDK_THREAD_INFINITY

static int OSi_SearchFreeEntry (void)
{
	int i;

	for (i = 0; i < OS_THREAD_MAX_NUM; i++) {
		if (!OSi_ThreadInfo.entry[i]) {
			return i;
		}
	}
	return -1;
}
#endif

static void OSi_InsertThreadToList (OSThread *thread)
{
	OSThread *t = OSi_ThreadInfo.list;
	OSThread *pre = NULL;

	while (t && t->priority < thread->priority) {
		pre = t;
		t = t->next;
	}

	if (!pre) {
		thread->next = OSi_ThreadInfo.list;
		OSi_ThreadInfo.list = thread;
	} else {
		thread->next = pre->next;
		pre->next = thread;
	}
}

static void OSi_RemoveThreadFromList (OSThread *thread)
{
	OSThread *t = OSi_ThreadInfo.list;
	OSThread *pre = NULL;

	while (t && t != thread) {
		pre = t;
		t = t->next;
	}

	SDK_ASSERTMSG(t, "Cannot remove thread from list.");

	if (!pre) {
		OSi_ThreadInfo.list = thread->next;
	} else {
		pre->next = thread->next;
	}
}

static void OSi_RescheduleThread (void)
{
	if (OSi_RescheduleCount <= 0) {
		OSThreadInfo *info = &OSi_ThreadInfo;
		if (info->irqDepth > 0 || OS_GetProcMode() == OS_PROCMODE_IRQ) {

			info->isNeedRescheduling = TRUE;
		} else {
			OSThread *currentThread, *nextThread;
			currentThread = OSi_GetCurrentThread();
			nextThread = OS_SelectThread();

			if (currentThread == nextThread || !nextThread) {
				return;
			}

			if (currentThread->state != OS_THREAD_STATE_TERMINATED
			    && OS_SaveContext(&currentThread->context)) {
				return;
			}

			if (OSi_SystemCallbackInSwitchThread) {
				((OSSwitchThreadCallback)OSi_SystemCallbackInSwitchThread)(currentThread,
				                                                           nextThread);
			}

			if (info->switchCallback) {
				((OSSwitchThreadCallback)info->switchCallback)(currentThread, nextThread);
			}

			OS_SetCurrentThread(nextThread);
			OS_LoadContext(&nextThread->context);

		}
	}
}

void OS_InitThread (void)
{
	void *stackLo;
#ifndef SDK_THREAD_INFINITY
	int i;
#endif

	if (OSi_IsThreadInitialized) {
		return;
	}
	OSi_IsThreadInitialized = TRUE;

#ifndef SDK_THREAD_INFINITY

	for (i = 0; i < OS_THREAD_MAX_NUM; i++) {
		OSi_ThreadInfo.entry[i] = NULL;
	}
#endif

	OSi_CurrentThreadPtr = &(OSi_ThreadInfo.current);

	OSi_LauncherThread.priority = OS_THREAD_LAUNCHER_PRIORITY;
	OSi_LauncherThread.id = 0;
	OSi_LauncherThread.state = OS_THREAD_STATE_READY;
	OSi_LauncherThread.next = NULL;

	OSi_LauncherThread.profiler = NULL;

#ifndef SDK_THREAD_INFINITY
	OSi_ThreadInfo.entry[0] = &OSi_LauncherThread;
#endif
	OSi_ThreadInfo.list = &OSi_LauncherThread;

	OS_SetCurrentThread(&OSi_LauncherThread);

	stackLo = (OSi_SYS_STACKSIZE <= 0) ?
	          (void *)((u32)OSi_LAUNCHER_STACK_LO_DEFAULT - OSi_SYS_STACKSIZE) :
	          (void *)((u32)OSi_LAUNCHER_STACK_HI_MAX - OSi_SYS_STACKSIZE);
	SDK_ASSERT((u32)OSi_LAUNCHER_STACK_LO_DEFAULT <= (u32)stackLo
	           && (u32)stackLo <= (u32)OSi_LAUNCHER_STACK_HI_MAX);

	OSi_LauncherThread.stackBottom = (u32)OSi_LAUNCHER_STACK_BOTTOM;
	OSi_LauncherThread.stackTop = (u32)stackLo;
	OSi_LauncherThread.stackWarningOffset = 0;

	*(u32 *)(OSi_LauncherThread.stackBottom - sizeof(u32)) = OSi_STACK_CHECKNUM_BOTTOM;
	*(u32 *)OSi_LauncherThread.stackTop = OSi_STACK_CHECKNUM_TOP;

	OS_InitThreadQueue(&OSi_LauncherThread.joinQueue);

#ifndef SDK_THREAD_INFINITY

	OSi_ThreadInfo.max_entry = OS_THREAD_MAX_NUM;
#endif

	OSi_ThreadInfo.isNeedRescheduling = FALSE;
	OSi_ThreadInfo.irqDepth = 0;
	SDK_ASSERTMSG(OSi_IRQ_STACKSIZE > 0, "IRQ STACKSIZE must be >0");

#ifdef SDK_ARM9
	OS_GetSystemWork()->threadinfo_mainp = &OSi_ThreadInfo;
#else
	OS_GetSystemWork()->threadinfo_subp = &OSi_ThreadInfo;
#endif

	(void)OS_SetSwitchThreadCallback(NULL);

#ifdef SDK_ARM9
	OS_CreateThread(&OSi_IdleThread,
	                OSi_IdleThreadProc,
	                (void *)NULL,
	                OSi_IdleThreadStack + OSi_IDLE_THREAD_STACK_SIZE / sizeof(u32),
	                OSi_IDLE_THREAD_STACK_SIZE,
	                OS_THREAD_PRIORITY_MAX);
	OSi_IdleThread.priority = OS_THREAD_PRIORITY_MAX + 1;
	OSi_IdleThread.state = OS_THREAD_STATE_READY;
#endif
}

asm BOOL OS_IsThreadAvailable (void)
{
	ldr r0, = OSi_IsThreadInitialized
	ldr r0, [r0, #0]
	bx lr
}

void OS_CreateThread (OSThread *thread, void (*func)(void *), void *arg, void *stack, u32 stackSize, u32 prio)
{
#define STACK_ALIGN 4
	OSIntrMode enable;
	int index;

	SDK_ASSERTMSG(OSi_GetCurrentThread(), "thread system were not initialized");
	SDK_ASSERTMSG(OS_THREAD_PRIORITY_MIN <= prio
	              && prio <= OS_THREAD_PRIORITY_MAX, "invalid priority");
	SDK_ASSERTMSG(stackSize % STACK_ALIGN == 0, "stack size must be aligned by %d", STACK_ALIGN);
	SDK_ASSERTMSG((u32)stack % STACK_ALIGN == 0, "stack must be aligned by %d", STACK_ALIGN);

	enable = OS_DisableInterrupts();

#ifndef SDK_THREAD_INFINITY
	if ((index = OSi_SearchFreeEntry()) < 0) {
		SDK_ASSERTMSG(index >= 0, "OS_CreateThread: thread entry not allocated");
		(void)OS_RestoreInterrupts(enable);
		return;
	}
#else
	index = OSi_GetUnusedThreadId();
#endif

	thread->priority = prio;
	thread->id = (u32)index;
	thread->state = OS_THREAD_STATE_WAITING;
	thread->profiler = NULL;

#ifndef SDK_THREAD_INFINITY
	OSi_ThreadInfo.entry[index] = thread;
#endif
	OSi_InsertThreadToList(thread);

	thread->stackBottom = (u32)stack;
	thread->stackTop = (u32)stack - stackSize;
	thread->stackWarningOffset = 0;

	*(u32 *)(thread->stackBottom - sizeof(u32)) = OSi_STACK_CHECKNUM_BOTTOM;
	*(u32 *)thread->stackTop = OSi_STACK_CHECKNUM_TOP;

	OS_InitThreadQueue(&thread->joinQueue);
	OS_InitContext(&thread->context, (u32)func, (u32)stack - sizeof(u32));

	thread->context.r[0] = (u32)arg;
	thread->context.lr = (u32)OS_ExitThread;

	MI_CpuClear32((void *)((u32)stack - stackSize + sizeof(u32)), stackSize - sizeof(u32) * 2);

	thread->mutex = NULL;
#ifndef SDK_THREAD_INFINITY
	thread->mutexQueueHead = NULL;
	thread->mutexQueueTail = NULL;
#else
	thread->mutexQueue.head = NULL;
	thread->mutexQueue.tail = NULL;
#endif

#ifdef SDK_THREAD_INFINITY
	OS_SetThreadDestructor(thread, NULL);
#endif

#ifdef SDK_THREAD_INFINITY
	thread->queue = NULL;
	thread->link.prev = thread->link.next = NULL;
	MI_CpuClear32(&thread->specific[0], sizeof(void *) * OS_THREAD_SPECIFIC_MAX);
#endif
	thread->alarmForSleep = NULL;
	(void)OS_RestoreInterrupts(enable);
}

void OS_ExitThread (void)
{
	(void)OS_DisableInterrupts();

#ifdef  SDK_THREAD_INFINITY
	OSi_ExitThread_ArgSpecified(OS_GetCurrentThread(), 0);
#else
	OSi_ExitThread_Destroy();
#endif
}

#ifdef SDK_THREAD_INFINITY

static void OSi_ExitThread_ArgSpecified (OSThread *thread, void *arg)
{
	if (OSi_StackForDestructor) {
		OS_InitContext(&thread->context, (u32)OSi_ExitThread, (u32)OSi_StackForDestructor);
		thread->context.r[0] = (u32)arg;
		thread->context.cpsr |= HW_PSR_IRQ_DISABLE;
		thread->state = OS_THREAD_STATE_READY;
		OS_LoadContext(&thread->context);

	} else {
		OSi_ExitThread(arg);
	}
}
#endif

#ifdef SDK_THREAD_INFINITY
static void OSi_ExitThread (void *arg)
{
	OSThread *currentThread = OSi_GetCurrentThread();
	OSThreadDestructor destructor;

	SDK_ASSERT(currentThread);

	destructor = currentThread->destructor;
	if (destructor) {
		currentThread->destructor = NULL;
		destructor(arg);
		(void)OS_DisableInterrupts();
	}

	OSi_ExitThread_Destroy();
}
#endif

static void OSi_ExitThread_Destroy (void)
{
	OSThread *currentThread = OSi_GetCurrentThread();
	SDK_ASSERT(currentThread);

#ifdef SDK_THREAD_INFINITY
	(void)OS_DisableScheduler();
#endif

#ifndef SDK_THREAD_INFINITY
	SDK_ASSERT(OSi_ThreadInfo.entry[currentThread->id] == currentThread);
#endif

	OSi_UnlockAllMutex(currentThread);

	if (currentThread->queue) {
		(void)OSi_RemoveSpecifiedLinkFromQueue(currentThread->queue, currentThread);
	}

	OSi_RemoveThreadFromList(currentThread);

#ifndef SDK_THREAD_INFINITY
	OSi_ThreadInfo.entry[currentThread->id] = NULL;
#endif
	currentThread->state = OS_THREAD_STATE_TERMINATED;

#ifndef SDK_THREAD_INFINITY
	OS_WakeupThread(&currentThread->joinQueue);
#else
	OS_WakeupThread(&currentThread->joinQueue);
#endif

#ifdef SDK_THREAD_INFINITY
	(void)OS_EnableScheduler();
#endif

	OS_RescheduleThread();
	OS_Terminate();
}

static vu32 exitThreadStatus = 0;

static void exitThreadFunc (void *arg)
{
	exitThreadStatus = 1;
	(void)arg;
}

void UTEST_OS_ExitThread(void);

void UTEST_OS_ExitThread (void)
{
	OSThread thread;
	u32 stack[1024];

	OS_Init();
	OS_InitThread();

	OS_CreateThread(&thread,
	                exitThreadFunc,
	                NULL,
	                stack + 1024, sizeof(stack), OS_GetThreadPriority(OS_GetCurrentThread()) - 1);
	OS_WakeupThreadDirect(&thread);
	OS_JoinThread(&thread);
	UT_AssertEq(exitThreadStatus, 1);
}

void OS_DestroyThread (OSThread *thread)
{
	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERT(thread);

	if (OS_GetCurrentThread() == thread) {
		OSi_ExitThread_Destroy();
	}

#ifdef SDK_THREAD_INFINITY
	(void)OS_DisableScheduler();
#endif

	OSi_UnlockAllMutex(thread);
	OSi_CancelThreadAlarmForSleep(thread);

	if (thread->queue) {
		(void)OSi_RemoveSpecifiedLinkFromQueue(thread->queue, thread);
	}

	OSi_RemoveThreadFromList(thread);

#ifndef SDK_THREAD_INFINITY
	OSi_ThreadInfo.entry[thread->id] = NULL;
#endif
	thread->state = OS_THREAD_STATE_TERMINATED;

	OS_WakeupThread(&thread->joinQueue);

#ifdef SDK_THREAD_INFINITY
	(void)OS_EnableScheduler();
#endif
	(void)OS_RestoreInterrupts(enabled);

	OS_RescheduleThread();
}

#ifdef SDK_THREAD_INFINITY

static inline void OSi_KillThreadWithPriority(OSThread *thread, void *arg, u32 prio);
static inline void OSi_KillThreadWithPriority (OSThread *thread, void *arg, u32 prio)
{
	SDK_ASSERT(thread);

	{
		u32 stack = (OSi_StackForDestructor) ? (u32)OSi_StackForDestructor : thread->stackBottom - sizeof(u32);
		OS_InitContext(&thread->context, (u32)OSi_ExitThread, stack);
	}
	thread->context.r[0] = (u32)arg;
	thread->context.cpsr |= HW_PSR_IRQ_DISABLE;

	thread->state = OS_THREAD_STATE_READY;

	(void)OS_DisableScheduler();
	(void)OS_SetThreadPriority(thread, prio);
	(void)OS_EnableScheduler();
}

void OS_KillThread (OSThread *thread, void *arg)
{
	OS_KillThreadWithPriority(thread, arg, OS_GetThreadPriority(thread));
}

void OS_KillThreadWithPriority (OSThread *thread, void *arg, u32 prio)
{
	OSIntrMode enabled = OS_DisableInterrupts();

	if (thread == OS_GetCurrentThread()) {
		OSi_ExitThread_ArgSpecified(thread, arg);

	}

	OSi_CancelThreadAlarmForSleep(thread);
	OSi_KillThreadWithPriority(thread, arg, prio);
	OSi_RescheduleThread();

	(void)OS_RestoreInterrupts(enabled);
}

void    UTEST_OS_KillThread_1(void);
void UTEST_OS_KillThread_1 (void)
{
	OSThread thread;
	OSThread *t = &thread;
	u32 flag;

	OS_Init();
	OS_InitThread();

	t->stackBottom = 0x6789abcd;
	t->state = OS_THREAD_STATE_TERMINATED;
	OSi_KillThreadWithPriority(t, (void *)0x12345678, 16);

	UT_AssertEq(t->context.pc_plus4, (u32)OSi_ExitThread + 4);
	UT_AssertEq(t->context.r[0], (u32)0x12345678);
	flag = ((u32)OS_ExitThread & 1) ? (u32)HW_PSR_THUMB_STATE : (u32)HW_PSR_ARM_STATE;
	UT_AssertEq(t->context.cpsr, (u32)HW_PSR_IRQ_DISABLE | HW_PSR_SYS_MODE | flag);
	UT_AssertEq(t->context.sp, (u32)0x6789abcd - HW_SVC_STACK_SIZE);

	UT_AssertEq(t->state, OS_THREAD_STATE_READY);
	UT_AssertAsserted(OSi_KillThreadWithPriority(0, 0, 16));
}

static vu32 killThreadStatus = 0;

static void killThreadDtor (void *arg)
{
	killThreadStatus = 666;
	(void)arg;
}

static void killThreadFunc (void *arg)
{
	OS_SetThreadDestructor(OS_GetCurrentThread(), killThreadDtor);

	killThreadStatus = 1;
	while (1) {
		OS_SleepThread(NULL);
		killThreadStatus++;
	}
	(void)arg;
}

void    UTEST_OS_KillThread_2(void);
void UTEST_OS_KillThread_2 (void)
{
	OSThread thread;
	u32 stack[1024];

	OS_Init();
	OS_InitThread();

	OS_CreateThread(&thread,
	                killThreadFunc,
	                NULL,
	                stack + 1024, sizeof(stack), OS_GetThreadPriority(OS_GetCurrentThread()) - 1);
	UT_AssertEq(killThreadStatus, 0);

	OS_WakeupThreadDirect(&thread);
	UT_AssertEq(killThreadStatus, 1);
	UT_AssertEq(thread.destructor, killThreadDtor);

	OS_WakeupThreadDirect(&thread);
	UT_AssertEq(killThreadStatus, 2);

	OS_KillThread(&thread, 0);
	OS_JoinThread(&thread);
	UT_AssertEq(killThreadStatus, 666);
}

#endif

static void OSi_CancelThreadAlarmForSleep (OSThread *thread)
{
	OSAlarm *alarm = thread->alarmForSleep;

	if (alarm) {
		OS_CancelAlarm(alarm);
	}
}

void OS_JoinThread (OSThread *thread)
{
	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERT(thread);

	if (thread->state != OS_THREAD_STATE_TERMINATED) {
		OS_SleepThread(&thread->joinQueue);
	}

	(void)OS_RestoreInterrupts(enabled);
}

BOOL OS_IsThreadTerminated (const OSThread *thread)
{
	return (thread->state == OS_THREAD_STATE_TERMINATED) ? TRUE : FALSE;
}

void OS_SleepThreadDirect (OSThread *thread, OSThreadQueue *queue)
{
	SDK_ASSERT(thread);
	SDK_ASSERT(thread->state != OS_THREAD_STATE_TERMINATED);

	{
		OSIntrMode bak_intr = OS_DisableInterrupts();
		if (queue) {
#ifndef SDK_THREAD_INFINITY
			*queue |= (OSThreadQueue)(1UL << thread->id);
#else
			thread->queue = queue;
			OSi_InsertLinkToQueue(queue, thread);
#endif
		}
		thread->state = OS_THREAD_STATE_WAITING;
		OSi_RescheduleThread();
		(void)OS_RestoreInterrupts(bak_intr);
	}
}

void OS_SleepThread (OSThreadQueue *queue)
{
	OSIntrMode enable;
	OSThread *currentThread;

	enable = OS_DisableInterrupts();
#ifndef SDK_THREAD_INFINITY
	{
		currentThread = OSi_GetCurrentThread();
		SDK_ASSERT(currentThread);

		if (queue) {
			*queue |= (OSThreadQueue)(1UL << currentThread->id);
		}

		currentThread->state = OS_THREAD_STATE_WAITING;
		OSi_RescheduleThread();
	}
#else
	{
		currentThread = OSi_GetCurrentThread();
		SDK_ASSERT(currentThread);

		if (queue) {
			currentThread->queue = queue;
			OSi_InsertLinkToQueue(queue, currentThread);
		}

		currentThread->state = OS_THREAD_STATE_WAITING;
		OSi_RescheduleThread();
	}
#endif
	(void)OS_RestoreInterrupts(enable);

}

void OS_WakeupThread (OSThreadQueue *queue)
{
	OSIntrMode enable;
#ifndef SDK_THREAD_INFINITY
	u32 mask;
#else
	BOOL isNeedRescheduling = FALSE;
#endif
	SDK_ASSERT(queue);
	enable = OS_DisableInterrupts();

#ifndef SDK_THREAD_INFINITY
	mask = (u32) * queue;
	if (mask) {

		OSThread *t = OSi_ThreadInfo.list;
		while (t) {
			if (mask & (1UL << t->id)) {
				t->state = OS_THREAD_STATE_READY;
			}

			t = t->next;
		}

		OS_InitThreadQueue(queue);
		OSi_RescheduleThread();
	}
#else
	if (queue->head) {
		while (queue->head) {
			OSThread *thread = OSi_RemoveLinkFromQueue(queue);

			thread->state = OS_THREAD_STATE_READY;
			thread->queue = NULL;
			thread->link.prev = thread->link.next = NULL;
		}

		OS_InitThreadQueue(queue);
		OSi_RescheduleThread();
	}
#endif

	(void)OS_RestoreInterrupts(enable);
}

void OS_WakeupThreadDirect (OSThread *thread)
{
	OSIntrMode enable;

	SDK_ASSERT(thread);
	SDK_ASSERT(thread->state != OS_THREAD_STATE_TERMINATED);
	enable = OS_DisableInterrupts();
	{
		thread->state = OS_THREAD_STATE_READY;
		OSi_RescheduleThread();

	}
	(void)OS_RestoreInterrupts(enable);
}

OSThread *OS_SelectThread (void)
{
	OSThread *t = OSi_ThreadInfo.list;

	while (t && !OS_IsThreadRunnable(t)) {
		t = t->next;
	}

	return t;
}

void OS_RescheduleThread (void)
{
	OSIntrMode bak_intr = OS_DisableInterrupts();
	OSi_RescheduleThread();
	(void)OS_RestoreInterrupts(bak_intr);
}

void OS_YieldThread (void)
{
	OSThread *current = OS_GetCurrentThread();
	OSThread *pre = NULL;
	OSThread *lastThread = NULL;
	int samePriorityThread = 0;
	OSIntrMode enable = OS_DisableInterrupts();

	{
		OSThread *t = OSi_ThreadInfo.list;
		OSThread *tPre = NULL;

		while (t) {
			if (t == current) {
				pre = tPre;
			}

			if (current->priority == t->priority) {
				lastThread = t;
				samePriorityThread++;
			}

			tPre = t;
			t = t->next;
		}
	}

	if (samePriorityThread <= 1 || lastThread == current) {
		(void)OS_RestoreInterrupts(enable);
		return;
	}

	if (!pre) {
		OSi_ThreadInfo.list = current->next;
	} else {
		pre->next = current->next;
	}

	current->next = lastThread->next;
	lastThread->next = current;

	OSi_RescheduleThread();

	(void)OS_RestoreInterrupts(enable);
}

void OS_DumpThreadList (void)
{
#ifndef SDK_FINALROM
#ifndef SDK_THREAD_INFINITY
	int i;
#endif

	OS_Printf("----------------\n");
	OS_Printf("thread list top %08x\n", OSi_ThreadInfo.list);

#ifndef SDK_THREAD_INFINITY
	OS_Printf("No:  address  prio     next\n");
	for (i = 0; i < OS_THREAD_MAX_NUM; i++) {
		OSThread *thread = OSi_ThreadInfo.entry[i];
		OS_Printf("%02d: %08x %5d %08x\n", i, thread, (thread) ? thread->priority : 0,
		          (thread) ? thread->next : 0);
	}
#else

	OS_Printf("Id:  address  prio     next st  queue.h  queue.t   link.p   link.n\n");
	{
		OSThread *thread = OSi_ThreadInfo.list;
		while (thread) {

			OS_Printf("%02d: %08x %5d %08x  %d %8x %8x %8x %8x\n", thread->id, thread,
			          thread->priority, thread->next, thread->state,
			          (thread->queue) ? thread->queue->head : (OSThread *)1,
			          (thread->queue) ? thread->queue->tail : (OSThread *)1, thread->link.prev,
			          thread->link.next);
			thread = thread->next;

		}
	}
#endif
#endif
}

int OS_GetNumberOfThread (void)
{
	int threads = 0;

#ifndef SDK_THREAD_INFINITY
	int i;

	for (i = 0; i < OS_THREAD_MAX_NUM; i++) {
		if (OSi_ThreadInfo.entry[i]) {
			threads++;
		}
	}
#else
	OSThread *thread = OSi_ThreadInfo.list;
	while (thread) {
		threads++;
		thread = thread->next;
	}
#endif

	return threads;
}

OSStackStatus OS_GetStackStatus (const OSThread *thread)
{
	if (*(u32 *)(thread->stackTop) != OSi_STACK_CHECKNUM_TOP) {
		return OS_STACK_OVERFLOW;
	} else if (thread->stackWarningOffset
	           && *(u32 *)(thread->stackTop + thread->stackWarningOffset) != OSi_STACK_CHECKNUM_WARN) {
		return OS_STACK_ABOUT_TO_OVERFLOW;
	} else if (*(u32 *)(thread->stackBottom - sizeof(u32)) != OSi_STACK_CHECKNUM_BOTTOM)   {
		return OS_STACK_UNDERFLOW;
	} else {
		return OS_STACK_NO_ERROR;
	}
}

static char *OSi_CheckStack_mesg[] = {
	"overflow", "about to overflow", "underflow"
};

#ifndef SDK_FINALROM
#ifndef SDK_NO_MESSAGE
void OSi_CheckStack (const char *file, int line, const OSThread *thread)
{
	OSStackStatus st;

	if ((st = OS_GetStackStatus(thread)) == OS_STACK_NO_ERROR) {
		return;
	}

	OSi_Panic(file, line, " stack %x(id:%d) %s.\nstack area: %08x-%08x, warning offset: %x",
	          thread,
	          thread->id,
	          OSi_CheckStack_mesg[(int)st - 1],
	          thread->stackTop, thread->stackBottom, thread->stackWarningOffset);

}
#endif
#endif

static u32 OSi_SystemStackBuffer;

#include  <nitro/code32.h>
asm u32 OSi_GetSystemStackPointer (void)
{
	ldr r0, = OSi_SystemStackBuffer
	stmia r0, { sp } ^
	ldr r0, [r0]
	bx lr
}
#include <nitro/codereset.h>

asm u32 OSi_GetCurrentStackPointer (void)
{
	mov r0, sp
	bx lr
}

void OS_SetThreadStackWarningOffset (OSThread *thread, u32 offset)
{
	SDK_ASSERTMSG((offset & 3) == 0, "Offset must be aligned by 4");
	SDK_ASSERTMSG(offset > 0, "Cannot set warning level to stack top.");
	SDK_ASSERTMSG(OS_GetThreadContext(thread)->sp > thread->stackTop + offset,
	              "Cannot set warning level below current sp.");

	thread->stackWarningOffset = offset;

	if (offset != 0) {
		*(u32 *)(thread->stackTop + offset) = OSi_STACK_CHECKNUM_WARN;
	}
}

BOOL OS_SetThreadPriority (OSThread *thread, u32 prio)
{
	OSThread *t = OSi_ThreadInfo.list;
	OSThread *pre = NULL;
	OSIntrMode enable;

	SDK_ASSERTMSG(OS_THREAD_PRIORITY_MIN <= prio
	              && prio <= OS_THREAD_PRIORITY_MAX, "invalid priority");
	SDK_ASSERTMSG(thread != &OSi_IdleThread, "cannot change idle thread priority.");

	enable = OS_DisableInterrupts();

	while (t && t != thread) {
		pre = t;
		t = t->next;
	}

	if (!t || t == &OSi_IdleThread) {
		(void)OS_RestoreInterrupts(enable);
		return FALSE;
	}

	if (t->priority != prio) {

		if (!pre) {
			OSi_ThreadInfo.list = thread->next;
		} else {
			pre->next = thread->next;
		}

		thread->priority = prio;

		OSi_InsertThreadToList(thread);
		OSi_RescheduleThread();
	}

	(void)OS_RestoreInterrupts(enable);
	return TRUE;
}

u32 OS_GetThreadPriority (const OSThread *thread)
{
	SDK_ASSERTMSG(thread, "OS_GetThreadPriority: bad thread");
	return thread->priority;
}

void OS_Sleep (u32 msec)
{
	OSAlarm alarm;

	SDK_ASSERTMSG(OS_IsTickAvailable()
	              && OS_IsAlarmAvailable(), "OS_Sleep: need to start Tick and Alarm beforehand.");
	SDK_ASSERTMSG(OSi_IsThreadInitialized, "OS_Sleep: thread system not initialized.");

	OS_CreateAlarm(&alarm);
	{
		OSThread *volatile p_thread = OSi_GetCurrentThread();
		OSIntrMode bak_cpsr = OS_DisableInterrupts();

		p_thread->alarmForSleep = &alarm;

		OS_SetAlarm(&alarm, OS_MilliSecondsToTicks(msec), &OSi_SleepAlarmCallback,
		            (void *)&p_thread);
		while (p_thread != NULL) {
			OS_SleepThread(NULL);
		}
		(void)OS_RestoreInterrupts(bak_cpsr);
	}
}

static void OSi_SleepAlarmCallback (void *arg)
{
	OSThread **pp_thread = (OSThread **)arg;
	OSThread *p_thread = *pp_thread;
	*pp_thread = NULL;

	p_thread->alarmForSleep = NULL;

	OS_WakeupThreadDirect(p_thread);
}

OSSwitchThreadCallback OS_SetSwitchThreadCallback (OSSwitchThreadCallback callback)
{
	OSSwitchThreadCallback prev;
	OSIntrMode enabled;

	enabled = OS_DisableInterrupts();
	prev = OSi_ThreadInfo.switchCallback;
	OSi_ThreadInfo.switchCallback = callback;

	(void)OS_RestoreInterrupts(enabled);
	return prev;
}

static void OSi_IdleThreadProc (void *)
{
	(void)OS_EnableInterrupts();
	while (1) {
		OS_Halt();
	}

}

OSThread *OSi_GetIdleThread (void)
{
	OSThread *t = NULL;
	if (OSi_IsThreadInitialized) {
		t = &OSi_IdleThread;
	}
	return t;
}

u32 OS_DisableScheduler (void)
{
	OSIntrMode enabled = OS_DisableInterrupts();
	u32 count;

	if (OSi_RescheduleCount < (u32)(0 - 1)) {
		count = OSi_RescheduleCount++;
	}
	(void)OS_RestoreInterrupts(enabled);

	return count;
}

u32 OS_EnableScheduler (void)
{
	OSIntrMode enabled = OS_DisableInterrupts();
	u32 count = 0;

	if (OSi_RescheduleCount > 0) {
		count = OSi_RescheduleCount--;
	}
	(void)OS_RestoreInterrupts(enabled);

	return count;
}

#ifdef SDK_THREAD_INFINITY

OSThread *OS_GetThread (u32 id)
{
	OSThread *retval = NULL;
	OSThread *t = OSi_ThreadInfo.list;

	while (t) {
		if (t->id == id) {
			retval = t;
			break;
		}

		t = t->next;
	}

	return retval;
}
#endif

#ifdef SDK_THREAD_INFINITY

void OS_SetThreadDestructor (OSThread *thread, OSThreadDestructor dtor)
{
	SDK_ASSERT(thread);
	thread->destructor = dtor;
}

OSThreadDestructor OS_GetThreadDestructor (const OSThread *thread)
{
	SDK_ASSERT(thread);
	return thread->destructor;
}

void OS_SetThreadParameter (OSThread *thread, void *parameter)
{
	SDK_ASSERT(thread);
	thread->userParameter = parameter;
}

void *OS_GetThreadParameter (const OSThread *thread)
{
	SDK_ASSERT(thread);
	return thread->userParameter;
}

void OSi_SetSystemErrno (OSThread *thread, int errno)
{
	SDK_ASSERT(thread);
	thread->systemErrno = errno;
}

int OSi_GetSystemErrno (const OSThread *thread)
{
	SDK_ASSERT(thread);
	return thread->systemErrno;
}

int OS_GetErrno (void)
{
	OSThread *thread = OSi_GetCurrentThread();
	return OSi_GetSystemErrno(thread);
}
#endif

BOOL OS_IsThreadInList (const OSThread *thread)
{
	BOOL r = FALSE;
	OSThread *t = OSi_ThreadInfo.list;
	OSIntrMode enabled = OS_DisableInterrupts();

	while (t) {
		if (t == thread) {
			r = TRUE;
			break;
		}

		t = t->next;
	}

	(void)OS_RestoreInterrupts(enabled);
	return r;
}

void OS_SetThreadDestructorStack (void *stack)
{
	SDK_ASSERT(stack);
	SDK_ASSERT((u32)stack % STACK_ALIGN == 0);

	OSi_StackForDestructor = stack;
}