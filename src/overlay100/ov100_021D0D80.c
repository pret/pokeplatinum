#include "overlay100/ov100_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"

#include "overlay100/ov100_021D13E4.h"
#include "overlay100/ov100_021D1C44.h"
#include "overlay100/ov100_021D2F0C.h"
#include "overlay100/ov100_021D46C8.h"
#include "overlay100/struct_ov100_021D46C8.h"
#include "overlay100/struct_ov100_021D4DD8.h"

#include "bg_window.h"
#include "camera.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sprite_system.h"
#include "system.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay100);

enum CutsceneState {
    CUTSCENE_STATE_STAGE_INIT,
    CUTSCENE_STATE_STAGE_UPDATE,
    CUTSCENE_STATE_STAGE_EXIT,
    CUTSCENE_STATE_DONE,
};

typedef void *(*CutsceneStageInitFunc)(SpearPillarCutsceneData *);
typedef BOOL (*CutsceneStageUpdateFunc)(void *);
typedef BOOL (*CutsceneStageExitFunc)(void *);

static void SpearPillarCutscene_InitSpriteSystem(CutsceneGraphics *graphics);
static void SpearPillarCutscene_InitGraphics(CutsceneGraphics *graphics);
static void SpearPillarCutscene_FreeGraphics(CutsceneGraphics *graphics);
static void SpearPillarCutscene_InitBackgrounds(BgConfig *bgConfig);
static void SpearPillarCutscene_VBlankCallback(void *param);

int SpearPillarCutscene_Init(ApplicationManager *appMan, int *unused)
{
    SpearPillarCutsceneData *cutscene;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_SPEAR_PILLAR_CUTSCENE, 0xC0000);

    cutscene = ApplicationManager_NewData(appMan, sizeof(SpearPillarCutsceneData), HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    memset(cutscene, 0, sizeof(SpearPillarCutsceneData));
    cutscene->args = ApplicationManager_Args(appMan);

    SpearPillarCutscene_InitGraphics(&cutscene->scene);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6 * 2, 1, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    SetVBlankCallback(SpearPillarCutscene_VBlankCallback, cutscene);

    cutscene->scene.tint.r = 31;
    cutscene->scene.tint.g = 31;
    cutscene->scene.tint.b = 31;
    cutscene->scene.flashIntensity = 31;

    Sound_Set2PokemonCriesAllowed(1);

    Window *window = &cutscene->scene.messageWindow;
    int msgBoxFrame = Options_Frame(cutscene->args->options);

    Window_Init(window);
    Window_Add(cutscene->scene.bgConfig, window, 1, 2, 19, 27, 4, 14, 1);
    Window_FillTilemap(window, 0xFF);
    Window_CopyToVRAM(window);

    LoadMessageBoxGraphics(cutscene->scene.bgConfig, 1, 500, 15, msgBoxFrame, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    PaletteData_LoadBufferFromFileStart(cutscene->scene.paletteData, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxPaletteNARCMember(msgBoxFrame), HEAP_ID_SPEAR_PILLAR_CUTSCENE, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, PLTT_DEST(15));
    PaletteData_LoadBufferFromFileStart(cutscene->scene.paletteData, NARC_INDEX_GRAPHIC__PL_FONT, 7, HEAP_ID_SPEAR_PILLAR_CUTSCENE, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, PLTT_DEST(14));
    Window_DrawMessageBoxWithScrollCursor(window, 0, 500, 15);

    SpearPillarCutscene_ClearMessage(&cutscene->scene);

    return 1;
}

static const struct CutsceneStage {
    CutsceneStageInitFunc init;
    CutsceneStageUpdateFunc update;
    CutsceneStageExitFunc exit;
} sCutsceneStages[] = {
    { DialgaPalkiaArrival_Init, DialgaPalkiaArrival_Update, DialgaPalkiaArrival_Exit },
    { LakeGuardiansArrival_Init, LakeGuardiansArrival_Update, LakeGuardiansArrival_Exit },
    { GiratinaIntervention_Init, GiratinaIntervention_Update, GiratinaIntervention_Exit },
};

int SpearPillarCutscene_Main(ApplicationManager *appMan, int *state)
{
    SpearPillarCutsceneData *cutscene = ApplicationManager_Data(appMan);

    switch (*state) {
    case CUTSCENE_STATE_STAGE_INIT: {
        cutscene->stageContext = sCutsceneStages[cutscene->stageIndex].init(cutscene);
        *state = CUTSCENE_STATE_STAGE_UPDATE;
        break;
    }
    case CUTSCENE_STATE_STAGE_UPDATE: {
        BOOL updating = sCutsceneStages[cutscene->stageIndex].update(cutscene->stageContext);

        if (updating == 0) {
            *state = CUTSCENE_STATE_STAGE_EXIT;
        }
        break;
    }
    case CUTSCENE_STATE_STAGE_EXIT: {
        BOOL exiting = sCutsceneStages[cutscene->stageIndex].exit(cutscene->stageContext);

        if (exiting == 0) {
            if ((++cutscene->stageIndex) != NELEMS(sCutsceneStages)) {
                *state = CUTSCENE_STATE_STAGE_INIT;
            } else {
                *state = CUTSCENE_STATE_DONE;
            }
        }
        break;
    }
    case CUTSCENE_STATE_DONE:
        return 1;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    SpriteSystem_DrawSprites(cutscene->scene.spriteManager);

    return 0;
}

int SpearPillarCutscene_Exit(ApplicationManager *appMan, int *unused)
{
    SpearPillarCutsceneData *cutscene = ApplicationManager_Data(appMan);

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    Window_EraseMessageBox(&cutscene->scene.messageWindow, 1);
    Window_ClearAndCopyToVRAM(&cutscene->scene.messageWindow);
    Window_Remove(&cutscene->scene.messageWindow);

    SpearPillarCutscene_FreeGraphics(&cutscene->scene);
    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;

    GXLayers_SwapDisplay();
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    Sound_Set2PokemonCriesAllowed(0);

    return 1;
}

static void SpearPillarCutscene_InitSpriteSystem(CutsceneGraphics *graphics)
{
    graphics->spriteSystem = SpriteSystem_Alloc(HEAP_ID_SPEAR_PILLAR_CUTSCENE);

    const RenderOamTemplate oamTemplate = {
        0,
        128,
        0,
        32,
        0,
        128,
        0,
        32,
    };
    const CharTransferTemplateWithModes modes = {
        48 + 48,
        1024 * 0x40,
        512 * 0x20,
        GX_OBJVRAMMODE_CHAR_1D_64K,
        GX_OBJVRAMMODE_CHAR_1D_32K
    };
    BOOL initialized = SpriteSystem_Init(graphics->spriteSystem, &oamTemplate, &modes, 16 + 16);

    GF_ASSERT(initialized);

    BOOL success;
    const SpriteResourceCapacities capacities = {
        48 + 48,
        16 + 16,
        64,
        64,
        16,
        16,
    };

    graphics->spriteManager = SpriteManager_New(graphics->spriteSystem);

    success = SpriteSystem_InitSprites(graphics->spriteSystem, graphics->spriteManager, 64 + 64);
    GF_ASSERT(success);

    success = SpriteSystem_InitManagerWithCapacities(graphics->spriteSystem, graphics->spriteManager, &capacities);
    GF_ASSERT(success);
}

static void SpearPillarCutscene_InitGraphics(CutsceneGraphics *graphics)
{
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    graphics->narc = NARC_ctor(NARC_INDEX_ARC__DEMO_TENGAN_GRA, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    graphics->bgConfig = BgConfig_New(HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    graphics->paletteData = PaletteData_New(HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    graphics->g3dPipeline = G3DPipeline_Init(HEAP_ID_SPEAR_PILLAR_CUTSCENE, TEXTURE_VRAM_SIZE_128K, PALETTE_VRAM_SIZE_64K, NULL);
    graphics->camera = Camera_Alloc(HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    graphics->messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPEAR_PILLAR, HEAP_ID_SPEAR_PILLAR_CUTSCENE);

    PaletteData_SetAutoTransparent(graphics->paletteData, TRUE);
    PaletteData_AllocBuffer(graphics->paletteData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * 16, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    PaletteData_AllocBuffer(graphics->paletteData, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES * 16, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    PaletteData_AllocBuffer(graphics->paletteData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * 16, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    PaletteData_AllocBuffer(graphics->paletteData, PLTTBUF_SUB_OBJ, PALETTE_SIZE_BYTES * 16, HEAP_ID_SPEAR_PILLAR_CUTSCENE);

    SpearPillarCutscene_InitBackgrounds(graphics->bgConfig);
    SpearPillarCutscene_InitSpriteSystem(graphics);

    G3X_AlphaBlend(1);
    HeapExp_FndInitAllocator(&graphics->allocator, HEAP_ID_SPEAR_PILLAR_CUTSCENE, 32);
}

static void SpearPillarCutscene_FreeGraphics(CutsceneGraphics *graphics)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_3);
    Heap_Free(graphics->bgConfig);

    PaletteData_FreeBuffer(graphics->paletteData, PLTTBUF_MAIN_BG);
    PaletteData_FreeBuffer(graphics->paletteData, PLTTBUF_SUB_BG);
    PaletteData_FreeBuffer(graphics->paletteData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(graphics->paletteData, PLTTBUF_SUB_OBJ);
    PaletteData_Free(graphics->paletteData);

    NARC_dtor(graphics->narc);
    G3DPipelineBuffers_Free(graphics->g3dPipeline);
    Camera_Delete(graphics->camera);
    SpriteSystem_FreeResourcesAndManager(graphics->spriteSystem, graphics->spriteManager);
    SpriteSystem_Free(graphics->spriteSystem);
    MessageLoader_Free(graphics->messageLoader);

    G3X_AlphaBlend(0);
}

static void SpearPillarCutscene_InitBackgrounds(BgConfig *bgConfig)
{
    GXLayers_DisableEngineALayers();

    GraphicsModes modes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };

    SetAllGraphicsModes(&modes);

    GXBanks banks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_B,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&banks);

    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);

    BgTemplate mainBgTemplates[] = {
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x2000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x2800,
            .charBase = GX_BG_CHARBASE_0x14000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x3000,
            .charBase = GX_BG_CHARBASE_0x18000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x3800,
            .charBase = GX_BG_CHARBASE_0x18000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &mainBgTemplates[0], 0);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &mainBgTemplates[1], 0);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &mainBgTemplates[2], 0);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &mainBgTemplates[3], 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);

    BgTemplate subBgTemplates[] = {
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x3000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x3800,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &subBgTemplates[0], 0);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &subBgTemplates[1], 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_1);

    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    Bg_ClearTilesRange(5, 32, 0, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void SpearPillarCutscene_VBlankCallback(void *param)
{
    SpearPillarCutsceneData *cutscene = param;

    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(cutscene->scene.paletteData);
    Bg_RunScheduledUpdates(cutscene->scene.bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}
