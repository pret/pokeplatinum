#include "overlay080/ov80_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0203D8AC.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay080/ov80_021D2A08.h"
#include "overlay080/ov80_021D2AF4.h"
#include "overlay080/struct_ov80_021D2A08.h"
#include "overlay080/struct_ov80_021D2E94.h"

#include "bg_window.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "map_matrix.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "screen_fade.h"
#include "sound.h"
#include "strbuf.h"
#include "system.h"
#include "touch_pad.h"
#include "unk_0208C098.h"

enum TownMapAppState {
    TOWN_MAP_APP_STATE_INIT_RESOURCES,
    TOWN_MAP_APP_STATE_DISPLAY_GRAPHICS,
    TOWN_MAP_APP_STATE_UNUSED_2,
    TOWN_MAP_APP_STATE_WAIT_ENTER_SCREEN_FADE,
    TOWN_MAP_APP_STATE_MAIN_LOOP,
    TOWN_MAP_APP_STATE_UNUSED_5,
    TOWN_MAP_APP_STATE_WAIT_EXIT_SCREEN_FADE,
    TOWN_MAP_APP_STATE_EXIT,
    TOWN_MAP_APP_STATE_CLEANUP,
};

int TownMap_Init(ApplicationManager *appMan, int *param1);
int TownMap_Main(ApplicationManager *appMan, int *param1);
int TownMap_Exit(ApplicationManager *appMan, int *param1);
static void TownMapAppVBlankCB(void *param0);
static void SetVRAMBanks(void);
static int InitSharedAppResources(TownMapAppData *param0);
static void InitBGLayers(TownMapAppData *param0, BgConfig *param1);
static void LoadBGGraphics(TownMapAppData *param0);
static void FreeTilemapFiles(TownMapAppData *param0);
static void CleanupSharedAppResources(TownMapAppData *param0);
static void UpdateGraphics(TownMapAppData *param0);
static int InitAppResources(TownMapAppData *param0);
static int DisplayGraphics(TownMapAppData *param0);
static int CheckAppEnterScreenFadeDone(TownMapAppData *param0);
static int HandlePlayerInput(TownMapAppData *param0);
static int CheckAppExitScreenFadeDone(TownMapAppData *param0);
static int CleanupAppResources(TownMapAppData *param0);
int TownMapApp_CreateGraphicsMan(TownMapAppData *param0);
int TownMapApp_LoadGraphics(TownMapAppData *param0);
int TownMapApp_FadeInBothScreens(TownMapAppData *param0);
int TownMapApp_FadeOutBothScreens(TownMapAppData *param0);
int TownMapApp_HandleInput_Item(TownMapAppData *param0);
int TownMapApp_UpdateBottomScreen(TownMapAppData *param0);
int TownMapApp_UpdateFlyTargetSprites(TownMapAppData *param0);
int TownMapApp_FreeGraphics(TownMapAppData *param0);
int TownMapApp_UpdateDisplayedLocationInfo(TownMapAppData *param0);
int TownMap_HandleInput_Fly(TownMapAppData *param0);
int TownMapApp_FadeInTopScreen(TownMapAppData *param0);
int TownMapApp_FadeOutTopScreen(TownMapAppData *param0);
int TownMap_HandleInput_WallMap(TownMapAppData *param0);

const TownMapAppFunctionSet sAppFunctionSets[NUM_TOWN_MAP_MODES] = {
    [TOWN_MAP_MODE_ITEM] = {
        .initResources = TownMapApp_CreateGraphicsMan,
        .displayGraphics = TownMapApp_LoadGraphics,
        .fadeScreensAppEnter = TownMapApp_FadeInBothScreens,
        .fadeScreensAppExit = TownMapApp_FadeOutBothScreens,
        .handleInput = TownMapApp_HandleInput_Item,
        .unk_14 = TownMapApp_UpdateBottomScreen,
        .updateSprites = TownMapApp_UpdateFlyTargetSprites,
        .cleanup = TownMapApp_FreeGraphics,
        .vBlankCB = TownMapApp_UpdateDisplayedLocationInfo,
    },
    [TOWN_MAP_MODE_FLY] = {
        .initResources = TownMapApp_CreateGraphicsMan,
        .displayGraphics = TownMapApp_LoadGraphics,
        .fadeScreensAppEnter = TownMapApp_FadeInBothScreens,
        .fadeScreensAppExit = TownMapApp_FadeOutBothScreens,
        .handleInput = TownMap_HandleInput_Fly,
        .unk_14 = TownMapApp_UpdateBottomScreen,
        .updateSprites = TownMapApp_UpdateFlyTargetSprites,
        .cleanup = TownMapApp_FreeGraphics,
        .vBlankCB = TownMapApp_UpdateDisplayedLocationInfo,
    },
    [TOWN_MAP_MODE_WALL_MAP] = {
        .initResources = TownMapApp_CreateGraphicsMan,
        .displayGraphics = TownMapApp_LoadGraphics,
        .fadeScreensAppEnter = TownMapApp_FadeInTopScreen,
        .fadeScreensAppExit = TownMapApp_FadeOutTopScreen,
        .handleInput = TownMap_HandleInput_WallMap,
        .unk_14 = TownMapApp_UpdateBottomScreen,
        .updateSprites = TownMapApp_UpdateFlyTargetSprites,
        .cleanup = TownMapApp_FreeGraphics,
        .vBlankCB = TownMapApp_UpdateDisplayedLocationInfo,
    },
};

int TownMap_Init(ApplicationManager *appMan, int *param1)
{
    TownMapAppData *v0 = NULL;
    TownMapContext *v1 = (TownMapContext *)ApplicationManager_Args(appMan);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_17, 0x20000);

    v0 = ApplicationManager_NewData(appMan, sizeof(TownMapAppData), HEAP_ID_17);
    memset(v0, 0, sizeof(TownMapAppData));
    v0->context = v1;

    if (v1->townMapMode < NUM_TOWN_MAP_MODES) {
        v0->mode = v1->townMapMode;
    } else {
        v0->mode = TOWN_MAP_MODE_ITEM;
    }

    v0->unlockedHiddenLocations = v1->unlockedHiddenLocations;
    v0->heapID = HEAP_ID_17;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_55, SEQ_NONE, 0);

    return TRUE;
}

int TownMap_Main(ApplicationManager *appMan, int *unused)
{
    TownMapAppData *v0 = ApplicationManager_Data(appMan);

    switch (v0->mainAppState) {
    case TOWN_MAP_APP_STATE_INIT_RESOURCES:
        v0->mainAppState = InitAppResources(v0);
        break;
    case TOWN_MAP_APP_STATE_DISPLAY_GRAPHICS:
        v0->mainAppState = DisplayGraphics(v0);
        break;
    case TOWN_MAP_APP_STATE_WAIT_ENTER_SCREEN_FADE:
        v0->mainAppState = CheckAppEnterScreenFadeDone(v0);
        UpdateGraphics(v0);
        break;
    case TOWN_MAP_APP_STATE_MAIN_LOOP:
        v0->mainAppState = HandlePlayerInput(v0);
        UpdateGraphics(v0);
        break;
    case TOWN_MAP_APP_STATE_WAIT_EXIT_SCREEN_FADE:
        v0->mainAppState = CheckAppExitScreenFadeDone(v0);
        UpdateGraphics(v0);
        break;
    case TOWN_MAP_APP_STATE_CLEANUP:
        v0->mainAppState = CleanupAppResources(v0);
        break;
    case TOWN_MAP_APP_STATE_EXIT:
        return TRUE;
    }

    return FALSE;
}

int TownMap_Exit(ApplicationManager *appMan, int *param1)
{
    TownMapAppData *v1 = ApplicationManager_Data(appMan);

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_17);

    return TRUE;
}

static void TownMapAppVBlankCB(void *param0)
{
    TownMapAppData *v0 = param0;

    if (sAppFunctionSets[v0->mode].vBlankCB != NULL) {
        (sAppFunctionSets[v0->mode].vBlankCB)(v0);
    }

    NNS_GfdDoVramTransfer();

    TownMapApp_TransferOam(v0);
    Bg_RunScheduledUpdates(v0->bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SetVRAMBanks(void)
{
    UnkStruct_02099F80 vramBanks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&vramBanks);
}

static BOOL InitSharedAppResources(TownMapAppData *appData)
{
    switch (appData->appResInitState) {
    case 0:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        if ((appData->context->playerX == 0) && (appData->context->playerY == 0)) {
            appData->playerX = 3;
            appData->playerY = 27;
        } else {
            appData->playerX = appData->context->playerX / 32;
            appData->playerY = appData->context->playerY / 32;
        }

        appData->initialCursorX = appData->playerX;
        appData->initialCursorY = appData->playerY;
        appData->locationNames = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_LOCATION_NAMES, appData->heapID);
        appData->townMapStrings = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TOWN_MAP, appData->heapID);
        appData->hoveredMapName = Strbuf_Init(22, appData->heapID);
        appData->mapMatrixData = MainMapMatrixData_Load(appData->heapID);
        appData->mapBlockList = TownMap_ReadBlockData("data/tmap_block.dat", appData->heapID);
        break;
    case 1:
        SetVRAMBanks();
        appData->bgConfig = BgConfig_New(appData->heapID);
        InitBGLayers(appData, appData->bgConfig);
        LoadBGGraphics(appData);
        EnableTouchPad();
        InitializeTouchPad(4);
        TownMapApp_InitSpriteSystem(appData);
        break;
    case 2:
        SetVBlankCallback(TownMapAppVBlankCB, appData);
        appData->inputHandler = sAppFunctionSets[appData->mode].handleInput;
        appData->appResInitState = 0;
        return TRUE;
    }

    appData->appResInitState++;
    return FALSE;
}

static void CleanupSharedAppResources(TownMapAppData *appData)
{
    DisableTouchPad();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();

    TownMapApp_FreeSpriteSystem(appData);
    FreeTilemapFiles(appData);

    for (int layer = BG_LAYER_MAIN_0; layer < BG_LAYER_MAX; layer++) {
        Bg_FreeTilemapBuffer(appData->bgConfig, layer);
    }

    Heap_Free(appData->bgConfig);
    TownMapApp_FreeTownMapBlockData(appData->mapBlockList);
    MainMapMatrixData_Free(appData->mapMatrixData);
    Strbuf_Free(appData->hoveredMapName);
    MessageLoader_Free(appData->townMapStrings);
    MessageLoader_Free(appData->locationNames);
}

static void UpdateGraphics(TownMapAppData *appData)
{
    sAppFunctionSets[appData->mode].updateSprites(appData);
    TownMapApp_DrawSprites(appData);
}

static void InitBGLayers(TownMapAppData *appData, BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplates[BG_LAYER_MAX] = {
        [BG_LAYER_MAIN_0] = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        [BG_LAYER_MAIN_1] = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        [BG_LAYER_MAIN_2] = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        [BG_LAYER_MAIN_3] = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        [BG_LAYER_SUB_0] = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        [BG_LAYER_SUB_1] = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        [BG_LAYER_SUB_2] = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x2000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x512,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xd000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        [BG_LAYER_SUB_3] = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x2000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x512,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xb000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    int layer = BG_LAYER_MAIN_0;

    for (int i = BG_LAYER_MAIN_0; i < BG_LAYER_MAX; i++) {
        Bg_InitFromTemplate(bgConfig, layer, &(bgTemplates[i]), BG_TYPE_STATIC);
        Bg_ClearTilemap(bgConfig, layer++);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, appData->heapID);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, appData->heapID);
    Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, appData->heapID);
    Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, appData->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, appData->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_1, 32, 0, appData->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_2, 32, 0, appData->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_3, 32, 0, appData->heapID);
}

static void LoadBGGraphics(TownMapAppData *appData)
{
    NARC *townMapGraphicsNarc;

    townMapGraphicsNarc = NARC_ctor(NARC_INDEX_GRAPHIC__TMAP_GRA, appData->heapID);

    App_LoadGraphicMember(appData->bgConfig, appData->heapID, townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 19, BG_LAYER_MAIN_1, GRAPHICSMEMBER_TILES, 0, 0);
    App_LoadGraphicMember(appData->bgConfig, appData->heapID, townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 20, BG_LAYER_SUB_2, GRAPHICSMEMBER_TILES, 0, 0);
    App_LoadGraphicMember(appData->bgConfig, appData->heapID, townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 21, BG_LAYER_SUB_1, GRAPHICSMEMBER_TILES, 0, 0);

    App_LoadGraphicMember(appData->bgConfig, appData->heapID, townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 0, BG_LAYER_MAIN_0, GRAPHICSMEMBER_PALETTE, 0, 0);
    App_LoadGraphicMember(appData->bgConfig, appData->heapID, townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 1, BG_LAYER_SUB_0, GRAPHICSMEMBER_PALETTE, 0, 0);

    appData->topScreenMapFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 24, &appData->fullScreenMap, appData->heapID);
    appData->topScreenBGFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 22, &appData->fullScreenBG, appData->heapID);
    appData->hiddenLocationsBGFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 23, &appData->hiddenLocationsBG, appData->heapID);
    appData->zoomedInBGFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 25, &appData->zoomedInBG, appData->heapID);
    appData->zoomedInMapFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 26, &appData->zoomedInMap, appData->heapID);
    appData->zoomButtonStatesFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 27, &appData->zoomButtonStates, appData->heapID);
    appData->zoomButtonScreenFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 28, &appData->zoomButtonScreen, appData->heapID);
    appData->hiddenLocationsMapFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, 29, &appData->hiddenLocationsMap, appData->heapID);

    NARC_dtor(townMapGraphicsNarc);
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(PLTT_15), appData->heapID);
    Font_LoadTextPalette(PAL_LOAD_SUB_BG, PLTT_OFFSET(PLTT_15), appData->heapID);
}

static void FreeTilemapFiles(TownMapAppData *appData)
{
    Heap_Free(appData->hiddenLocationsMapFile);
    Heap_Free(appData->zoomButtonScreenFile);
    Heap_Free(appData->zoomButtonStatesFile);
    Heap_Free(appData->zoomedInMapFile);
    Heap_Free(appData->zoomedInBGFile);
    Heap_Free(appData->hiddenLocationsBGFile);
    Heap_Free(appData->topScreenBGFile);
    Heap_Free(appData->topScreenMapFile);
}

static int InitAppResources(TownMapAppData *appData)
{
    if (InitSharedAppResources(appData) != TRUE) {
        return TOWN_MAP_APP_STATE_INIT_RESOURCES;
    }

    sAppFunctionSets[appData->mode].initResources(appData);
    return TOWN_MAP_APP_STATE_DISPLAY_GRAPHICS;
}

static int DisplayGraphics(TownMapAppData *appData)
{
    if (sAppFunctionSets[appData->mode].displayGraphics(appData) != TRUE) {
        return TOWN_MAP_APP_STATE_DISPLAY_GRAPHICS;
    }

    sAppFunctionSets[appData->mode].fadeScreensAppEnter(appData);
    return TOWN_MAP_APP_STATE_WAIT_ENTER_SCREEN_FADE;
}

static int CheckAppEnterScreenFadeDone(TownMapAppData *appData)
{
    if (!IsScreenFadeDone()) {
        return TOWN_MAP_APP_STATE_WAIT_ENTER_SCREEN_FADE;
    }

    return TOWN_MAP_APP_STATE_MAIN_LOOP;
}

static int HandlePlayerInput(TownMapAppData *param0)
{
    if (param0->inputHandler(param0) != TRUE) {
        sAppFunctionSets[param0->mode].unk_14(param0);
        return TOWN_MAP_APP_STATE_MAIN_LOOP;
    }

    sAppFunctionSets[param0->mode].fadeScreensAppExit(param0);
    return TOWN_MAP_APP_STATE_WAIT_EXIT_SCREEN_FADE;
}

static int CheckAppExitScreenFadeDone(TownMapAppData *param0)
{
    if (IsScreenFadeDone()) {
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_NONE, 31, 0);
        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        return TOWN_MAP_APP_STATE_CLEANUP;
    }

    sAppFunctionSets[param0->mode].unk_14(param0);
    return TOWN_MAP_APP_STATE_WAIT_EXIT_SCREEN_FADE;
}

static int CleanupAppResources(TownMapAppData *param0)
{
    sAppFunctionSets[param0->mode].cleanup(param0);

    CleanupSharedAppResources(param0);
    return TOWN_MAP_APP_STATE_EXIT;
}
