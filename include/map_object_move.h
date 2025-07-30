#ifndef POKEPLATINUM_MAP_OBJECT_MOVE_H
#define POKEPLATINUM_MAP_OBJECT_MOVE_H

#include <nitro/fx/fx.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system_decl.h"

void MapObject_InitMove(MapObject *mapObj);
void MapObject_Move(MapObject *mapObj);
u32 sub_02063E18(const MapObject *mapObj, const VecFx32 *pos, int x, int y, int z, int dir);
u32 sub_02063E94(const MapObject *mapObj, int x, int y, int z, int dir);
u32 sub_02063EBC(const MapObject *mapObj, int dir);
int sub_02063F00(const MapObject *mapObj, int x, int y, int z);
int MapObject_IsOutOfRange(const MapObject *mapObj, int x, int y, int z);
int sub_02064004(const MapObject *mapObj, int x, int z, int dir);
int MapObject_IsOnWater(MapObject *mapObj, u32 tileBehavior);
int MapObject_IsOnSand(MapObject *mapObj, u32 tileBehavior);
int MapObject_IsOnSnow(MapObject *mapObj, u32 tileBehavior);
int MapObject_IsOnShallowSnow(MapObject *mapObj, u32 tileBehavior);
int MapObject_IsOnBridge(MapObject *mapObj, u32 tileBehavior);
int MapObject_IsOnBikeBridgeNorthSouth(MapObject *mapObj, u32 tileBehavior);
int MapObject_IsOnBikeBridgeEastWest(MapObject *mapObj, u32 tileBehavior);
int MapObject_GetDxFromDir(int dir);
int MapObject_GetDzFromDir(int dir);
void MapObject_StepDir(MapObject *mapObj, int dir);
void MapObject_UpdateCoords(MapObject *mapObj);
u32 MapObject_GetTileBehaviorFromDir(MapObject *mapObj, int dir);
void MapObject_AddVecToPos(MapObject *mapObj, const VecFx32 *vec);
void MapObject_MovePosInDir(MapObject *mapObj, int dir, fx32 distance);
int MapObject_RecalculateObjectHeight(MapObject *mapObj);
int MapObject_SetTileBehaviors(MapObject *mapObj);
void VecFx32_StepDirection(int param0, VecFx32 *vec, fx32 val);
void sub_02064450(int x, int z, VecFx32 *pos);
void sub_02064464(MapObject *mapObj);
int Direction_GetOpposite(int param0);
int sub_02064488(int x, int z, int xPrev, int zPrev);
int sub_020644A4(FieldSystem *fieldSystem, VecFx32 *pos);
int MapObject_RecalculatePositionHeight(FieldSystem *fieldSystem, VecFx32 *pos, int dynamicHeightCalculationEnabled);

#endif // POKEPLATINUM_MAP_OBJECT_MOVE_H
