#include <nitro.h>

static CTRDGiTaskWork * ctrdgi_task_work = NULL;
static CTRDGTaskInfo ctrdgi_task_list;

static void CTRDGi_TaskThread(void * arg);

u64 ctrdg_task_stack[CTRDG_TASK_STACK_SIZE / sizeof(u64)];

void CTRDGi_InitTaskThread (void * p_work) {
    OSIntrMode bak_cpsr = OS_DisableInterrupts();

    if (!ctrdgi_task_work) {
        CTRDGiTaskWork * const p = (CTRDGiTaskWork *)p_work;

        SDK_ASSERT(OS_IsThreadAvailable());

        ctrdgi_task_work = p;

        CTRDGi_InitTaskInfo(&p->end_task);

        CTRDGi_InitTaskInfo(&ctrdgi_task_list);

        p->list = NULL;

        OS_CreateThread(
            p->th, CTRDGi_TaskThread, p,
            ctrdg_task_stack + CTRDG_TASK_STACK_SIZE / sizeof(u64),
            CTRDG_TASK_STACK_SIZE, CTRDG_TASK_PRIORITY_DEFAULT
        );
        OS_WakeupThreadDirect(p->th);
    }

    (void)OS_RestoreInterrupts(bak_cpsr);
}

BOOL CTRDGi_IsTaskAvailable (void) {
    return (ctrdgi_task_work != NULL);
}

void CTRDGi_InitTaskInfo (CTRDGTaskInfo * pt) {
    SDK_ASSERT(pt != NULL);
    MI_CpuClear8(pt, sizeof(*pt));
}

BOOL CTRDGi_IsTaskBusy (volatile const CTRDGTaskInfo * pt) {
    return pt->busy != FALSE;
}

static void CTRDGi_TaskThread (void * arg) {
    CTRDGiTaskWork * const p = (CTRDGiTaskWork *)arg;

    for (;;) {
        CTRDGTaskInfo trg;
        MI_CpuClear8(&trg, sizeof(CTRDGTaskInfo));

        {
            OSIntrMode bak_cpsr = OS_DisableInterrupts();

            while (!p->list) {
                OS_SleepThread(NULL);
            }

            trg = *p->list;

            (void)OS_RestoreInterrupts(bak_cpsr);
        }

        if (trg.task) {
            trg.result = (u32)(*trg.task) (&trg);
        }

        {
            OSIntrMode bak_cpsr = OS_DisableInterrupts();

            CTRDG_TASK_FUNC callback = trg.callback;

            ctrdgi_task_list.busy = FALSE;

            if (callback) {
                (void)(*callback) (&trg);
            }

            if (ctrdgi_task_work == NULL) {
                break;
            }

            p->list = NULL;

            (void)OS_RestoreInterrupts(bak_cpsr);
        }
    }
    OS_TPrintf("task-thread end.\n");
    OS_ExitThread();
    return;
}

void CTRDGi_SetTask (CTRDGTaskInfo * pt, CTRDG_TASK_FUNC task, CTRDG_TASK_FUNC callback) {
    CTRDGiTaskWork * const p_work = ctrdgi_task_work;

    SDK_ASSERT(pt != NULL);
    SDK_ASSERT(CTRDGi_IsTaskAvailable());

    if (!CTRDGi_IsTaskAvailable()) {
        OS_TPanic("CTRDGi_SetTask() failed! (task-thread is not available now)");
    }

    if (ctrdgi_task_list.busy) {
        OS_TPanic("CTRDGi_SetTask() failed! (specified structure is busy)");
    }

    {
        OSIntrMode bak_cpsr = OS_DisableInterrupts();
        pt->busy = TRUE;
        pt->task = task;
        pt->callback = callback;

        if (pt == &p_work->end_task) {
            ctrdgi_task_work = NULL;
        }

        ctrdgi_task_list = *pt;

        p_work->list = &ctrdgi_task_list;
        OS_WakeupThreadDirect(p_work->th);

        (void)OS_RestoreInterrupts(bak_cpsr);
    }
}

void CTRDGi_EndTaskThread (CTRDG_TASK_FUNC callback) {
    OSIntrMode bak_cpsr = OS_DisableInterrupts();
    if (CTRDGi_IsTaskAvailable()) {
        (void)CTRDGi_SetTask(&ctrdgi_task_work->end_task, NULL, callback);
    }
    (void)OS_RestoreInterrupts(bak_cpsr);
}

void CTRDG_SetTaskThreadPriority (u32 priority) {
    if (ctrdgi_task_work) {
        CTRDGiTaskWork * const p = ctrdgi_task_work;
        (void)OS_SetThreadPriority(p->th, priority);
    }
}
