#ifndef POKEPLATINUM_FIELD_MAP_CHANGE_H
#define POKEPLATINUM_FIELD_MAP_CHANGE_H

#include "field/field_system_decl.h"

#include "field_task.h"
#include "location.h"

void FieldMapChange_Set3DDisplay(FieldSystem *fieldSystem);
void FieldMapChange_UpdateGameData(FieldSystem *fieldSystem, BOOL param1);
void FieldMapChange_UpdateGameDataDistortionWorld(FieldSystem *fieldSystem, BOOL param1);
void sub_02053494(FieldSystem *fieldSystem);
void FieldSystem_SetLoadNewGameSpawnTask(FieldSystem *fieldSystem);
void FieldSystem_SetLoadSavedGameMapTask(FieldSystem *fieldSystem);
void FieldSystem_StartLoadMapFromErrorTask(FieldSystem *fieldSystem);
void FieldSystem_StartChangeMapTask(FieldTask *task, const Location *param1);
void FieldTask_ChangeMapByLocation(FieldTask *task, const Location *param1);
void FieldTask_ChangeMapToLocation(FieldTask *task, int param1, int param2, int param3, int param4, int param5);
void FieldTask_StartMapChangeFull(FieldTask *task, int param1, int param2, int param3, int param4, int param5);
void FieldTask_StartMapChangeFly(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, int param5);
void FieldTask_ChangeMapChangeFly(FieldTask *task, int param1, int param2, int param3, int param4, int param5);
void FieldTask_ChangeMapChangeByDig(FieldTask *task, const Location *location, u32 param2);
void FieldSystem_StartMapChangeWarpTask(FieldSystem *fieldSystem, int param1, int param2);
void *sub_02053FAC(FieldSystem *fieldSystem);
void FieldTask_SetUndergroundMapChange(FieldSystem *fieldSystem);
BOOL FieldTask_MapChangeToUnderground(FieldTask *task);
BOOL sub_0205430C(FieldTask *task);
FieldTaskFunc FieldMapChange_GetMapChangeUndergroundTask(const FieldSystem *fieldSystem);
void sub_020544F0(FieldTask *task, const Location *param1);
void sub_020545EC(FieldSystem *fieldSystem);
void sub_02054708(FieldTask *task);
void sub_02054800(FieldTask *task, int param1, int param2, int param3, int param4, int param5);
void sub_02054864(FieldTask *task);

#endif // POKEPLATINUM_FIELD_MAP_CHANGE_H
