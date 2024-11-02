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
void FieldSystem_StartChangeMapTask(FieldTask *param0, const Location *param1);
void FieldTask_ChangeMapByLocation(FieldTask *param0, const Location *param1);
void FieldTask_ChangeMapToLocation(FieldTask *param0, int param1, int param2, int param3, int param4, int param5);
void FieldTask_StartMapChangeFull(FieldTask *param0, int param1, int param2, int param3, int param4, int param5);
void FieldTask_StartMapChangeFly(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, int param5);
void FieldTask_ChangeMapChangeFly(FieldTask *param0, int param1, int param2, int param3, int param4, int param5);
void FieldTask_ChangeMapChangeByDig(FieldTask *param0, const Location *param1, u32 param2);
void FieldSystem_StartMapChangeWarpTask(FieldSystem *fieldSystem, int param1, int param2);
void *sub_02053FAC(FieldSystem *fieldSystem);
void FieldTask_SetUndergroundMapChange(FieldSystem *fieldSystem);
BOOL FieldTask_MapChangeToUnderground(FieldTask *param0);
BOOL sub_0205430C(FieldTask *param0);
FieldTaskFunc FieldMapChange_GetMapChangeUndergroundTask(const FieldSystem *fieldSystem);
void sub_020544F0(FieldTask *param0, const Location *param1);
void sub_020545EC(FieldSystem *fieldSystem);
void sub_02054708(FieldTask *param0);
void sub_02054800(FieldTask *param0, int param1, int param2, int param3, int param4, int param5);
void sub_02054864(FieldTask *param0);

#endif // POKEPLATINUM_FIELD_MAP_CHANGE_H
