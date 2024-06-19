#ifndef POKEPLATINUM_SYS_TASK_MANAGER_H
#define POKEPLATINUM_SYS_TASK_MANAGER_H

#include "struct_decls/sys_task.h"
#include "struct_decls/struct_0201CD88_decl.h"
#include "functypes/sys_task_func.h"

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
