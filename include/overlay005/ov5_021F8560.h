#ifndef POKEPLATINUM_OV5_021F8560_H
#define POKEPLATINUM_OV5_021F8560_H

#include <nitro/fx/fx.h>

#include "struct_decls/struct_0205E884_decl.h"

#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "overworld_anim_manager.h"
#include "simple3d.h"

void *ov5_021F8560(UnkStruct_ov5_021DF47C *param0);
void ov5_021F857C(void *param0);
OverworldAnimManager *ov5_021F85BC(PlayerAvatar *playerAvatar, int param1, int param2, int param3, int param4, int param5, int param6);
Simple3DRotationAngles *ov5_021F88A8(OverworldAnimManager *param0);
void ov5_021F88B4(OverworldAnimManager *param0, int param1, int param2);
void ov5_021F88CC(OverworldAnimManager *param0, int param1);
void ov5_021F88DC(OverworldAnimManager *param0, int param1);
VecFx32 *ov5_021F88F0(OverworldAnimManager *param0);
VecFx32 *ov5_021F88FC(OverworldAnimManager *param0);
void ov5_021F8908(OverworldAnimManager *param0, u16 param1);

#endif // POKEPLATINUM_OV5_021F8560_H
