#ifndef POKEPLATINUM_SYS_TASK_MANAGER_H
#define POKEPLATINUM_SYS_TASK_MANAGER_H

#include "struct_decls/sys_task.h"
#include "struct_decls/struct_0201CD88_decl.h"
#include "functypes/sys_task_func.h"

u32 SysTaskManager_GetRequiredSize(u32 param0);
SysTaskManager * SysTaskManager_Init(u32 param0, void * param1);
void SysTaskManager_InternalInit(SysTaskManager * param0);
void sub_0201CDD4(SysTaskManager * param0);
SysTask * sub_0201CE14(SysTaskManager * param0, SysTaskFunc param1, void * param2, u32 param3);
void sub_0201CEA8(SysTask * param0);
void sub_0201CECC(SysTask * param0, SysTaskFunc param1);
void * SysTask_GetParam(SysTask * param0);
u32 sub_0201CED4(SysTask * param0);

#endif // POKEPLATINUM_SYS_TASK_MANAGER_H
