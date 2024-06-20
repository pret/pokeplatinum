#ifndef POKEPLATINUM_UNK_0200D9E8_H
#define POKEPLATINUM_UNK_0200D9E8_H

#include "sys_task_manager.h"

SysTask * SysTask_Start(SysTaskFunc param0, void * param1, u32 param2);
SysTask * CoreSys_ExecuteOnVBlank(SysTaskFunc param0, void * param1, u32 param2);
SysTask * sub_0200DA20(SysTaskFunc param0, void * param1, u32 param2);
SysTask * CoreSys_ExecuteAfterVBlank(SysTaskFunc param0, void * param1, u32 param2);
void SysTask_Done(SysTask * param0);

#endif // POKEPLATINUM_UNK_0200D9E8_H
