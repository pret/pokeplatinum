#ifndef POKEPLATINUM_OV5_021D2F14_H
#define POKEPLATINUM_OV5_021D2F14_H

#include "struct_decls/cell_actor_data.h"
#include "struct_defs/sprite_template.h"

#include "overlay005/struct_ov5_021D30A8.h"
#include "overlay007/struct_ov7_0224F358.h"
#include "overlay104/struct_ov104_02241308.h"

#include "cell_actor.h"
#include "narc.h"
#include "sprite_resource.h"

void ov5_021D2F14(UnkStruct_ov5_021D30A8 *param0, const SpriteResourceDataPath *param1, u32 param2, u32 param3);
void ov5_021D30A8(UnkStruct_ov5_021D30A8 *param0);
CellActor *ov5_021D3104(UnkStruct_ov5_021D30A8 *param0, const UnkStruct_ov7_0224F358 *param1);
void ov5_021D3190(UnkStruct_ov5_021D30A8 *param0, UnkStruct_ov104_02241308 *param1, u32 param2, u32 param3);
void ov5_021D3270(UnkStruct_ov5_021D30A8 *param0, int param1, int param2, int param3, int param4, int param5, int param6);
void ov5_021D32E8(UnkStruct_ov5_021D30A8 *param0, NARC *param1, int param2, int param3, int param4, int param5, int param6);
void ov5_021D3360(UnkStruct_ov5_021D30A8 *param0, int param1, int param2, int param3, int param4);
void ov5_021D3374(UnkStruct_ov5_021D30A8 *param0, NARC *param1, int param2, int param3, int param4);
void ov5_021D3388(UnkStruct_ov5_021D30A8 *param0, int param1, int param2, int param3, int param4);
void ov5_021D339C(UnkStruct_ov5_021D30A8 *param0, NARC *param1, int param2, int param3, int param4);
void ov5_021D33B0(UnkStruct_ov5_021D30A8 *param0, int param1, int param2, BOOL param3, int param4, int param5);
void ov5_021D3414(UnkStruct_ov5_021D30A8 *param0, NARC *param1, int param2, BOOL param3, int param4, int param5);
CellActorData *ov5_021D3584(UnkStruct_ov5_021D30A8 *param0, const SpriteTemplate *param1);
void ov5_021D375C(UnkStruct_ov5_021D30A8 *param0);

#endif // POKEPLATINUM_OV5_021D2F14_H
