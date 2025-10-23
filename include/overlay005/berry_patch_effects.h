#ifndef POKEPLATINUM_OV5_021F204C_H
#define POKEPLATINUM_OV5_021F204C_H

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "overworld_anim_manager.h"

void *BerryPatchGraphicsManager_New(UnkStruct_ov5_021DF47C *renderManager);
void BerryPatchGraphicsManager_Free(void *manager);
void BerryPatchGraphics_NewMoistureEffect(MapObject *mapObject);
void *BerryPatchGraphicsManager_NewEffectCounter(UnkStruct_ov5_021DF47C *renderManager);
void BerryPatchGraphicsManager_FreeEffectCounter(void *counter);
OverworldAnimManager *BerryPatchGraphics_NewSparkleEffect(MapObject *mapObject);

#endif // POKEPLATINUM_OV5_021F204C_H
