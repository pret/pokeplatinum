#ifndef POKEPLATINUM_UNK_02061804_H
#define POKEPLATINUM_UNK_02061804_H

#include <nitro/fx/fx.h>

#include "constants/map_object.h"

#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_02061D3C.h"

#include "field/field_system_decl.h"
#include "functypes/funcptr_020EDF0C.h"
#include "functypes/funcptr_020EDF0C_1.h"
#include "functypes/funcptr_020EDF0C_2.h"
#include "overlay005/funcptr_ov5_021FB0F0.h"
#include "overlay005/funcptr_ov5_021FB0F0_1.h"
#include "overlay005/funcptr_ov5_021FB0F0_2.h"
#include "overlay005/funcptr_ov5_021FB0F0_3.h"
#include "overlay005/funcptr_ov5_021FB0F0_4.h"
#include "overlay005/struct_ov5_021ED0A4.h"

#include "map_header_data.h"
#include "narc.h"
#include "sys_task_manager.h"

MapObjectManager *MapObjectMan_New(FieldSystem *fieldSystem, int param1, int param2);
void MapObjectMan_Delete(MapObjectManager *mapObjMan);
void sub_0206184C(MapObjectManager *mapObjMan, int param1, int param2, int param3, const ObjectEvent *objectEvent);
MapObject *MapObjectMan_AddMapObjectFromHeader(const MapObjectManager *mapObjMan, const ObjectEvent *objectEvent, int param2);
MapObject *MapObjectMan_AddMapObject(const MapObjectManager *mapObjMan, int param1, int param2, int param3, int param4, int param5, int param6);
MapObject *sub_02061A74(const MapObjectManager *mapObjMan, int param1, int objEventCount, int param3, const ObjectEvent *objectEvent);
void sub_02061AB4(MapObject *mapObj, int param1);
void sub_02061AD4(MapObject *mapObj, int param1);
void MapObject_Delete(MapObject *mapObj);
void sub_02061B28(MapObject *mapObj);
void sub_02061B48(MapObject *mapObj);
void MapObjectMan_DeleteAll(MapObjectManager *mapObjMan);
void sub_02061BF0(MapObjectManager *mapObjMan);
void sub_02061C48(MapObjectManager *mapObjMan);
void MapObjectMan_SaveAll(FieldSystem *fieldSystem, const MapObjectManager *mapObjMan, MapObjectSave *mapObjSave, int param3);
void MapObjectMan_LoadAllObjects(const MapObjectManager *mapObjMan, MapObjectSave *mapObjSave, int param2);
void sub_02062068(const MapObjectManager *mapObjMan, int param1, int param2, const ObjectEvent *objectEvent);
MapObject *MapObjMan_LocalMapObjByIndex(const MapObjectManager *mapObjMan, int index);
MapObject *sub_02062570(const MapObjectManager *mapObjMan, int movementType);
int sub_020625B0(const MapObjectManager *mapObjMan, MapObject **mapObj, int *param2, u32 param3);
int MapObject_HasNoScript(const MapObject *mapObj);
int sub_02062758(const MapObject *mapObj, int param1);
int sub_02062764(const MapObject *mapObj, int param1, int param2);
int sub_020627B4(const MapObject *mapObj, int param1, int param2, int param3);
void MapObjectMan_SetMaxObjects(MapObjectManager *mapObjMan, int maxObjs);
int MapObjectMan_GetMaxObjects(const MapObjectManager *mapObjMan);
void MapObjectMan_SetStatusFlagOn(MapObjectManager *mapObjMan, u32 flag);
void MapObjectMan_SetStatusFlagOff(MapObjectManager *mapObjMan, u32 flag);
u32 MapObjectMan_CheckStatus(const MapObjectManager *mapObjMan, u32 flag);
void sub_02062854(MapObjectManager *mapObjMan, int param1);
int sub_02062858(const MapObjectManager *mapObjMan);
UnkStruct_ov5_021ED0A4 *sub_0206285C(const MapObjectManager *mapObjMan);
void MapObjectMan_SetMapObject(MapObjectManager *mapObjMan, MapObject *mapObj);
const MapObject *MapObjectMan_GetMapObjectConst(const MapObjectManager *mapObjMan);
MapObject *MapObjectMan_GetMapObject(const MapObjectManager *mapObjMan);
void sub_02062880(const MapObject **mapObj);
void MapObjectMan_SetFieldSystem(MapObjectManager *mapObjMan, FieldSystem *fieldSystem);
FieldSystem *MapObjectMan_FieldSystem(const MapObjectManager *mapObjMan);
void MapObjectMan_GetNARC(MapObjectManager *mapObjMan, NARC *narc);
NARC *sub_020628A0(const MapObjectManager *mapObjMan);
void MapObject_SetStatus(MapObject *mapObj, u32 status);
u32 MapObject_GetStatus(const MapObject *mapObj);
void MapObject_SetStatusFlagOn(MapObject *mapObj, u32 flag);
void MapObject_SetStatusFlagOff(MapObject *mapObj, u32 flag);
u32 MapObject_CheckStatus(const MapObject *mapObj, u32 flag);
BOOL MapObject_CheckStatusFlag(const MapObject *mapObj, u32 flag);
void sub_020628E8(MapObject *mapObj, u32 param1);
u32 sub_020628EC(const MapObject *mapObj);
void sub_020628F0(MapObject *mapObj, u32 param1);
void sub_020628F8(MapObject *mapObj, u32 param1);
u32 sub_02062904(const MapObject *mapObj, u32 param1);
void MapObject_SetLocalID(MapObject *mapObj, u32 localID);
u32 MapObject_GetLocalID(const MapObject *mapObj);
void sub_02062914(MapObject *mapObj, int param1);
int sub_02062918(const MapObject *mapObj);
void MapObject_SetGraphicsID(MapObject *mapObj, u32 graphicsID);
u32 MapObject_GetGraphicsID(const MapObject *mapObj);
u32 sub_02062924(const MapObject *mapObj);
void MapObject_SetMovementType(MapObject *mapObj, u32 movementType);
u32 MapObject_GetMovementType(const MapObject *mapObj);
void MapObject_SetTrainerType(MapObject *mapObj, u32 trainerType);
u32 MapObject_GetTrainerType(const MapObject *mapObj);
void MapObject_SetFlag(MapObject *mapObj, u32 flag);
u32 MapObject_GetFlag(const MapObject *mapObj);
void MapObject_SetScript(MapObject *mapObj, u32 script);
u32 MapObject_GetScript(const MapObject *mapObj);
void MapObject_SetInitialDir(MapObject *mapObj, int initialDir);
u32 MapObject_GetInitialDir(const MapObject *mapObj);
void MapObject_Face(MapObject *mapObj, int dir);
void MapObject_TryFace(MapObject *mapObj, int dir);
int MapObject_GetFacingDir(const MapObject *mapObj);
int MapObject_GetPrevFacingDir(const MapObject *mapObj);
void MapObject_Turn(MapObject *mapObj, int dir);
int MapObject_GetMovingDir(const MapObject *mapObj);
void MapObject_TryFaceAndTurn(MapObject *mapObj, int dir);
void MapObject_SetDataAt(MapObject *mapObj, int value, int index);
int MapObject_GetDataAt(const MapObject *mapObj, int index);
void MapObject_SetMovementRangeX(MapObject *mapObj, int movementRangeX);
int MapObject_GetMovementRangeX(const MapObject *mapObj);
void MapObject_SetMovementRangeZ(MapObject *mapObj, int movementRangeZ);
int MapObject_GetMovementRangeZ(const MapObject *mapObj);
void sub_02062A0C(MapObject *mapObj, u32 param1);
u32 sub_02062A14(const MapObject *mapObj);
void sub_02062A1C(MapObject *mapObj, SysTask *task);
SysTask *sub_02062A24(const MapObject *mapObj);
void sub_02062A2C(const MapObject *mapObj);
void MapObject_SetMapObjectManager(MapObject *mapObj, const MapObjectManager *mapObjMan);
const MapObjectManager *MapObject_MapObjectManager(const MapObject *mapObj);
void *sub_02062A54(MapObject *mapObj, int param1);
void *sub_02062A78(MapObject *mapObj);
void *sub_02062A7C(MapObject *mapObj, int param1);
void *sub_02062AA0(MapObject *mapObj);
void *MapObject_InitMovementData(MapObject *mapObj, int size);
void *MapObject_GetMovementData(MapObject *mapObj);
void *sub_02062ACC(MapObject *mapObj, int param1);
void *sub_02062AF0(MapObject *mapObj);
void sub_02062AF8(MapObject *mapObj, UnkFuncPtr_020EDF0C param1);
void sub_02062B00(MapObject *mapObj);
void sub_02062B0C(MapObject *mapObj, UnkFuncPtr_020EDF0C_1 param1);
void sub_02062B14(MapObject *mapObj);
void sub_02062B20(MapObject *mapObj, UnkFuncPtr_020EDF0C_2 param1);
void sub_02062B28(MapObject *mapObj);
void sub_02062B34(MapObject *mapObj);
void sub_02062B4C(MapObject *mapObj, UnkFuncPtr_ov5_021FB0F0 param1);
void sub_02062B54(MapObject *mapObj);
void sub_02062B60(MapObject *mapObj, UnkFuncPtr_ov5_021FB0F0_1 param1);
void sub_02062B68(MapObject *mapObj);
void sub_02062B74(MapObject *mapObj, UnkFuncPtr_ov5_021FB0F0_2 param1);
void sub_02062B7C(MapObject *mapObj);
void sub_02062B88(MapObject *mapObj, UnkFuncPtr_ov5_021FB0F0_3 param1);
void sub_02062B90(MapObject *mapObj);
void sub_02062B9C(MapObject *mapObj, UnkFuncPtr_ov5_021FB0F0_4 param1);
void sub_02062BA4(MapObject *mapObj);
void MapObject_SetMovementAction(MapObject *mapObj, int movementAction);
int MapObject_GetMovementAction(const MapObject *mapObj);
void MapObject_SetMovementStep(MapObject *mapObj, int movementStep);
void MapObject_AdvanceMovementStep(MapObject *mapObj);
int MapObject_GetMovementStep(const MapObject *mapObj);
void MapObject_SetCurrTileBehavior(MapObject *mapObj, u32 param1);
u32 MapObject_GetCurrTileBehavior(const MapObject *mapObj);
void MapObject_SetPrevTileBehavior(MapObject *mapObj, u32 param1);
u32 MapObject_GetPrevTileBehavior(const MapObject *mapObj);
FieldSystem *MapObject_FieldSystem(const MapObject *mapObj);
int sub_02062C0C(const MapObject *mapObj);
int sub_02062C18(const MapObject *mapObj);
void MapObjectMan_StopAllMovement(MapObjectManager *mapObjMan);
void sub_02062C3C(MapObjectManager *mapObjMan);
void MapObjectMan_PauseAllMovement(MapObjectManager *mapObjMan);
void MapObjectMan_UnpauseAllMovement(MapObjectManager *mapObjMan);
int MapObjectMan_IsDrawInitialized(const MapObjectManager *mapObjMan);
u32 MapObject_CheckManagerStatus(const MapObject *mapObj, u32 param1);
void MapObjectMan_SetEndMovement(MapObjectManager *mapObjMan, int param1);
int sub_02062CE4(const MapObjectManager *mapObjMan);
int sub_02062CF8(const MapObject *mapObj);
void sub_02062D04(MapObject *mapObj);
void sub_02062D10(MapObject *mapObj);
int MapObject_IsMoving(const MapObject *mapObj);
void MapObject_SetStartMovement(MapObject *mapObj);
void MapObject_SetEndMovementOff(MapObject *mapObj);
void sub_02062D40(MapObject *mapObj);
int sub_02062D4C(const MapObject *mapObj);
int MapObject_IsHidden(const MapObject *mapObj);
void MapObject_SetHidden(MapObject *mapObj, int hidden);
void sub_02062D80(MapObject *mapObj, int param1);
int sub_02062D9C(MapObject *mapObj);
void sub_02062DB4(MapObject *mapObj, int param1);
void MapObject_SetPauseMovementOn(MapObject *mapObj);
void MapObject_SetPauseMovementOff(MapObject *mapObj);
int MapObject_IsMovementPaused(const MapObject *mapObj);
int sub_02062DFC(const MapObject *mapObj);
void sub_02062E28(MapObject *mapObj, int param1);
int sub_02062E44(const MapObject *mapObj);
void sub_02062E5C(MapObject *mapObj, int param1);
void sub_02062E78(MapObject *mapObj, int param1);
int sub_02062E94(const MapObject *mapObj);
void sub_02062EAC(MapObject *mapObj, int param1);
int sub_02062EC8(const MapObject *mapObj);
void sub_02062EE0(MapObject *mapObj, int param1);
int sub_02062EFC(const MapObject *mapObj);
void sub_02062F14(MapObject *mapObj, int param1);
int sub_02062F30(const MapObject *mapObj);
void sub_02062F48(MapObject *mapObj, int param1);
int sub_02062F64(const MapObject *mapObj);
int sub_02062F7C(const MapObject *mapObj);
void sub_02062F90(MapObject *mapObj, int param1);
int sub_02062FAC(const MapObject *mapObj);
void sub_02062FC4(MapObject *mapObj, int param1);
int sub_02062FDC(const MapObject *mapObj);
int MapObject_GetXInitial(const MapObject *mapObj);
void MapObject_SetXInitial(MapObject *mapObj, int x);
int MapObject_GetYInitial(const MapObject *mapObj);
void MapObject_SetYInitial(MapObject *mapObj, int y);
int MapObject_GetZInitial(const MapObject *mapObj);
void MapObject_SetZInitial(MapObject *mapObj, int z);
int MapObject_GetXPrev(const MapObject *mapObj);
void MapObject_SetXPrev(MapObject *mapObj, int x);
int MapObject_GetYPrev(const MapObject *mapObj);
void MapObject_SetYPrev(MapObject *mapObj, int y);
int MapObject_GetZPrev(const MapObject *mapObj);
void MapObject_SetZPrev(MapObject *mapObj, int z);
int MapObject_GetX(const MapObject *mapObj);
void MapObject_SetX(MapObject *mapObj, int x);
void MapObject_AddX(MapObject *mapObj, int dx);
int MapObject_GetY(const MapObject *mapObj);
void MapObject_SetY(MapObject *mapObj, int y);
void MapObject_AddY(MapObject *mapObj, int dy);
int MapObject_GetZ(const MapObject *mapObj);
void MapObject_SetZ(MapObject *mapObj, int z);
void MapObject_AddZ(MapObject *mapObj, int dz);
void MapObject_GetPosPtr(const MapObject *mapObj, VecFx32 *pos);
void MapObject_SetPos(MapObject *mapObj, const VecFx32 *pos);
const VecFx32 *MapObject_GetPos(const MapObject *mapObj);
fx32 MapObject_GetPosY(const MapObject *mapObj);
void sub_02063078(const MapObject *mapObj, VecFx32 *param1);
void sub_02063088(MapObject *mapObj, const VecFx32 *param1);
VecFx32 *sub_02063098(MapObject *mapObj);
void sub_0206309C(const MapObject *mapObj, VecFx32 *param1);
void sub_020630AC(MapObject *mapObj, const VecFx32 *param1);
void sub_020630BC(const MapObject *mapObj, VecFx32 *param1);
void sub_020630CC(MapObject *mapObj, const VecFx32 *param1);
int sub_020630DC(const MapObject *mapObj);
void ObjectEvent_SetLocalID(ObjectEvent *objectEvent, int localID);
int ObjectEvent_GetLocalID(const ObjectEvent *objectEvent);
void ObjectEvent_SetGraphicsID(ObjectEvent *objectEvent, int graphicsID);
int ObjectEvent_GetGraphicsID(const ObjectEvent *objectEvent);
void ObjectEvent_SetMovementType(ObjectEvent *objectEvent, int movementType);
int ObjectEvent_GetMovementType(const ObjectEvent *objectEvent);
void ObjectEvent_SetTrainerType(ObjectEvent *objectEvent, int trainerType);
int ObjectEvent_GetTrainerType(const ObjectEvent *objectEvent);
void ObjectEvent_SetFlag(ObjectEvent *objectEvent, int flag);
int ObjectEvent_GetFlag(const ObjectEvent *objectEvent);
void ObjectEvent_SetScript(ObjectEvent *objectEvent, int script);
int ObjectEvent_GetScript(const ObjectEvent *objectEvent);
void ObjectEvent_SetInitialDir(ObjectEvent *objectEvent, int initialDir);
int ObjectEvent_GetInitialDir(const ObjectEvent *objectEvent);
void ObjectEvent_SetDataAt(ObjectEvent *objectEvent, int value, int index);
int ObjectEvent_GetDataAt(const ObjectEvent *objectEvent, int index);
void ObjectEvent_SetMovementRangeX(ObjectEvent *objectEvent, int movementRangeX);
int ObjectEvent_GetMovementRangeX(const ObjectEvent *objectEvent);
void ObjectEvent_SetMovementRangeZ(ObjectEvent *objectEvent, int movementRangeZ);
int ObjectEvent_GetMovementRangeZ(const ObjectEvent *objectEvent);
void ObjectEvent_SetX(ObjectEvent *objectEvent, int x);
int ObjectEvent_GetX(const ObjectEvent *objectEvent);
void ObjectEvent_SetY(ObjectEvent *objectEvent, int y);
int ObjectEvent_GetY(const ObjectEvent *objectEvent);
void ObjectEvent_SetZ(ObjectEvent *objectEvent, int z);
int ObjectEvent_GetZ(const ObjectEvent *objectEvent);
MapObject *sub_0206326C(const MapObjectManager *mapObjMan, int param1, int param2, int param3);
void sub_020632D4(MapObject *mapObj, const VecFx32 *param1, int param2);
void MapObject_SetPosDir(MapObject *mapObj, int param1, int param2, int param3, int param4);
void MapObject_SetMoveCode(MapObject *mapObj, u32 param1);
void sub_020633C8(MapObject *mapObj, int param1);
void sub_020633E0(MapObject *mapObj);
void sub_020633E4(MapObject *mapObj);
void sub_020633E8(MapObject *mapObj);
void sub_020633EC(MapObject *mapObj);
void sub_020633F0(MapObject *mapObj);
void sub_020633F4(MapObject *mapObj);
void sub_020633F8(MapObject *mapObj);
void sub_020633FC(MapObject *mapObj);

#endif // POKEPLATINUM_UNK_02061804_H
