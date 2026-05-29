#ifndef POKEPLATINUM_STOP_RECORDING_TASK_DATA_H
#define POKEPLATINUM_STOP_RECORDING_TASK_DATA_H

#include "struct_decls/battle_system.h"

#include "sys_task_manager.h"

SysTask *BattleSystem_StartStopRecordingTask(BattleSystem *battleSys);
void BattleSystem_EndStopRecordingTask(SysTask *sysTask);

#endif // POKEPLATINUM_STOP_RECORDING_TASK_DATA_H
