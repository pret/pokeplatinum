#ifndef POKEPLATINUM_OV5_021F204C_H
#define POKEPLATINUM_OV5_021F204C_H

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

void *BerryPatchGraphicsManager_New(UnkStruct_ov5_021DF47C *renderManager);
void BerryPatchGraphicsManager_Free(void *manager);
void BerryPatchGraphics_NewMoistureEffect(MapObject *mapObject);
void *BerryPatchGraphicsManager_NewEffectCounter(UnkStruct_ov5_021DF47C *renderManager);
void BerryPatchGraphicsManager_FreeEffectCounter(void *counter);
UnkStruct_ov101_021D5D90 *BerryPatchGraphics_NewSparkleEffect(MapObject *mapObject);

#endif // POKEPLATINUM_OV5_021F204C_H
