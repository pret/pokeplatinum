#include "cutscenes/end_credits/scenes.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"

#include "cutscenes/end_credits/common.h"
#include "cutscenes/end_credits/defs.h"
#include "cutscenes/end_credits/main.h"
#include "cutscenes/end_credits/scenes/bike_day.h"
#include "cutscenes/end_credits/scenes/bike_morning.h"
#include "cutscenes/end_credits/scenes/bike_night.h"
#include "cutscenes/end_credits/scenes/fin.h"
#include "cutscenes/end_credits/scenes/memories.h"
#include "cutscenes/end_credits/scenes/twinleaf.h"
#include "cutscenes/end_credits/strings.h"

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

typedef struct {
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
static void EndCreditsScenes_LoadPlayerAnim(EndCreditsApp *endCreditsApp, ManagedSprite **_playerSprite, ManagedSprite **_scarfSprite);
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
static void EndCreditsScenes_LoadExtraAnim(EndCreditsApp *endCreditsApp);
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
        EndCreditsScenes_LoadBackgroundMorning,
        EndCreditsScenes_Load3DModelsMorning,
        EndCreditsScenes_LoadPlayerSpriteMorning,
        EndCreditsScenes_LoadExtraSpritesMorning,
        EndCreditsScenes_LoadPlayerAnimMorning,
        EndCreditsScenes_LoadExtraAnimMorning,
        EndCreditsScenes_UnloadBackgroundMorning,
        EndCreditsScenes_Unload3DModelsMorning,
        EndCreditsScenes_UnloadPlayerSpriteMorning,
        EndCreditsScenes_UnloadExtraSpritesMorning,
        EndCreditsScenes_UnloadPlayerAnimMorning,
        EndCreditsScenes_UnloadExtraAnimMorning,
        EndCreditsMorningScene_Run,
    },
    [END_CREDITS_SCENE_MEMORIES_1] = {
        EndCreditsScenes_LoadMemories,
        Dummy_021D2178,
        Dummy_021D2158,
        Dummy_021D2168,
        Dummy_021D2160,
        Dummy_021D2170,
        EndCreditsScenes_UnloadMemories,
        Dummy_021D217C,
        Dummy_021D215C,
        Dummy_021D216C,
        Dummy_021D2164,
        Dummy_021D2174,
        EndCreditsMemoriesScene_Run1,
    },
    [END_CREDITS_SCENE_BIKE_DAY] = {
        EndCreditsScenes_LoadBackgroundDay,
        EndCreditsScenes_Load3DModelsDay,
        EndCreditsScenes_LoadPlayerSpriteDay,
        EndCreditsScenes_LoadExtraSpritesDay,
        EndCreditsScenes_LoadPlayerAnimDay,
        EndCreditsScenes_LoadExtraAnimDay,
        EndCreditsScenes_UnloadBackgroundDay,
        EndCreditsScenes_Unload3DModelsDay,
        EndCreditsScenes_UnloadPlayerSpriteDay,
        EndCreditsScenes_UnloadExtraSpritesDay,
        EndCreditsScenes_UnloadPlayerAnimDay,
        EndCreditsScenes_UnloadExtraAnimDay,
        EndCreditsDayScene_Run,
    },
    [END_CREDITS_SCENE_MEMORIES_2] = {
        EndCreditsScenes_LoadMemories,
        Dummy_021D2178,
        Dummy_021D2158,
        Dummy_021D2168,
        Dummy_021D2160,
        Dummy_021D2170,
        EndCreditsScenes_UnloadMemories,
        Dummy_021D217C,
        Dummy_021D215C,
        Dummy_021D216C,
        Dummy_021D2164,
        Dummy_021D2174,
        EndCreditsMemoriesScene_Run2,
    },
    [END_CREDITS_SCENE_BIKE_NIGHT] = {
        EndCreditsScenes_LoadBackgroundNight,
        EndCreditsScenes_Load3DModelsNight,
        EndCreditsScenes_LoadPlayerSpriteNight,
        EndCreditsScenes_LoadExtraSpritesNight,
        EndCreditsScenes_LoadPlayerAnimNight,
        EndCreditsScenes_LoadExtraAnim,
        EndCreditsScenes_UnloadBackgroundNight,
        EndCreditsScenes_Unload3DModelsNight,
        EndCreditsScenes_UnloadPlayerSpriteNight,
        EndCreditsScenes_UnloadExtraSpritesNight,
        EndCreditsScenes_UnloadPlayerAnimNight,
        EndCreditsScenes_UnloadExtraAnimNight,
        EndCreditsNightScene_Run,
    },
    [END_CREDITS_SCENE_TWINLEAF] = {
        EndCreditsScenes_LoadTwinleaf,
        Dummy_021D2AA4,
        Dummy_021D2A84,
        Dummy_021D2A94,
        Dummy_021D2A8C,
        Dummy_021D2A9C,
        EndCreditsScenes_UnloadTwinleaf,
        Dummy_021D2AA8,
        Dummy_021D2A88,
        Dummy_021D2A98,
        Dummy_021D2A90,
        Dummy_021D2AA0,
        EndCreditsTwinleafScene_Run,
    },
    [END_CREDITS_SCENE_FIN] = {
        EndCreditsScenes_LoadFin,
        Dummy_021D2C00,
        Dummy_021D2BE0,
        Dummy_021D2BF0,
        Dummy_021D2BE8,
        Dummy_021D2BF8,
        EndCreditsScenes_UnloadFin,
        Dummy_021D2C04,
        Dummy_021D2BE4,
        Dummy_021D2BF4,
        Dummy_021D2BEC,
        Dummy_021D2BFC,
        EndCreditsFinScene_Run,
    },
};

static const SpriteTemplate sEndCreditsDrifloonTemplate = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x96,
    0x1,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2713, 0x2713, 0x2713, 0x2713, 0xffffffff, 0xffffffff },
    0x2,
    0x0
};

static const SpriteTemplate sEndCreditsWingullTemplate = {
    0x0,
    0x0,
    0x0,
    0x1,
    0x96,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2714, 0x2714, 0x2714, 0x2714, 0xffffffff, 0xffffffff },
    0x2,
    0x0
};

static const SpriteTemplate sEndCreditsMagnezoneTemplate = {
    0x0,
    0x0,
    0x0,
    0x2,
    0x96,
    0x2,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2715, 0x2715, 0x2715, 0x2715, 0xffffffff, 0xffffffff },
    0x2,
    0x0
};

static const SpriteTemplate sEndCreditsMeteorTemplate1 = {
    0x0,
    0x0,
    0x0,
    0x3,
    0xC8,
    0x3,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2712, 0x2712, 0x2712, 0x2712, 0xffffffff, 0xffffffff },
    0x3,
    0x0
};

static const SpriteTemplate sEndCreditsMeteorTemplate2 = {
    0x0,
    0x0,
    0x0,
    0x3,
    0xC8,
    0x3,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2715, 0x2715, 0x2715, 0x2715, 0xffffffff, 0xffffffff },
    0x3,
    0x0
};

static const SpriteTemplate sEndCreditsPlayerTemplate = {
    0xC0,
    0xA0,
    0x0,
    0x0,
    0x33,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2711, 0x2711, 0x2711, 0x2711, 0xffffffff, 0xffffffff },
    0x1,
    0x1
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

static void EndCreditsScenes_LoadPlayerAnim(EndCreditsApp *endCreditsApp, ManagedSprite **_playerSprite, ManagedSprite **_scarfSprite)
{
    ManagedSprite *playerSprite;
    ManagedSprite *scarfSprite;
    SpriteTemplate playerTemplate = sEndCreditsPlayerTemplate;

    MI_CpuClear8(&endCreditsApp->playerAnimManager, sizeof(EndCreditsPlayerAnimManager));

    playerSprite = SpriteSystem_NewSprite(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, &playerTemplate);

    ManagedSprite_SetAnimateFlag(playerSprite, TRUE);
    Sprite_TickFrame(playerSprite->sprite);

    *_playerSprite = playerSprite;
    playerTemplate.priority = 60;
    scarfSprite = SpriteSystem_NewSprite(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, &playerTemplate);

    ManagedSprite_SetAnim(scarfSprite, 2);
    ManagedSprite_SetAnimateFlag(scarfSprite, TRUE);
    Sprite_TickFrame(scarfSprite->sprite);

    *_scarfSprite = scarfSprite;

    {
        void *ncgrBuffer;
        NNSG2dCharacterData *charData;
        u32 entryId;

        GF_ASSERT(endCreditsApp->eyeCharData == NULL);

        if (endCreditsApp->clearGamePlayerInfo->gender == GENDER_MALE) {
            entryId = 27;
        } else {
            entryId = 32;
        }

        endCreditsApp->eyeCharData = Heap_Alloc(HEAP_ID_END_CREDITS, (0x20 * 8));
        ncgrBuffer = Graphics_GetCharDataFromOpenNARC(endCreditsApp->narc, entryId, 0, &charData, HEAP_ID_END_CREDITS);

        MI_CpuCopy32(charData->pRawData, endCreditsApp->eyeCharData, (0x20 * 8));
        Heap_Free(ncgrBuffer);
        DC_FlushRange(endCreditsApp->eyeCharData, (0x20 * 8));
    }
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
    int i;

    for (i = 2; i <= 4; i++) {
        endCreditsApp->managedSprites[i] = SpriteSystem_NewSprite(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, &sEndCreditsDrifloonTemplate);

        ManagedSprite_SetAffineOverwriteMode(endCreditsApp->managedSprites[i], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetAnimateFlag(endCreditsApp->managedSprites[i], TRUE);
        Sprite_TickFrame(endCreditsApp->managedSprites[i]->sprite);
    }
}

static void EndCreditsScenes_UnloadExtraAnimMorning(EndCreditsApp *endCreditsApp)
{
    int i;

    for (i = 2; i <= 4; i++) {
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

    for (i = 0; i < 16; i++) {
        Easy3DObject_Init(&endCreditsApp->bg3DObjects[0][i], &endCreditsApp->bg3DModels[0]);
        Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[0][i], 0, 0, 0);
        Easy3DObject_SetScale(&endCreditsApp->bg3DObjects[0][i], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[0][i], TRUE);
    }

    for (i = 0; i < 16; i++) {
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
    int i;

    for (i = 0; i < 4; i++) {
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

    {
        NNSG2dPaletteData *paletteData;
        void *nclrBuffer;

        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(endCreditsApp->narc, 16, &paletteData, HEAP_ID_END_CREDITS);
        MI_CpuCopy16(paletteData->pRawData, endCreditsApp->sceneManager.daySceneData.bgPaletteBuffers, PALETTE_SIZE_BYTES * 4);
        Heap_Free(nclrBuffer);
    }

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
    int i;

    for (i = 2; i <= 3; i++) {
        endCreditsApp->managedSprites[i] = SpriteSystem_NewSprite(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, &sEndCreditsWingullTemplate);
        ManagedSprite_SetAnimateFlag(endCreditsApp->managedSprites[i], TRUE);
        Sprite_TickFrame(endCreditsApp->managedSprites[i]->sprite);
    }
}

static void EndCreditsScenes_UnloadExtraAnimDay(EndCreditsApp *endCreditsApp)
{
    int i;

    for (i = 2; i <= 3; i++) {
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

    for (i = 0; i < 16; i++) {
        Easy3DObject_Init(&endCreditsApp->bg3DObjects[0][i], &endCreditsApp->bg3DModels[0]);
        Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[0][i], 0, 0, 0);
        Easy3DObject_SetScale(&endCreditsApp->bg3DObjects[0][i], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[0][i], TRUE);
    }

    for (i = 0; i < 16; i++) {
        Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[1][i], FALSE);
    }

    endCreditsApp->bg3DModelRows = 1;

    EndCreditsCommon_Load3DModelStartingPositions(endCreditsApp, 1);
    EndCreditsCommon_Set3DModelStartingPositions(endCreditsApp);

    endCreditsApp->bg3DModelLoaded = TRUE;
}

static void EndCreditsScenes_Unload3DModelsDay(EndCreditsApp *endCreditsApp)
{
    int i;

    for (i = 0; i < 4; i++) {
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

    {
        NNSG2dPaletteData *paletteData;
        void *nclrBuffer;

        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(endCreditsApp->narc, 17, &paletteData, HEAP_ID_END_CREDITS);
        MI_CpuCopy16(paletteData->pRawData, endCreditsApp->sceneManager.nightSceneData.bgPaletteBuffers, PALETTE_SIZE_BYTES * 8);
        Heap_Free(nclrBuffer);

        PaletteData_LoadBuffer(endCreditsApp->paletteData, endCreditsApp->sceneManager.nightSceneData.bgPaletteBuffers, PLTTBUF_MAIN_BG, PLTT_DEST(1), PALETTE_SIZE_BYTES);
        PaletteData_LoadBuffer(endCreditsApp->paletteData, endCreditsApp->sceneManager.nightSceneData.bgPaletteBuffers, PLTTBUF_SUB_BG, PLTT_DEST(1), PALETTE_SIZE_BYTES);
    }

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

static void EndCreditsScenes_LoadExtraAnim(EndCreditsApp *endCreditsApp)
{
    int i;

    for (i = 2; i <= 2; i++) {
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
    int i;

    for (i = 2; i <= 2; i++) {
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

    for (i = 0; i < 16; i++) {
        Easy3DObject_Init(&endCreditsApp->bg3DObjects[0][i], &endCreditsApp->bg3DModels[0]);

        Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[0][i], 0, 0, 0);
        Easy3DObject_SetScale(&endCreditsApp->bg3DObjects[0][i], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[0][i], TRUE);
    }

    for (i = 0; i < 16; i++) {
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
    int i;

    for (i = 0; i < 4; i++) {
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

    {
        String *finalString;
        int xOffset;

        endCreditsApp->window = Window_New(HEAP_ID_END_CREDITS, 1);

        Window_Add(bgConfig, endCreditsApp->window, BG_LAYER_SUB_3, 0, 0, 32, 32, 15, 0);
        Window_FillTilemap(endCreditsApp->window, 15);
        Window_PutToTilemap(endCreditsApp->window);

        finalString = MessageLoader_GetNewString(endCreditsApp->messageLoader, EndCreditsStrings_GetLastMessageID());
        xOffset = (256 - Font_CalcStringWidth(FONT_SYSTEM, finalString, 0)) / 2;

        Text_AddPrinterWithParamsColorAndSpacing(endCreditsApp->window, FONT_SYSTEM, finalString, xOffset, 80, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), 3, 0, NULL);
        Window_LoadTiles(endCreditsApp->window);
        String_Free(finalString);
    }

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
