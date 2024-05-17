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

#include "constants/field_object.h"

MapObjectManager * sub_02061804(FieldSystem * param0, int param1, int param2);
void sub_02061830(MapObjectManager * param0);
void sub_0206184C(MapObjectManager * param0, int param1, int param2, int param3, const UnkStruct_020619DC * param4);
MapObject * sub_02061918(const MapObjectManager * param0, const UnkStruct_020619DC * param1, int param2);
MapObject * sub_020619DC(const MapObjectManager * param0, int param1, int param2, int param3, int param4, int param5, int param6);
MapObject * sub_02061A74(const MapObjectManager * param0, int param1, int param2, int param3, const UnkStruct_020619DC * param4);
void sub_02061AB4(MapObject * param0, int param1);
void sub_02061AD4(MapObject * param0, int param1);
void MapObject_Delete(MapObject * param0);
void sub_02061B28(MapObject * param0);
void sub_02061B48(MapObject * param0);
void sub_02061BBC(MapObjectManager * param0);
void sub_02061BF0(MapObjectManager * param0);
void sub_02061C48(MapObjectManager * param0);
void sub_02061CA8(FieldSystem * param0, const MapObjectManager * param1, UnkStruct_02061D3C * param2, int param3);
void sub_02061D04(const MapObjectManager * param0, UnkStruct_02061D3C * param1, int param2);
void sub_02062068(const MapObjectManager * param0, int param1, int param2, const UnkStruct_020619DC * param3);
MapObject * MapObjMan_LocalMapObjByIndex(const MapObjectManager * param0, int param1);
MapObject * sub_02062570(const MapObjectManager * param0, int param1);
int sub_020625B0(const MapObjectManager * param0, MapObject ** param1, int * param2, u32 param3);
int sub_020626B4(const MapObject * param0);
int sub_02062758(const MapObject * param0, int param1);
int sub_02062764(const MapObject * param0, int param1, int param2);
int sub_020627B4(const MapObject * param0, int param1, int param2, int param3);
void sub_02062820(MapObjectManager * param0, int param1);
int sub_02062824(const MapObjectManager * param0);
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
void sub_0206288C(MapObjectManager * param0, FieldSystem * param1);
FieldSystem * sub_02062894(const MapObjectManager * param0);
void sub_0206289C(MapObjectManager * param0, NARC * param1);
NARC * sub_020628A0(const MapObjectManager * param0);
void sub_020628B4(MapObject * param0, u32 param1);
u32 sub_020628B8(const MapObject * param0);
void MapObject_SetStatusFlagOn(MapObject * param0, u32 param1);
void MapObject_SetStatusFlagOff(MapObject * param0, u32 param1);
u32 sub_020628D0(const MapObject * param0, u32 param1);
u32 sub_020628D8(const MapObject * param0, u32 param1);
void sub_020628E8(MapObject * param0, u32 param1);
u32 sub_020628EC(const MapObject * param0);
void sub_020628F0(MapObject * param0, u32 param1);
void sub_020628F8(MapObject * param0, u32 param1);
u32 sub_02062904(const MapObject * param0, u32 param1);
void LocalMapObj_SetId(MapObject * param0, u32 param1);
u32 sub_02062910(const MapObject * param0);
void sub_02062914(MapObject * param0, int param1);
int sub_02062918(const MapObject * param0);
void sub_0206291C(MapObject * param0, u32 param1);
u32 sub_02062920(const MapObject * param0);
u32 sub_02062924(const MapObject * param0);
void sub_02062944(MapObject * param0, u32 param1);
u32 sub_02062948(const MapObject * param0);
void sub_0206294C(MapObject * param0, u32 param1);
u32 sub_02062950(const MapObject * param0);
void sub_02062954(MapObject * param0, u32 param1);
u32 sub_02062958(const MapObject * param0);
void sub_0206295C(MapObject * param0, u32 param1);
u32 sub_02062960(const MapObject * param0);
void sub_02062964(MapObject * param0, int param1);
u32 sub_02062968(const MapObject * param0);
void sub_0206296C(MapObject * param0, int param1);
void sub_02062974(MapObject * param0, int param1);
int sub_0206298C(const MapObject * param0);
int sub_02062990(const MapObject * param0);
void sub_02062994(MapObject * param0, int param1);
int sub_0206299C(const MapObject * param0);
void sub_020629A0(MapObject * param0, int param1);
void sub_020629B4(MapObject * param0, int param1, int param2);
int sub_020629D8(const MapObject * param0, int param1);
void sub_020629FC(MapObject * param0, int param1);
int sub_02062A00(const MapObject * param0);
void sub_02062A04(MapObject * param0, int param1);
int sub_02062A08(const MapObject * param0);
void sub_02062A0C(MapObject * param0, u32 param1);
u32 sub_02062A14(const MapObject * param0);
void sub_02062A1C(MapObject * param0, SysTask * param1);
SysTask * sub_02062A24(const MapObject * param0);
void sub_02062A2C(const MapObject * param0);
void sub_02062A38(MapObject * param0, const MapObjectManager * param1);
const MapObjectManager * sub_02062A40(const MapObject * param0);
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
void sub_02062BB0(MapObject * param0, int param1);
int sub_02062BB8(const MapObject * param0);
void sub_02062BC0(MapObject * param0, int param1);
void sub_02062BC8(MapObject * param0);
int sub_02062BD8(const MapObject * param0);
void sub_02062BE0(MapObject * param0, u32 param1);
u32 sub_02062BE8(const MapObject * param0);
void sub_02062BF0(MapObject * param0, u32 param1);
u32 sub_02062BF8(const MapObject * param0);
FieldSystem * sub_02062C00(const MapObject * param0);
int sub_02062C0C(const MapObject * param0);
int sub_02062C18(const MapObject * param0);
void sub_02062C30(MapObjectManager * param0);
void sub_02062C3C(MapObjectManager * param0);
void MapObjectMan_PauseAllMovement(MapObjectManager * param0);
void MapObjectMan_UnpauseAllMovement(MapObjectManager * param0);
int sub_02062CA8(const MapObjectManager * param0);
u32 sub_02062CBC(const MapObject * param0, u32 param1);
void sub_02062CCC(MapObjectManager * param0, int param1);
int sub_02062CE4(const MapObjectManager * param0);
int sub_02062CF8(const MapObject * param0);
void sub_02062D04(MapObject * param0);
void sub_02062D10(MapObject * param0);
int sub_02062D1C(const MapObject * param0);
void sub_02062D28(MapObject * param0);
void sub_02062D34(MapObject * param0);
void sub_02062D40(MapObject * param0);
int sub_02062D4C(const MapObject * param0);
int sub_02062D58(const MapObject * param0);
void sub_02062D64(MapObject * param0, int param1);
void sub_02062D80(MapObject * param0, int param1);
int sub_02062D9C(MapObject * param0);
void sub_02062DB4(MapObject * param0, int param1);
void sub_02062DD0(MapObject * param0);
void sub_02062DDC(MapObject * param0);
int sub_02062DE8(const MapObject * param0);
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
int sub_02062FF0(const MapObject * param0);
void sub_02062FF4(MapObject * param0, int param1);
int sub_02062FF8(const MapObject * param0);
void sub_02062FFC(MapObject * param0, int param1);
int sub_02063000(const MapObject * param0);
void sub_02063004(MapObject * param0, int param1);
int sub_02063008(const MapObject * param0);
void sub_0206300C(MapObject * param0, int param1);
int sub_02063010(const MapObject * param0);
void sub_02063014(MapObject * param0, int param1);
int sub_02063018(const MapObject * param0);
void sub_0206301C(MapObject * param0, int param1);
int sub_02063020(const MapObject * param0);
void LocalMapObj_SetX(MapObject * param0, int param1);
void sub_02063028(MapObject * param0, int param1);
int sub_02063030(const MapObject * param0);
void sub_02063034(MapObject * param0, int param1);
void sub_02063038(MapObject * param0, int param1);
int sub_02063040(const MapObject * param0);
void LocalMapObj_SetZ(MapObject * param0, int param1);
void sub_02063048(MapObject * param0, int param1);
void sub_02063050(const MapObject * param0, VecFx32 * param1);
void sub_02063060(MapObject * param0, const VecFx32 * param1);
const VecFx32 * sub_02063070(const MapObject * param0);
fx32 sub_02063074(const MapObject * param0);
void sub_02063078(const MapObject * param0, VecFx32 * param1);
void sub_02063088(MapObject * param0, const VecFx32 * param1);
VecFx32 * sub_02063098(MapObject * param0);
void sub_0206309C(const MapObject * param0, VecFx32 * param1);
void sub_020630AC(MapObject * param0, const VecFx32 * param1);
void sub_020630BC(const MapObject * param0, VecFx32 * param1);
void sub_020630CC(MapObject * param0, const VecFx32 * param1);
int sub_020630DC(const MapObject * param0);
void sub_020630F0(UnkStruct_020619DC * param0, int param1);
int sub_020630F4(const UnkStruct_020619DC * param0);
void sub_020630F8(UnkStruct_020619DC * param0, int param1);
int sub_020630FC(const UnkStruct_020619DC * param0);
void sub_02063100(UnkStruct_020619DC * param0, int param1);
int sub_02063104(const UnkStruct_020619DC * param0);
void sub_02063108(UnkStruct_020619DC * param0, int param1);
int sub_0206310C(const UnkStruct_020619DC * param0);
void sub_02063110(UnkStruct_020619DC * param0, int param1);
int sub_02063114(const UnkStruct_020619DC * param0);
void sub_02063118(UnkStruct_020619DC * param0, int param1);
int sub_0206311C(const UnkStruct_020619DC * param0);
void sub_02063120(UnkStruct_020619DC * param0, int param1);
int sub_02063124(const UnkStruct_020619DC * param0);
void sub_0206312C(UnkStruct_020619DC * param0, int param1, int param2);
int sub_02063150(const UnkStruct_020619DC * param0, int param1);
void sub_02063174(UnkStruct_020619DC * param0, int param1);
int sub_02063178(const UnkStruct_020619DC * param0);
void sub_02063180(UnkStruct_020619DC * param0, int param1);
int sub_02063184(const UnkStruct_020619DC * param0);
void sub_0206318C(UnkStruct_020619DC * param0, int param1);
int sub_02063190(const UnkStruct_020619DC * param0);
void sub_02063194(UnkStruct_020619DC * param0, int param1);
int sub_02063198(const UnkStruct_020619DC * param0);
void sub_0206319C(UnkStruct_020619DC * param0, int param1);
int sub_020631A0(const UnkStruct_020619DC * param0);
MapObject * sub_0206326C(const MapObjectManager * param0, int param1, int param2, int param3);
void sub_020632D4(MapObject * param0, const VecFx32 * param1, int param2);
void LocalMapObj_SetPosDir(MapObject * param0, int param1, int param2, int param3, int param4);
void sub_020633A8(MapObject * param0, u32 param1);
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
