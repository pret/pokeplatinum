#ifndef POKEPLATINUM_UNK_0203A6DC_H
#define POKEPLATINUM_UNK_0203A6DC_H

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_0203A79C_decl.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_0205EC34.h"

#include "field/field_system_decl.h"

#include "location.h"
#include "savedata.h"

int FieldOverworldState_Size(void);
int FieldOverworldSave_Size(void);
void FieldOverworldSave_Init(FieldOverworldSave *fieldSave);
void FieldOverworldState_Init(FieldOverworldState *fieldState);
Location *FieldOverworldState_GetPlayerLocation(FieldOverworldState *fieldState);
Location *FieldOverworldState_GetEntranceLocation(FieldOverworldState *fieldState);
Location *FieldOverworldState_GetPrevLocation(FieldOverworldState *fieldState);
Location *FieldOverworldState_GetExitLocation(FieldOverworldState *fieldState);
Location *FieldOverworldState_GetSpecialLocation(FieldOverworldState *fieldState);
void FieldOverworldState_SetSpecialLocation(FieldOverworldState *fieldState, Location *location);
u16 *FieldOverworldState_GetSpecialBGM(FieldOverworldState *fieldState);
u16 FieldOverworldState_GetWeather(const FieldOverworldState *fieldState);
void FieldOverworldState_SetWeather(FieldOverworldState *fieldState, u16 weather);
u16 FieldOverworldState_GetWarpId(const FieldOverworldState *fieldState);
void FieldOverworldState_SetWarpId(FieldOverworldState *fieldState, u16 warpId);
OverworldMapHistory *FieldOverworldState_GetMapHistory(FieldOverworldState *fieldState);
int FieldOverworldState_GetCameraType(const FieldOverworldState *fieldState);
void FieldOverworldState_SetCameraType(FieldOverworldState *fieldState, int type);
PlayerData *FieldOverworldState_GetPlayerData(FieldOverworldState *fieldState);
u16 *FieldOverworldState_GetSafariBallCount(FieldOverworldState *fieldState);
u16 *FieldOverworldState_GetSafariStepCount(FieldOverworldState *fieldState);
u16 *FieldOverworldState_GetPoisonStepCount(FieldOverworldState *fieldState);
FieldOverworldState *SaveData_GetFieldOverworldState(SaveData *saveData);
FieldOverworldSave *SaveData_GetFieldOverworldSave(SaveData *saveData);
void FieldSystem_SaveObjects(FieldSystem *fieldSystem);
void FieldSystem_LoadObjects(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_UNK_0203A6DC_H
