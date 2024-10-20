#ifndef POKEPLATINUM_UNK_0203A6DC_H
#define POKEPLATINUM_UNK_0203A6DC_H

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_0203A79C_decl.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_0205EC34.h"

#include "field/field_system_decl.h"

#include "savedata.h"

int FieldOverworldState_Size(void);
int FieldOverworldSave_Size(void);
void FieldOverworldSave_Init(FieldOverworldSave *param0);
void FieldOverworldState_Init(FieldOverworldState *param0);
Location *sub_0203A720(FieldOverworldState *param0);
Location *FieldOverworldState_GetEntranceLocation(FieldOverworldState *param0);
Location *FieldOverworldState_GetPrevLocation(FieldOverworldState *param0);
Location *sub_0203A72C(FieldOverworldState *param0);
Location *FieldOverworldState_GetSpecialLocation(FieldOverworldState *param0);
void FieldOverworldState_SetSpecialLocation(FieldOverworldState *param0, Location *param1);
u16 *sub_0203A748(FieldOverworldState *param0);
u16 FieldOverworldState_GetWeather(const FieldOverworldState *param0);
void FieldOverworldState_SetWeather(FieldOverworldState *param0, u16 param1);
u16 FieldOverworldState_GetWarpId(const FieldOverworldState *param0);
void FieldOverworldState_SetWarpId(FieldOverworldState *param0, u16 param1);
UnkStruct_020556C4 *sub_0203A76C(FieldOverworldState *param0);
int FieldOverworldState_GetCameraType(const FieldOverworldState *param0);
void FieldOverworldState_SetCameraType(FieldOverworldState *param0, int param1);
PlayerData *FieldOverworldState_GetPlayerData(FieldOverworldState *param0);
u16 *sub_0203A784(FieldOverworldState *param0);
u16 *sub_0203A788(FieldOverworldState *param0);
u16 *sub_0203A78C(FieldOverworldState *param0);
FieldOverworldState *SaveData_GetFieldOverworldState(SaveData *param0);
FieldOverworldSave *SaveData_GetFieldOverworldSave(SaveData *param0);
void FieldSystem_SaveObjects(FieldSystem *fieldSystem);
void FieldSystem_LoadObjects(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_UNK_0203A6DC_H
