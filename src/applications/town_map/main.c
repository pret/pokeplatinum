#include "applications/town_map/main.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map.h"

#include "applications/town_map/graphics.h"
#include "applications/town_map/map_blocks.h"
#include "applications/town_map/sprites.h"

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
#include "string_gf.h"
#include "system.h"
#include "touch_pad.h"
#include "unk_0208C098.h"

#include "res/graphics/town_map/town_map_graphics.naix"

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

typedef struct TownMapAppFunctionSet {
    TownMapAppFunc initResources;
    TownMapAppFunc displayGraphics;
    TownMapAppFunc fadeScreensAppEnter;
    TownMapAppFunc fadeScreensAppExit;
    TownMapAppFunc handleInput;
    TownMapAppFunc updateGraphics;
    TownMapAppFunc updateSprites;
    TownMapAppFunc freeResources;
    TownMapAppFunc vBlankCB;
} TownMapAppFunctionSet;

static void TownMapAppVBlankCB(void *appData);
static void SetVRAMBanks(void);
static BOOL InitDefaultAppResources(TownMapAppData *appData);
static void InitBGLayers(TownMapAppData *appData, BgConfig *bgConfig);
static void LoadBGGraphics(TownMapAppData *appData);
static void FreeTilemapFiles(TownMapAppData *appData);
static void FreeDefaultAppResources(TownMapAppData *appData);
static void UpdateGraphics(TownMapAppData *appData);
static enum TownMapAppState InitAppResources(TownMapAppData *appData);
static enum TownMapAppState DisplayGraphics(TownMapAppData *appData);
static enum TownMapAppState CheckAppEnterScreenFadeDone(TownMapAppData *appData);
static enum TownMapAppState HandlePlayerInput(TownMapAppData *appData);
static enum TownMapAppState CheckAppExitScreenFadeDone(TownMapAppData *appData);
static enum TownMapAppState FreeAppResources(TownMapAppData *appData);

const TownMapAppFunctionSet sAppFunctionSets[NUM_TOWN_MAP_MODES] = {
    [TOWN_MAP_MODE_ITEM] = {
        .initResources = TownMap_CreateGraphicsMan,
        .displayGraphics = TownMap_LoadGraphics,
        .fadeScreensAppEnter = TownMap_FadeInBothScreens,
        .fadeScreensAppExit = TownMap_FadeOutBothScreens,
        .handleInput = TownMap_HandleInput_Item,
        .updateGraphics = TownMap_UpdateBottomScreen,
        .updateSprites = TownMap_UpdateFlyLocationSprites,
        .freeResources = TownMap_FreeGraphics,
        .vBlankCB = TownMap_UpdateDisplayedLocationInfo,
    },
    [TOWN_MAP_MODE_FLY] = {
        .initResources = TownMap_CreateGraphicsMan,
        .displayGraphics = TownMap_LoadGraphics,
        .fadeScreensAppEnter = TownMap_FadeInBothScreens,
        .fadeScreensAppExit = TownMap_FadeOutBothScreens,
        .handleInput = TownMap_HandleInput_Fly,
        .updateGraphics = TownMap_UpdateBottomScreen,
        .updateSprites = TownMap_UpdateFlyLocationSprites,
        .freeResources = TownMap_FreeGraphics,
        .vBlankCB = TownMap_UpdateDisplayedLocationInfo,
    },
    [TOWN_MAP_MODE_WALL_MAP] = {
        .initResources = TownMap_CreateGraphicsMan,
        .displayGraphics = TownMap_LoadGraphics,
        .fadeScreensAppEnter = TownMap_FadeInTopScreen,
        .fadeScreensAppExit = TownMap_FadeOutTopScreen,
        .handleInput = TownMap_HandleInput_WallMap,
        .updateGraphics = TownMap_UpdateBottomScreen,
        .updateSprites = TownMap_UpdateFlyLocationSprites,
        .freeResources = TownMap_FreeGraphics,
        .vBlankCB = TownMap_UpdateDisplayedLocationInfo,
    },
};

BOOL TownMap_Init(ApplicationManager *appMan, int *unused)
{
    TownMapAppData *appData = NULL;
    TownMapContext *ctx = ApplicationManager_Args(appMan);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_TOWN_MAP, HEAP_SIZE_TOWN_MAP);

    appData = ApplicationManager_NewData(appMan, sizeof(TownMapAppData), HEAP_ID_TOWN_MAP);
    memset(appData, 0, sizeof(TownMapAppData));
    appData->context = ctx;

    if (ctx->townMapMode < NUM_TOWN_MAP_MODES) {
        appData->mode = ctx->townMapMode;
    } else {
        appData->mode = TOWN_MAP_MODE_ITEM;
    }

    appData->unlockedHiddenLocations = ctx->unlockedHiddenLocations;
    appData->heapID = HEAP_ID_TOWN_MAP;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_55, SEQ_NONE, 0);

    return TRUE;
}

BOOL TownMap_Main(ApplicationManager *appMan, int *unused)
{
    TownMapAppData *appData = ApplicationManager_Data(appMan);

    switch (appData->mainAppState) {
    case TOWN_MAP_APP_STATE_INIT_RESOURCES:
        appData->mainAppState = InitAppResources(appData);
        break;
    case TOWN_MAP_APP_STATE_DISPLAY_GRAPHICS:
        appData->mainAppState = DisplayGraphics(appData);
        break;
    case TOWN_MAP_APP_STATE_WAIT_ENTER_SCREEN_FADE:
        appData->mainAppState = CheckAppEnterScreenFadeDone(appData);
        UpdateGraphics(appData);
        break;
    case TOWN_MAP_APP_STATE_MAIN_LOOP:
        appData->mainAppState = HandlePlayerInput(appData);
        UpdateGraphics(appData);
        break;
    case TOWN_MAP_APP_STATE_WAIT_EXIT_SCREEN_FADE:
        appData->mainAppState = CheckAppExitScreenFadeDone(appData);
        UpdateGraphics(appData);
        break;
    case TOWN_MAP_APP_STATE_CLEANUP:
        appData->mainAppState = FreeAppResources(appData);
        break;
    case TOWN_MAP_APP_STATE_EXIT:
        return TRUE;
    }

    return FALSE;
}

BOOL TownMap_Exit(ApplicationManager *appMan, int *unused)
{
    TownMapAppData *appData = ApplicationManager_Data(appMan);

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_TOWN_MAP);

    return TRUE;
}

static void TownMapAppVBlankCB(void *_appData)
{
    TownMapAppData *appData = _appData;

    if (sAppFunctionSets[appData->mode].vBlankCB != NULL) {
        sAppFunctionSets[appData->mode].vBlankCB(appData);
    }

    NNS_GfdDoVramTransfer();

    TownMap_TransferOam(appData);
    Bg_RunScheduledUpdates(appData->bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SetVRAMBanks(void)
{
    GXBanks vramBanks = {
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

static BOOL InitDefaultAppResources(TownMapAppData *appData)
{
    switch (appData->appResInitState) {
    case 0:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        if (appData->context->playerX == 0 && appData->context->playerZ == 0) {
            appData->playerX = 3;
            appData->playerZ = 27;
        } else {
            appData->playerX = appData->context->playerX / MAP_TILES_COUNT_X;
            appData->playerZ = appData->context->playerZ / MAP_TILES_COUNT_Z;
        }

        appData->initialCursorX = appData->playerX;
        appData->initialCursorZ = appData->playerZ;
        appData->locationNames = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_LOCATION_NAMES, appData->heapID);
        appData->townMapStrings = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TOWN_MAP, appData->heapID);
        appData->hoveredMapName = String_Init(22, appData->heapID);
        appData->mainMapMatrixData = MainMapMatrixData_Load(appData->heapID);
        appData->mapBlockList = TownMap_ReadBlocks("data/tmap_block.dat", appData->heapID);
        break;
    case 1:
        SetVRAMBanks();
        appData->bgConfig = BgConfig_New(appData->heapID);
        InitBGLayers(appData, appData->bgConfig);
        LoadBGGraphics(appData);
        EnableTouchPad();
        InitializeTouchPad(4);
        TownMap_InitSpriteSystem(appData);
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

static void FreeDefaultAppResources(TownMapAppData *appData)
{
    DisableTouchPad();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();

    TownMap_FreeSpriteSystem(appData);
    FreeTilemapFiles(appData);

    for (int layer = BG_LAYER_MAIN_0; layer < BG_LAYER_MAX; layer++) {
        Bg_FreeTilemapBuffer(appData->bgConfig, layer);
    }

    Heap_Free(appData->bgConfig);
    TownMap_FreeBlocks(appData->mapBlockList);
    MainMapMatrixData_Free(appData->mainMapMatrixData);
    String_Free(appData->hoveredMapName);
    MessageLoader_Free(appData->townMapStrings);
    MessageLoader_Free(appData->locationNames);
}

static void UpdateGraphics(TownMapAppData *appData)
{
    sAppFunctionSets[appData->mode].updateSprites(appData);
    TownMap_DrawSprites(appData);
}

static void InitBGLayers(TownMapAppData *appData, BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_0,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_2D
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
    NARC *townMapGraphicsNarc = NARC_ctor(NARC_INDEX_GRAPHIC__TMAP_GRA, appData->heapID);

    App_LoadGraphicMember(appData->bgConfig, appData->heapID, townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, top_screen_map_tiles_NCGR, BG_LAYER_MAIN_1, GRAPHICSMEMBER_TILES, 0, 0);
    App_LoadGraphicMember(appData->bgConfig, appData->heapID, townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, bottom_screen_map_tiles_NCGR, BG_LAYER_SUB_2, GRAPHICSMEMBER_TILES, 0, 0);
    App_LoadGraphicMember(appData->bgConfig, appData->heapID, townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, bottom_screen_button_tiles_NCGR, BG_LAYER_SUB_1, GRAPHICSMEMBER_TILES, 0, 0);

    App_LoadGraphicMember(appData->bgConfig, appData->heapID, townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, top_screen_map_NCLR, BG_LAYER_MAIN_0, GRAPHICSMEMBER_PALETTE, 0, 0);
    App_LoadGraphicMember(appData->bgConfig, appData->heapID, townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, bottom_screen_bg_NCLR, BG_LAYER_SUB_0, GRAPHICSMEMBER_PALETTE, 0, 0);

    appData->topScreenMapFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, top_screen_region_map_tilemap_NSCR, &appData->fullScreenMap, appData->heapID);
    appData->topScreenBGFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, top_screen_region_bg_tilemap_NSCR, &appData->fullScreenBG, appData->heapID);
    appData->hiddenLocationsBGFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, hidden_locations_top_screen_NSCR, &appData->hiddenLocationsFullScreenMapGraphics, appData->heapID);
    appData->zoomedInBGFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, bottom_screen_region_bg_tilemap_NSCR, &appData->zoomedInBG, appData->heapID);
    appData->zoomedInMapFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, bottom_screen_region_map_tilemap_NSCR, &appData->zoomedInMap, appData->heapID);
    appData->zoomButtonStatesFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, zoom_button_states_NSCR, &appData->zoomButtonStates, appData->heapID);
    appData->zoomButtonScreenFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, bottom_screen_zoom_button_screen_NSCR, &appData->zoomButtonScreen, appData->heapID);
    appData->hiddenLocationsMapFile = App_LoadScreenData(townMapGraphicsNarc, NARC_INDEX_GRAPHIC__TMAP_GRA, hidden_location_bottom_screen_NSCR, &appData->hiddenLocationsZoomedInMapGraphics, appData->heapID);

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

static enum TownMapAppState InitAppResources(TownMapAppData *appData)
{
    if (InitDefaultAppResources(appData) != TRUE) {
        return TOWN_MAP_APP_STATE_INIT_RESOURCES;
    }

    sAppFunctionSets[appData->mode].initResources(appData);
    return TOWN_MAP_APP_STATE_DISPLAY_GRAPHICS;
}

static enum TownMapAppState DisplayGraphics(TownMapAppData *appData)
{
    if (sAppFunctionSets[appData->mode].displayGraphics(appData) != TRUE) {
        return TOWN_MAP_APP_STATE_DISPLAY_GRAPHICS;
    }

    sAppFunctionSets[appData->mode].fadeScreensAppEnter(appData);
    return TOWN_MAP_APP_STATE_WAIT_ENTER_SCREEN_FADE;
}

static enum TownMapAppState CheckAppEnterScreenFadeDone(TownMapAppData *appData)
{
    if (!IsScreenFadeDone()) {
        return TOWN_MAP_APP_STATE_WAIT_ENTER_SCREEN_FADE;
    }

    return TOWN_MAP_APP_STATE_MAIN_LOOP;
}

static enum TownMapAppState HandlePlayerInput(TownMapAppData *appData)
{
    if (appData->inputHandler(appData) != TRUE) {
        sAppFunctionSets[appData->mode].updateGraphics(appData);
        return TOWN_MAP_APP_STATE_MAIN_LOOP;
    }

    sAppFunctionSets[appData->mode].fadeScreensAppExit(appData);
    return TOWN_MAP_APP_STATE_WAIT_EXIT_SCREEN_FADE;
}

static enum TownMapAppState CheckAppExitScreenFadeDone(TownMapAppData *appData)
{
    if (IsScreenFadeDone()) {
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_NONE, 31, 0);
        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        return TOWN_MAP_APP_STATE_CLEANUP;
    }

    sAppFunctionSets[appData->mode].updateGraphics(appData);
    return TOWN_MAP_APP_STATE_WAIT_EXIT_SCREEN_FADE;
}

static enum TownMapAppState FreeAppResources(TownMapAppData *appData)
{
    sAppFunctionSets[appData->mode].freeResources(appData);

    FreeDefaultAppResources(appData);
    return TOWN_MAP_APP_STATE_EXIT;
}
