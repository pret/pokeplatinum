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
void FieldSystem_StartChangeMapTask(FieldTask *taskMan, const Location *param1);
void FieldTask_ChangeMapByLocation(FieldTask *taskMan, const Location *param1);
void FieldTask_ChangeMapToLocation(FieldTask *taskMan, int param1, int param2, int param3, int param4, int param5);
void FieldTask_StartMapChangeFull(FieldTask *taskMan, int param1, int param2, int param3, int param4, int param5);
void FieldTask_StartMapChangeFly(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, int param5);
void FieldTask_ChangeMapChangeFly(FieldTask *taskMan, int param1, int param2, int param3, int param4, int param5);
void FieldTask_ChangeMapChangeByDig(FieldTask *taskMan, const Location *location, u32 param2);
void FieldSystem_StartMapChangeWarpTask(FieldSystem *fieldSystem, int param1, int param2);
void *sub_02053FAC(FieldSystem *fieldSystem);
void FieldTask_SetUndergroundMapChange(FieldSystem *fieldSystem);
BOOL FieldTask_MapChangeToUnderground(FieldTask *taskMan);
BOOL sub_0205430C(FieldTask *taskMan);
FieldTaskFunc FieldMapChange_GetMapChangeUndergroundTask(const FieldSystem *fieldSystem);
void sub_020544F0(FieldTask *taskMan, const Location *param1);
void sub_020545EC(FieldSystem *fieldSystem);
void sub_02054708(FieldTask *taskMan);
void sub_02054800(FieldTask *taskMan, int param1, int param2, int param3, int param4, int param5);
void sub_02054864(FieldTask *taskMan);

#endif // POKEPLATINUM_FIELD_MAP_CHANGE_H
