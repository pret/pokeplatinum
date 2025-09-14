#ifndef POKEPLATINUM_BERRY_PATCH_GRAPHICS_H
#define POKEPLATINUM_BERRY_PATCH_GRAPHICS_H

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

BOOL BerryPatch_IsBerryPatch(int graphicsID);
int BerryPatch_GetCurrentGraphicsResourceID(const MapObject *mapObject);
void BerryPatch_MarkForUpdate(MapObject *mapObject);
void BerryPatch_InitData(MapObject *mapObject);
void BerryPatch_UpdateGrowthStage(MapObject *mapObject);
void BerryPatch_NoOp(MapObject *mapObject);
void BerryPatch_InitGraphics(MapObject *mapObject);
void BerryPatch_UpdateGraphics(MapObject *mapObject);
void BerryPatch_CleanupGraphics(MapObject *mapObject);
void BerryPatch_PauseGraphics(MapObject *mapObject);
void BerryPatch_ResumeGraphics(MapObject *mapObject);
UnkStruct_020216E0 *BerryPatch_GetGraphicsObject(MapObject *mapObject);

#endif // POKEPLATINUM_BERRY_PATCH_GRAPHICS_H
