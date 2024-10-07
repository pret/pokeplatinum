#ifndef POKEPLATINUM_UNK_02054D00_H
#define POKEPLATINUM_UNK_02054D00_H

#include <nitro/fx/fx.h>

#include "struct_decls/terrain_collision_manager_decl.h"
#include "struct_defs/struct_02055130.h"

#include "field/field_system_decl.h"
#include "overlay005/struct_ov5_021E1890_decl.h"

void sub_02054F44(const TerrainCollisionManager **param0, int param1);
BOOL FieldSystem_CheckCollision(const FieldSystem *fieldSystem, const int param1, const int param2);
u8 sub_02054F94(const FieldSystem *fieldSystem, const int param1, const int param2);
const fx32 sub_02054FBC(const FieldSystem *fieldSystem, const fx32 param1, const fx32 param2, const fx32 param3, u8 *param4);
BOOL sub_02055024(const FieldSystem *fieldSystem, const VecFx32 *param1, const int param2, const int param3, s8 *param4);
BOOL sub_0205507C(FieldSystem *fieldSystem, const VecFx32 *param1, const int param2, const int param3, s8 *param4);
void sub_020550F4(const int param0, const int param1, const int param2, const int param3, const u32 param4, const u32 param5, UnkStruct_02055130 *param6);
BOOL sub_02055130(const UnkStruct_ov5_021E1890 *param0, const UnkStruct_02055130 *param1, const VecFx32 *param2);
BOOL sub_02055178(const FieldSystem *fieldSystem, const int param1, const UnkStruct_02055130 *param2, UnkStruct_ov5_021E1890 **param3);
BOOL sub_02055208(const FieldSystem *fieldSystem, const int *param1, const u8 param2, const UnkStruct_02055130 *param3, UnkStruct_ov5_021E1890 **param4, int *param5);
BOOL sub_020552B4(const FieldSystem *fieldSystem, const int param1, UnkStruct_ov5_021E1890 **param2, int *param3);
BOOL sub_02055324(const FieldSystem *fieldSystem, const int *param1, const u8 param2, UnkStruct_ov5_021E1890 **param3, int *param4);
void sub_020553A4(const int param0, const int param1, VecFx32 *param2);

#endif // POKEPLATINUM_UNK_02054D00_H
