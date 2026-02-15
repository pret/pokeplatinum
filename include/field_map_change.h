#ifndef POKEPLATINUM_FIELD_MAP_CHANGE_H
#define POKEPLATINUM_FIELD_MAP_CHANGE_H

#include "field/field_system_decl.h"
#include "overlay006/field_warp.h"

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
void FieldTask_ChangeMapToLocation(FieldTask *task, int mapId, int warpId, int x, int z, int dir);
void FieldTask_StartMapChangeFull(FieldTask *task, int mapId, int warpId, int x, int z, int dir);
void FieldTask_StartMapChangeFly(FieldSystem *fieldSystem, int mapId, int warpId, int x, int z, int dir);
void FieldTask_ChangeMapChangeFly(FieldTask *task, int mapId, int warpId, int x, int z, int dir);
void FieldTask_ChangeMapByFieldWarp(FieldTask *task, const Location *location, enum FieldWarpType param2);
void FieldSystem_StartMapChangeWarpTask(FieldSystem *fieldSystem, int param1, int param2);
void *sub_02053FAC(FieldSystem *fieldSystem);
void FieldTask_SetUndergroundMapChange(FieldSystem *fieldSystem);
BOOL FieldTask_MapChangeToUnderground(FieldTask *task);
BOOL FieldTask_MapChangeFromUnderground(FieldTask *task);
FieldTaskFunc FieldMapChange_GetMapChangeUndergroundTask(const FieldSystem *fieldSystem);
void sub_020544F0(FieldTask *task, const Location *param1);
void sub_020545EC(FieldSystem *fieldSystem);
void sub_02054708(FieldTask *task);
void FieldTask_StartChangeMapColosseum(FieldTask *task, int mapId, int warpId, int x, int z, int dir);
void sub_02054864(FieldTask *task);

#endif // POKEPLATINUM_FIELD_MAP_CHANGE_H
