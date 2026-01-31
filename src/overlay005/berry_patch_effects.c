#include "overlay005/berry_patch_effects.h"

#include <nitro.h>

#include "constants/field/field_effect_renderer.h"

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020217F4.h"

#include "overlay005/field_effect_manager.h"
#include "overlay005/ov5_021ECC20.h"

#include "berry_patch_manager.h"
#include "map_object.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"
#include "unk_02020AEC.h"

// Berry patch moisture effect resource IDs
#define BERRY_PATCH_MOISTURE_RESOURCE_COUNT 3
#define BERRY_PATCH_MOISTURE_RESOURCE_DRY   77
#define BERRY_PATCH_MOISTURE_RESOURCE_MOIST 76
#define BERRY_PATCH_MOISTURE_RESOURCE_WET   75

typedef struct BerryPatchGraphicsManager {
    FieldEffectManager *fieldEffMan;
    Simple3DRenderObj resourceData[BERRY_PATCH_MOISTURE_RESOURCE_COUNT];
    Simple3DModel resources[BERRY_PATCH_MOISTURE_RESOURCE_COUNT];
} BerryPatchGraphicsManager;

typedef struct BerryPatchMoistureEffectContext {
    FieldEffectManager *fieldEffMan;
    BerryPatchGraphicsManager *graphicsManager;
    MapObject *mapObject;
} BerryPatchMoistureEffectContext;

typedef struct BerryPatchMoistureEffect {
    int localID;
    int mapID;
    BOOL isHidden;
    int moistureLevel;
    BerryPatchMoistureEffectContext context;
} BerryPatchMoistureEffect;

typedef struct BerryPatchEffectCounter {
    int counter;
    BOOL isEnabled;
    FieldEffectManager *fieldEffMan;
} BerryPatchEffectCounter;

typedef struct BerryPatchSparkleEffectContext {
    FieldEffectManager *fieldEffMan;
    BerryPatchEffectCounter *effectCounter;
    MapObject *mapObject;
} BerryPatchSparkleEffectContext;

typedef struct BerryPatchSparkleEffect {
    int dummy;
    int animationFrame;
    BOOL isAnimating;
    BerryPatchSparkleEffectContext context;
    UnkStruct_020216E0 *graphicsObject;
} BerryPatchSparkleEffect;

static void BerryPatchGraphicsManager_InitResources(BerryPatchGraphicsManager *manager);
static void BerryPatchGraphicsManager_FreeResources(BerryPatchGraphicsManager *manager);
static void BerryPatchEffectCounter_Increment(BerryPatchEffectCounter *counter);
static void BerryPatchEffectCounter_Decrement(BerryPatchEffectCounter *counter);
static void BerryPatchEffectCounter_EnableEffects(BerryPatchEffectCounter *counter);
static void BerryPatchEffectCounter_DisableEffects(BerryPatchEffectCounter *counter);
static void BerryPatchEffectCounter_CheckEnable(BerryPatchEffectCounter *counter);
static void BerryPatchEffectCounter_CheckDisable(BerryPatchEffectCounter *counter);

static const OverworldAnimManagerFuncs sBerryPatchMoistureEffectDefinition;
static const OverworldAnimManagerFuncs sBerryPatchSparkleEffectDefinition;
static const u32 sBerryPatchMoistureResourceIDs[BERRY_PATCH_MOISTURE_RESOURCE_COUNT];
static const UnkStruct_020217F4 sBerryPatchSparkleEffectData[];

void *BerryPatchGraphicsManager_New(FieldEffectManager *fieldEffMan)
{
    BerryPatchGraphicsManager *manager = FieldEffectManager_HeapAllocInit(fieldEffMan, sizeof(BerryPatchGraphicsManager), 0, 0);
    manager->fieldEffMan = fieldEffMan;

    BerryPatchGraphicsManager_InitResources(manager);
    return manager;
}

void BerryPatchGraphicsManager_Free(void *manager)
{
    BerryPatchGraphicsManager *graphicsManager = manager;

    BerryPatchGraphicsManager_FreeResources(graphicsManager);
    FieldEffectManager_HeapFree(graphicsManager);
}

static void BerryPatchGraphicsManager_InitResources(BerryPatchGraphicsManager *manager)
{
    int i = 0;

    do {
        FieldEffectManager_LoadModel(
            manager->fieldEffMan, &manager->resources[i], 0, sBerryPatchMoistureResourceIDs[i], 0);
        Simple3D_CreateRenderObject(&manager->resourceData[i], &manager->resources[i]);
        i++;
    } while (i < BERRY_PATCH_MOISTURE_RESOURCE_COUNT);
}

static void BerryPatchGraphicsManager_FreeResources(BerryPatchGraphicsManager *manager)
{
    int i = 0;

    do {
        Simple3D_FreeModel(&manager->resources[i]);
        i++;
    } while (i < BERRY_PATCH_MOISTURE_RESOURCE_COUNT);
}

void BerryPatchGraphics_NewMoistureEffect(MapObject *mapObject)
{
    BerryPatchMoistureEffectContext context;
    FieldEffectManager *fieldEffMan = MapObject_GetFieldEffectManager(mapObject);
    VecFx32 position;

    context.fieldEffMan = fieldEffMan;
    context.graphicsManager = FieldEffectManager_GetRendererContext(fieldEffMan, FIELD_EFFECT_RENDERER_BERRY_PATCH);
    context.mapObject = mapObject;

    MapObject_GetPosPtr(mapObject, &position);

    int priority = 0;
    int effectPriority = MapObject_GetTaskBasePriority(mapObject) + 1;

    FieldEffectManager_InitAnimManager(fieldEffMan, &sBerryPatchMoistureEffectDefinition, &position, priority, &context, effectPriority);
}

static BOOL BerryPatchMoistureEffect_Init(OverworldAnimManager *effect, void *context)
{
    BerryPatchMoistureEffect *moistureEffect = context;
    const BerryPatchMoistureEffectContext *effectContext = OverworldAnimManager_GetUserData(effect);

    moistureEffect->context = *effectContext;
    moistureEffect->localID = MapObject_GetLocalID(moistureEffect->context.mapObject);
    moistureEffect->mapID = MapObject_GetMapID(moistureEffect->context.mapObject);

    return TRUE;
}

static void BerryPatchMoistureEffect_Free(OverworldAnimManager *effect, void *context)
{
    return;
}

static void BerryPatchMoistureEffect_Update(OverworldAnimManager *effectTask, void *effectData)
{
    BerryPatchMoistureEffect *berryPatchEffect = effectData;
    MapObject *mapObject = berryPatchEffect->context.mapObject;

    if (!sub_02062764(mapObject, berryPatchEffect->localID, berryPatchEffect->mapID)) {
        FieldEffectManager_FinishAnimManager(effectTask);
        return;
    }

    berryPatchEffect->isHidden = FALSE;

    if (MapObject_CheckStatusFlag(mapObject, MAP_OBJ_STATUS_HIDE) == TRUE || !BerryPatches_GetGrowthStage(MapObject_FieldSystem(mapObject), mapObject)) {
        berryPatchEffect->isHidden = TRUE;
        return;
    }

    berryPatchEffect->moistureLevel = BerryPatches_GetMoisture(MapObject_FieldSystem(mapObject), mapObject);

    VecFx32 mapObjectPosition;

    MapObject_GetPosPtr(mapObject, &mapObjectPosition);
    OverworldAnimManager_SetPosition(effectTask, &mapObjectPosition);
}

static void BerryPatchMoistureEffect_Render(OverworldAnimManager *effectTask, void *effectData)
{
    BerryPatchMoistureEffect *berryPatchEffect = effectData;

    if (berryPatchEffect->isHidden != TRUE) {
        VecFx32 effectPosition;

        OverworldAnimManager_GetPosition(effectTask, &effectPosition);
        Simple3D_DrawRenderObjWithPos(&berryPatchEffect->context.graphicsManager->resourceData[berryPatchEffect->moistureLevel], &effectPosition);
    }
}

static const OverworldAnimManagerFuncs sBerryPatchMoistureEffectDefinition = {
    sizeof(BerryPatchMoistureEffect),
    BerryPatchMoistureEffect_Init,
    BerryPatchMoistureEffect_Free,
    BerryPatchMoistureEffect_Update,
    BerryPatchMoistureEffect_Render
};

void *BerryPatchGraphicsManager_NewEffectCounter(FieldEffectManager *fieldEffMan)
{
    BerryPatchEffectCounter *effectCounter = FieldEffectManager_HeapAllocInit(fieldEffMan, sizeof(BerryPatchEffectCounter), 0, 0);
    effectCounter->fieldEffMan = fieldEffMan;

    return effectCounter;
}

void BerryPatchGraphicsManager_FreeEffectCounter(void *counter)
{
    BerryPatchEffectCounter *effectCounter = counter;

    BerryPatchEffectCounter_DisableEffects(effectCounter);
    FieldEffectManager_HeapFree(effectCounter);
}

static void BerryPatchEffectCounter_Increment(BerryPatchEffectCounter *counter)
{
    counter->counter++;
}

static void BerryPatchEffectCounter_Decrement(BerryPatchEffectCounter *counter)
{
    counter->counter--;
    GF_ASSERT(counter->counter >= 0);
}

static void BerryPatchEffectCounter_EnableEffects(BerryPatchEffectCounter *counter)
{
    if (!counter->isEnabled) {
        counter->isEnabled = TRUE;
        // Load sparkle effect graphics resources
        ov5_021DF9E0(counter->fieldEffMan, 11, 109);
        ov5_021DFA14(counter->fieldEffMan, 11, 181);
        ov5_021DFA3C(counter->fieldEffMan, 12, 14, 1);
        ov5_021DF864(counter->fieldEffMan, 13, 11, 11, 12, 0, sBerryPatchSparkleEffectData);
    }
}

static void BerryPatchEffectCounter_DisableEffects(BerryPatchEffectCounter *counter)
{
    if (counter->isEnabled == TRUE) {
        counter->isEnabled = FALSE;
        // Clean up sparkle effect graphics resources
        ov5_021DFA08(counter->fieldEffMan, 11);
        ov5_021DFA30(counter->fieldEffMan, 11);
        ov5_021DFA7C(counter->fieldEffMan, 12);
        ov5_021DF9D4(counter->fieldEffMan, 13);
    }
}

static void BerryPatchEffectCounter_CheckEnable(BerryPatchEffectCounter *counter)
{
    if (counter->counter == 0) {
        BerryPatchEffectCounter_EnableEffects(counter);
    }
}

static void BerryPatchEffectCounter_CheckDisable(BerryPatchEffectCounter *counter)
{
    if (counter->counter == 0) {
        BerryPatchEffectCounter_DisableEffects(counter);
    }
}

OverworldAnimManager *BerryPatchGraphics_NewSparkleEffect(MapObject *mapObject)
{
    VecFx32 position;
    FieldEffectManager *fieldEffMan;
    BerryPatchSparkleEffectContext effectContext;
    OverworldAnimManager *effectTask;

    fieldEffMan = MapObject_GetFieldEffectManager(mapObject);
    ov5_021ECDA0(mapObject, &position);
    position.z += (FX32_ONE * 8); // Offset sparkle effect 8 units above ground

    effectContext.fieldEffMan = fieldEffMan;
    effectContext.effectCounter = FieldEffectManager_GetRendererContext(fieldEffMan, FIELD_EFFECT_RENDERER_BERRY_PATCH_EFFECT_COUNTER);
    effectTask = FieldEffectManager_InitAnimManager(fieldEffMan, &sBerryPatchSparkleEffectDefinition, &position, 0, &effectContext, 255);

    return effectTask;
}

static BOOL BerryPatchSparkleEffect_Init(OverworldAnimManager *effect, void *context)
{
    VecFx32 position;
    BerryPatchSparkleEffect *sparkleEffect = context;
    const BerryPatchSparkleEffectContext *effectContext = OverworldAnimManager_GetUserData(effect);

    sparkleEffect->context = *effectContext;

    BerryPatchEffectCounter_CheckEnable(sparkleEffect->context.effectCounter);
    OverworldAnimManager_GetPosition(effect, &position);

    sparkleEffect->graphicsObject = ov5_021DF84C(sparkleEffect->context.fieldEffMan, 13, &position);
    BerryPatchEffectCounter_Increment(sparkleEffect->context.effectCounter);

    return TRUE;
}

static void BerryPatchSparkleEffect_Free(OverworldAnimManager *effect, void *context)
{
    BerryPatchSparkleEffect *sparkleEffect = context;

    sub_020211FC(sparkleEffect->graphicsObject);
    BerryPatchEffectCounter_Decrement(sparkleEffect->context.effectCounter);
    BerryPatchEffectCounter_CheckDisable(sparkleEffect->context.effectCounter);
}

static void BerryPatchSparkleEffect_Update(OverworldAnimManager *effect, void *context)
{
    // Animation speed multipliers for different sparkle effect frames
    fx32 animationSpeeds[5] = { 4096, 4096, 8192, 8192, 4096 };
    BerryPatchSparkleEffect *sparkleEffect = context;

    if (sparkleEffect->isAnimating == TRUE) {
        sparkleEffect->isAnimating = FALSE;
        sparkleEffect->animationFrame++;

        if (sparkleEffect->animationFrame >= (int)NELEMS(animationSpeeds)) {
            FieldEffectManager_FinishAnimManager(effect);
            return;
        }

        sub_02021380(sparkleEffect->graphicsObject, 0);
    }

    if (sub_02021368(sparkleEffect->graphicsObject, animationSpeeds[sparkleEffect->animationFrame]) != 1) {
        return;
    }

    sparkleEffect->isAnimating = TRUE;
}

static void BerryPatchSparkleEffect_Render(OverworldAnimManager *effect, void *context)
{
    VecFx32 position;
    BerryPatchSparkleEffect *sparkleEffect = context;

    OverworldAnimManager_GetPosition(effect, &position);
    sub_020212A8(sparkleEffect->graphicsObject, &position);
}

static const OverworldAnimManagerFuncs sBerryPatchSparkleEffectDefinition = {
    sizeof(BerryPatchSparkleEffect),
    BerryPatchSparkleEffect_Init,
    BerryPatchSparkleEffect_Free,
    BerryPatchSparkleEffect_Update,
    BerryPatchSparkleEffect_Render
};

static const u32 sBerryPatchMoistureResourceIDs[BERRY_PATCH_MOISTURE_RESOURCE_COUNT] = {
    BERRY_PATCH_MOISTURE_RESOURCE_DRY,
    BERRY_PATCH_MOISTURE_RESOURCE_MOIST,
    BERRY_PATCH_MOISTURE_RESOURCE_WET
};

// Sparkle effect configuration data for berry patches
// Each entry defines: { model_variant, animation_frame_count, effect_type }
static const UnkStruct_020217F4 sBerryPatchSparkleEffectData[] = {
    { 0, 9, 1 }, // Animated sparkle effect (9 animation frames, type 1)
    { 0, 0, 2 } // Static sparkle effect (no animation, type 2)
};
