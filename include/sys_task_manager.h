#ifndef POKEPLATINUM_SYS_TASK_MANAGER_H
#define POKEPLATINUM_SYS_TASK_MANAGER_H

#include "struct_decls/sys_task.h"
#include "struct_decls/struct_0201CD88_decl.h"
#include "functypes/sys_task_func.h"

u32 SysTaskManager_GetRequiredSize(u32 param0);
SysTaskManager * SysTaskManager_Init(u32 param0, void * param1);
void SysTaskManager_InternalInit(SysTaskManager * param0);
void SysTaskManager_ExecuteTasks(SysTaskManager * param0);
SysTask * SysTaskManager_AddTask(SysTaskManager * param0, SysTaskFunc param1, void * param2, u32 param3);
void SysTask_Delete(SysTask * param0);
void SysTask_SetCallback(SysTask * param0, SysTaskFunc param1);
void * SysTask_GetParam(SysTask * param0);
u32 SysTask_GetPriority(SysTask * param0);

#endif // POKEPLATINUM_SYS_TASK_MANAGER_H
