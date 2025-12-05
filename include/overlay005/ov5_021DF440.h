#ifndef POKEPLATINUM_OV5_021DF440_H
#define POKEPLATINUM_OV5_021DF440_H

#include <nitro/fx/fx.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020217F4.h"

#include "field/field_system_decl.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay005/struct_ov5_021DF84C.h"

#include "overworld_anim_manager.h"
#include "simple3d.h"

UnkStruct_ov5_021DF47C *ov5_021DF440(FieldSystem *fieldSystem, u32 param1, u32 heapID);
void ov5_021DF47C(UnkStruct_ov5_021DF47C *param0, u32 param1);
void ov5_021DF488(UnkStruct_ov5_021DF47C *param0, u32 heapID, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8);
void ov5_021DF4A8(UnkStruct_ov5_021DF47C *param0, u32 param1);
void ov5_021DF4C8(UnkStruct_ov5_021DF47C *param0, const u32 *param1);
int ov5_021DF4E4(UnkStruct_ov5_021DF47C *param0, u32 param1);
void ov5_021DF4F8(UnkStruct_ov5_021DF47C *param0);
void ov5_021DF500(UnkStruct_ov5_021DF47C *param0);
void *ov5_021DF528(const UnkStruct_ov5_021DF47C *param0, u32 param1, int param2);
void *ov5_021DF53C(const UnkStruct_ov5_021DF47C *param0, u32 param1, int param2, u32 param3);
void ov5_021DF554(void *param0);
void *ov5_021DF55C(UnkStruct_ov5_021DF47C *param0, u32 param1);
FieldSystem *ov5_021DF574(const UnkStruct_ov5_021DF47C *param0);
UnkStruct_ov5_021DF47C *ov5_021DF578(const MapObject *param0);
u32 ov5_021DF5A8(UnkStruct_ov5_021DF47C *param0, u32 param1);
void ov5_021DF5B4(UnkStruct_ov5_021DF47C *param0, u32 param1, void *param2);
void *ov5_021DF5C0(UnkStruct_ov5_021DF47C *param0, u32 param1, int param2);
OverworldAnimManager *ov5_021DF72C(const UnkStruct_ov5_021DF47C *param0, const OverworldAnimManagerFuncs *param1, const VecFx32 *param2, int param3, const void *param4, int param5);
void ov5_021DF74C(OverworldAnimManager *param0);
UnkStruct_020216E0 *ov5_021DF7F8(UnkStruct_ov5_021DF47C *param0, const UnkStruct_ov5_021DF84C *param1, const VecFx32 *param2);
UnkStruct_020216E0 *ov5_021DF84C(UnkStruct_ov5_021DF47C *param0, u32 param1, const VecFx32 *param2);
UnkStruct_ov5_021DF84C *ov5_021DF864(UnkStruct_ov5_021DF47C *param0, u32 param1, u32 param2, u32 param3, u32 param4, int param5, const UnkStruct_020217F4 *param6);
void ov5_021DF9D4(UnkStruct_ov5_021DF47C *param0, u32 param1);
void ov5_021DF9E0(UnkStruct_ov5_021DF47C *param0, u32 param1, u32 param2);
void *ov5_021DF9FC(UnkStruct_ov5_021DF47C *param0, u32 param1);
void ov5_021DFA08(UnkStruct_ov5_021DF47C *param0, u32 param1);
void ov5_021DFA14(UnkStruct_ov5_021DF47C *param0, u32 param1, u32 param2);
void ov5_021DFA30(UnkStruct_ov5_021DF47C *param0, u32 param1);
void ov5_021DFA3C(UnkStruct_ov5_021DF47C *param0, u32 param1, u32 param2, u32 param3);
void ov5_021DFA7C(UnkStruct_ov5_021DF47C *param0, u32 param1);
void ov5_021DFB00(UnkStruct_ov5_021DF47C *param0, Simple3DModel *param1, u32 param2, u32 narcMemberIdx, BOOL allocAtEnd);
void ov5_021DFB24(UnkStruct_ov5_021DF47C *param0, Simple3DAnimation *param1, u32 param2, u32 param3, u32 param4);
void ov5_021DFB40(UnkStruct_ov5_021DF47C *param0, Simple3DAnimation *param1, const Simple3DModel *param2, Simple3DAnimation *param3, u32 param4);

#endif // POKEPLATINUM_OV5_021DF440_H
