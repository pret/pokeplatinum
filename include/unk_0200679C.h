#ifndef POKEPLATINUM_UNK_0200679C_H
#define POKEPLATINUM_UNK_0200679C_H

#include "struct_decls/sys_task.h"
#include "functypes/sys_task_func.h"

SysTask *SysTask_StartAndAllocateParam(SysTaskFunc callback, int paramSize, u32 priority, const u32 heapID);
void SysTask_FinishAndFreeParam(SysTask *task);

#endif // POKEPLATINUM_UNK_0200679C_H
