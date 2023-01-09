#include <nitro.h>

#include "include/mb_task.h"

typedef struct {
    OSThread th[1];
    MBiTaskInfo * volatile list;
    MBiTaskInfo end_task;
} MBiTaskWork;

static MBiTaskWork * mbi_task_work = NULL;

static void MBi_TaskThread (void * arg) {
    MBiTaskWork * const p = (MBiTaskWork *)arg;
    for (;;) {
        MBiTaskInfo * trg = NULL;

        {
            OSIntrMode bak_cpsr = OS_DisableInterrupts();

            while (!p->list) {
                (void)OS_SetThreadPriority(p->th, OS_THREAD_PRIORITY_MIN);
                OS_SleepThread(NULL);
            }
            trg = p->list;
            p->list = p->list->next;
            (void)OS_SetThreadPriority(p->th, trg->priority);
            (void)OS_RestoreInterrupts(bak_cpsr);
        }

        if (trg->task) {
            (*trg->task) (trg);
        }

        {
            OSIntrMode bak_cpsr = OS_DisableInterrupts();
            MB_TASK_FUNC callback = trg->callback;

            const u32 cur_priority = OS_GetThreadPriority(p->th);
            u32 new_priority;
            if (!p->list) {
                new_priority = OS_THREAD_PRIORITY_MIN;
            } else if (cur_priority < p->list->priority) {
                new_priority = p->list->priority;
            } else {
                new_priority = cur_priority;
            }
            if (new_priority != cur_priority) {
                (void)OS_SetThreadPriority(p->th, new_priority);
            }
            trg->next = NULL;
            trg->busy = FALSE;
            if (callback) {
                (*callback) (trg);
            }

            if (trg == &p->end_task) {
                break;
            }
            (void)OS_RestoreInterrupts(bak_cpsr);
        }
    }
    OS_TPrintf("task-thread end.\n");
    OS_ExitThread();
    return;
}

void MBi_InitTaskThread (void * p_work, u32 size) {
    OSIntrMode bak_cpsr = OS_DisableInterrupts();
    if (!mbi_task_work) {
        MBiTaskWork * const p = (MBiTaskWork *)p_work;

        SDK_ASSERT(size >= MB_TASK_WORK_MIN);
        SDK_ASSERT(OS_IsThreadAvailable());

        mbi_task_work = p;
        MBi_InitTaskInfo(&p->end_task);
        p->list = NULL;
        size = (u32)((size - sizeof(MBiTaskWork)) & ~3);
        OS_CreateThread(
            p->th, MBi_TaskThread, p,
            (u8 *)(p + 1) + size, size, OS_THREAD_PRIORITY_MIN
        );
        OS_WakeupThreadDirect(p->th);
    }
    (void)OS_RestoreInterrupts(bak_cpsr);
}

BOOL MBi_IsTaskAvailable (void) {
    return (mbi_task_work != NULL);
}

void MBi_InitTaskInfo (MBiTaskInfo * pt) {
    SDK_ASSERT(pt != NULL);
    MI_CpuClear8(pt, sizeof(*pt));
}

BOOL MBi_IsTaskBusy (volatile const MBiTaskInfo * pt) {
    return pt->busy != FALSE;
}

void MBi_SetTask (MBiTaskInfo * pt, MB_TASK_FUNC task, MB_TASK_FUNC callback, u32 priority) {
    MBiTaskWork * const p_work = mbi_task_work;

    SDK_ASSERT(pt != NULL);

    if (!MBi_IsTaskAvailable()) {
        OS_TWarning("MBi_SetTask() ignored... (task-thread is not available now)");
        return;
    }
    if (pt->busy) {
        OS_TWarning("MBi_SetTask() ignored... (specified structure is busy)");
        return;
    }

    if (priority > OS_THREAD_PRIORITY_MAX) {
        const u32 cur_priority = OS_GetThreadPriority(p_work->th);
        if (priority == MB_TASK_PRIORITY_ABOVE) {
            priority = (u32)((cur_priority > OS_THREAD_PRIORITY_MIN) ?
                             (cur_priority - 1) : OS_THREAD_PRIORITY_MIN);
        } else if (priority == MB_TASK_PRIORITY_BELOW) {
            priority = (u32)((cur_priority < OS_THREAD_PRIORITY_MAX) ?
                             (cur_priority + 1) : OS_THREAD_PRIORITY_MAX);
        } else if (priority == MB_TASK_PRIORITY_NORMAL) {
            priority = cur_priority;
        } else {
            priority = OS_THREAD_PRIORITY_MAX;
        }
    }

    {
        OSIntrMode bak_cpsr = OS_DisableInterrupts();
        pt->busy = TRUE;
        pt->priority = priority;
        pt->task = task;
        pt->callback = callback;

        if (!p_work->list) {
            if (pt == &p_work->end_task) {
                mbi_task_work = NULL;
            }

            p_work->list = pt;
            OS_WakeupThreadDirect(p_work->th);
        } else {
            MBiTaskInfo * pos = p_work->list;

            if (pt == &p_work->end_task) {
                while (pos->next) {
                    pos = pos->next;
                }
                pos->next = pt;

                mbi_task_work = NULL;
            } else {
                if (pos->priority > priority) {
                    p_work->list = pt;
                    pt->next = pos;
                } else {
                    while (pos->next && (pos->next->priority <= priority)) {
                        pos = pos->next;
                    }
                    pt->next = pos->next;
                    pos->next = pt;
                }
            }
        }
        (void)OS_RestoreInterrupts(bak_cpsr);
    }
}

void MBi_EndTaskThread (MB_TASK_FUNC callback) {
    OSIntrMode bak_cpsr = OS_DisableInterrupts();
    if (MBi_IsTaskAvailable()) {
        MBi_SetTask(&mbi_task_work->end_task, NULL, callback, OS_THREAD_PRIORITY_MIN);
    }
    (void)OS_RestoreInterrupts(bak_cpsr);
}
