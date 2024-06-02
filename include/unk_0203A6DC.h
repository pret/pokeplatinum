#ifndef POKEPLATINUM_UNK_0203A6DC_H
#define POKEPLATINUM_UNK_0203A6DC_H

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_0203A79C_decl.h"
#include "field/field_system_decl.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_0205EC34.h"
#include "savedata.h"

int FieldPlayerState_SaveSize(void);
int FieldOWState_SaveSize(void);
void FieldOWState_Init(UnkStruct_0203A79C * param0);
void FieldPlayerState_Init(FieldStatus * param0);
Location * sub_0203A720(FieldStatus * param0);
Location * FieldStatus_GetEntranceLocation(FieldStatus * param0);
Location * FieldStatus_GetPrevLocation(FieldStatus * param0);
Location * sub_0203A72C(FieldStatus * param0);
Location * sub_0203A730(FieldStatus * param0);
void sub_0203A734(FieldStatus * param0, Location * param1);
u16 * sub_0203A748(FieldStatus * param0);
u16 sub_0203A74C(const FieldStatus * param0);
void FieldStatus_SetWeather(FieldStatus * param0, u16 param1);
u16 sub_0203A75C(const FieldStatus * param0);
void FieldStatus_SetWarpId(FieldStatus * param0, u16 param1);
UnkStruct_020556C4 * sub_0203A76C(FieldStatus * param0);
int FieldStatus_GetCameraType(const FieldStatus * param0);
void FieldStatus_SetCameraType(FieldStatus * param0, int param1);
PlayerData * FieldStatus_GetPlayerData(FieldStatus * param0);
u16 * sub_0203A784(FieldStatus * param0);
u16 * sub_0203A788(FieldStatus * param0);
u16 * sub_0203A78C(FieldStatus * param0);
FieldStatus * SaveData_GetFieldStatus(SaveData * param0);
UnkStruct_0203A79C * sub_0203A79C(SaveData * param0);
void sub_0203A7A8(FieldSystem * fieldSystem);
void FieldSystem_LoadObjects(FieldSystem * fieldSystem);

#endif // POKEPLATINUM_UNK_0203A6DC_H
