#include "cutscenes/end_credits/scenes.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"

#include "cutscenes/end_credits/common.h"
#include "cutscenes/end_credits/defs.h"
#include "cutscenes/end_credits/main.h"
#include "cutscenes/end_credits/scenes.h"
#include "cutscenes/end_credits/strings.h"
#include "pch/global_pch.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "easy3d_object.h"
#include "font.h"
#include "genders.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "palette.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "system.h"
#include "text.h"

typedef void (*EndCreditsSceneFunc)(EndCreditsApp *);
typedef BOOL (*EndCreditsSceneRunFunc)(EndCreditsApp *, EndCreditsSceneManager *);

typedef struct EndCreditsSceneFuncs {
    EndCreditsSceneFunc load1;
    EndCreditsSceneFunc load2;
    EndCreditsSceneFunc load3;
    EndCreditsSceneFunc load4;
    EndCreditsSceneFunc load5;
    EndCreditsSceneFunc load6;
    EndCreditsSceneFunc unload1;
    EndCreditsSceneFunc unload2;
    EndCreditsSceneFunc unload3;
    EndCreditsSceneFunc unload4;
    EndCreditsSceneFunc unload5;
    EndCreditsSceneFunc unload6;
    EndCreditsSceneRunFunc run;
} EndCreditsSceneFuncs;

static void EndCreditsScenes_LoadPlayerSprite(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadPlayerSprite(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadPlayerAnim(EndCreditsApp *endCreditsApp, ManagedSprite **pPlayerSprite, ManagedSprite **pScarfSprite);
static void EndCreditsScenes_UnloadPlayerAnim(EndCreditsApp *endCreditsApp, ManagedSprite *playerSprite, ManagedSprite *scarfSprite);
static void EndCreditsScenes_LoadBackgroundMorning(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadBackgroundMorning(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadPlayerSpriteMorning(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadPlayerSpriteMorning(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadPlayerAnimMorning(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadPlayerAnimMorning(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadExtraSpritesMorning(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadExtraSpritesMorning(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadExtraAnimMorning(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadExtraAnimMorning(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_Load3DModelsMorning(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_Unload3DModelsMorning(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadMemories(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadMemories(EndCreditsApp *endCreditsApp);
static void Dummy_021D2158(EndCreditsApp *endCreditsApp);
static void Dummy_021D215C(EndCreditsApp *endCreditsApp);
static void Dummy_021D2160(EndCreditsApp *endCreditsApp);
static void Dummy_021D2164(EndCreditsApp *endCreditsApp);
static void Dummy_021D2168(EndCreditsApp *endCreditsApp);
static void Dummy_021D216C(EndCreditsApp *endCreditsApp);
static void Dummy_021D2170(EndCreditsApp *endCreditsApp);
static void Dummy_021D2174(EndCreditsApp *endCreditsApp);
static void Dummy_021D2178(EndCreditsApp *endCreditsApp);
static void Dummy_021D217C(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadBackgroundDay(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadBackgroundDay(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadPlayerSpriteDay(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadPlayerSpriteDay(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadPlayerAnimDay(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadPlayerAnimDay(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadExtraSpritesDay(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadExtraSpritesDay(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadExtraAnimDay(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadExtraAnimDay(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_Load3DModelsDay(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_Unload3DModelsDay(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadBackgroundNight(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadBackgroundNight(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadPlayerSpriteNight(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadPlayerSpriteNight(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadPlayerAnimNight(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadPlayerAnimNight(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadExtraSpritesNight(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadExtraSpritesNight(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadExtraAnimNight(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadExtraAnimNight(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_Load3DModelsNight(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_Unload3DModelsNight(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadTwinleaf(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadTwinleaf(EndCreditsApp *endCreditsApp);
static void Dummy_021D2A84(EndCreditsApp *endCreditsApp);
static void Dummy_021D2A88(EndCreditsApp *endCreditsApp);
static void Dummy_021D2A8C(EndCreditsApp *endCreditsApp);
static void Dummy_021D2A90(EndCreditsApp *endCreditsApp);
static void Dummy_021D2A94(EndCreditsApp *endCreditsApp);
static void Dummy_021D2A98(EndCreditsApp *endCreditsApp);
static void Dummy_021D2A9C(EndCreditsApp *endCreditsApp);
static void Dummy_021D2AA0(EndCreditsApp *endCreditsApp);
static void Dummy_021D2AA4(EndCreditsApp *endCreditsApp);
static void Dummy_021D2AA8(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_LoadFin(EndCreditsApp *endCreditsApp);
static void EndCreditsScenes_UnloadFin(EndCreditsApp *endCreditsApp);
static void Dummy_021D2BE0(EndCreditsApp *endCreditsApp);
static void Dummy_021D2BE4(EndCreditsApp *endCreditsApp);
static void Dummy_021D2BE8(EndCreditsApp *endCreditsApp);
static void Dummy_021D2BEC(EndCreditsApp *endCreditsApp);
static void Dummy_021D2BF0(EndCreditsApp *endCreditsApp);
static void Dummy_021D2BF4(EndCreditsApp *endCreditsApp);
static void Dummy_021D2BF8(EndCreditsApp *endCreditsApp);
static void Dummy_021D2BFC(EndCreditsApp *endCreditsApp);
static void Dummy_021D2C00(EndCreditsApp *endCreditsApp);
static void Dummy_021D2C04(EndCreditsApp *endCreditsApp);

static const EndCreditsSceneFuncs sEndCreditsSceneFuncs[] = {
    [END_CREDITS_SCENE_BIKE_MORNING] = {
        .load1 = EndCreditsScenes_LoadBackgroundMorning,
        .load2 = EndCreditsScenes_Load3DModelsMorning,
        .load3 = EndCreditsScenes_LoadPlayerSpriteMorning,
        .load4 = EndCreditsScenes_LoadExtraSpritesMorning,
        .load5 = EndCreditsScenes_LoadPlayerAnimMorning,
        .load6 = EndCreditsScenes_LoadExtraAnimMorning,
        .unload1 = EndCreditsScenes_UnloadBackgroundMorning,
        .unload2 = EndCreditsScenes_Unload3DModelsMorning,
        .unload3 = EndCreditsScenes_UnloadPlayerSpriteMorning,
        .unload4 = EndCreditsScenes_UnloadExtraSpritesMorning,
        .unload5 = EndCreditsScenes_UnloadPlayerAnimMorning,
        .unload6 = EndCreditsScenes_UnloadExtraAnimMorning,
        .run = EndCreditsMorningScene_Run,
    },
    [END_CREDITS_SCENE_MEMORIES_1] = {
        .load1 = EndCreditsScenes_LoadMemories,
        .load2 = Dummy_021D2178,
        .load3 = Dummy_021D2158,
        .load4 = Dummy_021D2168,
        .load5 = Dummy_021D2160,
        .load6 = Dummy_021D2170,
        .unload1 = EndCreditsScenes_UnloadMemories,
        .unload2 = Dummy_021D217C,
        .unload3 = Dummy_021D215C,
        .unload4 = Dummy_021D216C,
        .unload5 = Dummy_021D2164,
        .unload6 = Dummy_021D2174,
        .run = EndCreditsMemoriesScene_Run1,
    },
    [END_CREDITS_SCENE_BIKE_DAY] = {
        .load1 = EndCreditsScenes_LoadBackgroundDay,
        .load2 = EndCreditsScenes_Load3DModelsDay,
        .load3 = EndCreditsScenes_LoadPlayerSpriteDay,
        .load4 = EndCreditsScenes_LoadExtraSpritesDay,
        .load5 = EndCreditsScenes_LoadPlayerAnimDay,
        .load6 = EndCreditsScenes_LoadExtraAnimDay,
        .unload1 = EndCreditsScenes_UnloadBackgroundDay,
        .unload2 = EndCreditsScenes_Unload3DModelsDay,
        .unload3 = EndCreditsScenes_UnloadPlayerSpriteDay,
        .unload4 = EndCreditsScenes_UnloadExtraSpritesDay,
        .unload5 = EndCreditsScenes_UnloadPlayerAnimDay,
        .unload6 = EndCreditsScenes_UnloadExtraAnimDay,
        .run = EndCreditsDayScene_Run,
    },
    [END_CREDITS_SCENE_MEMORIES_2] = {
        .load1 = EndCreditsScenes_LoadMemories,
        .load2 = Dummy_021D2178,
        .load3 = Dummy_021D2158,
        .load4 = Dummy_021D2168,
        .load5 = Dummy_021D2160,
        .load6 = Dummy_021D2170,
        .unload1 = EndCreditsScenes_UnloadMemories,
        .unload2 = Dummy_021D217C,
        .unload3 = Dummy_021D215C,
        .unload4 = Dummy_021D216C,
        .unload5 = Dummy_021D2164,
        .unload6 = Dummy_021D2174,
        .run = EndCreditsMemoriesScene_Run2,
    },
    [END_CREDITS_SCENE_BIKE_NIGHT] = {
        .load1 = EndCreditsScenes_LoadBackgroundNight,
        .load2 = EndCreditsScenes_Load3DModelsNight,
        .load3 = EndCreditsScenes_LoadPlayerSpriteNight,
        .load4 = EndCreditsScenes_LoadExtraSpritesNight,
        .load5 = EndCreditsScenes_LoadPlayerAnimNight,
        .load6 = EndCreditsScenes_LoadExtraAnimNight,
        .unload1 = EndCreditsScenes_UnloadBackgroundNight,
        .unload2 = EndCreditsScenes_Unload3DModelsNight,
        .unload3 = EndCreditsScenes_UnloadPlayerSpriteNight,
        .unload4 = EndCreditsScenes_UnloadExtraSpritesNight,
        .unload5 = EndCreditsScenes_UnloadPlayerAnimNight,
        .unload6 = EndCreditsScenes_UnloadExtraAnimNight,
        .run = EndCreditsNightScene_Run,
    },
    [END_CREDITS_SCENE_TWINLEAF] = {
        .load1 = EndCreditsScenes_LoadTwinleaf,
        .load2 = Dummy_021D2AA4,
        .load3 = Dummy_021D2A84,
        .load4 = Dummy_021D2A94,
        .load5 = Dummy_021D2A8C,
        .load6 = Dummy_021D2A9C,
        .unload1 = EndCreditsScenes_UnloadTwinleaf,
        .unload2 = Dummy_021D2AA8,
        .unload3 = Dummy_021D2A88,
        .unload4 = Dummy_021D2A98,
        .unload5 = Dummy_021D2A90,
        .unload6 = Dummy_021D2AA0,
        .run = EndCreditsTwinleafScene_Run,
    },
    [END_CREDITS_SCENE_FIN] = {
        .load1 = EndCreditsScenes_LoadFin,
        .load2 = Dummy_021D2C00,
        .load3 = Dummy_021D2BE0,
        .load4 = Dummy_021D2BF0,
        .load5 = Dummy_021D2BE8,
        .load6 = Dummy_021D2BF8,
        .unload1 = EndCreditsScenes_UnloadFin,
        .unload2 = Dummy_021D2C04,
        .unload3 = Dummy_021D2BE4,
        .unload4 = Dummy_021D2BF4,
        .unload5 = Dummy_021D2BEC,
        .unload6 = Dummy_021D2BFC,
        .run = EndCreditsFinScene_Run,
    },
};

static const SpriteTemplate sEndCreditsDrifloonTemplate = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 0,
    .priority = 150,
    .plttIdx = 1,
    .vramType = NNS_G2D_VRAM_TYPE_2DSUB,
    .resources = { 0x2713, 0x2713, 0x2713, 0x2713, 0xffffffff, 0xffffffff },
    .bgPriority = 2,
    .vramTransfer = FALSE
};

static const SpriteTemplate sEndCreditsWingullTemplate = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 1,
    .priority = 150,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DSUB,
    .resources = { 0x2714, 0x2714, 0x2714, 0x2714, 0xffffffff, 0xffffffff },
    .bgPriority = 2,
    .vramTransfer = FALSE
};

static const SpriteTemplate sEndCreditsMagnezoneTemplate = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 2,
    .priority = 150,
    .plttIdx = 2,
    .vramType = NNS_G2D_VRAM_TYPE_2DSUB,
    .resources = { 0x2715, 0x2715, 0x2715, 0x2715, 0xffffffff, 0xffffffff },
    .bgPriority = 2,
    .vramTransfer = FALSE
};

static const SpriteTemplate sEndCreditsMeteorTemplate1 = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 3,
    .priority = 200,
    .plttIdx = 3,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = { 0x2712, 0x2712, 0x2712, 0x2712, 0xffffffff, 0xffffffff },
    .bgPriority = 3,
    .vramTransfer = FALSE
};

static const SpriteTemplate sEndCreditsMeteorTemplate2 = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 3,
    .priority = 200,
    .plttIdx = 3,
    .vramType = NNS_G2D_VRAM_TYPE_2DSUB,
    .resources = { 0x2715, 0x2715, 0x2715, 0x2715, 0xffffffff, 0xffffffff },
    .bgPriority = 3,
    .vramTransfer = FALSE
};

static const SpriteTemplate sEndCreditsPlayerTemplate = {
    .x = 192,
    .y = 160,
    .z = 0,
    .animIdx = 0,
    .priority = 51,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = { 0x2711, 0x2711, 0x2711, 0x2711, 0xffffffff, 0xffffffff },
    .bgPriority = 1,
    .vramTransfer = TRUE
};

static void EndCreditsScenes_LoadPlayerSprite(EndCreditsApp *endCreditsApp)
{
    u8 index;

    if (endCreditsApp->clearGamePlayerInfo->gender == GENDER_MALE) {
        index = SpriteSystem_LoadPaletteBufferFromOpenNarc(endCreditsApp->paletteData, PLTTBUF_MAIN_OBJ, endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 31, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
        SpriteSystem_LoadCharResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 28, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
        SpriteSystem_LoadCellResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 29, FALSE, 10001);
        SpriteSystem_LoadAnimResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 30, FALSE, 10001);
    } else {
        index = SpriteSystem_LoadPaletteBufferFromOpenNarc(endCreditsApp->paletteData, PLTTBUF_MAIN_OBJ, endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 36, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
        SpriteSystem_LoadCharResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 33, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
        SpriteSystem_LoadCellResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 34, FALSE, 10001);
        SpriteSystem_LoadAnimResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 35, FALSE, 10001);
    }

    switch (endCreditsApp->currentScene) {
    case END_CREDITS_SCENE_BIKE_MORNING:
        PaletteData_Blend(endCreditsApp->paletteData, PLTTBUF_MAIN_OBJ, index * 16, 16, 4, GX_RGB(28, 12, 6));
        break;
    case END_CREDITS_SCENE_BIKE_DAY:
        break;
    case END_CREDITS_SCENE_BIKE_NIGHT:
        PaletteData_Blend(endCreditsApp->paletteData, PLTTBUF_MAIN_OBJ, index * 16, 16, 4, GX_RGB(11, 11, 16));
        break;
    }
}

static void EndCreditsScenes_UnloadPlayerSprite(EndCreditsApp *endCreditsApp)
{
    SpriteManager_UnloadCharObjById(endCreditsApp->spriteManager, 10001);
    SpriteManager_UnloadPlttObjById(endCreditsApp->spriteManager, 10001);
    SpriteManager_UnloadCellObjById(endCreditsApp->spriteManager, 10001);
    SpriteManager_UnloadAnimObjById(endCreditsApp->spriteManager, 10001);
}

static void EndCreditsScenes_LoadPlayerAnim(EndCreditsApp *endCreditsApp, ManagedSprite **pPlayerSprite, ManagedSprite **pScarfSprite)
{
    SpriteTemplate playerTemplate = sEndCreditsPlayerTemplate;

    MI_CpuClear8(&endCreditsApp->playerAnimManager, sizeof(EndCreditsPlayerAnimManager));

    ManagedSprite *playerSprite = SpriteSystem_NewSprite(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, &playerTemplate);

    ManagedSprite_SetAnimateFlag(playerSprite, TRUE);
    Sprite_TickFrame(playerSprite->sprite);

    *pPlayerSprite = playerSprite;
    playerTemplate.priority = 60;
    ManagedSprite *scarfSprite = SpriteSystem_NewSprite(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, &playerTemplate);

    ManagedSprite_SetAnim(scarfSprite, 2);
    ManagedSprite_SetAnimateFlag(scarfSprite, TRUE);
    Sprite_TickFrame(scarfSprite->sprite);

    *pScarfSprite = scarfSprite;

    NNSG2dCharacterData *charData;
    u32 entryId;

    GF_ASSERT(endCreditsApp->eyeCharData == NULL);

    if (endCreditsApp->clearGamePlayerInfo->gender == GENDER_MALE) {
        entryId = 27;
    } else {
        entryId = 32;
    }

    endCreditsApp->eyeCharData = Heap_Alloc(HEAP_ID_END_CREDITS, (32 * 8));
    void *ncgrBuffer = Graphics_GetCharDataFromOpenNARC(endCreditsApp->narc, entryId, 0, &charData, HEAP_ID_END_CREDITS);

    MI_CpuCopy32(charData->pRawData, endCreditsApp->eyeCharData, (32 * 8));
    Heap_Free(ncgrBuffer);
    DC_FlushRange(endCreditsApp->eyeCharData, (32 * 8));
}

static void EndCreditsScenes_UnloadPlayerAnim(EndCreditsApp *endCreditsApp, ManagedSprite *playerSprite, ManagedSprite *scarfSprite)
{
    Sprite_DeleteAndFreeResources(playerSprite);
    Sprite_DeleteAndFreeResources(scarfSprite);

    if (endCreditsApp->eyeCharData != NULL) {
        Heap_Free(endCreditsApp->eyeCharData);
        endCreditsApp->eyeCharData = NULL;
    }
}

void EndCreditsScenes_RunSceneLoadFuncs(EndCreditsApp *endCreditsApp, int scene)
{
    const EndCreditsSceneFuncs *sceneFuncs = &sEndCreditsSceneFuncs[scene];

    sceneFuncs->load1(endCreditsApp);
    sceneFuncs->load2(endCreditsApp);
    sceneFuncs->load3(endCreditsApp);
    sceneFuncs->load4(endCreditsApp);
    sceneFuncs->load5(endCreditsApp);
    sceneFuncs->load6(endCreditsApp);
}

void EndCreditsScenes_RunSceneUnloadFuncs(EndCreditsApp *endCreditsApp, int scene)
{
    const EndCreditsSceneFuncs *sceneFuncs = &sEndCreditsSceneFuncs[scene];

    sceneFuncs->unload1(endCreditsApp);
    sceneFuncs->unload2(endCreditsApp);
    sceneFuncs->unload3(endCreditsApp);
    sceneFuncs->unload4(endCreditsApp);
    sceneFuncs->unload5(endCreditsApp);
    sceneFuncs->unload6(endCreditsApp);
}

BOOL EndCreditsScenes_RunScene(EndCreditsApp *endCreditsApp, int scene)
{
    BOOL status = sEndCreditsSceneFuncs[scene].run(endCreditsApp, &endCreditsApp->sceneManager);

    if (status == 1) {
        MI_CpuClear8(&endCreditsApp->sceneManager, sizeof(EndCreditsSceneManager));
    }

    return status;
}

static void EndCreditsScenes_LoadBackgroundMorning(EndCreditsApp *endCreditsApp)
{
    BgConfig *bgConfig = endCreditsApp->bgConfig;

    PaletteData_LoadBufferFromFileStart(endCreditsApp->paletteData, NARC_INDEX_GRAPHIC__ENDING, 18, HEAP_ID_END_CREDITS, PLTTBUF_MAIN_BG, 0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(endCreditsApp->narc, 9, endCreditsApp->bgConfig, BG_LAYER_MAIN_2, 0, 0, 0, HEAP_ID_END_CREDITS);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(endCreditsApp->narc, 3, endCreditsApp->bgConfig, BG_LAYER_MAIN_2, 0, 0, 0, HEAP_ID_END_CREDITS);

    PaletteData_LoadBufferFromFileStart(endCreditsApp->paletteData, NARC_INDEX_GRAPHIC__ENDING, 21, HEAP_ID_END_CREDITS, PLTTBUF_SUB_BG, 0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(endCreditsApp->narc, 12, endCreditsApp->bgConfig, BG_LAYER_SUB_3, 0, 0, 0, HEAP_ID_END_CREDITS);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(endCreditsApp->narc, 6, endCreditsApp->bgConfig, BG_LAYER_SUB_3, 0, 0, 0, HEAP_ID_END_CREDITS);

    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, 0);

    Bg_ToggleLayer(BG_LAYER_MAIN_2, TRUE);
    Bg_ToggleLayer(BG_LAYER_SUB_3, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);

    Bg_ScheduleTilemapTransfer(endCreditsApp->bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleTilemapTransfer(endCreditsApp->bgConfig, BG_LAYER_SUB_3);
}

static void EndCreditsScenes_UnloadBackgroundMorning(EndCreditsApp *endCreditsApp)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_3, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, FALSE);
}

static void EndCreditsScenes_LoadPlayerSpriteMorning(EndCreditsApp *endCreditsApp)
{
    EndCreditsScenes_LoadPlayerSprite(endCreditsApp);
}

static void EndCreditsScenes_UnloadPlayerSpriteMorning(EndCreditsApp *endCreditsApp)
{
    EndCreditsScenes_UnloadPlayerSprite(endCreditsApp);
}

static void EndCreditsScenes_LoadPlayerAnimMorning(EndCreditsApp *endCreditsApp)
{
    EndCreditsScenes_LoadPlayerAnim(endCreditsApp, &endCreditsApp->managedSprites[END_CREDITS_SPRITE_MORNING_PLAYER], &endCreditsApp->managedSprites[END_CREDITS_SPRITE_MORNING_SCARF]);
}

static void EndCreditsScenes_UnloadPlayerAnimMorning(EndCreditsApp *endCreditsApp)
{
    EndCreditsScenes_UnloadPlayerAnim(endCreditsApp, endCreditsApp->managedSprites[END_CREDITS_SPRITE_MORNING_PLAYER], endCreditsApp->managedSprites[END_CREDITS_SPRITE_MORNING_SCARF]);
}

static void EndCreditsScenes_LoadExtraSpritesMorning(EndCreditsApp *endCreditsApp)
{
    SpriteSystem_LoadPaletteBufferFromOpenNarc(endCreditsApp->paletteData, PLTTBUF_SUB_OBJ, endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 15, FALSE, 10, NNS_G2D_VRAM_TYPE_2DSUB, 10003);
    SpriteSystem_LoadCharResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 0, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 10003);
    SpriteSystem_LoadCellResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 1, FALSE, 10003);
    SpriteSystem_LoadAnimResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 2, FALSE, 10003);
}

static void EndCreditsScenes_UnloadExtraSpritesMorning(EndCreditsApp *endCreditsApp)
{
    SpriteManager_UnloadCharObjById(endCreditsApp->spriteManager, 10003);
    SpriteManager_UnloadPlttObjById(endCreditsApp->spriteManager, 10003);
    SpriteManager_UnloadCellObjById(endCreditsApp->spriteManager, 10003);
    SpriteManager_UnloadAnimObjById(endCreditsApp->spriteManager, 10003);
}

static void EndCreditsScenes_LoadExtraAnimMorning(EndCreditsApp *endCreditsApp)
{
    for (int i = 2; i <= 4; i++) {
        endCreditsApp->managedSprites[i] = SpriteSystem_NewSprite(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, &sEndCreditsDrifloonTemplate);

        ManagedSprite_SetAffineOverwriteMode(endCreditsApp->managedSprites[i], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetAnimateFlag(endCreditsApp->managedSprites[i], TRUE);
        Sprite_TickFrame(endCreditsApp->managedSprites[i]->sprite);
    }
}

static void EndCreditsScenes_UnloadExtraAnimMorning(EndCreditsApp *endCreditsApp)
{
    for (int i = 2; i <= 4; i++) {
        Sprite_DeleteAndFreeResources(endCreditsApp->managedSprites[i]);
    }
}

static void EndCreditsScenes_Load3DModelsMorning(EndCreditsApp *endCreditsApp)
{
    int i;

    Easy3DModel_LoadFrom(&endCreditsApp->bg3DModels[0], endCreditsApp->narc, 80, HEAP_ID_END_CREDITS);

    NNS_G3dMdlUseGlbDiff(endCreditsApp->bg3DModels[0].model);
    NNS_G3dMdlUseGlbAmb(endCreditsApp->bg3DModels[0].model);
    NNS_G3dMdlUseGlbSpec(endCreditsApp->bg3DModels[0].model);
    NNS_G3dMdlUseGlbEmi(endCreditsApp->bg3DModels[0].model);

    Easy3DModel_LoadFrom(&endCreditsApp->bg3DModels[1], endCreditsApp->narc, 81, HEAP_ID_END_CREDITS);

    NNS_G3dMdlUseGlbDiff(endCreditsApp->bg3DModels[1].model);
    NNS_G3dMdlUseGlbAmb(endCreditsApp->bg3DModels[1].model);
    NNS_G3dMdlUseGlbSpec(endCreditsApp->bg3DModels[1].model);
    NNS_G3dMdlUseGlbEmi(endCreditsApp->bg3DModels[1].model);

    for (i = 0; i < SNELEMS(endCreditsApp->bg3DObjects[0]); i++) {
        Easy3DObject_Init(&endCreditsApp->bg3DObjects[0][i], &endCreditsApp->bg3DModels[0]);
        Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[0][i], 0, 0, 0);
        Easy3DObject_SetScale(&endCreditsApp->bg3DObjects[0][i], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[0][i], TRUE);
    }

    for (i = 0; i < SNELEMS(endCreditsApp->bg3DObjects[1]); i++) {
        Easy3DObject_Init(&endCreditsApp->bg3DObjects[1][i], &endCreditsApp->bg3DModels[1]);
        Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[1][i], 0, 0, 0);
        Easy3DObject_SetScale(&endCreditsApp->bg3DObjects[1][i], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[1][i], TRUE);
    }

    endCreditsApp->bg3DModelRows = 2;

    EndCreditsCommon_Load3DModelStartingPositions(endCreditsApp, 0);
    EndCreditsCommon_Set3DModelStartingPositions(endCreditsApp);

    endCreditsApp->bg3DModelLoaded = TRUE;
}

static void EndCreditsScenes_Unload3DModelsMorning(EndCreditsApp *endCreditsApp)
{
    for (int i = 0; i < SNELEMS(endCreditsApp->bg3DModels); i++) {
        Easy3DModel_Release(&endCreditsApp->bg3DModels[i]);
    }

    endCreditsApp->bg3DModelLoaded = FALSE;
}

static void EndCreditsScenes_LoadMemories(EndCreditsApp *endCreditsApp)
{
    BgConfig *bgConfig = endCreditsApp->bgConfig;

    EndCreditsCommon_LoadMemoryImage(endCreditsApp, endCreditsApp->currentMemory, BG_LAYER_MAIN_3, FALSE);
    endCreditsApp->currentMemory++;

    Bg_ToggleLayer(BG_LAYER_MAIN_3, TRUE);
    Bg_ScheduleTilemapTransfer(endCreditsApp->bgConfig, BG_LAYER_MAIN_2);
}

static void EndCreditsScenes_UnloadMemories(EndCreditsApp *endCreditsApp)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_3, FALSE);
}

static void Dummy_021D2158(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D215C(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2160(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2164(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2168(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D216C(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2170(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2174(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2178(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D217C(EndCreditsApp *endCreditsApp)
{
    return;
}

static void EndCreditsScenes_LoadBackgroundDay(EndCreditsApp *endCreditsApp)
{
    BgConfig *bgConfig = endCreditsApp->bgConfig;

    PaletteData_LoadBufferFromFileStart(endCreditsApp->paletteData, NARC_INDEX_GRAPHIC__ENDING, 19, HEAP_ID_END_CREDITS, PLTTBUF_MAIN_BG, 0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(endCreditsApp->narc, 10, endCreditsApp->bgConfig, BG_LAYER_MAIN_2, 0, 0, 0, HEAP_ID_END_CREDITS);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(endCreditsApp->narc, 4, endCreditsApp->bgConfig, BG_LAYER_MAIN_2, 0, 0, 0, HEAP_ID_END_CREDITS);

    PaletteData_LoadBufferFromFileStart(endCreditsApp->paletteData, NARC_INDEX_GRAPHIC__ENDING, 22, HEAP_ID_END_CREDITS, PLTTBUF_SUB_BG, 0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(endCreditsApp->narc, 13, endCreditsApp->bgConfig, BG_LAYER_SUB_3, 0, 0, 0, HEAP_ID_END_CREDITS);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(endCreditsApp->narc, 7, endCreditsApp->bgConfig, BG_LAYER_SUB_3, 0, 0, 0, HEAP_ID_END_CREDITS);

    NNSG2dPaletteData *paletteData;

    void *nclrBuffer = Graphics_GetPlttDataFromOpenNARC(endCreditsApp->narc, 16, &paletteData, HEAP_ID_END_CREDITS);
    MI_CpuCopy16(paletteData->pRawData, endCreditsApp->sceneManager.daySceneData.bgPaletteBuffers, PALETTE_SIZE_BYTES * 4);
    Heap_Free(nclrBuffer);

    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, 0);

    Bg_ToggleLayer(BG_LAYER_MAIN_2, TRUE);
    Bg_ToggleLayer(BG_LAYER_SUB_3, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);

    Bg_ScheduleTilemapTransfer(endCreditsApp->bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleTilemapTransfer(endCreditsApp->bgConfig, BG_LAYER_SUB_3);
}

static void EndCreditsScenes_UnloadBackgroundDay(EndCreditsApp *endCreditsApp)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_3, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, FALSE);
}

static void EndCreditsScenes_LoadPlayerSpriteDay(EndCreditsApp *endCreditsApp)
{
    EndCreditsScenes_LoadPlayerSprite(endCreditsApp);
}

static void EndCreditsScenes_UnloadPlayerSpriteDay(EndCreditsApp *endCreditsApp)
{
    EndCreditsScenes_UnloadPlayerSprite(endCreditsApp);
}

static void EndCreditsScenes_LoadPlayerAnimDay(EndCreditsApp *endCreditsApp)
{
    EndCreditsScenes_LoadPlayerAnim(endCreditsApp, &endCreditsApp->managedSprites[END_CREDITS_SPRITE_DAY_PLAYER], &endCreditsApp->managedSprites[END_CREDITS_SPRITE_DAY_SCARF]);
}

static void EndCreditsScenes_UnloadPlayerAnimDay(EndCreditsApp *endCreditsApp)
{
    EndCreditsScenes_UnloadPlayerAnim(endCreditsApp, endCreditsApp->managedSprites[END_CREDITS_SPRITE_DAY_PLAYER], endCreditsApp->managedSprites[END_CREDITS_SPRITE_DAY_SCARF]);
}

static void EndCreditsScenes_LoadExtraSpritesDay(EndCreditsApp *endCreditsApp)
{
    SpriteSystem_LoadPaletteBufferFromOpenNarc(endCreditsApp->paletteData, PLTTBUF_SUB_OBJ, endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 15, FALSE, 10, NNS_G2D_VRAM_TYPE_2DSUB, 10004);
    SpriteSystem_LoadCharResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 0, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 10004);
    SpriteSystem_LoadCellResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 1, FALSE, 10004);
    SpriteSystem_LoadAnimResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 2, FALSE, 10004);
}

static void EndCreditsScenes_UnloadExtraSpritesDay(EndCreditsApp *endCreditsApp)
{
    SpriteManager_UnloadCharObjById(endCreditsApp->spriteManager, 10004);
    SpriteManager_UnloadPlttObjById(endCreditsApp->spriteManager, 10004);
    SpriteManager_UnloadCellObjById(endCreditsApp->spriteManager, 10004);
    SpriteManager_UnloadAnimObjById(endCreditsApp->spriteManager, 10004);
}

static void EndCreditsScenes_LoadExtraAnimDay(EndCreditsApp *endCreditsApp)
{
    for (int i = 2; i <= 3; i++) {
        endCreditsApp->managedSprites[i] = SpriteSystem_NewSprite(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, &sEndCreditsWingullTemplate);
        ManagedSprite_SetAnimateFlag(endCreditsApp->managedSprites[i], TRUE);
        Sprite_TickFrame(endCreditsApp->managedSprites[i]->sprite);
    }
}

static void EndCreditsScenes_UnloadExtraAnimDay(EndCreditsApp *endCreditsApp)
{
    for (int i = 2; i <= 3; i++) {
        Sprite_DeleteAndFreeResources(endCreditsApp->managedSprites[i]);
    }
}

static void EndCreditsScenes_Load3DModelsDay(EndCreditsApp *endCreditsApp)
{
    int i;

    Easy3DModel_LoadFrom(&endCreditsApp->bg3DModels[0], endCreditsApp->narc, 78, HEAP_ID_END_CREDITS);

    NNS_G3dMdlUseGlbDiff(endCreditsApp->bg3DModels[0].model);
    NNS_G3dMdlUseGlbAmb(endCreditsApp->bg3DModels[0].model);
    NNS_G3dMdlUseGlbSpec(endCreditsApp->bg3DModels[0].model);
    NNS_G3dMdlUseGlbEmi(endCreditsApp->bg3DModels[0].model);

    for (i = 0; i < SNELEMS(endCreditsApp->bg3DObjects[0]); i++) {
        Easy3DObject_Init(&endCreditsApp->bg3DObjects[0][i], &endCreditsApp->bg3DModels[0]);
        Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[0][i], 0, 0, 0);
        Easy3DObject_SetScale(&endCreditsApp->bg3DObjects[0][i], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[0][i], TRUE);
    }

    for (i = 0; i < SNELEMS(endCreditsApp->bg3DObjects[1]); i++) {
        Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[1][i], FALSE);
    }

    endCreditsApp->bg3DModelRows = 1;

    EndCreditsCommon_Load3DModelStartingPositions(endCreditsApp, 1);
    EndCreditsCommon_Set3DModelStartingPositions(endCreditsApp);

    endCreditsApp->bg3DModelLoaded = TRUE;
}

static void EndCreditsScenes_Unload3DModelsDay(EndCreditsApp *endCreditsApp)
{
    for (int i = 0; i < SNELEMS(endCreditsApp->bg3DModels); i++) {
        Easy3DModel_Release(&endCreditsApp->bg3DModels[i]);
    }

    endCreditsApp->bg3DModelLoaded = FALSE;
}

static void EndCreditsScenes_LoadBackgroundNight(EndCreditsApp *endCreditsApp)
{
    BgConfig *bgConfig = endCreditsApp->bgConfig;

    PaletteData_LoadBufferFromFileStart(endCreditsApp->paletteData, NARC_INDEX_GRAPHIC__ENDING, 20, HEAP_ID_END_CREDITS, PLTTBUF_MAIN_BG, 0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(endCreditsApp->narc, 11, endCreditsApp->bgConfig, BG_LAYER_MAIN_2, 0, 0, 0, HEAP_ID_END_CREDITS);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(endCreditsApp->narc, 5, endCreditsApp->bgConfig, BG_LAYER_MAIN_2, 0, 0, 0, HEAP_ID_END_CREDITS);

    PaletteData_LoadBufferFromFileStart(endCreditsApp->paletteData, NARC_INDEX_GRAPHIC__ENDING, 23, HEAP_ID_END_CREDITS, PLTTBUF_SUB_BG, 0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(endCreditsApp->narc, 14, endCreditsApp->bgConfig, BG_LAYER_SUB_3, 0, 0, 0, HEAP_ID_END_CREDITS);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(endCreditsApp->narc, 8, endCreditsApp->bgConfig, BG_LAYER_SUB_3, 0, 0, 0, HEAP_ID_END_CREDITS);

    NNSG2dPaletteData *paletteData;

    void *nclrBuffer = Graphics_GetPlttDataFromOpenNARC(endCreditsApp->narc, 17, &paletteData, HEAP_ID_END_CREDITS);
    MI_CpuCopy16(paletteData->pRawData, endCreditsApp->sceneManager.nightSceneData.bgPaletteBuffers, PALETTE_SIZE_BYTES * 8);
    Heap_Free(nclrBuffer);

    PaletteData_LoadBuffer(endCreditsApp->paletteData, endCreditsApp->sceneManager.nightSceneData.bgPaletteBuffers, PLTTBUF_MAIN_BG, PLTT_DEST(1), PALETTE_SIZE_BYTES);
    PaletteData_LoadBuffer(endCreditsApp->paletteData, endCreditsApp->sceneManager.nightSceneData.bgPaletteBuffers, PLTTBUF_SUB_BG, PLTT_DEST(1), PALETTE_SIZE_BYTES);

    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, 0);

    Bg_ToggleLayer(BG_LAYER_MAIN_2, TRUE);
    Bg_ToggleLayer(BG_LAYER_SUB_3, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);

    Bg_ScheduleTilemapTransfer(endCreditsApp->bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleTilemapTransfer(endCreditsApp->bgConfig, BG_LAYER_SUB_3);
}

static void EndCreditsScenes_UnloadBackgroundNight(EndCreditsApp *endCreditsApp)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_3, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, FALSE);
}

static void EndCreditsScenes_LoadPlayerSpriteNight(EndCreditsApp *endCreditsApp)
{
    EndCreditsScenes_LoadPlayerSprite(endCreditsApp);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(endCreditsApp->paletteData, PLTTBUF_MAIN_OBJ, endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 15, FALSE, 4, NNS_G2D_VRAM_TYPE_2DMAIN, 10002);
    SpriteSystem_LoadCharResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 0, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 10002);
    SpriteSystem_LoadCellResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 1, FALSE, 10002);
    SpriteSystem_LoadAnimResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 2, FALSE, 10002);
}

static void EndCreditsScenes_UnloadPlayerSpriteNight(EndCreditsApp *endCreditsApp)
{
    SpriteManager_UnloadCharObjById(endCreditsApp->spriteManager, 10002);
    SpriteManager_UnloadPlttObjById(endCreditsApp->spriteManager, 10002);
    SpriteManager_UnloadCellObjById(endCreditsApp->spriteManager, 10002);
    SpriteManager_UnloadAnimObjById(endCreditsApp->spriteManager, 10002);

    EndCreditsScenes_UnloadPlayerSprite(endCreditsApp);
}

static void EndCreditsScenes_LoadPlayerAnimNight(EndCreditsApp *endCreditsApp)
{
    EndCreditsScenes_LoadPlayerAnim(endCreditsApp, &endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_PLAYER], &endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_SCARF]);

    endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_1] = SpriteSystem_NewSprite(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, &sEndCreditsMeteorTemplate1);

    ManagedSprite_SetAnimateFlag(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_1], TRUE);
    ManagedSprite_SetDrawFlag(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_1], FALSE);
    Sprite_TickFrame(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_1]->sprite);
}

static void EndCreditsScenes_UnloadPlayerAnimNight(EndCreditsApp *endCreditsApp)
{
    EndCreditsScenes_UnloadPlayerAnim(endCreditsApp, endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_PLAYER], endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_SCARF]);
    Sprite_DeleteAndFreeResources(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_1]);
}

static void EndCreditsScenes_LoadExtraSpritesNight(EndCreditsApp *endCreditsApp)
{
    SpriteSystem_LoadPaletteBufferFromOpenNarc(endCreditsApp->paletteData, PLTTBUF_SUB_OBJ, endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 15, FALSE, 10, NNS_G2D_VRAM_TYPE_2DSUB, 10005);
    SpriteSystem_LoadCharResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 0, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 10005);
    SpriteSystem_LoadCellResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 1, FALSE, 10005);
    SpriteSystem_LoadAnimResObjFromOpenNarc(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, endCreditsApp->narc, 2, FALSE, 10005);
}

static void EndCreditsScenes_UnloadExtraSpritesNight(EndCreditsApp *endCreditsApp)
{
    SpriteManager_UnloadCharObjById(endCreditsApp->spriteManager, 10005);
    SpriteManager_UnloadPlttObjById(endCreditsApp->spriteManager, 10005);
    SpriteManager_UnloadCellObjById(endCreditsApp->spriteManager, 10005);
    SpriteManager_UnloadAnimObjById(endCreditsApp->spriteManager, 10005);
}

static void EndCreditsScenes_LoadExtraAnimNight(EndCreditsApp *endCreditsApp)
{
    for (int i = 2; i <= 2; i++) {
        endCreditsApp->managedSprites[i] = SpriteSystem_NewSprite(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, &sEndCreditsMagnezoneTemplate);
        ManagedSprite_SetAnimateFlag(endCreditsApp->managedSprites[i], TRUE);
        Sprite_TickFrame(endCreditsApp->managedSprites[i]->sprite);
    }

    endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_2] = SpriteSystem_NewSprite(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, &sEndCreditsMeteorTemplate2);

    ManagedSprite_SetAnimateFlag(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_2], TRUE);
    ManagedSprite_SetDrawFlag(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_2], FALSE);
    Sprite_TickFrame(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_2]->sprite);
}

static void EndCreditsScenes_UnloadExtraAnimNight(EndCreditsApp *endCreditsApp)
{
    for (int i = 2; i <= 2; i++) {
        Sprite_DeleteAndFreeResources(endCreditsApp->managedSprites[i]);
    }

    Sprite_DeleteAndFreeResources(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_2]);
}

static void EndCreditsScenes_Load3DModelsNight(EndCreditsApp *endCreditsApp)
{
    int i;

    Easy3DModel_LoadFrom(&endCreditsApp->bg3DModels[0], endCreditsApp->narc, 82, HEAP_ID_END_CREDITS);

    NNS_G3dMdlUseGlbDiff(endCreditsApp->bg3DModels[0].model);
    NNS_G3dMdlUseGlbAmb(endCreditsApp->bg3DModels[0].model);
    NNS_G3dMdlUseGlbSpec(endCreditsApp->bg3DModels[0].model);
    NNS_G3dMdlUseGlbEmi(endCreditsApp->bg3DModels[0].model);

    Easy3DModel_LoadFrom(&endCreditsApp->bg3DModels[1], endCreditsApp->narc, 83, HEAP_ID_END_CREDITS);

    NNS_G3dMdlUseGlbDiff(endCreditsApp->bg3DModels[1].model);
    NNS_G3dMdlUseGlbAmb(endCreditsApp->bg3DModels[1].model);
    NNS_G3dMdlUseGlbSpec(endCreditsApp->bg3DModels[1].model);
    NNS_G3dMdlUseGlbEmi(endCreditsApp->bg3DModels[1].model);

    Easy3DModel_LoadFrom(&endCreditsApp->bg3DModels[2], endCreditsApp->narc, 84, HEAP_ID_END_CREDITS);

    NNS_G3dMdlUseGlbDiff(endCreditsApp->bg3DModels[2].model);
    NNS_G3dMdlUseGlbAmb(endCreditsApp->bg3DModels[2].model);
    NNS_G3dMdlUseGlbSpec(endCreditsApp->bg3DModels[2].model);
    NNS_G3dMdlUseGlbEmi(endCreditsApp->bg3DModels[2].model);

    Easy3DModel_LoadFrom(&endCreditsApp->bg3DModels[3], endCreditsApp->narc, 79, HEAP_ID_END_CREDITS);

    for (i = 0; i < SNELEMS(endCreditsApp->bg3DObjects[0]); i++) {
        Easy3DObject_Init(&endCreditsApp->bg3DObjects[0][i], &endCreditsApp->bg3DModels[0]);

        Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[0][i], 0, 0, 0);
        Easy3DObject_SetScale(&endCreditsApp->bg3DObjects[0][i], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[0][i], TRUE);
    }

    for (i = 0; i < SNELEMS(endCreditsApp->bg3DObjects[1]); i++) {
        Easy3DObject_Init(&endCreditsApp->bg3DObjects[1][i], &endCreditsApp->bg3DModels[2]);

        Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[1][i], 0, 0, 0);
        Easy3DObject_SetScale(&endCreditsApp->bg3DObjects[1][i], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[1][i], TRUE);
    }

    endCreditsApp->bg3DModelRows = 2;

    EndCreditsCommon_Load3DModelStartingPositions(endCreditsApp, 2);
    EndCreditsCommon_Set3DModelStartingPositions(endCreditsApp);

    endCreditsApp->bg3DModelLoaded = TRUE;
}

static void EndCreditsScenes_Unload3DModelsNight(EndCreditsApp *endCreditsApp)
{
    for (int i = 0; i < SNELEMS(endCreditsApp->bg3DModels); i++) {
        Easy3DModel_Release(&endCreditsApp->bg3DModels[i]);
    }

    endCreditsApp->bg3DModelLoaded = FALSE;
}

static void EndCreditsScenes_LoadTwinleaf(EndCreditsApp *endCreditsApp)
{
    BgConfig *bgConfig = endCreditsApp->bgConfig;

    EndCredits_InitFinalScenes(endCreditsApp);

    endCreditsApp->currentMemory = END_CREDITS_MEMORY_ROUTE_201_STARTER;
    EndCreditsCommon_LoadMemoryImage(endCreditsApp, endCreditsApp->currentMemory, BG_LAYER_MAIN_2, TRUE);
    endCreditsApp->currentMemory++;

    Bg_ToggleLayer(BG_LAYER_MAIN_2, TRUE);
    Bg_ScheduleTilemapTransfer(endCreditsApp->bgConfig, BG_LAYER_MAIN_2);
}

static void EndCreditsScenes_UnloadTwinleaf(EndCreditsApp *endCreditsApp)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, FALSE);
}

static void Dummy_021D2A84(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2A88(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2A8C(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2A90(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2A94(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2A98(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2A9C(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2AA0(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2AA4(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2AA8(EndCreditsApp *endCreditsApp)
{
    return;
}

static void EndCreditsScenes_LoadFin(EndCreditsApp *endCreditsApp)
{
    BgConfig *bgConfig = endCreditsApp->bgConfig;

    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;

    GXLayers_SwapDisplay();
    PaletteData_FillBufferRange(endCreditsApp->paletteData, PLTTBUF_MAIN_BG, PLTTSEL_BOTH, 0x0, 0, 1);

    endCreditsApp->window = Window_New(HEAP_ID_END_CREDITS, 1);

    Window_Add(bgConfig, endCreditsApp->window, BG_LAYER_SUB_3, 0, 0, 32, 32, 15, 0);
    Window_FillTilemap(endCreditsApp->window, 15);
    Window_PutToTilemap(endCreditsApp->window);

    String *finalString = MessageLoader_GetNewString(endCreditsApp->messageLoader, EndCreditsStrings_GetLastMessageID());
    int xOffset = (256 - Font_CalcStringWidth(FONT_SYSTEM, finalString, 0)) / 2;

    Text_AddPrinterWithParamsColorAndSpacing(endCreditsApp->window, FONT_SYSTEM, finalString, xOffset, 80, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), 3, 0, NULL);
    Window_LoadTiles(endCreditsApp->window);
    String_Free(finalString);

    Bg_SetOffset(bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_3, TRUE);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    SetScreenMasterBrightness(DS_SCREEN_MAIN, BRIGHTNESS_BLACK);
    SetScreenMasterBrightness(DS_SCREEN_SUB, BRIGHTNESS_BLACK);
    BrightnessController_SetScreenBrightness(BRIGHTNESS_NORMAL, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
    Bg_ScheduleTilemapTransfer(endCreditsApp->bgConfig, BG_LAYER_SUB_3);
}

static void EndCreditsScenes_UnloadFin(EndCreditsApp *endCreditsApp)
{
    Bg_ToggleLayer(BG_LAYER_SUB_3, FALSE);

    if (endCreditsApp->window != NULL) {
        Window_Remove(endCreditsApp->window);
        Heap_Free(endCreditsApp->window);
        endCreditsApp->window = NULL;
    }
}

static void Dummy_021D2BE0(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2BE4(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2BE8(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2BEC(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2BF0(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2BF4(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2BF8(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2BFC(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2C00(EndCreditsApp *endCreditsApp)
{
    return;
}

static void Dummy_021D2C04(EndCreditsApp *endCreditsApp)
{
    return;
}
