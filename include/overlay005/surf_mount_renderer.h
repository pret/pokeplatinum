#ifndef POKEPLATINUM_SURF_MOUNT_RENDERER_H
#define POKEPLATINUM_SURF_MOUNT_RENDERER_H

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/field_effect_manager.h"

#include "overworld_anim_manager.h"

void *SurfMountRenderer_New(FieldEffectManager *fieldEffMan);
void SurfMountRenderer_Free(void *context);
OverworldAnimManager *SurfMountRenderer_HandleSurfBegin(MapObject *surfMountMapObj, int tileX, int tileZ, int dir, int reuseMapObjPos);
void SurfMountRenderer_Reset(OverworldAnimManager *animMan, int animID);

#endif // POKEPLATINUM_SURF_MOUNT_RENDERER_H
