#include "applications/frontier/records/main.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_frontier.h"

#include "struct_decls/struct_0202D750_decl.h"
#include "struct_defs/battle_frontier.h"
#include "struct_defs/frontier_records_app_args.h"

#include "applications/frontier/records/windows.h"

#include "battle_frontier_stats.h"
#include "battle_hall_win_records.h"
#include "battle_tower_modes.h"
#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "narc_frontier_bg.h"
#include "overlay_manager.h"
#include "palette.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_0202D05C.h"
#include "unk_0202FF4C.h"
#include "unk_020302D0.h"
#include "unk_02030494.h"
#include "unk_0205DFC4.h"

#include "res/graphics/poketch/poketch.naix"
#include "res/text/bank/battle_frontier_records.h"

typedef struct FrontierRecordsApp {
    ApplicationManager *appMan;
    u8 subState;
    u8 challengeType;
    u8 facility;
    u8 unk_07;
    u16 species;
    u16 unk_0A;
    BgConfig *bgConfig;
    Window windows[16];
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *displayStr;
    String *fmtStr;
    PaletteData *plttData;
    const Options *options;
    SaveData *saveData;
    BattleFrontier *frontier;
} FrontierRecordsApp;

static BOOL State_FadeInApp(FrontierRecordsApp *app);
static BOOL State_ViewRecord(FrontierRecordsApp *app);
static BOOL State_FadeOutApp(FrontierRecordsApp *app);
static void VBlankCallback(void *data);
static void SetGXBanks(void);
static void InitBackgrounds(BgConfig *bgConfig);
static void LoadBackgrounds(FrontierRecordsApp *app);
static void FreeBackgrounds(BgConfig *app);
static void ChangeState(FrontierRecordsApp *app, int *state, int newState);
static u8 GetWindowGroup(u8 facility);
static void LoadMainBackground(FrontierRecordsApp *app, enum BgLayer bgLayer);
static void LoadMainBackgroundPalette(void);
static void LoadSubBackground(FrontierRecordsApp *app, enum BgLayer bgLayer);
static u8 PrintMessage(FrontierRecordsApp *app, Window *window, int entryID, u32 x, u32 y, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, u8 fillBackground, int alignment);
static u8 PrintBasicMessage(FrontierRecordsApp *app, Window *window, int entryID, u8 font);
static void SetStringTemplateNumber(FrontierRecordsApp *app, u32 idx, s32 num);
static void DisplayRecords(FrontierRecordsApp *app);
static void DisplayBattleFactoryLevel50Record(FrontierRecordsApp *app);
static void DisplayBattleFactoryOpenLevelRecord(FrontierRecordsApp *app);
static u32 GetBattleFactoryLatestStreakEntryID(FrontierRecordsApp *app, u8 openLevel);
static void DisplayBattleHallRecord(FrontierRecordsApp *app);
static void SetStringTemplateSpecies(FrontierRecordsApp *app);
static void DisplayBattleCastleRecord(FrontierRecordsApp *app);
static u32 GetBattleCastleLatestStreakEntryID(FrontierRecordsApp *app);
static void DisplayBattleArcadeRecord(FrontierRecordsApp *app);
static u32 GetBattleArcadeLatestStreakEntryID(FrontierRecordsApp *app);
static void DisplayBattleTowerSoloRecord(FrontierRecordsApp *app);
static void DisplayBattleTowerMultiRecord(FrontierRecordsApp *app);
static u32 GetBattleTowerLatestStreakEntryID(FrontierRecordsApp *app, u8 towerMode);

int BattleFrontierRecordsApp_Init(ApplicationManager *appMan, int *state)
{
    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_FRONTIER_RECORD_APP, HEAP_SIZE_FRONTIER_RECORDS_APP);
    FrontierRecordsApp *app = ApplicationManager_NewData(appMan, sizeof(FrontierRecordsApp), HEAP_ID_FRONTIER_RECORD_APP);
    memset(app, 0, sizeof(FrontierRecordsApp));

    app->appMan = appMan;
    app->bgConfig = BgConfig_New(HEAP_ID_FRONTIER_RECORD_APP);

    FrontierRecordsAppArgs *args = ApplicationManager_Args(appMan);

    app->saveData = args->saveData;
    app->frontier = SaveData_GetBattleFrontier(app->saveData);
    app->challengeType = args->challengeType;
    app->facility = args->facility;
    app->species = args->species;
    app->options = SaveData_GetOptions(app->saveData);

    LoadBackgrounds(app);

    app->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_FRONTIER_RECORDS, HEAP_ID_FRONTIER_RECORD_APP);
    app->strTemplate = StringTemplate_Default(HEAP_ID_FRONTIER_RECORD_APP);
    app->displayStr = String_Init(800, HEAP_ID_FRONTIER_RECORD_APP);
    app->fmtStr = String_Init(800, HEAP_ID_FRONTIER_RECORD_APP);

    Font_LoadTextPalette(0, 13 * PALETTE_SIZE_BYTES, HEAP_ID_FRONTIER_RECORD_APP);
    Font_LoadScreenIndicatorsPalette(0, 12 * PALETTE_SIZE_BYTES, HEAP_ID_FRONTIER_RECORD_APP);
    FrontierRecordsApp_InitWindows(app->bgConfig, app->windows, GetWindowGroup(app->facility));
    SetVBlankCallback(VBlankCallback, app);
    *state = 0;

    return TRUE;
}

int BattleFrontierRecordsApp_Main(ApplicationManager *appMan, int *state)
{
    FrontierRecordsApp *app = ApplicationManager_Data(appMan);

    switch (*state) {
    case 0:
        if (State_FadeInApp(app) == TRUE) {
            ChangeState(app, state, 1);
        }
        break;
    case 1:
        if (State_ViewRecord(app) == TRUE) {
            ChangeState(app, state, 2);
        }
        break;
    case 2:
        if (State_FadeOutApp(app) == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

int BattleFrontierRecordsApp_Exit(ApplicationManager *appMan, int *state)
{
    FrontierRecordsApp *app = ApplicationManager_Data(appMan);

    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_BG);
    PaletteData_Free(app->plttData);

    app->plttData = NULL;

    MessageLoader_Free(app->msgLoader);
    StringTemplate_Free(app->strTemplate);
    String_Free(app->displayStr);
    String_Free(app->fmtStr);

    FrontierRecordsApp_FreeWindows(app->windows, GetWindowGroup(app->facility));
    FreeBackgrounds(app->bgConfig);

    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_FRONTIER_RECORD_APP);

    return TRUE;
}

static BOOL State_FadeInApp(FrontierRecordsApp *app)
{
    switch (app->subState) {
    case 0:
        app->subState++;
        break;
    case 1:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_FRONTIER_RECORD_APP);
        DisplayRecords(app);
        app->subState++;
        break;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_ViewRecord(FrontierRecordsApp *app)
{
    switch (app->subState) {
    case 0:
        app->subState++;
        break;
    case 1:
        if (JOY_HELD(PAD_BUTTON_A) || JOY_HELD(PAD_BUTTON_B)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_FadeOutApp(FrontierRecordsApp *app)
{
    switch (app->subState) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_FRONTIER_RECORD_APP);
        app->subState++;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void VBlankCallback(void *data)
{
    FrontierRecordsApp *app = data;

    if (app->plttData != NULL) {
        PaletteData_CommitFadedBuffers(app->plttData);
    }

    Bg_RunScheduledUpdates(app->bgConfig);
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SetGXBanks(void)
{
    GXBanks banks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&banks);
}

static void InitBackgrounds(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplate = {
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
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &bgTemplate, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_FRONTIER_RECORD_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate bgTemplate2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x1000,
        .charBase = GX_BG_CHARBASE_0x0c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplate2, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_FRONTIER_RECORD_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    BgTemplate bgTemplateSub = {
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
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_2, &bgTemplateSub, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_SUB_2, 32, 0, HEAP_ID_FRONTIER_RECORD_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_2);

    G2_SetBG0Priority(0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
}

static void LoadBackgrounds(FrontierRecordsApp *app)
{
    SetGXBanks();
    InitBackgrounds(app->bgConfig);

    app->plttData = PaletteData_New(HEAP_ID_FRONTIER_RECORD_APP);

    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_FRONTIER_RECORD_APP);
    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_FRONTIER_RECORD_APP);

    LoadMainBackground(app, BG_LAYER_MAIN_2);
    LoadMainBackgroundPalette();
    LoadSubBackground(app, BG_LAYER_SUB_2);
}

static void FreeBackgrounds(BgConfig *app)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);

    Bg_FreeTilemapBuffer(app, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(app, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(app, BG_LAYER_SUB_2);
    Heap_Free(app);
}

static void ChangeState(FrontierRecordsApp *app, int *state, int newState)
{
    app->subState = 0;
    *state = newState;
}

static u8 GetWindowGroup(u8 facility)
{
    u8 windowGroup = 0;

    switch (facility) {
    case FRONTIER_RECORDS_APP_FACTORY:
    case 3:
        windowGroup = WINDOW_GROUP_FACTORY;
        break;
    case FRONTIER_RECORDS_APP_HALL:
        windowGroup = WINDOW_GROUP_HALL;
        break;
    case FRONTIER_RECORDS_APP_CASTLE:
        windowGroup = WINDOW_GROUP_CASTLE;
        break;
    case FRONTIER_RECORDS_APP_ARCADE:
        windowGroup = WINDOW_GROUP_ARCADE;
        break;
    case FRONTIER_RECORDS_APP_TOWER:
        windowGroup = WINDOW_GROUP_TOWER;
        break;
    }

    return windowGroup;
}

static void LoadMainBackground(FrontierRecordsApp *app, enum BgLayer bgLayer)
{
    NARC *narc = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_FRONTIER_RECORD_APP);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, BATTLE_FRONTIER_RECORDS_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_FRONTIER_RECORD_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, BATTLE_FRONTIER_RECORDS_APP_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_FRONTIER_RECORD_APP);
    NARC_dtor(narc);
}

static void LoadMainBackgroundPalette(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_FRONTIER_RECORDS_APP_PLTT, &plttData, HEAP_ID_FRONTIER_RECORD_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 2);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 2);
    Heap_Free(pltt);
}

static void LoadSubBackground(FrontierRecordsApp *app, enum BgLayer bgLayer)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__POKETCH, HEAP_ID_FRONTIER_RECORD_APP);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, unavailable_bg_tiles_NCGR_lz, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_FRONTIER_RECORD_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, unavailable_NSCR_lz, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_FRONTIER_RECORD_APP);
    Graphics_LoadPaletteFromOpenNARC(narc, NARC_INDEX_GRAPHIC__POKETCH, PAL_LOAD_SUB_BG, generic_bg_tiles_NCLR, PALETTE_SIZE_BYTES, HEAP_ID_FRONTIER_RECORD_APP);
    NARC_dtor(narc);
}

static u8 PrintMessage(FrontierRecordsApp *app, Window *window, int entryID, u32 x, u32 y, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, u8 fillBackground, int alignment)
{
    if (fillBackground) {
        Window_FillTilemap(window, bgColor);
    }
    MessageLoader_GetString(app->msgLoader, entryID, app->fmtStr);
    StringTemplate_Format(app->strTemplate, app->displayStr, app->fmtStr);

    switch (alignment) {
    case TEXT_ALIGN_CENTER:
        x -= (Font_CalcStringWidth(FONT_SYSTEM, app->displayStr, 0) + 1) / 2;
        break;
    case TEXT_ALIGN_RIGHT:
        x -= Font_CalcStringWidth(FONT_SYSTEM, app->displayStr, 0);
        break;
    }

    return Text_AddPrinterWithParamsAndColor(window, font, app->displayStr, x, y, TEXT_SPEED_INSTANT, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);
}

static u8 PrintBasicMessage(FrontierRecordsApp *app, Window *window, int entryID, u8 font)
{
    return PrintMessage(app, window, entryID, 0, 0, 1, 2, 0, FONT_SYSTEM, font, TEXT_ALIGN_LEFT);
}

static void SetStringTemplateNumber(FrontierRecordsApp *app, u32 idx, s32 num)
{
    StringTemplate_SetNumber(app->strTemplate, idx, num, 4, PADDING_MODE_SPACES, CHARSET_MODE_EN);
}

static void DisplayRecords(FrontierRecordsApp *app)
{
    switch (app->facility) {
    case FRONTIER_RECORDS_APP_FACTORY:
    case 3:
        DisplayBattleFactoryLevel50Record(app);
        DisplayBattleFactoryOpenLevelRecord(app);
        break;
    case FRONTIER_RECORDS_APP_HALL:
        DisplayBattleHallRecord(app);
        break;
    case FRONTIER_RECORDS_APP_CASTLE:
        DisplayBattleCastleRecord(app);
        break;
    case FRONTIER_RECORDS_APP_ARCADE:
        DisplayBattleArcadeRecord(app);
        break;
    case FRONTIER_RECORDS_APP_TOWER:
        if (app->challengeType == FRONTIER_CHALLENGE_SINGLE || app->challengeType == FRONTIER_CHALLENGE_DOUBLE) {
            DisplayBattleTowerSoloRecord(app);
        } else {
            DisplayBattleTowerMultiRecord(app);
        }
        break;
    default:
        DisplayBattleArcadeRecord(app);
        break;
    }
}

static void DisplayBattleFactoryLevel50Record(FrontierRecordsApp *app)
{
    Window_FillTilemap(&app->windows[WINDOW_HEADER], 0);
    PrintMessage(app, &app->windows[WINDOW_HEADER], BattleFrontierRecords_Text_BattleFactory, 8, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_LEFT);

    int entryID;
    u32 x;
    if (app->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        entryID = BattleFrontierRecords_Text_SingleRecord;
        x = 216;
    } else if (app->challengeType == FRONTIER_CHALLENGE_DOUBLE) {
        entryID = BattleFrontierRecords_Text_DoubleRecord;
        x = 216;
    } else {
        entryID = BattleFrontierRecords_Text_MultiRecord;
        x = 216;
    }

    PrintMessage(app, &app->windows[WINDOW_HEADER], entryID, x, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_HEADER]);

    PrintBasicMessage(app, &app->windows[WINDOW_FACTORY_LEVEL_50_HEADER], BattleFrontierRecords_Text_Level50, FONT_MESSAGE);
    PrintMessage(app, &app->windows[WINDOW_FACTORY_LEVEL_50_HEADER], BattleFrontierRecords_Text_RentalTrade, 224, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_FACTORY_LEVEL_50_HEADER]);

    PrintBasicMessage(app, &app->windows[WINDOW_FACTORY_LEVEL_50_LATEST], GetBattleFactoryLatestStreakEntryID(app, FALSE), FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetFactoryLatestStreakIdx(FALSE, app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_FACTORY_LEVEL_50_LATEST], BattleFrontierRecords_Text_WinStreak, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetFactoryLatestTradeCountIndex(0, app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_FACTORY_LEVEL_50_LATEST], BattleFrontierRecords_Text_Number, 224, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_FACTORY_LEVEL_50_LATEST]);

    PrintBasicMessage(app, &app->windows[WINDOW_FACTORY_LEVEL_50_RECORD], BattleFrontierRecords_Text_Record, FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetFactoryRecordStreakIdx(FALSE, app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_FACTORY_LEVEL_50_RECORD], BattleFrontierRecords_Text_WinStreak, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetFactoryRecordTradeCountIndex(0, app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_FACTORY_LEVEL_50_RECORD], BattleFrontierRecords_Text_Number, 224, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_FACTORY_LEVEL_50_RECORD]);
}

static void DisplayBattleFactoryOpenLevelRecord(FrontierRecordsApp *app)
{
    PrintBasicMessage(app, &app->windows[WINDOW_FACTORY_OPEN_LEVEL_HEADER], BattleFrontierRecords_Text_OpenLevel, FONT_MESSAGE);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_FACTORY_OPEN_LEVEL_HEADER]);

    PrintBasicMessage(app, &app->windows[WINDOW_FACTORY_OPEN_LEVEL_LATEST], GetBattleFactoryLatestStreakEntryID(app, TRUE), FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetFactoryLatestStreakIdx(TRUE, app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_FACTORY_OPEN_LEVEL_LATEST], BattleFrontierRecords_Text_WinStreak, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetFactoryLatestTradeCountIndex(1, app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_FACTORY_OPEN_LEVEL_LATEST], BattleFrontierRecords_Text_Number, 224, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_FACTORY_OPEN_LEVEL_LATEST]);

    PrintBasicMessage(app, &app->windows[WINDOW_FACTORY_OPEN_LEVEL_RECORD], BattleFrontierRecords_Text_Record, FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetFactoryRecordStreakIdx(TRUE, app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_FACTORY_OPEN_LEVEL_RECORD], BattleFrontierRecords_Text_WinStreak, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetFactoryRecordTradeCountIndex(1, app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_FACTORY_OPEN_LEVEL_RECORD], BattleFrontierRecords_Text_Number, 224, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_FACTORY_OPEN_LEVEL_RECORD]);
}

static u32 GetBattleFactoryLatestStreakEntryID(FrontierRecordsApp *app, u8 openLevel)
{
    u32 v1 = !openLevel ? STAT_FACTORY_50_WFC_STREAK_ACTIVE : STAT_FACTORY_OPEN_WFC_STREAK_ACTIVE;

    u8 streakIsActive;
    if (app->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
        streakIsActive = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(app->saveData), v1, BattleFrontierStats_GetHostFriendIdx(v1));
    } else {
        streakIsActive = sub_020300E0(sub_020300F4(app->saveData), 10, (openLevel * 4) + app->challengeType, NULL);
    }

    if (streakIsActive == TRUE) {
        return BattleFrontierRecords_Text_Current;
    }

    return BattleFrontierRecords_Text_Prev;
}

static void DisplayBattleHallRecord(FrontierRecordsApp *app)
{
    Window_FillTilemap(&app->windows[WINDOW_HEADER], 0);
    PrintMessage(app, &app->windows[WINDOW_HEADER], BattleFrontierRecords_Text_BattleHall, 8, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_LEFT);

    int entryID;
    u32 x;
    if (app->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        entryID = BattleFrontierRecords_Text_SingleRecord;
        x = 216;
    } else if (app->challengeType == FRONTIER_CHALLENGE_DOUBLE) {
        entryID = BattleFrontierRecords_Text_DoubleRecord;
        x = 216;
    } else {
        entryID = BattleFrontierRecords_Text_MultiRecord;
        x = 216;
    }

    PrintMessage(app, &app->windows[WINDOW_HEADER], entryID, x, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_HEADER]);

    SetStringTemplateSpecies(app);
    PrintMessage(app, &app->windows[WINDOW_HALL_MON_NAME], BattleFrontierRecords_Text_MonsRecord, 0, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_LEFT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_HALL_MON_NAME]);

    PrintBasicMessage(app, &app->windows[WINDOW_HALL_LATEST], BattleFrontierRecords_Text_Prev, FONT_MESSAGE);

    u16 streak;
    if (app->species != BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(app->saveData), BattleFrontierStats_GetHallLatestSpeciesIndex(app->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetHallLatestSpeciesIndex(app->challengeType)))) {
        streak = 0;
    } else {
        streak = BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetHallLatestStreakIndex(app->challengeType), 0xFF);
    }

    SetStringTemplateNumber(app, 0, streak);
    PrintMessage(app, &app->windows[WINDOW_HALL_LATEST], BattleFrontierRecords_Text_WinStreak, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_HALL_LATEST]);

    PrintBasicMessage(app, &app->windows[WINDOW_HALL_RECORD], BattleFrontierRecords_Text_Record, FONT_MESSAGE);

    int resultCode;
    BattleHallWinRecords *records = BattleHallWinRecords_Get(app->saveData, HEAP_ID_FIELD2, &resultCode);
    if (resultCode != LOAD_RESULT_OK) {
        streak = 0;
    } else {
        streak = BattleHallWinRecords_GetRecordForSpecies(app->saveData, records, BattleFrontierStats_GetHallRecordStreakIndex(app->challengeType), app->species);
    }

    if (records != NULL) {
        Heap_Free(records);
    }

    SetStringTemplateNumber(app, 0, streak);
    PrintMessage(app, &app->windows[WINDOW_HALL_RECORD], BattleFrontierRecords_Text_WinStreak, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_HALL_RECORD]);
}

static void SetStringTemplateSpecies(FrontierRecordsApp *app)
{
    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_FRONTIER_RECORD_APP);
    String *string = MessageLoader_GetNewString(loader, app->species);

    MessageLoader_Free(loader);
    StringTemplate_SetString(app->strTemplate, 0, string, 0, 0, GAME_LANGUAGE);
    String_Free(string);
}

static void DisplayBattleCastleRecord(FrontierRecordsApp *app)
{
    Window_FillTilemap(&app->windows[WINDOW_HEADER], 0);
    PrintMessage(app, &app->windows[WINDOW_HEADER], BattleFrontierRecords_Text_BattleCastle, 8, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_LEFT);

    int entryID;
    u32 x;
    if (app->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        entryID = BattleFrontierRecords_Text_SingleRecord;
        x = 216;
    } else if (app->challengeType == FRONTIER_CHALLENGE_DOUBLE) {
        entryID = BattleFrontierRecords_Text_DoubleRecord;
        x = 216;
    } else {
        entryID = BattleFrontierRecords_Text_MultiRecord;
        x = 216;
    }

    PrintMessage(app, &app->windows[WINDOW_HEADER], entryID, x, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_HEADER]);

    PrintMessage(app, &app->windows[WINDOW_CASTLE_POINTS], BattleFrontierRecords_Text_CastlePoints, 96, 0, 1, 2, 0, FONT_SYSTEM, TRUE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_CASTLE_POINTS]);

    PrintBasicMessage(app, &app->windows[WINDOW_CASTLES_LATEST], GetBattleCastleLatestStreakEntryID(app), FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetCastleLatestStreakIndex(app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_CASTLES_LATEST], BattleFrontierRecords_Text_WinStreakTemplate, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(app->saveData), BattleFrontierStats_GetCastleLatestCPIndex(app->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(app->challengeType))));
    PrintMessage(app, &app->windows[WINDOW_CASTLES_LATEST], BattleFrontierRecords_Text_CP, 224, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_CASTLES_LATEST]);

    PrintBasicMessage(app, &app->windows[WINDOW_CASTLES_RECORD], BattleFrontierRecords_Text_Record, FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetCastleRecordStreakIndex(app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_CASTLES_RECORD], BattleFrontierRecords_Text_WinStreakTemplate, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(app->saveData), BattleFrontierStats_GetCastleRecordCPIndex(app->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleRecordCPIndex(app->challengeType))));
    PrintMessage(app, &app->windows[WINDOW_CASTLES_RECORD], BattleFrontierRecords_Text_CP, 224, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_CASTLES_RECORD]);
}

static u32 GetBattleCastleLatestStreakEntryID(FrontierRecordsApp *app)
{
    u8 isActive;
    if (app->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
        isActive = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(app->saveData), STAT_CASTLE_WFC_STREAK_ACTIVE, BattleFrontierStats_GetHostFriendIdx(STAT_CASTLE_WFC_STREAK_ACTIVE));
    } else {
        isActive = sub_02030470(sub_0203041C(app->saveData), 9, app->challengeType, 0, NULL);
    }

    if (isActive == 1) {
        return BattleFrontierRecords_Text_Current;
    }

    return BattleFrontierRecords_Text_Prev;
}

static void DisplayBattleArcadeRecord(FrontierRecordsApp *app)
{
    Window_FillTilemap(&app->windows[WINDOW_HEADER], 0);
    PrintMessage(app, &app->windows[WINDOW_HEADER], BattleFrontierRecords_Text_BattleArcade, 8, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_LEFT);

    int entryID;
    u32 x;
    if (app->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        entryID = BattleFrontierRecords_Text_SingleRecord;
        x = 216;
    } else if (app->challengeType == FRONTIER_CHALLENGE_DOUBLE) {
        entryID = BattleFrontierRecords_Text_DoubleRecord;
        x = 216;
    } else {
        entryID = BattleFrontierRecords_Text_MultiRecord;
        x = 216;
    }

    PrintMessage(app, &app->windows[WINDOW_HEADER], entryID, x, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_HEADER]);

    PrintBasicMessage(app, &app->windows[WINDOW_ARCADE_LATEST], GetBattleArcadeLatestStreakEntryID(app), FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetArcadeLatestStreakIndex(app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_ARCADE_LATEST], BattleFrontierRecords_Text_GamesCleared, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_ARCADE_LATEST]);

    PrintBasicMessage(app, &app->windows[WINDOW_ARCADE_RECORD], 31, FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetArcadeCurrentStreakIndex(app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_ARCADE_RECORD], BattleFrontierRecords_Text_GamesCleared, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_ARCADE_RECORD]);
}

static u32 GetBattleArcadeLatestStreakEntryID(FrontierRecordsApp *app)
{
    u8 isActive;
    if (app->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
        isActive = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(app->saveData), STAT_ARCADE_WFC_STREAK_ACTIVE, BattleFrontierStats_GetHostFriendIdx(STAT_ARCADE_WFC_STREAK_ACTIVE));
    } else {
        isActive = sub_02030600(sub_020305B8(app->saveData), 8, app->challengeType, 0, NULL);
    }

    if (isActive == 1) {
        return BattleFrontierRecords_Text_Current;
    }

    return BattleFrontierRecords_Text_Prev;
}

static void DisplayBattleTowerSoloRecord(FrontierRecordsApp *app)
{
    Window_FillTilemap(&app->windows[WINDOW_HEADER], 0);
    PrintMessage(app, &app->windows[WINDOW_HEADER], BattleFrontierRecords_Text_BattleTower, 8, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_LEFT);

    int entryID;
    u32 x;
    if (app->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        entryID = BattleFrontierRecords_Text_SingleRecord;
        x = 216;
    } else {
        entryID = BattleFrontierRecords_Text_DoubleRecord;
        x = 216;
    }

    PrintMessage(app, &app->windows[WINDOW_HEADER], entryID, x, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_HEADER]);

    PrintBasicMessage(app, &app->windows[WINDOW_TOWER_SOLO_LATEST], GetBattleTowerLatestStreakEntryID(app, app->challengeType), FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetTowerLatestStreakIndex(app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_TOWER_SOLO_LATEST], BattleFrontierRecords_Text_WinStreak, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_TOWER_SOLO_LATEST]);

    PrintBasicMessage(app, &app->windows[WINDOW_TOWER_SOLO_RECORD], 31, FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetTowerRecordStreakIndex(app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_TOWER_SOLO_RECORD], BattleFrontierRecords_Text_WinStreak, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_TOWER_SOLO_RECORD]);
}

static void DisplayBattleTowerMultiRecord(FrontierRecordsApp *app)
{
    Window_FillTilemap(&app->windows[WINDOW_HEADER], 0);
    PrintMessage(app, &app->windows[WINDOW_HEADER], BattleFrontierRecords_Text_BattleTower, 8, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_LEFT);
    PrintMessage(app, &app->windows[WINDOW_HEADER], BattleFrontierRecords_Text_MultiRecord, 216, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_RIGHT);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_HEADER]);

    PrintBasicMessage(app, &app->windows[WINDOW_TOWER_MULTI_W_TRAINER], BattleFrontierRecords_Text_MultiWithTrainer, FONT_MESSAGE);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_TOWER_MULTI_W_TRAINER]);

    PrintBasicMessage(app, &app->windows[WINDOW_TOWER_MULTI_LATEST], GetBattleTowerLatestStreakEntryID(app, app->challengeType), FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetTowerLatestStreakIndex(app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_TOWER_MULTI_LATEST], BattleFrontierRecords_Text_WinStreak, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_TOWER_MULTI_LATEST]);

    PrintBasicMessage(app, &app->windows[WINDOW_TOWER_MULTI_RECORD], BattleFrontierRecords_Text_Record, FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetTowerRecordStreakIndex(app->challengeType), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_TOWER_MULTI_RECORD], BattleFrontierRecords_Text_WinStreak, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_TOWER_MULTI_RECORD]);

    PrintBasicMessage(app, &app->windows[WINDOW_TOWER_MULTI_W_FRIEND], BattleFrontierRecords_Text_MultiWithFriend, FONT_MESSAGE);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_TOWER_MULTI_W_FRIEND]);

    PrintBasicMessage(app, &app->windows[WINDOW_TOWER_W_FRIEND_LATEST], GetBattleTowerLatestStreakEntryID(app, BATTLE_TOWER_MODE_LINK_MULTI), FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetTowerLatestStreakIndex(3), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_TOWER_W_FRIEND_LATEST], BattleFrontierRecords_Text_WinStreak, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_TOWER_W_FRIEND_LATEST]);

    PrintBasicMessage(app, &app->windows[WINDOW_TOWER_W_FRIEND_RECORD], BattleFrontierRecords_Text_Record, FONT_MESSAGE);
    SetStringTemplateNumber(app, 0, BattleFrontierStats_GetStat(app->frontier, BattleFrontierStats_GetTowerRecordStreakIndex(3), 0xFF));
    PrintMessage(app, &app->windows[WINDOW_TOWER_W_FRIEND_RECORD], BattleFrontierRecords_Text_WinStreak, 112, 0, 1, 2, 0, FONT_SYSTEM, FALSE, TEXT_ALIGN_CENTER);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_TOWER_W_FRIEND_RECORD]);
}

static u32 GetBattleTowerLatestStreakEntryID(FrontierRecordsApp *app, u8 towerMode)
{
    UnkStruct_0202D750 *v2 = sub_0202D750(app->saveData);

    u16 v0;
    switch (towerMode) {
    case BATTLE_TOWER_MODE_SINGLE:
        v0 = 8;
        break;
    case BATTLE_TOWER_MODE_DOUBLE:
        v0 = 9;
        break;
    case BATTLE_TOWER_MODE_MULTI:
        v0 = 10;
        break;
    case BATTLE_TOWER_MODE_LINK_MULTI:
        v0 = 11;
        break;
    case BATTLE_TOWER_MODE_WIFI:
        v0 = 12;
        break;
    case BATTLE_TOWER_MODE_6:
        v0 = 15;
        break;
    default:
        v0 = 8;
        break;
    }

    int isActive = sub_0202D414(v2, v0, 0);

    if (isActive == TRUE) {
        return BattleFrontierRecords_Text_Current;
    }

    return BattleFrontierRecords_Text_Prev;
}
