#ifndef POKEPLATINUM_SYS_TASK_EXTENSIONS_H
#define POKEPLATINUM_SYS_TASK_EXTENSIONS_H

#include "constants/heap.h"

#include "sys_task_manager.h"

SysTask *SysTask_StartAndAllocateParam(SysTaskFunc callback, int paramSize, u32 priority, enum HeapID heapID);
void SysTask_FinishAndFreeParam(SysTask *task);

#endif // POKEPLATINUM_SYS_TASK_EXTENSIONS_H
