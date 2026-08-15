#include "cutscenes/end_credits/main.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/heap.h"

#include "cutscenes/end_credits/defs.h"
#include "cutscenes/end_credits/scenes.h"
#include "cutscenes/end_credits/strings.h"
#include "pch/global_pch.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "camera.h"
#include "easy3d_object.h"
#include "ending.naix"
#include "enums.h"
#include "g3d_pipeline.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "screen_fade.h"
#include "sound.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "touch_pad.h"
#include "unk_0202419C.h"
#include "vram_transfer.h"

enum EndCreditsState {
    END_CREDITS_STATE_INIT_SCENE,
    END_CREDITS_STATE_RUN_SCENE,
    END_CREDITS_STATE_END
};

static const CameraAngle sEndCreditsCameraAngle = {
    .x = 0,
    .y = 0,
    .z = 0
};

static const RenderOamTemplate sEndCreditsRenderOamTemplate = {
    .mainOamStart = 0,
    .mainOamCount = 128,
    .mainAffineOamStart = 0,
    .mainAffineOamCount = 32,
    .subOamStart = 0,
    .subOamCount = 128,
    .subAffineOamStart = 0,
    .subAffineOamCount = 32
};

static const CharTransferTemplateWithModes sEndCreditsCharTransferTemplate = {
    .maxTasks = 0x60,
    .sizeMain = 0x10000,
    .sizeSub = 0x4000,
    .modeMain = GX_OBJVRAMMODE_CHAR_1D_128K,
    .modeSub = GX_OBJVRAMMODE_CHAR_1D_128K
};

static const SpriteResourceCapacities sEndCreditsResourceCapacities = {
    .asStruct = {
        .charCapacity = 96,
        .plttCapacity = 32,
        .cellCapacity = 64,
        .animCapacity = 64,
        .mcellCapacity = 8,
        .manimCapacity = 8,
    }
};

static void EndCredits_DrawSprites(SysTask *sysTask, void *pEndCreditsApp);
static void EndCredits_VBlankCallback(void *pEndCreditsApp);
static void EndCredits_InitBackgrounds(BgConfig *bgConfig);
static void EndCredits_Draw3DModels(EndCreditsApp *endCreditsApp);
static void EndCredits_InitCamera(EndCreditsApp *endCreditsApp);
static void EndCredits_DeleteCamera(EndCreditsApp *endCreditsApp);
static G3DPipelineBuffers *EndCredits_InitG3DPipeline(enum HeapID heapID);
static void EndCredits_G3DPipelineCallback(void);
static void EndCredits_FreeG3DPipeline(G3DPipelineBuffers *g3dPipeline);
static void EndCredits_InitPalettes(EndCreditsApp *endCreditsApp);
static void EndCredits_FreeAppResources(EndCreditsApp *endCreditsApp);
static void EndCredits_FreeTilemapBuffers(EndCreditsApp *endCreditsApp);
static void EndCredits_InitBackgrounds2(BgConfig *bgConfig);

BOOL EndCreditsApp_Init(ApplicationManager *appMan, int *state)
{
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_END_CREDITS, 0x80000);

    EndCreditsApp *endCreditsApp = ApplicationManager_NewData(appMan, sizeof(EndCreditsApp), HEAP_ID_END_CREDITS);
    MI_CpuClear8(endCreditsApp, sizeof(EndCreditsApp));

    endCreditsApp->clearGamePlayerInfo = ApplicationManager_Args(appMan);
    endCreditsApp->g3dPipeline = EndCredits_InitG3DPipeline(HEAP_ID_END_CREDITS);
    endCreditsApp->paletteData = PaletteData_New(HEAP_ID_END_CREDITS);

    PaletteData_AllocBuffer(endCreditsApp->paletteData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * 16, HEAP_ID_END_CREDITS);
    PaletteData_AllocBuffer(endCreditsApp->paletteData, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES * 16, HEAP_ID_END_CREDITS);
    PaletteData_AllocBuffer(endCreditsApp->paletteData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * 14, HEAP_ID_END_CREDITS);
    PaletteData_AllocBuffer(endCreditsApp->paletteData, PLTTBUF_SUB_OBJ, PALETTE_SIZE_BYTES * 16, HEAP_ID_END_CREDITS);
    PaletteData_SetAutoTransparent(endCreditsApp->paletteData, 1);

    endCreditsApp->bgConfig = BgConfig_New(HEAP_ID_END_CREDITS);

    VramTransfer_New(64, HEAP_ID_END_CREDITS);
    SetAutorepeat(4, 8);

    EndCredits_InitBackgrounds(endCreditsApp->bgConfig);

    EnableTouchPad();
    InitializeTouchPad(4);

    endCreditsApp->messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_END_CREDITS, HEAP_ID_END_CREDITS);
    endCreditsApp->narc = NARC_ctor(NARC_INDEX_GRAPHIC__ENDING, HEAP_ID_END_CREDITS);

    EndCredits_InitCamera(endCreditsApp);

    endCreditsApp->spriteSystem = SpriteSystem_Alloc(HEAP_ID_END_CREDITS);

    SpriteSystem_Init(endCreditsApp->spriteSystem, &sEndCreditsRenderOamTemplate, &sEndCreditsCharTransferTemplate, 16 + 16);
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);

    endCreditsApp->spriteManager = SpriteManager_New(endCreditsApp->spriteSystem);

    SpriteSystem_InitSprites(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, 64 + 64);
    SpriteSystem_InitManagerWithCapacities(endCreditsApp->spriteSystem, endCreditsApp->spriteManager, &sEndCreditsResourceCapacities);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(endCreditsApp->spriteSystem), 0, (192 + 80) << FX32_SHIFT);

    EndCredits_InitPalettes(endCreditsApp);

    endCreditsApp->subScreenStringsManager = EndCreditsStrings_CreateManager(endCreditsApp->bgConfig, -240, BG_LAYER_MAIN_1, 15, endCreditsApp->messageLoader);
    endCreditsApp->mainScreenStringsManager = EndCreditsStrings_CreateManager(endCreditsApp->bgConfig, -240 - 192 - 16, BG_LAYER_SUB_1, 15, endCreditsApp->messageLoader);

    G2_SetWnd0Position(0, 192 - 24, 255, 192);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_ALL ^ GX_WND_PLANEMASK_BG1, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_ALL, 1);
    G2S_SetWnd0Position(0, 0, 255, 24);
    G2S_SetWnd0InsidePlane(GX_WND_PLANEMASK_ALL ^ GX_WND_PLANEMASK_BG1, 1);
    G2S_SetWndOutsidePlane(GX_WND_PLANEMASK_ALL, 1);
    GX_SetVisibleWnd(GX_WNDMASK_W0);
    GXS_SetVisibleWnd(GX_WNDMASK_W0);

    gSystem.whichScreenIs3D = DS_SCREEN_SUB;

    GXLayers_SwapDisplay();
    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);

    endCreditsApp->sysTask = SysTask_Start(EndCredits_DrawSprites, endCreditsApp, 60000);

    SetVBlankCallback(EndCredits_VBlankCallback, endCreditsApp);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_14, SEQ_BLD_ENDING, 1);

    BrightnessController_SetScreenBrightness(BRIGHTNESS_BLACK, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, BRIGHTNESS_BOTH_SCREENS);
    SetScreenMasterBrightness(DS_SCREEN_MAIN, BRIGHTNESS_NORMAL);
    SetScreenMasterBrightness(DS_SCREEN_SUB, BRIGHTNESS_NORMAL);

    Bg_ToggleLayer(BG_LAYER_MAIN_1, TRUE);
    Bg_ToggleLayer(BG_LAYER_SUB_1, TRUE);

    return TRUE;
}

BOOL EndCreditsApp_Main(ApplicationManager *appMan, int *state)
{
    EndCreditsApp *endCreditsApp = ApplicationManager_Data(appMan);

    if (endCreditsApp->subScreenStringsManager != NULL) {
        EndCreditsStrings_ScrollCredits(endCreditsApp->subScreenStringsManager, 1);
        endCreditsApp->creditsScrollDone = EndCreditsStrings_ScrollCredits(endCreditsApp->mainScreenStringsManager, 1);
    }

    if (endCreditsApp->clearGamePlayerInfo->gameCompleted && (gSystem.pressedKeys & PAD_BUTTON_START)) {
        if ((endCreditsApp->creditsSkipState == END_CREDITS_SKIP_STATE_NOT_SKIPPED) && (endCreditsApp->currentScene < END_CREDITS_SCENE_FIN)) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_END_CREDITS);
            endCreditsApp->creditsSkipState = END_CREDITS_SKIP_STATE_SKIPPING;
        }
    }

    switch (endCreditsApp->creditsSkipState) {
    case END_CREDITS_SKIP_STATE_NOT_SKIPPED:
        break;
    case END_CREDITS_SKIP_STATE_SKIPPING:
        if (IsScreenFadeDone()) {
            if (endCreditsApp->sceneLoaded == TRUE) {
                EndCreditsScenes_RunSceneUnloadFuncs(endCreditsApp, endCreditsApp->currentScene);
                endCreditsApp->sceneLoaded = FALSE;
            }

            if (BrightnessController_IsTransitionComplete(BRIGHTNESS_BOTH_SCREENS) == FALSE) {
                BrightnessController_ResetScreenController(BRIGHTNESS_BOTH_SCREENS);
            }

            EndCredits_InitFinalScenes(endCreditsApp);
            endCreditsApp->currentScene = END_CREDITS_SCENE_FIN;
            GXLayers_EngineASetLayers(0);
            GXLayers_EngineBSetLayers(0);
            MI_CpuClear8(&endCreditsApp->sceneManager, sizeof(EndCreditsSceneManager));
            endCreditsApp->creditsSkipState = END_CREDITS_SKIP_STATE_SKIPPED;
            *state = END_CREDITS_STATE_INIT_SCENE;
        }
        break;
    }

    switch (*state) {
    case END_CREDITS_STATE_INIT_SCENE:
        if ((endCreditsApp->creditsSkipState == END_CREDITS_SKIP_STATE_NOT_SKIPPED) || (endCreditsApp->creditsSkipState == END_CREDITS_SKIP_STATE_SKIPPED)) {
            EndCreditsScenes_RunSceneLoadFuncs(endCreditsApp, endCreditsApp->currentScene);
            endCreditsApp->sceneLoaded = TRUE;
            (*state)++;
        }
        break;
    case END_CREDITS_STATE_RUN_SCENE:
        if (EndCreditsScenes_RunScene(endCreditsApp, endCreditsApp->currentScene) == TRUE) {
            EndCreditsScenes_RunSceneUnloadFuncs(endCreditsApp, endCreditsApp->currentScene);
            endCreditsApp->sceneLoaded = FALSE;
            endCreditsApp->currentScene++;

            if (endCreditsApp->currentScene < END_CREDITS_SCENE_COUNT) {
                (*state) = END_CREDITS_STATE_INIT_SCENE;
            } else {
                (*state) = END_CREDITS_STATE_END;
            }
        }
        break;
    case END_CREDITS_STATE_END:
        return TRUE;
    }

    endCreditsApp->framesElapsed++;

    return FALSE;
}

BOOL EndCreditsApp_Exit(ApplicationManager *appMan, int *state)
{
    EndCreditsApp *endCreditsApp = ApplicationManager_Data(appMan);

    SysTask_Done(endCreditsApp->sysTask);

    if (endCreditsApp->subScreenStringsManager != NULL) {
        EndCredits_FreeAppResources(endCreditsApp);
    } else {
        EndCredits_FreeTilemapBuffers(endCreditsApp);
    }

    MessageLoader_Free(endCreditsApp->messageLoader);
    SpriteSystem_FreeResourcesAndManager(endCreditsApp->spriteSystem, endCreditsApp->spriteManager);
    SpriteSystem_Free(endCreditsApp->spriteSystem);
    PaletteData_FreeBuffer(endCreditsApp->paletteData, PLTTBUF_MAIN_BG);
    PaletteData_FreeBuffer(endCreditsApp->paletteData, PLTTBUF_SUB_BG);
    PaletteData_FreeBuffer(endCreditsApp->paletteData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(endCreditsApp->paletteData, PLTTBUF_SUB_OBJ);
    PaletteData_Free(endCreditsApp->paletteData);

    EndCredits_DeleteCamera(endCreditsApp);

    NARC_dtor(endCreditsApp->narc);
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    VramTransfer_Free();
    DisableTouchPad();
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_END_CREDITS);

    return TRUE;
}

static void EndCredits_DrawSprites(SysTask *sysTask, void *pEndCreditsApp)
{
    EndCreditsApp *endCreditsApp = pEndCreditsApp;

    if (endCreditsApp->bg3DModelLoaded == TRUE) {
        EndCredits_Draw3DModels(endCreditsApp);
        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }

    SpriteSystem_DrawSprites(endCreditsApp->spriteManager);
    SpriteSystem_UpdateTransfer();
}

static void EndCredits_FreeAppResources(EndCreditsApp *endCreditsApp)
{
    GF_ASSERT(endCreditsApp->subScreenStringsManager != NULL);

    EndCreditsStrings_FreeManager(endCreditsApp->mainScreenStringsManager);
    EndCreditsStrings_FreeManager(endCreditsApp->subScreenStringsManager);

    endCreditsApp->mainScreenStringsManager = NULL;
    endCreditsApp->subScreenStringsManager = NULL;

    Bg_ToggleLayer(BG_LAYER_MAIN_1, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_1, FALSE);
    Bg_FreeTilemapBuffer(endCreditsApp->bgConfig, BG_LAYER_SUB_3);
    Bg_FreeTilemapBuffer(endCreditsApp->bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(endCreditsApp->bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(endCreditsApp->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(endCreditsApp->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(endCreditsApp->bgConfig, BG_LAYER_MAIN_1);
    Heap_Free(endCreditsApp->bgConfig);

    EndCredits_FreeG3DPipeline(endCreditsApp->g3dPipeline);
}

void EndCredits_InitFinalScenes(EndCreditsApp *endCreditsApp)
{
    if (endCreditsApp->subScreenStringsManager == NULL) {
        return;
    }

    EndCredits_FreeAppResources(endCreditsApp);

    endCreditsApp->bgConfig = BgConfig_New(HEAP_ID_END_CREDITS);
    EndCredits_InitBackgrounds2(endCreditsApp->bgConfig);
}

static void EndCredits_FreeTilemapBuffers(EndCreditsApp *endCreditsApp)
{
    GF_ASSERT(endCreditsApp->subScreenStringsManager == NULL);

    Bg_FreeTilemapBuffer(endCreditsApp->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(endCreditsApp->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(endCreditsApp->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(endCreditsApp->bgConfig, BG_LAYER_SUB_3);
    Heap_Free(endCreditsApp->bgConfig);
}

static void EndCredits_VBlankCallback(void *pEndCreditsApp)
{
    EndCreditsApp *endCreditsApp = pEndCreditsApp;

    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(endCreditsApp->paletteData);
    Bg_RunScheduledUpdates(endCreditsApp->bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void EndCredits_InitBackgrounds(BgConfig *bgConfig)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GXBanks banks = {
        .unk_00 = GX_VRAM_BG_128_B,
        .unk_04 = GX_VRAM_BGEXTPLTT_23_G,
        .unk_08 = GX_VRAM_BG_128_C,
        .unk_0C = GX_VRAM_SUB_BGEXTPLTT_NONE,
        .unk_10 = GX_VRAM_OBJ_64_E,
        .unk_14 = GX_VRAM_OBJEXTPLTT_NONE,
        .unk_18 = GX_VRAM_SUB_OBJ_16_I,
        .unk_1C = GX_VRAM_SUB_OBJEXTPLTT_NONE,
        .unk_20 = GX_VRAM_TEX_0_A,
        .unk_24 = GX_VRAM_TEXPLTT_0_F
    };

    GXLayers_SetBanks(&banks);

    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);

    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_3,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_3D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplates[] = {
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x2000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x512,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1000,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_256,
            .screenBase = GX_BG_SCRBASE_0x3000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplates[0], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, 0);

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplates[1], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 0);

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplates[2], BG_TYPE_STATIC_WITH_AFFINE);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 0);

    G2_SetBG0Priority(1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);

    BgTemplate bgTemplates2[] = {
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
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
            .screenBase = GX_BG_SCRBASE_0x1000,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x2000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x512,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x2000,
            .charBase = GX_BG_CHARBASE_0x14000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &bgTemplates2[0], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_1);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, BG_OFFSET_UPDATE_SET_Y, 0);

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_2, &bgTemplates2[1], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_2);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_Y, 0);

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_3, &bgTemplates2[2], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_3);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, 0);

    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_END_CREDITS);
    Bg_ClearTilesRange(BG_LAYER_SUB_1, 32, 0, HEAP_ID_END_CREDITS);
    Bg_ClearTilesRange(BG_LAYER_SUB_2, 32, 0, HEAP_ID_END_CREDITS);
    Bg_ClearTilesRange(BG_LAYER_SUB_3, 32, 0, HEAP_ID_END_CREDITS);

    Bg_ToggleLayer(BG_LAYER_MAIN_3, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_2, FALSE);
}

static void EndCredits_InitBackgrounds2(BgConfig *bgConfig)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GXBanks banks = {
        .unk_00 = GX_VRAM_BG_256_AB,
        .unk_04 = GX_VRAM_BGEXTPLTT_23_G,
        .unk_08 = GX_VRAM_BG_128_C,
        .unk_0C = GX_VRAM_SUB_BGEXTPLTT_NONE,
        .unk_10 = GX_VRAM_OBJ_64_E,
        .unk_14 = GX_VRAM_OBJEXTPLTT_NONE,
        .unk_18 = GX_VRAM_SUB_OBJ_16_I,
        .unk_1C = GX_VRAM_SUB_OBJEXTPLTT_NONE,
        .unk_20 = GX_VRAM_TEX_NONE,
        .unk_24 = GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&banks);

    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);

    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_5,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplates[] = {
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_256,
            .screenBase = GX_BG_SCRBASE_0x0800,
            .charBase = GX_BG_CHARBASE_0x20000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_256,
            .screenBase = GX_BG_SCRBASE_0x2800,
            .charBase = GX_BG_CHARBASE_0x30000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplates[0], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, 0);

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplates[1], BG_TYPE_STATIC_WITH_AFFINE);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 0);

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplates[2], BG_TYPE_STATIC_WITH_AFFINE);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 0);

    BgTemplate bgTemplates2[] = {
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x2000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x512,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x2000,
            .charBase = GX_BG_CHARBASE_0x14000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_3, &bgTemplates2[0], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_3);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, 0);

    Bg_ClearTilesRange(BG_LAYER_SUB_3, 32, 0, HEAP_ID_END_CREDITS);
}

static void EndCredits_InitPalettes(EndCreditsApp *endCreditsApp)
{
    PaletteData_LoadBufferFromFileStart(endCreditsApp->paletteData, NARC_INDEX_GRAPHIC__ENDING, text_NCLR, HEAP_ID_END_CREDITS, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, PLTT_DEST(15));
    PaletteData_LoadBufferFromFileStart(endCreditsApp->paletteData, NARC_INDEX_GRAPHIC__ENDING, text_NCLR, HEAP_ID_END_CREDITS, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, PLTT_DEST(15));
}

static void EndCredits_Draw3DModels(EndCreditsApp *endCreditsApp)
{
    VecFx32 scaleVec, transVec;
    MtxFx33 rot;

    scaleVec.x = FX32_ONE;
    scaleVec.y = FX32_ONE;
    scaleVec.z = FX32_ONE;

    transVec.x = 0;
    transVec.y = 0;
    transVec.z = 0;

    MTX_Identity33(&rot);

    G3_ResetG3X();
    Camera_SetAsActive(endCreditsApp->camera);
    Camera_ComputeProjectionMatrix(0, endCreditsApp->camera);
    Camera_ComputeViewMatrix();

    switch (endCreditsApp->currentScene) {
    case END_CREDITS_SCENE_BIKE_MORNING:
        NNS_G3dGlbLightVector(0, 1897, -3600, -466);
        NNS_G3dGlbLightVector(2, 0, 0, 4096);
        NNS_G3dGlbLightColor(0, GX_RGB(28, 12, 6));
        NNS_G3dGlbLightColor(2, GX_RGB(0, 0, 0));
        NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(15, 15, 15), GX_RGB(11, 12, 12), 0);
        NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(17, 17, 17), GX_RGB(8, 8, 7), 0);
        break;
    case END_CREDITS_SCENE_BIKE_DAY:
        NNS_G3dGlbLightVector(0, -2043, -3548, 110);
        NNS_G3dGlbLightVector(2, 0, 0, 4096);
        NNS_G3dGlbLightColor(0, GX_RGB(22, 22, 20));
        NNS_G3dGlbLightColor(2, GX_RGB(0, 0, 0));
        NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(15, 15, 15), GX_RGB(9, 11, 11), 0);
        NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(16, 16, 16), GX_RGB(14, 14, 14), 0);
        break;
    case END_CREDITS_SCENE_BIKE_NIGHT:
        NNS_G3dGlbLightVector(0, 1897, -3600, -466);
        NNS_G3dGlbLightVector(2, 0, 0, 4096);
        NNS_G3dGlbLightColor(0, GX_RGB(11, 11, 16));
        NNS_G3dGlbLightColor(2, GX_RGB(0, 0, 0));
        NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(14, 14, 16), GX_RGB(10, 10, 10), 0);
        NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(14, 14, 16), GX_RGB(8, 8, 11), 0);
        break;
    default:
        NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
        NNS_G3dGlbLightColor(0, GX_RGB(28, 28, 28));
        NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
        NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
        break;
    }

    NNS_G3dGlbLightVector(3, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(3, GX_RGB(28, 28, 28));
    NNS_G3dGlbSetBaseTrans(&transVec);
    NNS_G3dGlbSetBaseRot(&rot);
    NNS_G3dGlbSetBaseScale(&scaleVec);
    NNS_G3dGePushMtx();

    for (int i = 0; i < SNELEMS(endCreditsApp->bg3DObjects); i++) {
        for (int j = 0; j < SNELEMS(endCreditsApp->bg3DObjects[i]); j++) {
            Easy3DObject_Draw(&endCreditsApp->bg3DObjects[i][j]);
        }
    }

    NNS_G3dGePopMtx(1);
}

static void EndCredits_InitCamera(EndCreditsApp *endCreditsApp)
{
    VecFx32 target1 = { .x = 0, .y = -FX32_ONE * 8, .z = 0 };
    VecFx32 pos = { .x = -31712, .y = -142304, .z = 496744 };
    VecFx32 target2 = { .x = -31712, .y = -67780, .z = -5704 };

    endCreditsApp->camera = Camera_Alloc(HEAP_ID_END_CREDITS);

    Camera_InitWithTarget(&target1, 0x7c000, &sEndCreditsCameraAngle, (22 * 0xffff) / 360, 0, 0, endCreditsApp->camera);
    Camera_SetPosition(&pos, endCreditsApp->camera);
    Camera_SetTarget(&target2, endCreditsApp->camera);
    Camera_SetClipping(FX32_ONE, FX32_ONE * 900, endCreditsApp->camera);
    Camera_SetAsActive(endCreditsApp->camera);
}

static void EndCredits_DeleteCamera(EndCreditsApp *endCreditsApp)
{
    Camera_Delete(endCreditsApp->camera);
}

static G3DPipelineBuffers *EndCredits_InitG3DPipeline(enum HeapID heapID)
{
    return G3DPipeline_Init(heapID, TEXTURE_VRAM_SIZE_128K, PALETTE_VRAM_SIZE_16K, EndCredits_G3DPipelineCallback);
}

static void EndCredits_G3DPipelineCallback(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

static void EndCredits_FreeG3DPipeline(G3DPipelineBuffers *g3dPipeline)
{
    G3DPipelineBuffers_Free(g3dPipeline);
}
