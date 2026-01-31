#ifndef POKEPLATINUM_OV5_021F204C_H
#define POKEPLATINUM_OV5_021F204C_H

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/field_effect_manager.h"

#include "overworld_anim_manager.h"

void *BerryPatchGraphicsManager_New(FieldEffectManager *fieldEffMan);
void BerryPatchGraphicsManager_Free(void *manager);
void BerryPatchGraphics_NewMoistureEffect(MapObject *mapObject);
void *BerryPatchGraphicsManager_NewEffectCounter(FieldEffectManager *fieldEffMan);
void BerryPatchGraphicsManager_FreeEffectCounter(void *counter);
OverworldAnimManager *BerryPatchGraphics_NewSparkleEffect(MapObject *mapObject);

#endif // POKEPLATINUM_OV5_021F204C_H
