#ifndef NITRO_CTRDG_TASK_H_
#define NITRO_CTRDG_TASK_H_

#include <nitro.h>

#define CTRDG_TASK_PRIORITY_DEFAULT 20

#define CTRDG_TASK_STACK_SIZE 1024

struct CTRDGTaskInfo_tag;

typedef u32 (* CTRDG_TASK_FUNC) (struct CTRDGTaskInfo_tag *);

typedef struct CTRDGTaskInfo_tag {
    CTRDG_TASK_FUNC task;
    CTRDG_TASK_FUNC callback;
    u32 result;
    u8 * data;
    u8 * adr;
    u32 offset;
    u32 size;
    u8 * dst;
    u16 sec_num;
    u8 busy;
    u8 param[1];
} CTRDGTaskInfo;

typedef struct {
    OSThread th[1];
    CTRDGTaskInfo * volatile list;
    CTRDGTaskInfo end_task;
} CTRDGiTaskWork;

void CTRDGi_InitTaskThread(void * p_work);

BOOL CTRDGi_IsTaskAvailable(void);

void CTRDGi_InitTaskInfo(CTRDGTaskInfo * pt);

BOOL CTRDGi_IsTaskBusy(volatile const CTRDGTaskInfo * pt);

void CTRDGi_SetTask(CTRDGTaskInfo * pt, CTRDG_TASK_FUNC task, CTRDG_TASK_FUNC callback);

void CTRDGi_EndTaskThread(CTRDG_TASK_FUNC callback);

void CTRDG_SetTaskThreadPriority(u32 priority);

#endif
