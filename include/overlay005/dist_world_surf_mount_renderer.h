#ifndef POKEPLATINUM_DIST_WORLD_SURF_MOUNT_RENDERER_H
#define POKEPLATINUM_DIST_WORLD_SURF_MOUNT_RENDERER_H

#include <nitro/fx/fx.h>

#include "constants/player_avatar.h"

#include "overlay005/field_effect_manager.h"

#include "location.h"
#include "overworld_anim_manager.h"
#include "player_avatar.h"
#include "simple3d.h"

enum DistWorldSurfMountRendererFlag {
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_NO_RENDER = 0,
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_TICK,
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_NO_ROTATION_RECALCULATION,
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_NO_POSITION_RECALCULATION,
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_NO_ORBIT_RECALCULATION,
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_USE_EXTERNAL_SPRITE_POS_OFFSET,
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_USE_EXTERNAL_POS_FIX,
};

enum DistWorldSurfMountRendererFlagMask {
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_RENDER = 1 << DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_NO_RENDER,
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_TICK = 1 << DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_TICK,
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_ROTATION_RECALCULATION = 1 << DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_NO_ROTATION_RECALCULATION,
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_POSITION_RECALCULATION = 1 << DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_NO_POSITION_RECALCULATION,
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_ORBIT_RECALCULATION = 1 << DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_NO_ORBIT_RECALCULATION,
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_SPRITE_POS_OFFSET = 1 << DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_USE_EXTERNAL_SPRITE_POS_OFFSET,
    DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_POS_FIX = 1 << DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_USE_EXTERNAL_POS_FIX,
};

void *DistWorldSurfMountRenderer_New(FieldEffectManager *fieldEffMan);
void DistWorldSurfMountRenderer_Free(void *context);
OverworldAnimManager *DistWorldSurfMountRenderer_HandleSurfBegin(PlayerAvatar *playerAvatar, int mountTileX, int mountTileY, int mountTileZ, enum FaceDirection dir, BOOL syncPos, enum AvatarDistortionState avatarDistortionState);
Simple3DRotationAngles *DistWorldSurfMountRenderer_GetSurfMountRotationAngles(OverworldAnimManager *animMan);
void DistWorldSurfMountRenderer_SetFixedRotationAngles(OverworldAnimManager *animMan, enum FaceDirection dir, enum AvatarDistortionState avatarDistortionState);
void DistWorldSurfMountRenderer_SetFlags(OverworldAnimManager *animMan, int mask);
void DistWorldSurfMountRenderer_ClearFlags(OverworldAnimManager *animMan, int mask);
VecFx32 *DistWorldSurfMountRenderer_GetExternalSpritePosOffsetPtr(OverworldAnimManager *animMan);
VecFx32 *DistWorldSurfMountRenderer_GetExternalPosFixPtr(OverworldAnimManager *animMan);
void DistWorldSurfMountRenderer_SetOrbitAngle(OverworldAnimManager *animMan, u16 orbitAngle);

#endif // POKEPLATINUM_DIST_WORLD_SURF_MOUNT_RENDERER_H
