#include "overlay005/surf_mount_renderer.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/field_effect_renderer.h"
#include "constants/map_object.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/field_effect_manager.h"

#include "fx_util.h"
#include "map_object.h"
#include "map_object_move.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"

#define RENDERER_MIN_Y_OFFSET     FX32_ONE
#define RENDERER_MAX_Y_OFFSET     (FX32_ONE * 4)
#define RENDERER_INITIAL_Y_OFFSET FX32_ONE
#define RENDERER_INITIAL_Y_DELTA  0x400

#define MAP_OBJECT_BASE_POS_OFFSET_X 0
#define MAP_OBJECT_BASE_POS_OFFSET_Y (FX32_ONE * 7)
#define MAP_OBJECT_BASE_POS_OFFSET_Z (FX32_ONE * 4)

typedef struct SurfMountResources {
    FieldEffectManager *fieldEffMan;
    Simple3DModel surfMountModel;
    Simple3DRenderObj surfMountRenderObj;
} SurfMountResources;

typedef struct SurfMountUserData {
    int dir;
    FieldEffectManager *fieldEffMan;
    SurfMountResources *resources;
    MapObject *surfMountMapObj;
} SurfMountUserData;

typedef struct SurfMountRenderer {
    BOOL inactive;
    int dirRaw;
    int dir;
    int mapObjLocalID;
    int mapHeaderID;
    int counter;
    int animID;
    fx32 yOffset;
    fx32 yDelta;
    SurfMountUserData userData;
} SurfMountRenderer;

static void SurfMountResources_Init(SurfMountResources *resources);
static void SurfMountResources_Free(SurfMountResources *resources);

static const OverworldAnimManagerFuncs sSurfMountRendererAnimFuncs;

void *SurfMountRenderer_New(FieldEffectManager *fieldEffMan)
{
    SurfMountResources *resources = FieldEffectManager_HeapAllocInit(fieldEffMan, sizeof(SurfMountResources), FALSE, 0);
    resources->fieldEffMan = fieldEffMan;

    SurfMountResources_Init(resources);
    return resources;
}

void SurfMountRenderer_Free(void *context)
{
    SurfMountResources *resources = context;

    SurfMountResources_Free(resources);
    FieldEffectManager_HeapFree(resources);
}

static void SurfMountResources_Init(SurfMountResources *resources)
{
    FieldEffectManager_LoadModel(resources->fieldEffMan, &resources->surfMountModel, 0, 81, FALSE);
    Simple3D_CreateRenderObject(&resources->surfMountRenderObj, &resources->surfMountModel);
}

static void SurfMountResources_Free(SurfMountResources *resources)
{
    Simple3D_FreeModel(&resources->surfMountModel);
}

OverworldAnimManager *SurfMountRenderer_HandleSurfBegin(MapObject *surfMountMapObj, int tileX, int tileZ, int dir, BOOL reuseMapObjPos)
{
    SurfMountUserData userData;
    VecFx32 mapObjPos = { 0, 0, 0 };

    userData.dir = dir;
    userData.fieldEffMan = MapObject_GetFieldEffectManager(surfMountMapObj);
    userData.resources = FieldEffectManager_GetRendererContext(userData.fieldEffMan, FIELD_EFFECT_RENDERER_SURF_MOUNT);
    userData.surfMountMapObj = surfMountMapObj;

    if (!reuseMapObjPos) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(surfMountMapObj);

        mapObjPos.x = MAP_OBJECT_COORD_TO_FX32(tileX);
        mapObjPos.z = MAP_OBJECT_COORD_TO_FX32(tileZ);
        MapObject_RecalculatePositionHeight(fieldSystem, &mapObjPos);
    } else {
        VecFx32 spritePosOffset = { MAP_OBJECT_BASE_POS_OFFSET_X, MAP_OBJECT_BASE_POS_OFFSET_Y, MAP_OBJECT_BASE_POS_OFFSET_Z };

        MapObject_GetPosPtr(surfMountMapObj, &mapObjPos);
        MapObject_SetSpritePosOffset(surfMountMapObj, &spritePosOffset);
    }

    int taskPriority = MapObject_CalculateTaskPriority(surfMountMapObj, 2);
    return FieldEffectManager_InitAnimManager(userData.fieldEffMan, &sSurfMountRendererAnimFuncs, &mapObjPos, reuseMapObjPos, &userData, taskPriority);
}

static BOOL SurfMountRenderer_AnimInit(OverworldAnimManager *animMan, void *context)
{
    SurfMountRenderer *renderer = context;
    const SurfMountUserData *userData = OverworldAnimManager_GetUserData(animMan);
    MapObject *surfMountMapObj = userData->surfMountMapObj;

    renderer->userData = *userData;
    renderer->mapObjLocalID = MapObject_GetLocalID(surfMountMapObj);
    renderer->mapHeaderID = MapObject_GetMapID(surfMountMapObj);
    renderer->dir = userData->dir;
    renderer->animID = OverworldAnimManager_GetID(animMan);
    renderer->yOffset = RENDERER_INITIAL_Y_OFFSET;
    renderer->yDelta = RENDERER_INITIAL_Y_DELTA;

    return TRUE;
}

static void SurfMountRenderer_AnimExit(OverworldAnimManager *animMan, void *context)
{
    SurfMountRenderer *renderer = context;
    MapObject *surfMountMapObj = renderer->userData.surfMountMapObj;
    VecFx32 spritePosOffset = { 0, 0, 0 };

    MapObject_SetSpritePosOffset(surfMountMapObj, &spritePosOffset);
}

static void SurfMountRenderer_AnimTick(OverworldAnimManager *animMan, void *context)
{
    SurfMountRenderer *renderer = context;
    MapObject *surfMountMapObj = renderer->userData.surfMountMapObj;

    if (!sub_02062764(surfMountMapObj, renderer->mapObjLocalID, renderer->mapHeaderID)) {
        FieldEffectManager_FinishAnimManager(animMan);
        return;
    }

    renderer->inactive = FALSE;
    renderer->dirRaw = MapObject_GetFacingDir(surfMountMapObj);

    if (renderer->dirRaw == DIR_NONE) {
        renderer->inactive = TRUE;
        return;
    }

    if (renderer->animID == 0) {
        return;
    }

    renderer->dir = renderer->dirRaw;
    renderer->yOffset += renderer->yDelta;

    if (renderer->yOffset >= RENDERER_MAX_Y_OFFSET) {
        renderer->yOffset = RENDERER_MAX_Y_OFFSET;
        renderer->yDelta = -renderer->yDelta;
    } else if (renderer->yOffset <= RENDERER_MIN_Y_OFFSET) {
        renderer->yOffset = RENDERER_MIN_Y_OFFSET;
        renderer->yDelta = -renderer->yDelta;
    }

    VecFx32 spritePosOffset;
    spritePosOffset.x = MAP_OBJECT_BASE_POS_OFFSET_X;
    spritePosOffset.y = MAP_OBJECT_BASE_POS_OFFSET_Y + renderer->yOffset;
    spritePosOffset.z = MAP_OBJECT_BASE_POS_OFFSET_Z;

    MapObject_SetSpritePosOffset(surfMountMapObj, &spritePosOffset);

    VecFx32 mapObjPos;

    MapObject_GetPosPtr(surfMountMapObj, &mapObjPos);
    mapObjPos.y += renderer->yOffset - FX32_ONE;
    OverworldAnimManager_SetPosition(animMan, &mapObjPos);
}

static void SurfMountRenderer_AnimRender(OverworldAnimManager *animMan, void *context)
{
    SurfMountRenderer *renderer = context;

    if (renderer->inactive == TRUE || renderer->dir == DIR_NONE) {
        return;
    }

    renderer->counter++;

    u32 rotAngle = 0;
    MtxFx33 rotation;
    VecFx32 pos;
    VecFx32 scale = { FX32_ONE, FX32_ONE, FX32_ONE };
    Simple3DRenderObj *surfMountRenderObj = &renderer->userData.resources->surfMountRenderObj;

    switch (renderer->dir) {
    case DIR_NORTH:
        rotAngle = 180;
        break;

    case DIR_SOUTH:
        break;

    case DIR_WEST:
        rotAngle = 270;
        break;

    case DIR_EAST:
        rotAngle = 90;
        break;
    }

    MTX_Rot33Angles(&rotation, 0, rotAngle, 0);
    OverworldAnimManager_GetPosition(animMan, &pos);
    Simple3D_DrawRenderObj(surfMountRenderObj, &pos, &scale, &rotation);
}

void SurfMountRenderer_Reset(OverworldAnimManager *animMan, int animID)
{
    SurfMountRenderer *renderer = OverworldAnimManager_GetFuncsContext(animMan);

    renderer->animID = animID;
    renderer->yOffset = RENDERER_INITIAL_Y_OFFSET;
    renderer->yDelta = RENDERER_INITIAL_Y_DELTA;
}

static const OverworldAnimManagerFuncs sSurfMountRendererAnimFuncs = {
    sizeof(SurfMountRenderer),
    SurfMountRenderer_AnimInit,
    SurfMountRenderer_AnimExit,
    SurfMountRenderer_AnimTick,
    SurfMountRenderer_AnimRender
};
