#ifndef POKEPLATINUM_OV5_021E779C_H
#define POKEPLATINUM_OV5_021E779C_H

#include <nitro/fx/fx.h>

#include "field/field_system_decl.h"
#include "overlay005/area_data.h"
#include "overlay005/bdhc.h"
#include "overlay005/funcptr_ov5_021E9630.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"
#include "overlay005/model_attributes.h"
#include "overlay005/struct_ov5_021E8F60_decl.h"

#include "map_matrix.h"
#include "narc.h"

void ov5_021E7A54(UnkStruct_ov5_021E8F60 *param0);
void ov5_021E8188(FieldSystem *fieldSystem, UnkStruct_ov5_021E8F60 *param1);
UnkStruct_ov5_021E8F60 *ov5_021E9084(MapMatrix *param0, AreaDataManager *param1, MapPropAnimationManager *param2, const int param3);
void ov5_021E9150(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2);
void ov5_021E9190(const u8 param0, UnkStruct_ov5_021E8F60 *param1);
void ov5_021E91FC(const UnkStruct_ov5_021E8F60 *param0, ModelAttributes *const param1);
void ov5_021E9230(fx32 param0, fx32 param1, int *param2, int *param3);
void ov5_021E924C(UnkStruct_ov5_021E8F60 *param0);
void ov5_021E92E4(UnkStruct_ov5_021E8F60 *param0);
BOOL ov5_021E9300(const UnkStruct_ov5_021E8F60 *param0);
void ov5_021E931C(VecFx32 const *param0, UnkStruct_ov5_021E8F60 *param1);
void ov5_021E9338(UnkStruct_ov5_021E8F60 *param0);
void ov5_021E9340(const u8 param0, const UnkStruct_ov5_021E8F60 *param1, MapPropManager **param2);
u8 ov5_021E9354(const UnkStruct_ov5_021E8F60 *param0);
u8 ov5_021E935C(const u32 param0, const int param1);
u8 ov5_021E9390(const int param0, const u8 param1, const UnkStruct_ov5_021E8F60 *param2);
int ov5_021E9560(const UnkStruct_ov5_021E8F60 *param0, const u8 param1);
BOOL ov5_021E9580(const UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, u8 *param3);
const BDHC *ov5_021E9610(const UnkStruct_ov5_021E8F60 *param0, const u8 param1);
u16 const *ov5_021E9624(const UnkStruct_ov5_021E8F60 *param0, const u8 param1);
void ov5_021E9630(UnkStruct_ov5_021E8F60 *param0, UnkFuncPtr_ov5_021E9630 param1, void *param2);
NARC *ov5_021E9828(UnkStruct_ov5_021E8F60 *param0);
UnkStruct_ov5_021E8F60 *ov5_021E9830(MapMatrix *param0, AreaDataManager *param1, NARC *param2);
void ov5_021E98C8(UnkStruct_ov5_021E8F60 *param0, MapMatrix *param1, AreaDataManager *param2, NARC *param3);
void ov5_021E9938(UnkStruct_ov5_021E8F60 *param0);
void ov5_021E9998(UnkStruct_ov5_021E8F60 *param0);
void ov5_021E99C4(UnkStruct_ov5_021E8F60 *param0);
void ov5_021E99D8(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2);
void ov5_021E9AAC(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, int *param3);
void ov5_021E9B10(UnkStruct_ov5_021E8F60 *param0, int param1, int param2);
void ov5_021E9C0C(const UnkStruct_ov5_021E8F60 *param0, const ModelAttributes *param1);
void ov5_021E9CD8(UnkStruct_ov5_021E8F60 *param0);
void ov5_021E9D3C(MapMatrix *param0, AreaDataManager *param1, UnkStruct_ov5_021E8F60 *param2, UnkStruct_ov5_021E8F60 *param3, const int param4, const int param5);
void ov5_021E9F98(UnkStruct_ov5_021E8F60 *param0, UnkStruct_ov5_021E8F60 *param1);
void ov5_021EA174(FieldSystem *fieldSystem, UnkStruct_ov5_021E8F60 *param1);
void ov5_021EA540(UnkStruct_ov5_021E8F60 *param0, MapMatrix *param1, AreaDataManager *param2);
void ov5_021EA58C(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, int *param3);
void ov5_021EA5E0(UnkStruct_ov5_021E8F60 *param0, int param1, int param2);
void ov5_021EA678(UnkStruct_ov5_021E8F60 *param0, int param1, int param2, int param3);
void ov5_021EA6A4(UnkStruct_ov5_021E8F60 *param0, int param1);
int ov5_021EA6AC(const UnkStruct_ov5_021E8F60 *param0);
int ov5_021EA6B4(const UnkStruct_ov5_021E8F60 *param0);
void ov5_021EA6BC(const UnkStruct_ov5_021E8F60 *param0, VecFx32 *param1);
void ov5_021EA6D0(UnkStruct_ov5_021E8F60 *param0, int param1);
void ov5_021EA6D8(UnkStruct_ov5_021E8F60 *param0, MapMatrix *param1);
void ov5_021EA6E0(UnkStruct_ov5_021E8F60 *param0, int param1, BOOL param2);
void ov5_021EA6F4(UnkStruct_ov5_021E8F60 *param0, int param1, int param2);

#endif // POKEPLATINUM_OV5_021E779C_H
