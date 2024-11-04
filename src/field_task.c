#include "field_task.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"

#include "field_system.h"
#include "heap.h"

typedef struct FieldTaskEnv {
    int state;
    const OverlayManagerTemplate *overlayTemplate;
    void *overlayArgs;
} FieldTaskEnv;

static FieldTask *CreateTaskManager(FieldSystem *fieldSys, FieldTaskFunc taskFunc, void *taskEnv)
{
    FieldTask *task = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD_TASK, sizeof(FieldTask));
    task->prev = NULL;
    task->func = taskFunc;
    task->state = 0;
    task->env = taskEnv;
    task->dummy10 = 0;
    task->dummy14 = NULL;
    task->fieldSys = fieldSys;
    task->dummy1C = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD_TASK, sizeof(u32));

    return task;
}

FieldTask *FieldSystem_CreateTask(FieldSystem *fieldSys, FieldTaskFunc taskFunc, void *taskEnv)
{
    GF_ASSERT(fieldSys->task == NULL);

    FieldTask *task = CreateTaskManager(fieldSys, taskFunc, taskEnv);
    fieldSys->task = task;

    return task;
}

void FieldTask_InitJump(FieldTask *task, FieldTaskFunc taskFunc, void *taskEnv)
{
    task->func = taskFunc;
    task->state = 0;
    task->env = taskEnv;

    if (task->dummy14 != 0 || task->dummy14 != NULL) { // Double-comparison required to match
        Heap_FreeToHeap(task->dummy14);
        task->dummy10 = 0;
        task->dummy14 = NULL;
    }
}

FieldTask *FieldTask_InitCall(FieldTask *task, FieldTaskFunc taskFunc, void *taskEnv)
{
    FieldTask *next = CreateTaskManager(task->fieldSys, taskFunc, taskEnv);
    next->prev = task;
    task->fieldSys->task = next;

    return next;
}

BOOL FieldTask_Run(FieldSystem *fieldSys)
{
    if (fieldSys->task == NULL) {
        return FALSE;
    }

    // Run invocations through the call-stack until it is empty.
    while (fieldSys->task->func(fieldSys->task) == TRUE) {
        FieldTask *prev = fieldSys->task->prev;

        if (fieldSys->task->dummy14) {
            Heap_FreeToHeap(fieldSys->task->dummy14);
        }

        Heap_FreeToHeap(fieldSys->task->dummy1C);
        Heap_FreeToHeap(fieldSys->task);

        fieldSys->task = prev;
        if (prev == NULL) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL FieldSystem_IsRunningTask(FieldSystem *fieldSys)
{
    return fieldSys->task != NULL;
}

BOOL FieldSystem_IsRunningApplication(FieldSystem *fieldSys)
{
    return FieldSystem_HasParentProcess(fieldSys) || FieldSystem_HasChildProcess(fieldSys);
}

void FieldSystem_StartFieldMap(FieldSystem *fieldSys)
{
    FieldSystem_StartFieldMapInner(fieldSys);
}

BOOL FieldSystem_IsRunningFieldMap(FieldSystem *fieldSys)
{
    // Explicit conditional-branch required to match.
    if (FieldSystem_IsRunningFieldMapInner(fieldSys)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static BOOL RunChildApplication(FieldTask *task)
{
    FieldSystem *fieldSys = FieldTask_GetFieldSystem(task);
    FieldTaskEnv *env = FieldTask_GetEnv(task);

    switch (env->state) {
    case 0:
        FieldSystem_StartChildProcess(fieldSys, env->overlayTemplate, env->overlayArgs);
        env->state++;
        break;

    case 1:
        if (FieldSystem_IsRunningApplication(fieldSys)) {
            break;
        }

        Heap_FreeToHeap(env);
        return TRUE;
    }

    return FALSE;
}

void FieldTask_RunApplication(FieldTask *task, const OverlayManagerTemplate *overlayTemplate, void *overlayArgs)
{
    FieldTaskEnv *env = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD_TASK, sizeof(FieldTaskEnv));
    env->state = 0;
    env->overlayTemplate = overlayTemplate;
    env->overlayArgs = overlayArgs;

    FieldTask_InitCall(task, RunChildApplication, env);
}

FieldSystem *FieldTask_GetFieldSystem(FieldTask *task)
{
    return task->fieldSys;
}

void *FieldTask_GetEnv(FieldTask *task)
{
    return task->env;
}

int *FieldTask_GetState(FieldTask *task)
{
    return &task->state;
}

u32 FieldTask_GetDummy1CVal(FieldTask *task)
{
    return *task->dummy1C;
}
