#ifndef POKEPLATINUM_SYS_TASK_H
#define POKEPLATINUM_SYS_TASK_H

#include "sys_task_manager.h"

// Note: Tasks are executed in order of priority, from lowest to highest.
SysTask *SysTask_Start(SysTaskFunc callback, void *param, u32 priority);
SysTask *SysTask_ExecuteOnVBlank(SysTaskFunc callback, void *param, u32 priority);
SysTask *SysTask_CreateOnPrintQueue(SysTaskFunc callback, void *param, u32 priority);
SysTask *SysTask_ExecuteAfterVBlank(SysTaskFunc callback, void *param, u32 priority);
void SysTask_Done(SysTask *task);

#endif // POKEPLATINUM_SYS_TASK_H
