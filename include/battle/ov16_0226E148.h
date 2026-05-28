#ifndef POKEPLATINUM_OV16_0226E148_H
#define POKEPLATINUM_OV16_0226E148_H

#include "struct_decls/battle_system.h"

#include "sys_task_manager.h"

SysTask *BattleSystem_StartStopRecordingTask(BattleSystem *battleSys);
void BattleSystem_EndStopRecordingTask(SysTask *sysTask);

#endif // POKEPLATINUM_OV16_0226E148_H
