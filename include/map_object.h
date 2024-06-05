#ifndef POKEPLATINUM_UNK_02061804_H
#define POKEPLATINUM_UNK_02061804_H

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/sys_task.h"
#include "field/field_system_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_020619DC_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_02061D3C.h"
#include "functypes/funcptr_020EDF0C.h"
#include "functypes/funcptr_020EDF0C_1.h"
#include "functypes/funcptr_020EDF0C_2.h"
#include "overlay005/struct_ov5_021ED0A4.h"
#include "overlay005/funcptr_ov5_021FB0F0.h"
#include "overlay005/funcptr_ov5_021FB0F0_1.h"
#include "overlay005/funcptr_ov5_021FB0F0_2.h"
#include "overlay005/funcptr_ov5_021FB0F0_3.h"
#include "overlay005/funcptr_ov5_021FB0F0_4.h"

#include <nitro/fx/fx.h>

#include "constants/map_object.h"

MapObjectManager * MapObjectMan_New(FieldSystem * fieldSystem, int param1, int param2);
void MapObjectMan_Delete(MapObjectManager * param0);
void sub_0206184C(MapObjectManager * param0, int param1, int param2, int param3, const MapObjectHeader * param4);
MapObject * MapObjectMan_AddMapObjectFromHeader(const MapObjectManager * param0, const MapObjectHeader * param1, int param2);
MapObject * MapObjectMan_AddMapObject(const MapObjectManager * param0, int param1, int param2, int param3, int param4, int param5, int param6);
MapObject * sub_02061A74(const MapObjectManager * param0, int param1, int param2, int param3, const MapObjectHeader * param4);
void sub_02061AB4(MapObject * param0, int param1);
void sub_02061AD4(MapObject * param0, int param1);
void MapObject_Delete(MapObject * param0);
void sub_02061B28(MapObject * param0);
void sub_02061B48(MapObject * param0);
void MapObjectMan_DeleteAll(MapObjectManager * param0);
void sub_02061BF0(MapObjectManager * param0);
void sub_02061C48(MapObjectManager * param0);
void MapObjectMan_SaveAll(FieldSystem * fieldSystem, const MapObjectManager * param1, MapObjectSave * param2, int param3);
void MapObjectMan_LoadAllObjects(const MapObjectManager * param0, MapObjectSave * param1, int param2);
void sub_02062068(const MapObjectManager * param0, int param1, int param2, const MapObjectHeader * param3);
MapObject * MapObjMan_LocalMapObjByIndex(const MapObjectManager * param0, int param1);
MapObject * sub_02062570(const MapObjectManager * param0, int param1);
int sub_020625B0(const MapObjectManager * param0, MapObject ** param1, int * param2, u32 param3);
int sub_020626B4(const MapObject * param0);
int sub_02062758(const MapObject * param0, int param1);
int sub_02062764(const MapObject * param0, int param1, int param2);
int sub_020627B4(const MapObject * param0, int param1, int param2, int param3);
void MapObjectMan_SetMaxObjects(MapObjectManager * param0, int param1);
int MapObjectMan_GetMaxObjects(const MapObjectManager * param0);
void sub_02062838(MapObjectManager * param0, u32 param1);
void sub_02062840(MapObjectManager * param0, u32 param1);
u32 sub_0206284C(const MapObjectManager * param0, u32 param1);
void sub_02062854(MapObjectManager * param0, int param1);
int sub_02062858(const MapObjectManager * param0);
UnkStruct_ov5_021ED0A4 * sub_0206285C(const MapObjectManager * param0);
void sub_02062860(MapObjectManager * param0, MapObject * param1);
const MapObject * sub_02062868(const MapObjectManager * param0);
MapObject * sub_02062878(const MapObjectManager * param0);
void sub_02062880(const MapObject ** param0);
void MapObjectMan_SetFieldSystem(MapObjectManager * param0, FieldSystem * fieldSystem);
FieldSystem * MapObjectMan_FieldSystem(const MapObjectManager * param0);
void sub_0206289C(MapObjectManager * param0, NARC * param1);
NARC * sub_020628A0(const MapObjectManager * param0);
void sub_020628B4(MapObject * param0, u32 param1);
u32 sub_020628B8(const MapObject * param0);
void MapObject_SetStatusFlagOn(MapObject * param0, u32 param1);
void MapObject_SetStatusFlagOff(MapObject * param0, u32 param1);
u32 MapObject_CheckStatus(const MapObject * param0, u32 param1);
u32 MapObject_GetStateFlag(const MapObject * param0, u32 param1);
void sub_020628E8(MapObject * param0, u32 param1);
u32 sub_020628EC(const MapObject * param0);
void sub_020628F0(MapObject * param0, u32 param1);
void sub_020628F8(MapObject * param0, u32 param1);
u32 sub_02062904(const MapObject * param0, u32 param1);
void MapObject_SetId(MapObject * param0, u32 param1);
u32 MapObject_Id(const MapObject * param0);
void sub_02062914(MapObject * param0, int param1);
int sub_02062918(const MapObject * param0);
void sub_0206291C(MapObject * param0, u32 param1);
u32 sub_02062920(const MapObject * param0);
u32 sub_02062924(const MapObject * param0);
void sub_02062944(MapObject * param0, u32 param1);
u32 MapObject_GetMoveCode(const MapObject * param0);
void sub_0206294C(MapObject * param0, u32 param1);
u32 MapObject_GetEventType(const MapObject * param0);
void sub_02062954(MapObject * param0, u32 param1);
u32 sub_02062958(const MapObject * param0);
void sub_0206295C(MapObject * param0, u32 param1);
u32 MapObject_GetEventID(const MapObject * param0);
void sub_02062964(MapObject * param0, int param1);
u32 sub_02062968(const MapObject * param0);
void sub_0206296C(MapObject * param0, int param1);
void MapObject_SetDir(MapObject * param0, int param1);
int MapObject_Dir(const MapObject * param0);
int sub_02062990(const MapObject * param0);
void sub_02062994(MapObject * param0, int param1);
int MapObject_GetMoveDir(const MapObject * param0);
void sub_020629A0(MapObject * param0, int param1);
void sub_020629B4(MapObject * param0, int param1, int param2);
int sub_020629D8(const MapObject * param0, int param1);
void sub_020629FC(MapObject * param0, int param1);
int MapObject_MaxXOffset(const MapObject * param0);
void sub_02062A04(MapObject * param0, int param1);
int MapObject_MaxZOffset(const MapObject * param0);
void sub_02062A0C(MapObject * param0, u32 param1);
u32 sub_02062A14(const MapObject * param0);
void sub_02062A1C(MapObject * param0, SysTask * param1);
SysTask * sub_02062A24(const MapObject * param0);
void sub_02062A2C(const MapObject * param0);
void MapObject_SetMapObjectManager(MapObject * param0, const MapObjectManager * param1);
const MapObjectManager * MapObject_MapObjectManager(const MapObject * param0);
void * sub_02062A54(MapObject * param0, int param1);
void * sub_02062A78(MapObject * param0);
void * sub_02062A7C(MapObject * param0, int param1);
void * sub_02062AA0(MapObject * param0);
void * sub_02062AA4(MapObject * param0, int param1);
void * sub_02062AC8(MapObject * param0);
void * sub_02062ACC(MapObject * param0, int param1);
void * sub_02062AF0(MapObject * param0);
void sub_02062AF8(MapObject * param0, UnkFuncPtr_020EDF0C param1);
void sub_02062B00(MapObject * param0);
void sub_02062B0C(MapObject * param0, UnkFuncPtr_020EDF0C_1 param1);
void sub_02062B14(MapObject * param0);
void sub_02062B20(MapObject * param0, UnkFuncPtr_020EDF0C_2 param1);
void sub_02062B28(MapObject * param0);
void sub_02062B34(MapObject * param0);
void sub_02062B4C(MapObject * param0, UnkFuncPtr_ov5_021FB0F0 param1);
void sub_02062B54(MapObject * param0);
void sub_02062B60(MapObject * param0, UnkFuncPtr_ov5_021FB0F0_1 param1);
void sub_02062B68(MapObject * param0);
void sub_02062B74(MapObject * param0, UnkFuncPtr_ov5_021FB0F0_2 param1);
void sub_02062B7C(MapObject * param0);
void sub_02062B88(MapObject * param0, UnkFuncPtr_ov5_021FB0F0_3 param1);
void sub_02062B90(MapObject * param0);
void sub_02062B9C(MapObject * param0, UnkFuncPtr_ov5_021FB0F0_4 param1);
void sub_02062BA4(MapObject * param0);
void MapObject_SetAnimationCode(MapObject * param0, int param1);
int MapObject_AnimationCode(const MapObject * param0);
void sub_02062BC0(MapObject * param0, int param1);
void sub_02062BC8(MapObject * param0);
int sub_02062BD8(const MapObject * param0);
void sub_02062BE0(MapObject * param0, u32 param1);
u32 sub_02062BE8(const MapObject * param0);
void sub_02062BF0(MapObject * param0, u32 param1);
u32 sub_02062BF8(const MapObject * param0);
FieldSystem * MapObject_FieldSystem(const MapObject * param0);
int sub_02062C0C(const MapObject * param0);
int sub_02062C18(const MapObject * param0);
void MapObjectMan_StopAllMovement(MapObjectManager * param0);
void sub_02062C3C(MapObjectManager * param0);
void MapObjectMan_PauseAllMovement(MapObjectManager * param0);
void MapObjectMan_UnpauseAllMovement(MapObjectManager * param0);
int MapObjectMan_IsDrawInitialized(const MapObjectManager * param0);
u32 sub_02062CBC(const MapObject * param0, u32 param1);
void sub_02062CCC(MapObjectManager * param0, int param1);
int sub_02062CE4(const MapObjectManager * param0);
int sub_02062CF8(const MapObject * param0);
void sub_02062D04(MapObject * param0);
void sub_02062D10(MapObject * param0);
int MapObject_IsMoving(const MapObject * param0);
void sub_02062D28(MapObject * param0);
void sub_02062D34(MapObject * param0);
void sub_02062D40(MapObject * param0);
int sub_02062D4C(const MapObject * param0);
int sub_02062D58(const MapObject * param0);
void MapObject_SetHidden(MapObject * param0, int param1);
void sub_02062D80(MapObject * param0, int param1);
int sub_02062D9C(MapObject * param0);
void sub_02062DB4(MapObject * param0, int param1);
void sub_02062DD0(MapObject * param0);
void sub_02062DDC(MapObject * param0);
int MapObject_IsMovementPaused(const MapObject * param0);
int sub_02062DFC(const MapObject * param0);
void sub_02062E28(MapObject * param0, int param1);
int sub_02062E44(const MapObject * param0);
void sub_02062E5C(MapObject * param0, int param1);
void sub_02062E78(MapObject * param0, int param1);
int sub_02062E94(const MapObject * param0);
void sub_02062EAC(MapObject * param0, int param1);
int sub_02062EC8(const MapObject * param0);
void sub_02062EE0(MapObject * param0, int param1);
int sub_02062EFC(const MapObject * param0);
void sub_02062F14(MapObject * param0, int param1);
int sub_02062F30(const MapObject * param0);
void sub_02062F48(MapObject * param0, int param1);
int sub_02062F64(const MapObject * param0);
int sub_02062F7C(const MapObject * param0);
void sub_02062F90(MapObject * param0, int param1);
int sub_02062FAC(const MapObject * param0);
void sub_02062FC4(MapObject * param0, int param1);
int sub_02062FDC(const MapObject * param0);
int MapObject_XInitial(const MapObject * param0);
void MapObject_SetXInitial(MapObject * param0, int param1);
int MapObject_YInitial(const MapObject * param0);
void MapObject_SetYInitial(MapObject * param0, int param1);
int MapObject_ZInitial(const MapObject * param0);
void MapObject_SetZInitial(MapObject * param0, int param1);
int MapObject_XPosPrev(const MapObject * param0);
void MapObject_SetXPosPrev(MapObject * param0, int param1);
int MapObject_YPosPrev(const MapObject * param0);
void MapObject_SetYPosPrev(MapObject * param0, int param1);
int MapObject_ZPosPrev(const MapObject * param0);
void MapObject_SetZPosPrev(MapObject * param0, int param1);
int MapObject_GetXPos(const MapObject * param0);
void MapObject_SetX(MapObject * param0, int param1);
void MapObject_AddX(MapObject * param0, int param1);
int MapObject_GetYPos(const MapObject * param0);
void MapObject_SetY(MapObject * param0, int param1);
void MapObject_AddY(MapObject * param0, int param1);
int MapObject_GetZPos(const MapObject * param0);
void MapObject_SetZ(MapObject * param0, int param1);
void MapObject_AddZ(MapObject * param0, int param1);
void MapObject_PosVectorOut(const MapObject * param0, VecFx32 * param1);
void MapObject_SetPosVec(MapObject * param0, const VecFx32 * param1);
const VecFx32 * MapObject_PosVector(const MapObject * param0);
fx32 sub_02063074(const MapObject * param0);
void sub_02063078(const MapObject * param0, VecFx32 * param1);
void sub_02063088(MapObject * param0, const VecFx32 * param1);
VecFx32 * sub_02063098(MapObject * param0);
void sub_0206309C(const MapObject * param0, VecFx32 * param1);
void sub_020630AC(MapObject * param0, const VecFx32 * param1);
void sub_020630BC(const MapObject * param0, VecFx32 * param1);
void sub_020630CC(MapObject * param0, const VecFx32 * param1);
int sub_020630DC(const MapObject * param0);
void sub_020630F0(MapObjectHeader * param0, int param1);
int sub_020630F4(const MapObjectHeader * param0);
void sub_020630F8(MapObjectHeader * param0, int param1);
int sub_020630FC(const MapObjectHeader * param0);
void sub_02063100(MapObjectHeader * param0, int param1);
int sub_02063104(const MapObjectHeader * param0);
void sub_02063108(MapObjectHeader * param0, int param1);
int sub_0206310C(const MapObjectHeader * param0);
void sub_02063110(MapObjectHeader * param0, int param1);
int sub_02063114(const MapObjectHeader * param0);
void sub_02063118(MapObjectHeader * param0, int param1);
int sub_0206311C(const MapObjectHeader * param0);
void sub_02063120(MapObjectHeader * param0, int param1);
int sub_02063124(const MapObjectHeader * param0);
void sub_0206312C(MapObjectHeader * param0, int param1, int param2);
int sub_02063150(const MapObjectHeader * param0, int param1);
void sub_02063174(MapObjectHeader * param0, int param1);
int sub_02063178(const MapObjectHeader * param0);
void sub_02063180(MapObjectHeader * param0, int param1);
int sub_02063184(const MapObjectHeader * param0);
void MapObjectHeader_SetXPos(MapObjectHeader * param0, int param1);
int sub_02063190(const MapObjectHeader * param0);
void sub_02063194(MapObjectHeader * param0, int param1);
int sub_02063198(const MapObjectHeader * param0);
void MapObjectHeader_SetZPos(MapObjectHeader * param0, int param1);
int sub_020631A0(const MapObjectHeader * param0);
MapObject * sub_0206326C(const MapObjectManager * param0, int param1, int param2, int param3);
void sub_020632D4(MapObject * param0, const VecFx32 * param1, int param2);
void MapObject_SetPosDir(MapObject * param0, int param1, int param2, int param3, int param4);
void MapObject_SetMoveCode(MapObject * param0, u32 param1);
void sub_020633C8(MapObject * param0, int param1);
void sub_020633E0(MapObject * param0);
void sub_020633E4(MapObject * param0);
void sub_020633E8(MapObject * param0);
void sub_020633EC(MapObject * param0);
void sub_020633F0(MapObject * param0);
void sub_020633F4(MapObject * param0);
void sub_020633F8(MapObject * param0);
void sub_020633FC(MapObject * param0);

#endif // POKEPLATINUM_UNK_02061804_H
