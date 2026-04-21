#include "overlay005/dist_world_surf_mount_renderer.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/field_effect_renderer.h"
#include "constants/map_object.h"
#include "constants/player_avatar.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/field_effect_manager.h"

#include "map_object.h"
#include "math_util.h"
#include "overworld_anim_manager.h"
#include "player_avatar.h"
#include "simple3d.h"

#define RENDERER_MIN_Y_OFFSET     FX32_ONE
#define RENDERER_MAX_Y_OFFSET     (FX32_ONE * 4)
#define RENDERER_INITIAL_Y_OFFSET FX32_ONE
#define RENDERER_INITIAL_Y_DELTA  1024

#define MOUNT_ORBIT_DISTANCE 20

#define MOUNT_BASE_POS_FIX_X (FX32_ONE * 0)
#define MOUNT_BASE_POS_FIX_Y (FX32_ONE * 8)
#define MOUNT_BASE_POS_FIX_Z (FX32_ONE * 0)

typedef struct DistWorldSurfMountResources {
    FieldEffectManager *fieldEffMan;
    Simple3DModel surfMountModel;
    Simple3DRenderObj surfMountRenderObj;
} DistWorldSurfMountResources;

typedef struct DistWorldSurfMountUserData {
    enum FaceDirection dir;
    enum AvatarDistortionState avatarDistortionState;
    FieldEffectManager *fieldEffMan;
    DistWorldSurfMountResources *resources;
    MapObject *playerMapObj;
    PlayerAvatar *playerAvatar;
} DistWorldSurfMountUserData;

typedef struct DistWorldSurfMountRenderer {
    u32 flags;
    s16 dir;
    u16 counter;
    u16 orbitAngle;
    u16 orbitDistance;
    Simple3DRotationAngles rotAngles;
    VecFx32 extSpritePosOffset;
    VecFx32 extPosFix;
    fx32 yOffset;
    fx32 yDelta;
    enum AvatarDistortionState avatarDistortionState;
    DistWorldSurfMountUserData userData;
} DistWorldSurfMountRenderer;

static void DistWorldSurfMountResources_Init(DistWorldSurfMountResources *resources);
static void DistWorldSurfMountResources_Free(DistWorldSurfMountResources *resources);
static void GetFixedRotationAngles(enum AvatarDistortionState avatarDistortionState, enum FaceDirection dir, Simple3DRotationAngles *outRotAngles);

static const OverworldAnimManagerFuncs sDistWorldSurfMountRendererAnimFuncs;
static const VecFx32 sInitialMountPosFixes[AVATAR_DISTORTION_STATE_MAX];
static const VecFx32 sSpriteBasePosOffsets[AVATAR_DISTORTION_STATE_MAX];
static const VecFx32 sMountPosFixes[AVATAR_DISTORTION_STATE_MAX];
static const u32 sOrbitAngles[AVATAR_DISTORTION_STATE_MAX];
static const Simple3DRotationAngles sFixedRotAngles[AVATAR_DISTORTION_STATE_MAX][MAX_DIR];

void *DistWorldSurfMountRenderer_New(FieldEffectManager *fieldEffMan)
{
    DistWorldSurfMountResources *resources = FieldEffectManager_HeapAllocInit(fieldEffMan, sizeof(DistWorldSurfMountResources), FALSE, 0);
    resources->fieldEffMan = fieldEffMan;

    DistWorldSurfMountResources_Init(resources);
    return resources;
}

void DistWorldSurfMountRenderer_Free(void *context)
{
    DistWorldSurfMountResources *resources = context;

    DistWorldSurfMountResources_Free(resources);
    FieldEffectManager_HeapFree(resources);
}

static void DistWorldSurfMountResources_Init(DistWorldSurfMountResources *resources)
{
    FieldEffectManager_LoadModel(resources->fieldEffMan, &resources->surfMountModel, 0, 81, FALSE);
    Simple3D_CreateRenderObject(&resources->surfMountRenderObj, &resources->surfMountModel);
}

static void DistWorldSurfMountResources_Free(DistWorldSurfMountResources *resources)
{
    Simple3D_FreeModel(&resources->surfMountModel);
}

OverworldAnimManager *DistWorldSurfMountRenderer_HandleSurfBegin(PlayerAvatar *playerAvatar, int mountTileX, int mountTileY, int mountTileZ, enum FaceDirection dir, BOOL syncPos, enum AvatarDistortionState avatarDistortionState)
{
    VecFx32 mountPos = { 0, 0, 0 };
    DistWorldSurfMountUserData userData;
    MapObject *playerMapObj = Player_MapObject(playerAvatar);

    userData.dir = dir;
    userData.avatarDistortionState = avatarDistortionState;
    userData.fieldEffMan = MapObject_GetFieldEffectManager(playerMapObj);
    userData.resources = FieldEffectManager_GetRendererContext(userData.fieldEffMan, FIELD_EFFECT_RENDERER_DISTORTION_WORLD_SURF_MOUNT);
    userData.playerMapObj = playerMapObj;
    userData.playerAvatar = playerAvatar;

    if (!syncPos) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(playerMapObj);
        const VecFx32 *mountPosFix = &sInitialMountPosFixes[avatarDistortionState];

        mountPos.x = (mountTileX << 4) * FX32_ONE + mountPosFix->x;
        mountPos.y = (mountTileY << 4) * FX32_ONE + mountPosFix->y;
        mountPos.z = (mountTileZ << 4) * FX32_ONE + mountPosFix->z;
    } else {
        const VecFx32 *spritePosOffset = &sSpriteBasePosOffsets[avatarDistortionState];

        MapObject_GetPosPtr(playerMapObj, &mountPos);
        MapObject_SetSpritePosOffset(playerMapObj, spritePosOffset);
    }

    int taskPriority = MapObject_CalculateTaskPriority(playerMapObj, 2);
    OverworldAnimManager *animMan = FieldEffectManager_InitAnimManager(userData.fieldEffMan, &sDistWorldSurfMountRendererAnimFuncs, &mountPos, syncPos, &userData, taskPriority);

    return animMan;
}

static BOOL DistWorldSurfMountRenderer_AnimInit(OverworldAnimManager *animMan, void *context)
{
    DistWorldSurfMountRenderer *renderer = context;
    const DistWorldSurfMountUserData *userData = OverworldAnimManager_GetUserData(animMan);

    renderer->userData = *userData;
    renderer->dir = userData->dir;
    renderer->yOffset = RENDERER_INITIAL_Y_OFFSET;
    renderer->yDelta = RENDERER_INITIAL_Y_DELTA;
    renderer->avatarDistortionState = userData->avatarDistortionState;
    GetFixedRotationAngles(renderer->avatarDistortionState, renderer->dir, &renderer->rotAngles);
    renderer->orbitAngle = sOrbitAngles[renderer->avatarDistortionState];
    renderer->orbitDistance = MOUNT_ORBIT_DISTANCE;

    if (OverworldAnimManager_GetUserInt(animMan) == TRUE) {
        renderer->flags |= DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_TICK;
    }

    return TRUE;
}

static void DistWorldSurfMountRenderer_AnimExit(OverworldAnimManager *animMan, void *context)
{
    DistWorldSurfMountRenderer *renderer = context;
    MapObject *playerMapObj = renderer->userData.playerMapObj;
    VecFx32 spritePosOffset = { 0, 0, 0 };

    MapObject_SetSpritePosOffset(playerMapObj, &spritePosOffset);
}

static void DistWorldSurfMountRenderer_AnimTick(OverworldAnimManager *animMan, void *context)
{
    DistWorldSurfMountRenderer *renderer = context;
    MapObject *playerMapObj = renderer->userData.playerMapObj;
    PlayerAvatar *playerAvatar = renderer->userData.playerAvatar;

    if (!(renderer->flags & DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_TICK)) {
        return;
    }

    renderer->dir = MapObject_GetMovingDir(playerMapObj);
    renderer->avatarDistortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    GF_ASSERT(renderer->dir != DIR_NONE);

    renderer->yOffset += renderer->yDelta;

    if (renderer->yOffset >= RENDERER_MAX_Y_OFFSET) {
        renderer->yOffset = RENDERER_MAX_Y_OFFSET;
        renderer->yDelta = -renderer->yDelta;
    } else if (renderer->yOffset <= RENDERER_MIN_Y_OFFSET) {
        renderer->yOffset = RENDERER_MIN_Y_OFFSET;
        renderer->yDelta = -renderer->yDelta;
    }

    if (!(renderer->flags & DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_ROTATION_RECALCULATION)) {
        GetFixedRotationAngles(renderer->avatarDistortionState, renderer->dir, &renderer->rotAngles);
    }

    if (!(renderer->flags & DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_ORBIT_RECALCULATION)) {
        renderer->orbitAngle = sOrbitAngles[renderer->avatarDistortionState];
    }

    if (!(renderer->flags & DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_POSITION_RECALCULATION)) {
        VecFx32 pos = sSpriteBasePosOffsets[renderer->avatarDistortionState];

        if (!(renderer->flags & DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_SPRITE_POS_OFFSET)) {
            pos.y += renderer->yOffset;
        } else {
            pos.x += renderer->extSpritePosOffset.x;
            pos.y += renderer->extSpritePosOffset.y;
            pos.z += renderer->extSpritePosOffset.z;
        }

        MapObject_SetSpritePosOffset(playerMapObj, &pos);

        MapObject_GetPosPtr(playerMapObj, &pos);
        const VecFx32 *mountPosFix;

        if ((renderer->flags & DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_POS_FIX) == 0) {
            mountPosFix = &sMountPosFixes[renderer->avatarDistortionState];
        } else {
            mountPosFix = &renderer->extPosFix;
        }

        pos.x += MOUNT_BASE_POS_FIX_X + mountPosFix->x + CalcCosineDegrees(renderer->orbitAngle) * renderer->orbitDistance;
        pos.y += MOUNT_BASE_POS_FIX_Y + mountPosFix->y + CalcSineDegrees(renderer->orbitAngle) * renderer->orbitDistance;
        pos.z += MOUNT_BASE_POS_FIX_Z + mountPosFix->z;

        if (!(renderer->flags & DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_SPRITE_POS_OFFSET)) {
            pos.y += renderer->yOffset;
        } else {
            pos.x += renderer->extSpritePosOffset.x;
            pos.y += renderer->extSpritePosOffset.y;
            pos.z += renderer->extSpritePosOffset.z;
        }

        OverworldAnimManager_SetPosition(animMan, &pos);
    }
}

static void DistWorldSurfMountRenderer_AnimRender(OverworldAnimManager *animMan, void *context)
{
    DistWorldSurfMountRenderer *renderer = context;

    if (!(renderer->flags & DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_RENDER)) {
        VecFx32 pos;
        Simple3DRenderObj *surfMountRenderObj = &renderer->userData.resources->surfMountRenderObj;

        OverworldAnimManager_GetPosition(animMan, &pos);
        Simple3D_DrawRenderObjWithPosAndRotationAngles(surfMountRenderObj, &pos, &renderer->rotAngles);
    }

    renderer->counter++;
}

static void GetFixedRotationAngles(enum AvatarDistortionState avatarDistortionState, enum FaceDirection dir, Simple3DRotationAngles *outRotAngles)
{
    GF_ASSERT((u32)avatarDistortionState < AVATAR_DISTORTION_STATE_MAX);
    *outRotAngles = sFixedRotAngles[avatarDistortionState][dir];
}

Simple3DRotationAngles *DistWorldSurfMountRenderer_GetSurfMountRotationAngles(OverworldAnimManager *animMan)
{
    DistWorldSurfMountRenderer *renderer = OverworldAnimManager_GetFuncsContext(animMan);
    return &renderer->rotAngles;
}

void DistWorldSurfMountRenderer_SetFixedRotationAngles(OverworldAnimManager *animMan, enum FaceDirection dir, enum AvatarDistortionState avatarDistortionState)
{
    DistWorldSurfMountRenderer *renderer = OverworldAnimManager_GetFuncsContext(animMan);
    GetFixedRotationAngles(avatarDistortionState, dir, &renderer->rotAngles);
}

void DistWorldSurfMountRenderer_SetFlags(OverworldAnimManager *animMan, int mask)
{
    DistWorldSurfMountRenderer *renderer = OverworldAnimManager_GetFuncsContext(animMan);
    renderer->flags |= mask;
}

void DistWorldSurfMountRenderer_ClearFlags(OverworldAnimManager *animMan, int mask)
{
    DistWorldSurfMountRenderer *renderer = OverworldAnimManager_GetFuncsContext(animMan);
    renderer->flags &= ~mask;
}

VecFx32 *DistWorldSurfMountRenderer_GetExternalSpritePosOffsetPtr(OverworldAnimManager *animMan)
{
    DistWorldSurfMountRenderer *renderer = OverworldAnimManager_GetFuncsContext(animMan);
    return &renderer->extSpritePosOffset;
}

VecFx32 *DistWorldSurfMountRenderer_GetExternalPosFixPtr(OverworldAnimManager *animMan)
{
    DistWorldSurfMountRenderer *renderer = OverworldAnimManager_GetFuncsContext(animMan);
    return &renderer->extPosFix;
}

void DistWorldSurfMountRenderer_SetOrbitAngle(OverworldAnimManager *animMan, u16 orbitAngle)
{
    DistWorldSurfMountRenderer *renderer = OverworldAnimManager_GetFuncsContext(animMan);
    renderer->orbitAngle = orbitAngle;
}

static const OverworldAnimManagerFuncs sDistWorldSurfMountRendererAnimFuncs = {
    sizeof(DistWorldSurfMountRenderer),
    DistWorldSurfMountRenderer_AnimInit,
    DistWorldSurfMountRenderer_AnimExit,
    DistWorldSurfMountRenderer_AnimTick,
    DistWorldSurfMountRenderer_AnimRender
};

static const VecFx32 sInitialMountPosFixes[AVATAR_DISTORTION_STATE_MAX] = {
    [AVATAR_DISTORTION_STATE_NONE] = { 16 * FX32_ONE >> 1, 0, 16 * FX32_ONE >> 1 },
    [AVATAR_DISTORTION_STATE_ACTIVE] = { 16 * FX32_ONE >> 1, 0, 16 * FX32_ONE >> 1 },
    [AVATAR_DISTORTION_STATE_FLOOR] = { 16 * FX32_ONE >> 1, 0, 16 * FX32_ONE >> 1 },
    [AVATAR_DISTORTION_STATE_WEST_WALL] = { 16 * FX32_ONE >> 1, 0, 16 * FX32_ONE >> 1 },
    [AVATAR_DISTORTION_STATE_EAST_WALL] = { 16 * FX32_ONE >> 1, 0, 16 * FX32_ONE >> 1 },
    [AVATAR_DISTORTION_STATE_CEILING] = { 16 * FX32_ONE >> 1, FX32_ONE * 40, 16 * FX32_ONE >> 1 }
};

static const VecFx32 sSpriteBasePosOffsets[AVATAR_DISTORTION_STATE_MAX] = {
    [AVATAR_DISTORTION_STATE_NONE] = { 0, 0, 0 },
    [AVATAR_DISTORTION_STATE_ACTIVE] = { 0, 0, 0 },
    [AVATAR_DISTORTION_STATE_FLOOR] = { 0, 0, 0 },
    [AVATAR_DISTORTION_STATE_WEST_WALL] = { 0, 0, 0 },
    [AVATAR_DISTORTION_STATE_EAST_WALL] = { 0, 0, 0 },
    [AVATAR_DISTORTION_STATE_CEILING] = { 0, 0, 0 }
};

static const VecFx32 sMountPosFixes[AVATAR_DISTORTION_STATE_MAX] = {
    [AVATAR_DISTORTION_STATE_NONE] = { FX32_ONE * 1 / 4, FX32_ONE * 6, FX32_ONE * -5 },
    [AVATAR_DISTORTION_STATE_ACTIVE] = { FX32_ONE * 1 / 4, FX32_ONE * 6, FX32_ONE * -5 },
    [AVATAR_DISTORTION_STATE_FLOOR] = { FX32_ONE * 1 / 4, FX32_ONE * 6, FX32_ONE * -5 },
    [AVATAR_DISTORTION_STATE_WEST_WALL] = { 0, 0, 0 },
    [AVATAR_DISTORTION_STATE_EAST_WALL] = { 0, 0, 0 },
    [AVATAR_DISTORTION_STATE_CEILING] = { 0, 0, FX32_ONE * 6 }
};

static const u32 sOrbitAngles[AVATAR_DISTORTION_STATE_MAX] = {
    [AVATAR_DISTORTION_STATE_NONE] = 270,
    [AVATAR_DISTORTION_STATE_ACTIVE] = 270,
    [AVATAR_DISTORTION_STATE_FLOOR] = 270,
    [AVATAR_DISTORTION_STATE_WEST_WALL] = 0,
    [AVATAR_DISTORTION_STATE_EAST_WALL] = 0,
    [AVATAR_DISTORTION_STATE_CEILING] = 90
};

static const Simple3DRotationAngles sFixedRotAngles[AVATAR_DISTORTION_STATE_MAX][MAX_DIR] = {
    [AVATAR_DISTORTION_STATE_NONE] = {
        [FACE_UP] = { 0, 180, 0 },
        [FACE_DOWN] = { 0, 0, 0 },
        [FACE_LEFT] = { 0, 270, 0 },
        [FACE_RIGHT] = { 0, 90, 0 },
    },
    [AVATAR_DISTORTION_STATE_ACTIVE] = {
        [FACE_UP] = { 0, 180, 0 },
        [FACE_DOWN] = { 0, 0, 0 },
        [FACE_LEFT] = { 0, 270, 0 },
        [FACE_RIGHT] = { 0, 90, 0 },
    },
    [AVATAR_DISTORTION_STATE_FLOOR] = {
        [FACE_UP] = { 0, 180, 0 },
        [FACE_DOWN] = { 0, 0, 0 },
        [FACE_LEFT] = { 0, 270, 0 },
        [FACE_RIGHT] = { 0, 90, 0 },
    },
    [AVATAR_DISTORTION_STATE_WEST_WALL] = {
        [FACE_UP] = { 0, 180, 0 },
        [FACE_DOWN] = { 0, 0, 0 },
        [FACE_LEFT] = { 0, 270, 0 },
        [FACE_RIGHT] = { 0, 90, 0 },
    },
    [AVATAR_DISTORTION_STATE_EAST_WALL] = {
        [FACE_UP] = { 0, 180, 0 },
        [FACE_DOWN] = { 0, 0, 0 },
        [FACE_LEFT] = { 0, 270, 0 },
        [FACE_RIGHT] = { 0, 90, 0 },
    },
    [AVATAR_DISTORTION_STATE_CEILING] = {
        [FACE_UP] = { 180, 180, 0 },
        [FACE_DOWN] = { 180, 0, 0 },
        [FACE_LEFT] = { 180, 90, 0 },
        [FACE_RIGHT] = { 180, 270, 0 },
    },
};
