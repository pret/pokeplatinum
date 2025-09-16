#include "overlay005/ov5_021F204C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020217F4.h"
#include "struct_defs/struct_02073838.h"
#include "struct_defs/struct_02073B50.h"

#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "berry_patch_manager.h"
#include "map_object.h"
#include "unk_02020AEC.h"
#include "unk_020711EC.h"
#include "unk_02073838.h"

typedef struct BerryPatchGraphicsManager {
    UnkStruct_ov5_021DF47C *renderManager;
    UnkStruct_02073B50 resourceData[3];
    UnkStruct_02073838 resources[3];
} BerryPatchGraphicsManager;

typedef struct BerryPatchMoistureEffectContext {
    UnkStruct_ov5_021DF47C *renderManager;
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
    UnkStruct_ov5_021DF47C *renderManager;
} BerryPatchEffectCounter;

typedef struct BerryPatchSparkleEffectContext {
    UnkStruct_ov5_021DF47C *renderManager;
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

static const UnkStruct_ov101_021D86B0 BerryPatchMoistureEffectDefinition;
static const UnkStruct_ov101_021D86B0 BerryPatchSparkleEffectDefinition;
static const u32 BerryPatchMoistureResourceIDs[3];
const UnkStruct_020217F4 BerryPatchSparkleEffectData[];

void *BerryPatchGraphicsManager_New(UnkStruct_ov5_021DF47C *renderManager)
{
    BerryPatchGraphicsManager *manager = ov5_021DF53C(renderManager, sizeof(BerryPatchGraphicsManager), 0, 0);
    manager->renderManager = renderManager;

    BerryPatchGraphicsManager_InitResources(manager);
    return manager;
}

void BerryPatchGraphicsManager_Free(void *manager)
{
    BerryPatchGraphicsManager *graphicsManager = manager;

    BerryPatchGraphicsManager_FreeResources(graphicsManager);
    ov5_021DF554(graphicsManager);
}

static void BerryPatchGraphicsManager_InitResources(BerryPatchGraphicsManager *manager)
{
    int i = 0;

    do {
        ov5_021DFB00(
            manager->renderManager, &manager->resources[i], 0, BerryPatchMoistureResourceIDs[i], 0);
        sub_02073B70(&manager->resourceData[i], &manager->resources[i]);
        i++;
    } while (i < (2 + 1));
}

static void BerryPatchGraphicsManager_FreeResources(BerryPatchGraphicsManager *manager)
{
    int i = 0;

    do {
        sub_0207395C(&manager->resources[i]);
        i++;
    } while (i < (2 + 1));
}

void BerryPatchGraphics_NewMoistureEffect(MapObject *mapObject)
{
    int priority, effectPriority;
    BerryPatchMoistureEffectContext context;
    UnkStruct_ov5_021DF47C *renderManager;
    VecFx32 position;

    renderManager = ov5_021DF578(mapObject);

    context.renderManager = renderManager;
    context.graphicsManager = ov5_021DF55C(renderManager, 12);  // Get graphics manager from overlay 12
    context.mapObject = mapObject;

    MapObject_GetPosPtr(mapObject, &position);

    priority = 0;
    effectPriority = sub_02062C0C(mapObject) + 1;  // Get map object priority and add 1 for effect

    ov5_021DF72C(renderManager, &BerryPatchMoistureEffectDefinition, &position, priority, &context, effectPriority);
}

static int BerryPatchMoistureEffect_Init(UnkStruct_ov101_021D5D90 *effect, void *context)
{
    BerryPatchMoistureEffect *moistureEffect;
    const BerryPatchMoistureEffectContext *effectContext;

    moistureEffect = context;
    effectContext = sub_020715BC(effect);

    moistureEffect->context = *effectContext;
    moistureEffect->localID = MapObject_GetLocalID(moistureEffect->context.mapObject);
    moistureEffect->mapID = sub_02062918(moistureEffect->context.mapObject);

    return 1;
}

static void BerryPatchMoistureEffect_Free(UnkStruct_ov101_021D5D90 *effect, void *context)
{
    return;
}

static void BerryPatchMoistureEffect_Update(UnkStruct_ov101_021D5D90 *effectTask, void *effectData)
{
    BerryPatchMoistureEffect *berryPatchEffect = effectData;
    MapObject *mapObject = berryPatchEffect->context.mapObject;

    if (sub_02062764(mapObject, berryPatchEffect->localID, berryPatchEffect->mapID) == FALSE) {
        ov5_021DF74C(effectTask);
        return;
    }

    berryPatchEffect->isHidden = FALSE;

    if (MapObject_CheckStatusFlag(mapObject, MAP_OBJ_STATUS_HIDE) || !BerryPatches_GetGrowthStage(MapObject_FieldSystem(mapObject), mapObject)) {
        berryPatchEffect->isHidden = TRUE;
        return;
    }

    berryPatchEffect->moistureLevel = BerryPatches_GetMoisture(MapObject_FieldSystem(mapObject), mapObject);

    VecFx32 mapObjectPosition;

    MapObject_GetPosPtr(mapObject, &mapObjectPosition);
    sub_020715D4(effectTask, &mapObjectPosition);
}

static void BerryPatchMoistureEffect_Render(UnkStruct_ov101_021D5D90 *effectTask, void *effectData)
{
    BerryPatchMoistureEffect *berryPatchEffect = effectData;

    if (berryPatchEffect->isHidden != TRUE) {
        VecFx32 effectPosition;

        sub_020715E4(effectTask, &effectPosition);
        effectPosition.z += (FX32_ONE * 0);
        sub_02073BB4(&berryPatchEffect->context.graphicsManager->resourceData[berryPatchEffect->moistureLevel], &effectPosition);
    }
}

static const UnkStruct_ov101_021D86B0 BerryPatchMoistureEffectDefinition = {
    sizeof(BerryPatchMoistureEffect),
    BerryPatchMoistureEffect_Init,
    BerryPatchMoistureEffect_Free,
    BerryPatchMoistureEffect_Update,
    BerryPatchMoistureEffect_Render
};

void *BerryPatchGraphicsManager_NewEffectCounter(UnkStruct_ov5_021DF47C *renderManager)
{
    BerryPatchEffectCounter *effectCounter = ov5_021DF53C(renderManager, sizeof(BerryPatchEffectCounter), 0, 0);
    effectCounter->renderManager = renderManager;

    return effectCounter;
}

void BerryPatchGraphicsManager_FreeEffectCounter(void *counter)
{
    BerryPatchEffectCounter *effectCounter = counter;

    BerryPatchEffectCounter_DisableEffects(effectCounter);
    ov5_021DF554(effectCounter);
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
    if (counter->isEnabled == FALSE) {
        counter->isEnabled = TRUE;
        // Load sparkle effect graphics resources
        ov5_021DF9E0(counter->renderManager, 11, 109);  // Load graphics resource 109 into slot 11
        ov5_021DFA14(counter->renderManager, 11, 181);  // Load additional graphics resource 181 into slot 11
        ov5_021DFA3C(counter->renderManager, 12, 14, 1); // Create texture resource 14 in slot 12
        ov5_021DF864(counter->renderManager, 13, 11, 11, 12, 0, BerryPatchSparkleEffectData); // Create graphics object 13 using resources 11, 11, 12
    }
}

static void BerryPatchEffectCounter_DisableEffects(BerryPatchEffectCounter *counter)
{
    if (counter->isEnabled == TRUE) {
        counter->isEnabled = FALSE;
        // Clean up sparkle effect graphics resources (in reverse order of creation)
        ov5_021DFA08(counter->renderManager, 11);  // Free graphics resource from slot 11
        ov5_021DFA30(counter->renderManager, 11);  // Free additional graphics resource from slot 11
        ov5_021DFA7C(counter->renderManager, 12);  // Remove texture resource from slot 12
        ov5_021DF9D4(counter->renderManager, 13);  // Destroy graphics object from slot 13
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

UnkStruct_ov101_021D5D90 *BerryPatchGraphics_NewSparkleEffect(MapObject *mapObject)
{
    VecFx32 position;
    UnkStruct_ov5_021DF47C *renderManager;
    BerryPatchSparkleEffectContext effectContext;
    UnkStruct_ov101_021D5D90 *effectTask;

    renderManager = ov5_021DF578(mapObject);
    ov5_021ECDA0(mapObject, &position);
    position.z += (FX32_ONE * 8);  // Offset sparkle effect 8 units above ground

    effectContext.renderManager = renderManager;
    effectContext.effectCounter = ov5_021DF55C(renderManager, 28);  // Get effect counter from overlay 28
    effectTask = ov5_021DF72C(renderManager, &BerryPatchSparkleEffectDefinition, &position, 0, &effectContext, 255);  // Priority 255 for sparkle effect

    return effectTask;
}

static int BerryPatchSparkleEffect_Init(UnkStruct_ov101_021D5D90 *effect, void *context)
{
    VecFx32 position;
    BerryPatchSparkleEffect *sparkleEffect;
    const BerryPatchSparkleEffectContext *effectContext;

    sparkleEffect = context;
    effectContext = sub_020715BC(effect);
    sparkleEffect->context = *effectContext;

    BerryPatchEffectCounter_CheckEnable(sparkleEffect->context.effectCounter);
    sub_020715E4(effect, &position);

    sparkleEffect->graphicsObject = ov5_021DF84C(sparkleEffect->context.renderManager, 13, &position);  // Create graphics object with ID 13
    BerryPatchEffectCounter_Increment(sparkleEffect->context.effectCounter);

    return 1;
}

static void BerryPatchSparkleEffect_Free(UnkStruct_ov101_021D5D90 *effect, void *context)
{
    BerryPatchSparkleEffect *sparkleEffect = context;

    sub_020211FC(sparkleEffect->graphicsObject);
    BerryPatchEffectCounter_Decrement(sparkleEffect->context.effectCounter);
    BerryPatchEffectCounter_CheckDisable(sparkleEffect->context.effectCounter);
}

static void BerryPatchSparkleEffect_Update(UnkStruct_ov101_021D5D90 *effect, void *context)
{
    // Animation speed multipliers for different sparkle effect frames
    fx32 animationSpeeds[5] = { 4096, 4096, 8192, 8192, 4096 };
    BerryPatchSparkleEffect *sparkleEffect = context;

    if (sparkleEffect->isAnimating == TRUE) {
        sparkleEffect->isAnimating = FALSE;
        sparkleEffect->animationFrame++;

        if (sparkleEffect->animationFrame >= 5) {  // Animation has 5 frames total
            ov5_021DF74C(effect);
            return;
        }

        sub_02021380(sparkleEffect->graphicsObject, 0);
    }

    if (sub_02021368(sparkleEffect->graphicsObject, animationSpeeds[sparkleEffect->animationFrame]) != 1) {
        return;
    }

    sparkleEffect->isAnimating = TRUE;
}

static void BerryPatchSparkleEffect_Render(UnkStruct_ov101_021D5D90 *effect, void *context)
{
    VecFx32 position;
    BerryPatchSparkleEffect *sparkleEffect = context;

    sub_020715E4(effect, &position);
    sub_020212A8(sparkleEffect->graphicsObject, &position);
}

static const UnkStruct_ov101_021D86B0 BerryPatchSparkleEffectDefinition = {
    sizeof(BerryPatchSparkleEffect),
    BerryPatchSparkleEffect_Init,
    BerryPatchSparkleEffect_Free,
    BerryPatchSparkleEffect_Update,
    BerryPatchSparkleEffect_Render
};

// Resource IDs for different moisture levels of berry patches
// These correspond to different visual states: dry, moist, wet
static const u32 BerryPatchMoistureResourceIDs[3] = {
    77,  // Dry berry patch moisture indicator
    76,  // Moist berry patch moisture indicator  
    75   // Wet berry patch moisture indicator
};

// Sparkle effect configuration data for berry patches
// Each entry defines: { model_variant, animation_frame_count, effect_type }
static const UnkStruct_020217F4 BerryPatchSparkleEffectData[] = {
    { 0, 9, 1 },  // Animated sparkle effect (9 animation frames, type 1)
    { 0, 0, 2 }   // Static sparkle effect (no animation, type 2)
};
