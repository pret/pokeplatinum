#ifndef POKEPLATINUM_BERRY_PATCH_GRAPHICS_H
#define POKEPLATINUM_BERRY_PATCH_GRAPHICS_H

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

BOOL BerryPatchGraphics_IsBerryPatch(int graphicsID);
int BerryPatchGraphics_GetCurrentGraphicsResourceID(const MapObject *mapObject);
void BerryPatchGraphics_MarkForUpdate(MapObject *mapObject);
void BerryPatchGraphics_NewData(MapObject *mapObject);
void BerryPatchGraphics_UpdateGrowthStage(MapObject *mapObject);
void BerryPatchGraphics_NoOp(MapObject *mapObject);
void BerryPatchGraphics_NewGraphics(MapObject *mapObject);
void BerryPatchGraphics_UpdateGraphics(MapObject *mapObject);
void BerryPatchGraphics_FreeGraphics(MapObject *mapObject);
void BerryPatchGraphics_PauseGraphics(MapObject *mapObject);
void BerryPatchGraphics_ResumeGraphics(MapObject *mapObject);
UnkStruct_020216E0 *BerryPatchGraphics_GetGraphicsObject(MapObject *mapObject);

#endif // POKEPLATINUM_BERRY_PATCH_GRAPHICS_H
