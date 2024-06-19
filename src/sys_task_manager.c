#include <nitro.h>
#include <string.h>

#include "functypes/sys_task_func.h"

#include "sys_task_manager.h"

typedef struct SysTask {
    SysTaskManager * manager;
    SysTask * prevTask;
    SysTask * nextTask;
    u32 priority;
    void * param;
    SysTaskFunc callback;
    u32 unk_18;
} SysTask;

typedef struct SysTaskManager {
    u16 maxTasks;
    u16 unk_02;
    SysTask firstTask;
    SysTask ** taskStack;
    SysTask * tasks;
    BOOL unk_28;
    SysTask * unk_2C;
    SysTask * unk_30;
} SysTaskManager;

static void SysTaskManager_InitTask(SysTaskManager * param0, SysTask * param1);
static void SysTaskManager_InitTasks(SysTaskManager * param0);
static SysTask * sub_0201CD38(SysTaskManager * param0);
static int sub_0201CD54(SysTaskManager * param0, SysTask * param1);
static SysTask * sub_0201CE28(SysTaskManager * param0, SysTaskFunc param1, void * param2, u32 param3);

static void SysTaskManager_InitTask(SysTaskManager *sysTaskMgr, SysTask *task)
{
    task->manager = sysTaskMgr;
    task->prevTask = task->nextTask = &sysTaskMgr->firstTask;
    task->priority = 0;
    task->param = NULL;
    task->callback = NULL;
}

static void SysTaskManager_InitTasks(SysTaskManager *sysTaskMgr)
{
    for (int i = 0; i < sysTaskMgr->maxTasks; i++) {
        SysTaskManager_InitTask(sysTaskMgr, &sysTaskMgr->tasks[i]);
        sysTaskMgr->taskStack[i] = &sysTaskMgr->tasks[i];
    }

    sysTaskMgr->unk_02 = 0;
}

static SysTask * sub_0201CD38 (SysTaskManager * param0)
{
    SysTask * v0;

    if (param0->unk_02 == param0->maxTasks) {
        return NULL;
    }

    v0 = param0->taskStack[param0->unk_02];
    param0->unk_02++;

    return v0;
}

static int sub_0201CD54 (SysTaskManager * param0, SysTask * param1)
{
    if (param0->unk_02 == 0) {
        return 0;
    }

    (param1)->manager = (param0);
    (param1)->prevTask = (param1)->nextTask = &(param0->firstTask);
    (param1)->priority = 0;
    (param1)->param = NULL;
    (param1)->callback = NULL;

    param0->unk_02--;
    param0->taskStack[param0->unk_02] = param1;

    return 1;
}

u32 SysTaskManager_GetRequiredSize(u32 maxTasks)
{
    return sizeof(SysTaskManager) + (sizeof(SysTask *) + sizeof(SysTask)) * maxTasks;
}

SysTaskManager *SysTaskManager_Init(u32 maxTasks, void *memory)
{
    GF_ASSERT(memory);
    SysTaskManager *sysTaskMgr = memory;

    sysTaskMgr->taskStack = (SysTask **)((u8 *)(sysTaskMgr) + sizeof(SysTaskManager));
    sysTaskMgr->tasks = (SysTask *)((u8 *)(sysTaskMgr->taskStack) + sizeof(SysTask *) * maxTasks);
    sysTaskMgr->maxTasks = maxTasks;
    sysTaskMgr->unk_02 = 0;
    sysTaskMgr->unk_28 = 0;

    SysTaskManager_InternalInit(sysTaskMgr);
    return sysTaskMgr;
}

void SysTaskManager_InternalInit(SysTaskManager *sysTaskMgr)
{
    SysTaskManager_InitTasks(sysTaskMgr);

    sysTaskMgr->firstTask.manager = sysTaskMgr;
    sysTaskMgr->firstTask.prevTask = sysTaskMgr->firstTask.nextTask = &sysTaskMgr->firstTask;
    sysTaskMgr->firstTask.priority = 0;
    sysTaskMgr->firstTask.param = NULL;
    sysTaskMgr->firstTask.callback = NULL;

    sysTaskMgr->unk_2C = sysTaskMgr->firstTask.nextTask;
}

void sub_0201CDD4 (SysTaskManager * param0)
{
    if (param0->unk_28) {
        return;
    }

    param0->unk_2C = param0->firstTask.nextTask;

    while (param0->unk_2C != &(param0->firstTask)) {
        param0->unk_30 = param0->unk_2C->nextTask;

        if (param0->unk_2C->unk_18 == 0) {
            if (param0->unk_2C->callback != NULL) {
                param0->unk_2C->callback(param0->unk_2C, param0->unk_2C->param);
            }
        } else {
            param0->unk_2C->unk_18 = 0;
        }

        param0->unk_2C = param0->unk_30;
    }

    param0->unk_2C->callback = NULL;
}

SysTask * sub_0201CE14 (SysTaskManager * param0, SysTaskFunc param1, void * param2, u32 param3)
{
    SysTask * v0;

    param0->unk_28 = 1;
    v0 = sub_0201CE28(param0, param1, param2, param3);
    param0->unk_28 = 0;

    return v0;
}

static SysTask * sub_0201CE28 (SysTaskManager * param0, SysTaskFunc param1, void * param2, u32 param3)
{
    SysTask * v0;
    SysTask * v1;

    v0 = sub_0201CD38(param0);

    if (v0 == NULL) {
        return NULL;
    }

    v0->priority = param3;
    v0->param = param2;
    v0->callback = param1;

    if (param0->unk_2C->callback != NULL) {
        if (param0->unk_2C->priority <= param3) {
            v0->unk_18 = 1;
        } else {
            v0->unk_18 = 0;
        }
    } else {
        v0->unk_18 = 0;
    }

    for (v1 = param0->firstTask.nextTask; v1 != &(param0->firstTask); v1 = v1->nextTask) {
        if (v1->priority > v0->priority) {
            v0->prevTask = v1->prevTask;
            v0->nextTask = v1;
            v1->prevTask->nextTask = v0;
            v1->prevTask = v0;

            if (v1 == param0->unk_30) {
                param0->unk_30 = v0;
            }

            return v0;
        }
    }

    if (param0->unk_30 == &(param0->firstTask)) {
        param0->unk_30 = v0;
    }

    v0->prevTask = param0->firstTask.prevTask;
    v0->nextTask = &(param0->firstTask);

    param0->firstTask.prevTask->nextTask = v0;
    param0->firstTask.prevTask = v0;

    return v0;
}

void sub_0201CEA8 (SysTask * param0)
{
    if (param0->manager->unk_30 == param0) {
        param0->manager->unk_30 = param0->nextTask;
    }

    param0->prevTask->nextTask = param0->nextTask;
    param0->nextTask->prevTask = param0->prevTask;

    sub_0201CD54(param0->manager, param0);
}

void sub_0201CECC (SysTask * param0, SysTaskFunc param1)
{
    param0->callback = param1;
}

void * SysTask_GetParam (SysTask * param0)
{
    return param0->param;
}

u32 sub_0201CED4 (SysTask * param0)
{
    return param0->priority;
}
