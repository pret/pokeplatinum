#ifndef POKEPLATINUM_OV5_021F17B8_H
#define POKEPLATINUM_OV5_021F17B8_H

#include <nitro/fx/fx.h>

#include "struct_decls/map_object.h"

#include "overlay005/field_effect_manager.h"

#include "billboard.h"
#include "overworld_anim_manager.h"

void *ov5_021F17B8(FieldEffectManager *param0);
void ov5_021F17D4(void *param0);
void ov5_021F1800(MapObject *param0, int param1);
OverworldAnimManager *ov5_021F1BA4(FieldEffectManager *param0, const BillboardResources *param1, const Billboard *param2, const VecFx32 *param3, int param4, int param5);

#endif // POKEPLATINUM_OV5_021F17B8_H
