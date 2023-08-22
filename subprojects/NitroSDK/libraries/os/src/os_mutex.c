#include <nitro/types.h>
#include <nitro.h>

void OSi_EnqueueTail(OSThread *thread, OSMutex *mutex);
void OSi_DequeueItem(OSThread *thread, OSMutex *mutex);
OSMutex *OSi_DequeueHead(OSThread *thread);

void OS_InitMutex (OSMutex *mutex)
{
	SDK_ASSERT(mutex);

	OS_InitThreadQueue(&mutex->queue);
	mutex->thread = NULL;
	mutex->count = 0;
}

void OS_LockMutex (OSMutex *mutex)
{
	OSIntrMode saved;
	OSThread *currentThread;
	OSThread *ownerThread;

	SDK_ASSERT(mutex);

	saved = OS_DisableInterrupts();
	currentThread = OS_GetCurrentThread();

	for (;;) {
		ownerThread = ((volatile OSMutex *)mutex)->thread;

		if (ownerThread == NULL) {
			mutex->thread = currentThread;
			mutex->count++;
			OSi_EnqueueTail(currentThread, mutex);
			break;
		} else if (ownerThread == currentThread)   {
			mutex->count++;
			break;
		} else {
			currentThread->mutex = mutex;
			OS_SleepThread(&mutex->queue);
			currentThread->mutex = NULL;
		}
	}

	(void)OS_RestoreInterrupts(saved);
}

void OS_UnlockMutex (OSMutex *mutex)
{
	OSIntrMode saved;
	OSThread *currentThread;

	SDK_ASSERT(mutex);

	saved = OS_DisableInterrupts();
	currentThread = OS_GetCurrentThread();

	if (mutex->thread == currentThread && --mutex->count == 0) {
		OSi_DequeueItem(currentThread, mutex);
		mutex->thread = NULL;

		OS_WakeupThread(&mutex->queue);
	}

	(void)OS_RestoreInterrupts(saved);
}

void OSi_UnlockAllMutex (OSThread *thread)
{
	OSMutex *mutex;

	SDK_ASSERT(thread);

#ifndef SDK_THREAD_INFINITY
	while (thread->mutexQueueHead) {
		mutex = OSi_DequeueHead(thread);
		SDK_ASSERT(mutex->thread == thread);

		mutex->count = 0;
		mutex->thread = NULL;
		OS_WakeupThread(&(mutex->queue));
	}
#else
	while (thread->mutexQueue.head) {
		mutex = OSi_RemoveMutexLinkFromQueue(&thread->mutexQueue);

		SDK_ASSERT(mutex->thread == thread);
		mutex->count = 0;
		mutex->thread = NULL;
		OS_WakeupThread(&mutex->queue);

	}
#endif
}

BOOL OS_TryLockMutex (OSMutex *mutex)
{
	OSIntrMode saved;
	OSThread *currentThread;
	BOOL locked;

	SDK_ASSERT(mutex);

	saved = OS_DisableInterrupts();
	currentThread = OS_GetCurrentThread();

	if (mutex->thread == NULL) {
		mutex->thread = currentThread;
		mutex->count++;
		OSi_EnqueueTail(currentThread, mutex);
		locked = TRUE;
	} else if (mutex->thread == currentThread)   {
		mutex->count++;
		locked = TRUE;
	} else {
		locked = FALSE;
	}

	(void)OS_RestoreInterrupts(saved);
	return locked;
}

void OSi_EnqueueTail (OSThread *thread, OSMutex *mutex)
{
#ifndef SDK_THREAD_INFINITY
	OSMutex *prev = thread->mutexQueueTail;

	SDK_ASSERT(thread && mutex);

	if (!prev) {
		thread->mutexQueueHead = mutex;
	} else {
		prev->next = mutex;
	}

	mutex->prev = prev;
	mutex->next = NULL;
	thread->mutexQueueTail = mutex;
#else
	OSMutex *prev = thread->mutexQueue.tail;

	SDK_ASSERT(thread && mutex);

	if (!prev) {
		thread->mutexQueue.head = mutex;
	} else {
		prev->link.next = mutex;
	}

	mutex->link.prev = prev;
	mutex->link.next = NULL;
	thread->mutexQueue.tail = mutex;
#endif
}

void OSi_DequeueItem (OSThread *thread, OSMutex *mutex)
{
#ifndef SDK_THREAD_INFINITY
	OSMutex *next = mutex->next;
	OSMutex *prev = mutex->prev;

	SDK_ASSERT(thread && mutex);

	if (!next) {
		thread->mutexQueueTail = prev;
	} else {
		next->prev = prev;
	}

	if (!prev) {
		thread->mutexQueueHead = next;
	} else {
		prev->next = next;
	}
#else
	OSMutex *next = mutex->link.next;
	OSMutex *prev = mutex->link.prev;

	SDK_ASSERT(thread && mutex);

	if (!next) {
		thread->mutexQueue.tail = prev;
	} else {
		next->link.prev = prev;
	}

	if (!prev) {
		thread->mutexQueue.head = next;
	} else {
		prev->link.next = next;
	}
#endif
}

OSMutex *OSi_DequeueHead (OSThread *thread)
{
#ifndef SDK_THREAD_INFINITY
	OSMutex *mutex = thread->mutexQueueHead;
	OSMutex *next = mutex->next;

	SDK_ASSERT(thread);

	if (!next) {
		thread->mutexQueueTail = NULL;
	} else {
		next->prev = NULL;
	}

	thread->mutexQueueHead = next;
#else
	OSMutex *mutex = thread->mutexQueue.head;
	OSMutex *next = mutex->link.next;

	SDK_ASSERT(thread);

	if (!next) {
		thread->mutexQueue.tail = NULL;
	} else {
		next->link.prev = NULL;
	}

	thread->mutexQueue.head = next;
#endif

	return mutex;
}