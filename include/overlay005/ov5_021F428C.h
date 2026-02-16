#ifndef POKEPLATINUM_OV5_021F428C_H
#define POKEPLATINUM_OV5_021F428C_H

#include "field/field_system_decl.h"
#include "overlay005/field_effect_manager.h"

#include "overworld_anim_manager.h"

void *ov5_021F428C(FieldEffectManager *param0);
void ov5_021F42A8(void *param0);
void ov5_021F42D8(FieldEffectManager *param0, int param1, int param2);
OverworldAnimManager *ov5_021F4474(FieldSystem *fieldSystem, int param1, int param2, fx32 param3);
void ov5_021F44A4(OverworldAnimManager *param0);
BOOL ov5_021F453C(OverworldAnimManager *param0);
OverworldAnimManager *ov5_021F4668(FieldSystem *fieldSystem, int param1, int param2, fx32 param3);
void ov5_021F4698(OverworldAnimManager *param0, int param1, BOOL param2);
void ov5_021F4714(OverworldAnimManager *param0, fx32 param1);
BOOL ov5_021F4720(OverworldAnimManager *param0);

#endif // POKEPLATINUM_OV5_021F428C_H
