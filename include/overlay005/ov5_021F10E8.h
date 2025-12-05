#ifndef POKEPLATINUM_OV5_021F10E8_H
#define POKEPLATINUM_OV5_021F10E8_H

#include <nitro/fx/fx.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "overworld_anim_manager.h"
#include "simple3d.h"

void *ov5_021F10E8(UnkStruct_ov5_021DF47C *param0);
void ov5_021F10FC(void *param0);
void ov5_021F1188(UnkStruct_ov5_021DF47C *param0, u32 param1);
void ov5_021F11C0(UnkStruct_ov5_021DF47C *param0, u32 param1, u32 param2);
Simple3DRenderObj *ov5_021F11FC(UnkStruct_ov5_021DF47C *param0, u32 param1);
OverworldAnimManager *ov5_021F121C(const MapObject *param0, const VecFx32 *param1);
void FieldEffect_InitRenderObject(UnkStruct_ov5_021DF47C *param0);

#endif // POKEPLATINUM_OV5_021F10E8_H
