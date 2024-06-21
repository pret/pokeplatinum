#ifndef POKEPLATINUM_UNK_0200679C_H
#define POKEPLATINUM_UNK_0200679C_H

#include "sys_task_manager.h"

SysTask *SysTask_StartAndAllocateParam(SysTaskFunc callback, int paramSize, u32 priority, const u32 heapID);
void SysTask_FinishAndFreeParam(SysTask *task);

#endif // POKEPLATINUM_UNK_0200679C_H
