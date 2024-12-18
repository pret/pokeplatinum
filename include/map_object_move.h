#ifndef POKEPLATINUM_MAP_OBJECT_MOVE_H
#define POKEPLATINUM_MAP_OBJECT_MOVE_H

#include <nitro/fx/fx.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system_decl.h"

void MapObject_InitMove(MapObject *param0);
void MapObject_Move(MapObject *param0);
u32 sub_02063E18(const MapObject *param0, const VecFx32 *param1, int param2, int param3, int param4, int param5);
u32 sub_02063E94(const MapObject *param0, int param1, int param2, int param3, int param4);
u32 sub_02063EBC(const MapObject *param0, int param1);
int sub_02063F00(const MapObject *param0, int param1, int param2, int param3);
int sub_02063FAC(const MapObject *param0, int param1, int param2, int param3);
int sub_02064004(const MapObject *param0, int param1, int param2, int param3);
int sub_0206406C(MapObject *param0, u32 param1);
int sub_020640A0(MapObject *param0, u32 param1);
int MapObject_IsOnSnow(MapObject *param0, u32 param1);
int sub_02064108(MapObject *param0, u32 param1);
int sub_0206413C(MapObject *param0, u32 param1);
int sub_0206415C(MapObject *param0, u32 param1);
int sub_0206417C(MapObject *param0, u32 param1);
int MapObject_GetDxFromDir(int param0);
int MapObject_GetDyFromDir(int param0);
void MapObject_StepDir(MapObject *mapObj, int dir);
void MapObject_UpdateCoords(MapObject *mapObj);
u32 sub_02064238(MapObject *param0, int param1);
void MapObject_AddVecToPos(MapObject *param0, const VecFx32 *param1);
void MapObject_MovePosInDir(MapObject *mapObj, int dir, fx32 distance);
int sub_020642F8(MapObject *param0);
int sub_02064390(MapObject *param0);
void VecFx32_StepDirection(int param0, VecFx32 *param1, fx32 param2);
void sub_02064450(int param0, int param1, VecFx32 *param2);
void sub_02064464(MapObject *param0);
int Direction_GetOpposite(int param0);
int sub_02064488(int param0, int param1, int param2, int param3);
int sub_020644A4(FieldSystem *fieldSystem, VecFx32 *param1);
int sub_020644D0(FieldSystem *fieldSystem, VecFx32 *param1, int param2);

#endif // POKEPLATINUM_MAP_OBJECT_MOVE_H
