#ifndef POKEPLATINUM_SYS_TASK_MANAGER_H
#define POKEPLATINUM_SYS_TASK_MANAGER_H

typedef struct SysTask SysTask;
typedef struct SysTaskManager SysTaskManager;
typedef void (*SysTaskFunc)(SysTask*, void*);

enum TaskState {
    TASK_STATE_ACTIVE = 0,
    TASK_STATE_INACTIVE,
};

typedef struct SysTask {
    SysTaskManager *manager;
    SysTask *prevTask;
    SysTask *nextTask;
    u32 priority;
    void *param;
    SysTaskFunc callback;
    enum TaskState state;
} SysTask;

typedef struct SysTaskManager {
    u16 maxTasks;
    u16 stackPointer;
    SysTask sentinelTask;
    SysTask **taskStack;
    SysTask *tasks;
    BOOL locked;            // The task manager can't execute while a task is being added
    SysTask *currentTask;   // The task that is currently being executed
    SysTask *nextTask;      // The task that will be executed next
} SysTaskManager;

u32 SysTaskManager_GetRequiredSize(u32 maxTasks);
SysTaskManager *SysTaskManager_Init(u32 maxTasks, void *memory);
void SysTaskManager_InternalInit(SysTaskManager *sysTaskMgr);
void SysTaskManager_ExecuteTasks(SysTaskManager *sysTaskMgr);
SysTask *SysTaskManager_AddTask(SysTaskManager *sysTaskMgr, SysTaskFunc callback, void *param, u32 priority);
void SysTask_Delete(SysTask *task);
void SysTask_SetCallback(SysTask *task, SysTaskFunc callback);
void *SysTask_GetParam(SysTask *task);
u32 SysTask_GetPriority(SysTask *task);

#endif // POKEPLATINUM_SYS_TASK_MANAGER_H
