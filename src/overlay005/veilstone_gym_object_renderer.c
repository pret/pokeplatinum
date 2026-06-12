#include "overlay005/veilstone_gym_object_renderer.h"

#include <nitro.h>

#include "constants/field/field_effect_renderer.h"

#include "field/field_system.h"
#include "overlay005/field_effect_manager.h"

#include "heap.h"
#include "map_object_move.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"

#define NUM_MODELS     3
#define NUM_ANIMATIONS 12

#define NUM_TIRE_STACK_ANIMATIONS 4
#define ALL_ANIMATIONS_FINISHED   ((1 << NUM_TIRE_STACK_ANIMATIONS) - 1)

#define MODEL_IDX_TOPPLED_TIRE_STACK 0
#define MODEL_IDX_INTACT_TIRE_STACK  1
#define MODEL_IDX_PUNCHING_BAG       2

typedef struct VeilstoneGymObjectRendererResources {
    int numTireStacks;
    int numPunchingBags;
    FieldEffectManager *fieldEffMan;
    Simple3DModel models[NUM_MODELS];
    Simple3DAnimation animations[NUM_ANIMATIONS];
    OverworldAnimManager **tireStacks;
    OverworldAnimManager **punchingBags;
} VeilstoneGymObjectRendererResources;

typedef struct VeilstoneGymObjectRendererContext {
    u8 unused;
    s8 unused2;
    s16 x;
    s16 z;
    fx32 yOffset;
    VeilstoneGymObjectRendererResources *resources;
    FieldSystem *fieldSystem;
} VeilstoneGymObjectRendererContext;

typedef struct VeilstoneGymPunchingBagRenderer {
    u8 updateAnimation : 6;
    u8 loaded : 1;
    u8 animationFinished : 1;
    s8 unused;
    s16 x;
    s16 z;
    fx32 frameDelta;
    Simple3DAnimation animation;
    Simple3DRenderObj renderObj;
    VeilstoneGymObjectRendererContext context;
} VeilstoneGymPunchingBagRenderer;

typedef struct VeilstoneGymTireStackAnimations {
    u32 finishedFlags;
    Simple3DAnimation animation[NUM_TIRE_STACK_ANIMATIONS];
} VeilstoneGymTireStackAnimations;

typedef struct VeilstoneGymTireStackRenderer {
    BOOL updateAnimations;
    s16 x;
    s16 z;
    s16 unused;
    Simple3DRenderObj renderObj;
    VeilstoneGymObjectRendererContext context;
    VeilstoneGymTireStackAnimations *animations;
} VeilstoneGymTireStackRenderer;

static void LoadModelsAndAnimations(VeilstoneGymObjectRendererResources *resources);
static void FreeModelsAndAnimations(VeilstoneGymObjectRendererResources *resources);

static const OverworldAnimManagerFuncs sTireStackAnimFuncs;
static const OverworldAnimManagerFuncs sPunchingBagAnimFuncs;
static const u32 sVeilstoneGymObjectModelIDs[NUM_MODELS];
static const u32 sVeilstoneGymObjectAnimationsIDs[NUM_ANIMATIONS];
static const u32 sTireStackAnimIndices[NUM_TIRE_STACK_ANIMATIONS];

void *VeilstoneGymObjectRenderer_New(FieldEffectManager *fieldEffMan)
{
    VeilstoneGymObjectRendererResources *resources = FieldEffectManager_HeapAllocInit(fieldEffMan, sizeof(VeilstoneGymObjectRendererResources), FALSE, 0);
    resources->fieldEffMan = fieldEffMan;

    LoadModelsAndAnimations(resources);
    return resources;
}

void VeilstoneGymObjectRenderer_Free(void *context)
{
    VeilstoneGymObjectRendererResources *resources = context;

    if (resources->tireStacks != NULL) {
        Heap_Free(resources->tireStacks);
    }

    if (resources->punchingBags != NULL) {
        Heap_Free(resources->punchingBags);
    }

    FreeModelsAndAnimations(resources);
    FieldEffectManager_HeapFree(resources);
}

void VeilstoneGymObjectRenderer_InitContext(FieldEffectManager *fieldEffMan, int numTireStacks, int numPunchingBags)
{
    VeilstoneGymObjectRendererResources *resources = FieldEffectManager_GetRendererContext(fieldEffMan, FIELD_EFFECT_RENDERER_VEILSTONE_GYM_OBJECTS);
    resources->numPunchingBags = numPunchingBags;
    resources->numTireStacks = numTireStacks;

    if (numTireStacks) {
        resources->tireStacks = FieldEffectManager_HeapAllocInit(fieldEffMan, sizeof(OverworldAnimManager *) * numTireStacks, FALSE, 0);
    }

    if (numPunchingBags) {
        resources->punchingBags = FieldEffectManager_HeapAllocInit(fieldEffMan, sizeof(OverworldAnimManager *) * numPunchingBags, FALSE, 0);
    }
}

static void LoadModelsAndAnimations(VeilstoneGymObjectRendererResources *resources)
{
    for (int i = 0; i < NUM_MODELS; i++) {
        FieldEffectManager_LoadModel(resources->fieldEffMan, &resources->models[i], 0, sVeilstoneGymObjectModelIDs[i], FALSE);
    }

    for (int i = 0; i < NUM_ANIMATIONS; i++) {
        FieldEffectManager_LoadAnimation(resources->fieldEffMan, &resources->animations[i], 0, sVeilstoneGymObjectAnimationsIDs[i], FALSE);
    }
}

static void FreeModelsAndAnimations(VeilstoneGymObjectRendererResources *resources)
{
    for (int i = 0; i < NUM_MODELS; i++) {
        Simple3D_FreeModel(&resources->models[i]);
    }

    for (int i = 0; i < NUM_ANIMATIONS; i++) {
        Simple3D_FreeAnimation(&resources->animations[i]);
    }
}

static OverworldAnimManager **SetupRendererContext(FieldSystem *fieldSystem, int x, int z, fx32 yOffset, BOOL isPunchingBag, VeilstoneGymObjectRendererContext *context)
{
    FieldEffectManager *fieldEffMan = fieldSystem->fieldEffMan;
    VeilstoneGymObjectRendererResources *resources = FieldEffectManager_GetRendererContext(fieldEffMan, FIELD_EFFECT_RENDERER_VEILSTONE_GYM_OBJECTS);

    int count;
    OverworldAnimManager **animManagers;
    if (!isPunchingBag) {
        count = resources->numTireStacks;
        animManagers = resources->tireStacks;
    } else {
        count = resources->numPunchingBags;
        animManagers = resources->punchingBags;
    }

    GF_ASSERT(count);

    context->x = x;
    context->z = z;
    context->yOffset = yOffset;
    context->fieldSystem = fieldSystem;
    context->resources = resources;

    for (int i = 0; i < count; i++) {
        if (animManagers[i] == NULL) {
            return &animManagers[i];
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static void InitPunchingBagRenderer(OverworldAnimManager *animManager, VeilstoneGymPunchingBagRenderer *renderer)
{
    VecFx32 pos;
    const VeilstoneGymObjectRendererContext *context = OverworldAnimManager_GetUserData(animManager);

    renderer->context = *context;
    renderer->x = context->x;
    renderer->z = context->z;
    renderer->unused = context->unused2;
    renderer->frameDelta = FX32_ONE;

    VecFx32_SetPosFromMapCoords(renderer->x, renderer->z, &pos);
    MapObject_RecalculatePositionHeight(renderer->context.fieldSystem, &pos);

    pos.y += FX32_CONST(6) + renderer->context.yOffset;

    OverworldAnimManager_SetPosition(animManager, &pos);
}

OverworldAnimManager *VeilstoneGymObjectRenderer_InitTireStackRenderer(FieldSystem *fieldSystem, int x, int z, fx32 yOffset)
{
    VeilstoneGymObjectRendererContext context;

    FieldEffectManager *fieldEffMan = fieldSystem->fieldEffMan;
    OverworldAnimManager **animManager = SetupRendererContext(fieldSystem, x, z, yOffset, FALSE, &context);
    *animManager = FieldEffectManager_InitAnimManager(fieldEffMan, &sTireStackAnimFuncs, NULL, 0, &context, 0);

    return *animManager;
}

void VeilstoneGymObjectRenderer_PlayToppleTireStackAnim(OverworldAnimManager *animManager)
{
    int i;
    VeilstoneGymTireStackRenderer *renderer = OverworldAnimManager_GetFuncsContext(animManager);
    VeilstoneGymObjectRendererResources *resources = renderer->context.resources;

    GF_ASSERT(renderer->animations == NULL);

    renderer->updateAnimations = TRUE;
    renderer->animations = FieldEffectManager_HeapAllocInit(resources->fieldEffMan, sizeof(VeilstoneGymTireStackAnimations), TRUE, 0);

    Simple3D_CreateRenderObject(&renderer->renderObj, &renderer->context.resources->models[MODEL_IDX_TOPPLED_TIRE_STACK]);

    for (i = 0; i < NUM_TIRE_STACK_ANIMATIONS; i++) {
        FieldEffectManager_ApplyAnimCopyToModel(resources->fieldEffMan, &renderer->animations->animation[i], &resources->models[MODEL_IDX_TOPPLED_TIRE_STACK], &resources->animations[sTireStackAnimIndices[i]], 0);
        Simple3D_BindAnimToRenderObj(&renderer->renderObj, &renderer->animations->animation[i]);
    }
}

BOOL VeilstoneGymObjectRenderer_IsTireStackAnimationFinished(OverworldAnimManager *animManager)
{
    VeilstoneGymTireStackRenderer *renderer = OverworldAnimManager_GetFuncsContext(animManager);
    GF_ASSERT(renderer->animations != NULL);

    return renderer->animations->finishedFlags == ALL_ANIMATIONS_FINISHED;
}

static BOOL TireStackAnim_Init(OverworldAnimManager *animManager, void *context)
{
    VecFx32 pos;
    VeilstoneGymTireStackRenderer *renderer = context;
    const VeilstoneGymObjectRendererContext *renderContext = OverworldAnimManager_GetUserData(animManager);

    renderer->context = *renderContext;
    renderer->x = renderContext->x;
    renderer->z = renderContext->z;
    renderer->unused = renderContext->unused2;

    VecFx32_SetPosFromMapCoords(renderer->x, renderer->z, &pos);
    MapObject_RecalculatePositionHeight(renderer->context.fieldSystem, &pos);

    pos.y += FX32_CONST(6) + renderer->context.yOffset;

    OverworldAnimManager_SetPosition(animManager, &pos);
    Simple3D_CreateRenderObject(&renderer->renderObj, &renderer->context.resources->models[MODEL_IDX_INTACT_TIRE_STACK]);

    return TRUE;
}

static void TireStackAnim_Free(OverworldAnimManager *animManager, void *context)
{
    VeilstoneGymTireStackRenderer *renderer = context;

    if (renderer->animations != NULL) {
        for (int i = 0; i < NUM_TIRE_STACK_ANIMATIONS; i++) {
            Simple3D_FreeAnimation(&renderer->animations->animation[i]);
        }

        Heap_Free(renderer->animations);
    }
}

static void TireStackAnim_Update(OverworldAnimManager *animManager, void *context)
{
    VeilstoneGymTireStackRenderer *renderer = context;

    switch (renderer->updateAnimations) {
    case FALSE:
        break;
    case TRUE:
        GF_ASSERT(renderer->animations != NULL);
        VeilstoneGymTireStackAnimations *animations = renderer->animations;

        for (int i = 0; i < NUM_TIRE_STACK_ANIMATIONS; i++) {
            if (Simple3D_UpdateAnim(&animations->animation[i], FX32_ONE, FALSE)) {
                animations->finishedFlags |= 1 << i;
            }
        }

        if (animations->finishedFlags == ALL_ANIMATIONS_FINISHED) {
            renderer->updateAnimations = FALSE;
        }
        break;
    }
}

static void TireStackAnim_Render(OverworldAnimManager *animManager, void *context)
{
    VecFx32 pos;
    VeilstoneGymTireStackRenderer *renderer = context;

    OverworldAnimManager_GetPosition(animManager, &pos);
    Simple3D_DrawRenderObjWithPos(&renderer->renderObj, &pos);
}

static const OverworldAnimManagerFuncs sTireStackAnimFuncs = {
    .ctxSize = sizeof(VeilstoneGymTireStackRenderer),
    .initFunc = TireStackAnim_Init,
    .exitFunc = TireStackAnim_Free,
    .tickFunc = TireStackAnim_Update,
    .renderFunc = TireStackAnim_Render
};

OverworldAnimManager *VeilstoneGymObjectRenderer_InitPunchingBagRenderer(FieldSystem *fieldSystem, int x, int z, fx32 yOffset)
{
    VeilstoneGymObjectRendererContext context;

    FieldEffectManager *fieldEffMan = fieldSystem->fieldEffMan;
    OverworldAnimManager **animManager = SetupRendererContext(fieldSystem, x, z, yOffset, TRUE, &context);
    *animManager = FieldEffectManager_InitAnimManager(fieldEffMan, &sPunchingBagAnimFuncs, NULL, 0, &context, 0);

    return *animManager;
}

void VeilstoneGymObjectRenderer_StartPunchingBagAnimation(OverworldAnimManager *animManager, int animId, BOOL isMoving)
{
    VeilstoneGymPunchingBagRenderer *renderer = OverworldAnimManager_GetFuncsContext(animManager);
    VeilstoneGymObjectRendererResources *resources = renderer->context.resources;

    if (renderer->loaded == TRUE) {
        Simple3D_FreeAnimObject(&renderer->animation);
    }

    renderer->loaded = TRUE;
    renderer->animationFinished = FALSE;
    renderer->updateAnimation = TRUE;

    animId = Direction_GetOpposite(animId);

    if (isMoving == TRUE) {
        animId += 4;
    }

    FieldEffectManager_ApplyAnimCopyToModel(resources->fieldEffMan, &renderer->animation, &resources->models[MODEL_IDX_PUNCHING_BAG], &resources->animations[animId], 0);
    Simple3D_CreateRenderObjectWithAnim(&renderer->renderObj, &resources->models[MODEL_IDX_PUNCHING_BAG], &renderer->animation);
}

void VeilstoneGymObjectRenderer_UpdateBagFrameDelta(OverworldAnimManager *animManager, fx32 frameDelta)
{
    VeilstoneGymPunchingBagRenderer *renderer = OverworldAnimManager_GetFuncsContext(animManager);
    renderer->frameDelta = frameDelta;
}

BOOL VeilstoneGymObjectRenderer_IsPunchingBagAnimFinished(OverworldAnimManager *animManager)
{
    VeilstoneGymPunchingBagRenderer *renderer = OverworldAnimManager_GetFuncsContext(animManager);
    return renderer->animationFinished;
}

static BOOL PunchingBagAnim_Init(OverworldAnimManager *animManager, void *context)
{
    VeilstoneGymPunchingBagRenderer *renderer = context;

    InitPunchingBagRenderer(animManager, renderer);
    Simple3D_CreateRenderObject(&renderer->renderObj, &renderer->context.resources->models[MODEL_IDX_PUNCHING_BAG]);

    return TRUE;
}

static void PunchingBagAnim_Free(OverworldAnimManager *animManager, void *context)
{
    VeilstoneGymPunchingBagRenderer *renderer = context;

    if (renderer->loaded) {
        Simple3D_FreeAnimation(&renderer->animation);
    }
}

static void PunchingBagAnim_Update(OverworldAnimManager *animManager, void *context)
{
    VeilstoneGymPunchingBagRenderer *renderer = context;

    switch (renderer->updateAnimation) {
    case FALSE:
        break;
    case TRUE:
        if (Simple3D_UpdateAnim(&renderer->animation, renderer->frameDelta, FALSE)) {
            renderer->updateAnimation = FALSE;
            renderer->animationFinished = TRUE;
        }
        break;
    }
}

static void PunchingBagAnim_Render(OverworldAnimManager *animManager, void *context)
{
    VecFx32 pos;
    VeilstoneGymPunchingBagRenderer *renderer = context;

    OverworldAnimManager_GetPosition(animManager, &pos);
    Simple3D_DrawRenderObjWithPos(&renderer->renderObj, &pos);
}

static const OverworldAnimManagerFuncs sPunchingBagAnimFuncs = {
    sizeof(VeilstoneGymPunchingBagRenderer),
    PunchingBagAnim_Init,
    PunchingBagAnim_Free,
    PunchingBagAnim_Update,
    PunchingBagAnim_Render
};

// TODO Replace values with naix constants when fldeff.narc is unpacked
static const u32 sVeilstoneGymObjectModelIDs[NUM_MODELS] = {
    112,
    114,
    113
};

static const u32 sVeilstoneGymObjectAnimationsIDs[NUM_ANIMATIONS] = {
    182,
    183,
    184,
    185,
    186,
    187,
    188,
    189,
    190,
    195,
    196,
    168
};

static const u32 sTireStackAnimIndices[NUM_TIRE_STACK_ANIMATIONS] = { 8, 9, 10, 11 };
