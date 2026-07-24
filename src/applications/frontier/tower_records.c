#include "applications/frontier/tower_records.h"

#include "nitro/misc.h"
#include <nitro.h>
#include <string.h>

#include "constants/battle_tower.h"

#include "struct_defs/battle_frontier.h"

#include "battle_frontier_save.h"
#include "battle_tower_modes.h"
#include "bg_window.h"
#include "easy_chat_sentence.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "render_oam.h"
#include "save_player.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_0208C098.h"
#include "vram_transfer.h"
#include "wifi_battle_tower_save.h"

#include "res/graphics/frontier/tower/records.naix"
#include "res/graphics/sprite_templates/tower_records.h"
#include "res/text/bank/battle_tower_records_app.h"

#define WINDOW_RESULTS_HEADER       0
#define WINDOW_RESULTS_FIRST_LABEL  1
#define WINDOW_RESULTS_FIRST_VALUE  2
#define WINDOW_RESULTS_SECOND_LABEL 3
#define WINDOW_RESULTS_SECOND_VALUE 4
#define NUM_WINDOWS_RESULTS_SCREEN  5

#define WINDOW_RANKINGS_HEADER      0
#define WINDOW_RANKINGS_LIST        1
#define WINDOW_RANKINGS_MESSAGE     2
#define NUM_WINDOWS_RANKINGS_SCREEN 3

#define TRAINERS_PER_ROW    3
#define RANKING_SCREEN_ROWS (BATTLE_TOWER_MAX_SAVED_WIFI_PLAYERS / TRAINERS_PER_ROW)

typedef struct BattleTowerRecordsAppStringManager {
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *string;
    String *cancelStr;
    String *headerStr;
    String *unused;
    String *countryAndCityStr;
    String *countryStr;
    String *noCountryStr;
    String *resultStrs[6];
    String *defaultNames[2];
} BattleTowerRecordsAppStringManager;

typedef struct BattleTowerRecordsWifiTrainer {
    String *name;
    u8 anonNameIdx;
    u8 country;
    u8 region;
    u8 useDefaultName;
    EasyChatSentence message;
} BattleTowerRecordsWifiTrainer;

typedef struct BattleTowerRecordsApp {
    enum HeapID heapID;
    int subState;
    u16 isRankingsScreen;
    u8 resultsType;
    u8 selectedRow;
    u8 selectedCol;
    u8 showTrainerMessage;
    u8 topRowIndex;
    u8 cursorRow;
    BgConfig *bgConfig;
    u32 unused;
    Options *options;
    BattleFrontierSave *frontier;
    WifiBattleTowerRecord *towerRecord;
    WifiBattleTowerDownloadData *downloadData;
    BattleTowerRecordsAppStringManager strMan;
    Window windows[MATH_MAX(NUM_WINDOWS_RANKINGS_SCREEN, NUM_WINDOWS_RESULTS_SCREEN)];
    BattleTowerRecordsWifiTrainer wifiTrainers[BATTLE_TOWER_MAX_SAVED_WIFI_PLAYERS];
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    Sprite *sprites[4];
} BattleTowerRecordsApp;

static BOOL LoadAssets(BattleTowerRecordsApp *app);
static BOOL FreeAssets(BattleTowerRecordsApp *app);
static void SetGXBanks(void);
static void VBlankCallback(void *data);
static BOOL CheckIfAOrBPressed(BattleTowerRecordsApp *app);
static BOOL ProcessRankScreenInput(BattleTowerRecordsApp *app);
static void InitBackgrounds(BattleTowerRecordsApp *app);
static void FreeBackgrounds(BattleTowerRecordsApp *app);
static void LoadBackgrounds(BattleTowerRecordsApp *app);
static void InitWindows(BattleTowerRecordsApp *app);
static void FreeWindows(BattleTowerRecordsApp *app);
static void InitMessages(BattleTowerRecordsApp *app);
static void FreeMessages(BattleTowerRecordsApp *app);
static void PrintRecordsScreen(BattleTowerRecordsApp *app);
static void LoadWifiTrainersInfo(BattleTowerRecordsApp *app);
static void FreeWifiTrainerNames(BattleTowerRecordsApp *app);
static void PrintRankingScreen(BattleTowerRecordsApp *app);
static void PrintWifiTrainersList(BattleTowerRecordsWifiTrainer *app, Window *window, String *cancelStr, u8 topRow, u8 unused, u8 unused2);
static void PrintSelectedWifiTrainersHomeCountry(BattleTowerRecordsApp *app);
static void PrintSelectedWifiTrainersMessage(BattleTowerRecordsApp *app);
static void ClearMessageText(BattleTowerRecordsApp *app);
static void InitSpriteSystem(BattleTowerRecordsApp *app);
static void FreeSpriteSystem(BattleTowerRecordsApp *app);
static void DrawSprites(BattleTowerRecordsApp *app);
static void TransferSpriteSystemOam(void);
static void LoadSprites(BattleTowerRecordsApp *app);
static void DeleteSprites(BattleTowerRecordsApp *app);
static void UpdateSpriteAnimations(BattleTowerRecordsApp *app, BOOL cancelSelected);
static void UpdateSpritePositions(BattleTowerRecordsApp *app, u8 selectedRow, u8 cursorCol, u8 cursorRow);

int BattleTowerRecordsApp_Init(ApplicationManager *appMan, int *state)
{
    BattleTowerRecordsApp *app = NULL;
    BattleTowerRecordsAppArgs *args = ApplicationManager_Args(appMan);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BATTLE_TOWER_RECORDS_APP, 0x10000);
    app = ApplicationManager_NewData(appMan, sizeof(BattleTowerRecordsApp), HEAP_ID_BATTLE_TOWER_RECORDS_APP);
    memset(app, 0, sizeof(BattleTowerRecordsApp));

    app->isRankingsScreen = args->isRankingsScreen;
    app->resultsType = args->resultsType;
    app->options = SaveData_GetOptions(args->saveData);
    app->frontier = SaveData_GetBattleFrontier(args->saveData);
    app->towerRecord = SaveData_GetWifiBattleTowerRecord(args->saveData);
    app->downloadData = SaveData_GetWifiBattleTowerDownloadData(args->saveData);
    app->heapID = HEAP_ID_BATTLE_TOWER_RECORDS_APP;

    SetAutorepeat(4, 8);

    return TRUE;
}

int BattleTowerRecordsApp_Free(ApplicationManager *appMan, int *state)
{
    BattleTowerRecordsApp *app = ApplicationManager_Data(appMan);

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(app->heapID);

    return TRUE;
}

int BattleTowerRecordsApp_Main(ApplicationManager *appMan, int *state)
{
    BattleTowerRecordsApp *app = ApplicationManager_Data(appMan);

    switch (*state) {
    case 0:
        if (!LoadAssets(app)) {
            break;
        }
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, app->heapID);
        (*state)++;
        break;
    case 1:
        if (!IsScreenFadeDone()) {
            break;
        }
        (*state)++;
        break;
    case 2: {
        BOOL closeApp = FALSE;
        if (app->isRankingsScreen == FALSE) {
            closeApp = CheckIfAOrBPressed(app);
        } else {
            closeApp = ProcessRankScreenInput(app);
        }

        if (closeApp) {
            StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, app->heapID);
            (*state)++;
        }
    } break;
    case 3:
        if (!IsScreenFadeDone()) {
            break;
        }

        (*state)++;
        break;
    case 4:
        if (!FreeAssets(app)) {
            break;
        }

        return TRUE;
    }

    if (*state >= 1 && 3 >= *state) {
        DrawSprites(app);
    }

    return FALSE;
}

static BOOL LoadAssets(BattleTowerRecordsApp *app)
{
    switch (app->subState) {
    case 0:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        SetGXBanks();
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        InitBackgrounds(app);
        break;
    case 1:
        LoadBackgrounds(app);
        InitMessages(app);
        break;
    case 2:
        InitWindows(app);

        if (app->isRankingsScreen == FALSE) {
            PrintRecordsScreen(app);
            app->subState++;
        } else {
            LoadWifiTrainersInfo(app);
            PrintRankingScreen(app);
        }
        break;
    case 3:
        InitSpriteSystem(app);
        LoadSprites(app);
        PrintSelectedWifiTrainersHomeCountry(app);
        break;
    case 4:
        SetVBlankCallback(VBlankCallback, app);
        app->subState = 0;
        return TRUE;
    }

    app->subState++;
    return FALSE;
}

static BOOL FreeAssets(BattleTowerRecordsApp *app)
{
    switch (app->subState) {
    case 0:
        if (app->isRankingsScreen) {
            DeleteSprites(app);
            FreeSpriteSystem(app);
            FreeWifiTrainerNames(app);
        }

        FreeWindows(app);
        FreeMessages(app);
        FreeBackgrounds(app);
        break;
    case 1:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        app->subState = 0;
        return TRUE;
    }

    app->subState++;
    return FALSE;
}

static void SetGXBanks(void)
{
    GXBanks gxBanks = {
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

    GXLayers_SetBanks(&gxBanks);
}

static void VBlankCallback(void *data)
{
    BattleTowerRecordsApp *app = data;

    TransferSpriteSystemOam();
    NNS_GfdDoVramTransfer();
    Bg_RunScheduledUpdates(app->bgConfig);
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static BOOL CheckIfAOrBPressed(BattleTowerRecordsApp *app)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return TRUE;
    }

    return FALSE;
}

static inline u8 ProcessUpButton(BattleTowerRecordsApp *app)
{
    if (app->selectedRow == 0) {
        return FALSE;
    }

    --app->selectedRow;

    if (app->cursorRow == 0) {
        --app->topRowIndex;
        return TRUE;
    }

    --app->cursorRow;
    return TRUE;
}

static inline u8 ProcessDownButton(BattleTowerRecordsApp *app)
{
    if (app->selectedRow >= RANKING_SCREEN_ROWS) {
        return FALSE;
    }

    ++app->selectedRow;

    if (app->cursorRow > 1) {
        ++app->topRowIndex;
        return TRUE;
    }

    ++app->cursorRow;
    return TRUE;
}

static BOOL ProcessRankScreenInput(BattleTowerRecordsApp *app)
{
    BOOL updateScreen = FALSE;

    if (JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return TRUE;
    }

    if (JOY_NEW(PAD_BUTTON_A)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        if (app->selectedRow >= RANKING_SCREEN_ROWS) {
            return TRUE;
        }

        app->showTrainerMessage = (app->showTrainerMessage + 1) % 2;
        updateScreen = TRUE;
    } else {
        if (JOY_REPEAT(PAD_KEY_UP)) {
            updateScreen = ProcessUpButton(app);

            if (updateScreen) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }
        } else if (JOY_REPEAT(PAD_KEY_DOWN)) {
            updateScreen = ProcessDownButton(app);

            if (updateScreen) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }
        } else if (JOY_REPEAT(PAD_KEY_LEFT)) {
            app->selectedCol = (app->selectedCol + TRAINERS_PER_ROW - 1) % TRAINERS_PER_ROW;
            updateScreen = TRUE;

            if (app->selectedRow != RANKING_SCREEN_ROWS) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }
        } else if (JOY_REPEAT(PAD_KEY_RIGHT)) {
            app->selectedCol = (app->selectedCol + 1) % TRAINERS_PER_ROW;
            updateScreen = TRUE;

            if (app->selectedRow != RANKING_SCREEN_ROWS) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }
        }

        if (app->selectedRow == RANKING_SCREEN_ROWS) {
            app->selectedCol = TRAINERS_PER_ROW - 1;
        }
    }

    if (!updateScreen) {
        return FALSE;
    }

    UpdateSpritePositions(app, app->selectedRow, app->selectedCol, app->cursorRow);
    PrintWifiTrainersList(app->wifiTrainers, &app->windows[1], app->strMan.cancelStr, app->topRowIndex, app->selectedRow, app->selectedCol);

    if (app->selectedRow != RANKING_SCREEN_ROWS) {
        switch (app->showTrainerMessage) {
        case FALSE:
            PrintSelectedWifiTrainersHomeCountry(app);
            break;
        case TRUE:
            PrintSelectedWifiTrainersMessage(app);
            break;
        default:
            GF_ASSERT(FALSE);
            break;
        }
    } else {
        ClearMessageText(app);
    }

    return FALSE;
}

static void InitBackgrounds(BattleTowerRecordsApp *app)
{
    app->bgConfig = BgConfig_New(app->heapID);

    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
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
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x00000,
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
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x00000,
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
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    int bgLayer = BG_LAYER_MAIN_0;
    for (int i = 0; i < 2 + app->isRankingsScreen; i++) {
        Bg_InitFromTemplate(app->bgConfig, bgLayer, &bgTemplates[i], BG_TYPE_STATIC);
        Bg_ClearTilemap(app->bgConfig, bgLayer);
        bgLayer++;
    }
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, app->heapID);

    if (app->isRankingsScreen) {
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, app->heapID);
    }
}

static void FreeBackgrounds(BattleTowerRecordsApp *app)
{
    int bgLayer = BG_LAYER_MAIN_0;
    for (int i = 0; i < 2 + app->isRankingsScreen; i++) {
        Bg_FreeTilemapBuffer(app->bgConfig, bgLayer++);
    }

    Heap_Free(app->bgConfig);
}

static void LoadBackgrounds(BattleTowerRecordsApp *app)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__BTOWER, app->heapID);
    App_LoadGraphicMember(app->bgConfig, app->heapID, narc, NARC_INDEX_GRAPHIC__BTOWER, records_tiles_NCGR, BG_LAYER_MAIN_1, GRAPHICSMEMBER_TILES, 0, 0);
    App_LoadGraphicMember(app->bgConfig, app->heapID, narc, NARC_INDEX_GRAPHIC__BTOWER, records_tiles_NCLR, BG_LAYER_MAIN_1, GRAPHICSMEMBER_PALETTE, PALETTE_SIZE_BYTES * 2, 0);

    int tilemapIdx;
    if (app->isRankingsScreen == TRUE) {
        tilemapIdx = records_ranks_NSCR;
    } else {
        if (app->resultsType == TOWER_RECORDS_RESULTS_WIFI) {
            tilemapIdx = records_wifi_NSCR;
        } else {
            tilemapIdx = records_solo_NSCR;
        }
    }

    App_LoadGraphicMember(app->bgConfig, app->heapID, narc, NARC_INDEX_GRAPHIC__BTOWER, tilemapIdx, BG_LAYER_MAIN_1, GRAPHICSMEMBER_TILEMAP, 0, 0);
    NARC_dtor(narc);
    Bg_ScheduleTilemapTransfer(app->bgConfig, BG_LAYER_MAIN_1);
}

static void InitWindows(BattleTowerRecordsApp *app)
{
    static const WindowTemplate sResultsScreenWinTemplates[] = {
        { 0, 4, 1, 24, 5, 2, 192 },
        { 0, 1, 9, 8, 5, 1, 312 },
        { 0, 1, 17, 8, 5, 1, 352 },
        { 0, 10, 9, 21, 5, 1, 392 },
        { 0, 10, 17, 21, 6, 1, 497 },
        { 0, 3, 18, 26, 5, 2, 312 },
    };
    static const WindowTemplate sRankingScreenWinTemplates[] = {
        { 0, 4, 1, 24, 5, 2, 192 },
        { 2, 3, 7, 26, 9, 1, 1 },
        { 0, 3, 18, 26, 5, 2, 312 },
    };

    if (app->isRankingsScreen == FALSE) {
        for (int i = 0; i < NUM_WINDOWS_RESULTS_SCREEN; i++) {
            Window_AddFromTemplate(app->bgConfig, &app->windows[i], &sResultsScreenWinTemplates[i]);
            Window_FillTilemap(&app->windows[i], PIXEL_FILL(0));
        }
    } else {
        for (int i = 0; i < NUM_WINDOWS_RANKINGS_SCREEN; i++) {
            Window_AddFromTemplate(app->bgConfig, &app->windows[i], &sRankingScreenWinTemplates[i]);
            Window_FillTilemap(&app->windows[i], PIXEL_FILL(0));
        }
    }

    Font_LoadTextPalette(0, PLTT_OFFSET(PLTT_2), app->heapID);
}

static void FreeWindows(BattleTowerRecordsApp *app)
{
    int numWindows;
    if (app->isRankingsScreen == FALSE) {
        numWindows = NUM_WINDOWS_RESULTS_SCREEN;
    } else {
        numWindows = NUM_WINDOWS_RANKINGS_SCREEN;
    }

    for (int i = 0; i < numWindows; i++) {
        Window_ClearAndCopyToVRAM(&app->windows[i]);
        Window_Remove(&app->windows[i]);
    }
}

static void InitMessages(BattleTowerRecordsApp *app)
{
    app->strMan.msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_TOWER_RECORDS_APP, app->heapID);
    app->strMan.strTemplate = StringTemplate_New(2, 76, app->heapID);
    app->strMan.string = String_Init(76, app->heapID);

    for (int i = 0; i < 6; i++) {
        app->strMan.resultStrs[i] = MessageLoader_GetNewString(app->strMan.msgLoader, BattleTowerRecordsApp_Text_Prev + i);
    }

    app->strMan.headerStr = MessageLoader_GetNewString(app->strMan.msgLoader, BattleTowerRecordsApp_Text_RankingsHeader);
    app->strMan.unused = MessageLoader_GetNewString(app->strMan.msgLoader, BattleTowerRecordsApp_Text_UnusedTemplate);
    app->strMan.cancelStr = MessageLoader_GetNewString(app->strMan.msgLoader, BattleTowerRecordsApp_Text_Cancel);
    app->strMan.countryAndCityStr = MessageLoader_GetNewString(app->strMan.msgLoader, BattleTowerRecordsApp_Text_CountryAndCity);
    app->strMan.countryStr = MessageLoader_GetNewString(app->strMan.msgLoader, BattleTowerRecordsApp_Text_Country);
    app->strMan.noCountryStr = MessageLoader_GetNewString(app->strMan.msgLoader, BattleTowerRecordsApp_Text_HomeCountryUnRegisterd);
    app->strMan.defaultNames[0] = MessageLoader_GetNewString(app->strMan.msgLoader, BattleTowerRecordsApp_Text_Plato);
    app->strMan.defaultNames[1] = MessageLoader_GetNewString(app->strMan.msgLoader, BattleTowerRecordsApp_Text_Plato2);
}

static void FreeMessages(BattleTowerRecordsApp *app)
{
    String_Free(app->strMan.defaultNames[1]);
    String_Free(app->strMan.defaultNames[0]);
    String_Free(app->strMan.noCountryStr);
    String_Free(app->strMan.countryStr);
    String_Free(app->strMan.countryAndCityStr);
    String_Free(app->strMan.cancelStr);
    String_Free(app->strMan.unused);
    String_Free(app->strMan.headerStr);

    for (int i = 0; i < 6; i++) {
        String_Free(app->strMan.resultStrs[i]);
    }

    String_Free(app->strMan.string);
    StringTemplate_Free(app->strMan.strTemplate);
    MessageLoader_Free(app->strMan.msgLoader);
}

static void PrintLabeledWinStreak(BattleTowerRecordsApp *app, Window *window, u8 challengeMode, u8 statIndex, u8 yOffset)
{
    u16 recordStat = BattleFrontierSave_GetStat(app->frontier, statIndex, 0xff);
    u16 latestStat = BattleFrontierSave_GetStat(app->frontier, statIndex + 1, 0xff);
    u16 streakIsActive = WifiBattleTowerRecord_UpdateBitFlag(app->towerRecord, 8 + challengeMode, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, app->strMan.resultStrs[streakIsActive], 4, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
    StringTemplate_SetNumber(app->strMan.strTemplate, 0, latestStat, 4, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(app->strMan.strTemplate, app->strMan.string, app->strMan.resultStrs[4]);

    int xOffset = 168 - Font_CalcStringWidth(FONT_SYSTEM, app->strMan.string, 0) - 4;
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, app->strMan.string, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    yOffset += 24;
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, app->strMan.resultStrs[2], 4, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
    StringTemplate_SetNumber(app->strMan.strTemplate, 0, recordStat, 4, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(app->strMan.strTemplate, app->strMan.string, app->strMan.resultStrs[4]);

    xOffset = 168 - Font_CalcStringWidth(FONT_SYSTEM, app->strMan.string, 0) - 4;
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, app->strMan.string, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Window_CopyToVRAM(window);
}

static void PrintRecordsScreen(BattleTowerRecordsApp *app)
{
    MessageLoader_GetString(app->strMan.msgLoader, 0 + app->resultsType, app->strMan.string);

    int xOffset = 192 - Font_CalcStringWidth(FONT_SYSTEM, app->strMan.string, 0);
    Text_AddPrinterWithParamsAndColor(&app->windows[WINDOW_RESULTS_HEADER], FONT_SYSTEM, app->strMan.string, xOffset / 2, 8, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 2, 0), NULL);
    MessageLoader_GetString(app->strMan.msgLoader, BattleTowerRecordsApp_Text_SingleRecord + app->resultsType, app->strMan.string);
    Text_AddPrinterWithParamsAndColor(&app->windows[WINDOW_RESULTS_FIRST_LABEL], FONT_SYSTEM, app->strMan.string, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(3, 4, 0), NULL);
    MessageLoader_GetString(app->strMan.msgLoader, BattleTowerRecordsApp_Text_DoubleRecord + app->resultsType, app->strMan.string);
    Text_AddPrinterWithParamsAndColor(&app->windows[WINDOW_RESULTS_FIRST_VALUE], FONT_SYSTEM, app->strMan.string, 0, 3, TEXT_SPEED_INSTANT, TEXT_COLOR(3, 4, 0), NULL);

    switch (app->resultsType) {
    case TOWER_RECORDS_RESULTS_SOLO:
        PrintLabeledWinStreak(app, &app->windows[WINDOW_RESULTS_SECOND_LABEL], BATTLE_TOWER_MODE_SINGLE, STAT_TOWER_RECORD_STREAK_SINGLE, 0);
        PrintLabeledWinStreak(app, &app->windows[WINDOW_RESULTS_SECOND_VALUE], BATTLE_TOWER_MODE_DOUBLE, STAT_TOWER_RECORD_STREAK_DOUBLE, 3);
        break;
    case TOWER_RECORDS_RESULTS_MULTI:
        PrintLabeledWinStreak(app, &app->windows[WINDOW_RESULTS_SECOND_LABEL], BATTLE_TOWER_MODE_MULTI, STAT_TOWER_RECORD_STREAK_MULTI, 0);
        PrintLabeledWinStreak(app, &app->windows[WINDOW_RESULTS_SECOND_VALUE], BATTLE_TOWER_MODE_LINK_MULTI, STAT_TOWER_RECORD_STREAK_LINK_MULTI, 3);
        break;
    case TOWER_RECORDS_RESULTS_WIFI:
        MessageLoader_GetString(app->strMan.msgLoader, BattleTowerRecordsApp_Text_Rank, app->strMan.string);
        Text_AddPrinterWithParamsAndColor(&app->windows[WINDOW_RESULTS_SECOND_LABEL], FONT_SYSTEM, app->strMan.string, 4, 10, TEXT_SPEED_INSTANT, TEXT_COLOR(3, 4, 0), NULL);
        StringTemplate_SetNumber(app->strMan.strTemplate, 0, WifiBattleTowerRecord_UpdateRank(app->towerRecord, 0), 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(app->strMan.strTemplate, app->strMan.string, app->strMan.resultStrs[5]);

        xOffset = 64 - Font_CalcStringWidth(FONT_SYSTEM, app->strMan.string, 0);
        xOffset = xOffset / 2 + 64;

        Text_AddPrinterWithParamsAndColor(&app->windows[WINDOW_RESULTS_SECOND_LABEL], FONT_SYSTEM, app->strMan.string, xOffset, 10, TEXT_SPEED_INSTANT, TEXT_COLOR(5, 6, 0), NULL);
        PrintLabeledWinStreak(app, &app->windows[WINDOW_RESULTS_SECOND_VALUE], BATTLE_TOWER_MODE_WIFI, STAT_TOWER_RECORD_STREAK_WIFI, 3);
        break;
    }
}

static void LoadWifiTrainersInfo(BattleTowerRecordsApp *app)
{
    int i;
    WifiBattleTowerMatchCandidate *wifiTrainers = WifiBattleTowerDownloadData_AllocMatchList(app->downloadData, app->heapID);

    for (i = 0; i < BATTLE_TOWER_MAX_SAVED_WIFI_PLAYERS; i++) {
        BattleTowerRecordsWifiTrainer *trainer = &app->wifiTrainers[i];
        trainer->anonNameIdx = wifiTrainers[i].anonymousNameIdx;
        trainer->country = wifiTrainers[i].country;
        trainer->region = wifiTrainers[i].region;
        trainer->useDefaultName = wifiTrainers[i].isAnonymous;

        MI_CpuCopy8(&wifiTrainers[i].trainerKey, &trainer->message, 8);

        trainer->name = String_Init(8, app->heapID);

        if (trainer->useDefaultName) {
            String_Copy(trainer->name, app->strMan.defaultNames[trainer->anonNameIdx]);
        } else {
            String_CopyChars(trainer->name, wifiTrainers[i].trainerName);
        }
    }

    Heap_Free(wifiTrainers);
}

static void FreeWifiTrainerNames(BattleTowerRecordsApp *app)
{
    for (int i = 0; i < BATTLE_TOWER_MAX_SAVED_WIFI_PLAYERS; i++) {
        String_Free(app->wifiTrainers[i].name);
    }
}

static void PrintWifiTrainersList(BattleTowerRecordsWifiTrainer *app, Window *window, String *cancelStr, u8 topRow, u8 unused, u8 unused2)
{
    Window_FillTilemap(window, PIXEL_FILL(0));

    int row, col, offset, numRows, xOffset;
    if (topRow >= RANKING_SCREEN_ROWS - 2) {
        numRows = 2;
        xOffset = (40 - Font_CalcStringWidth(FONT_SYSTEM, cancelStr, 0)) / 2;
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, cancelStr, 160 + xOffset, 52, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    } else {
        numRows = 3;
    }

    offset = topRow * TRAINERS_PER_ROW;
    for (row = 0; row < numRows; row++) {
        for (col = 0; col < TRAINERS_PER_ROW; col++) {
            BattleTowerRecordsWifiTrainer *trainer = &app[row * TRAINERS_PER_ROW + col + offset];
            u32 textColor = trainer->anonNameIdx ? TEXT_COLOR(11, 12, 0) : TEXT_COLOR(9, 10, 0);
            Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, trainer->name, col * 72, row * 24 + 4, TEXT_SPEED_NO_TRANSFER, textColor, NULL);
        }
    }

    Window_CopyToVRAM(window);
}

static void PrintRankingScreen(BattleTowerRecordsApp *app)
{
    WifiBattleTowerIndices battleRoomInfo;
    WifiBattleTowerDownloadData_GetMatchIndices(app->downloadData, &battleRoomInfo);
    String_Clear(app->strMan.string);
    StringTemplate_SetNumber(app->strMan.strTemplate, 0, battleRoomInfo.rank, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetNumber(app->strMan.strTemplate, 1, battleRoomInfo.opponentIdx, 3, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_Format(app->strMan.strTemplate, app->strMan.string, app->strMan.headerStr);

    int xOffset = 192 - Font_CalcStringWidth(FONT_SYSTEM, app->strMan.string, 0);
    Text_AddPrinterWithParamsAndColor(&app->windows[WINDOW_RANKINGS_HEADER], FONT_SYSTEM, app->strMan.string, xOffset / 2, 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    MessageLoader_GetString(app->strMan.msgLoader, 16 + app->resultsType, app->strMan.string);

    xOffset = 192 - Font_CalcStringWidth(FONT_SYSTEM, app->strMan.string, 0);
    Text_AddPrinterWithParamsAndColor(&app->windows[WINDOW_RANKINGS_HEADER], FONT_SYSTEM, app->strMan.string, xOffset / 2, 20, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 2, 0), NULL);
    PrintWifiTrainersList(app->wifiTrainers, &app->windows[WINDOW_RANKINGS_LIST], app->strMan.cancelStr, 0, 0, 0);
}

static void PrintSelectedWifiTrainersHomeCountry(BattleTowerRecordsApp *app)
{
    BattleTowerRecordsWifiTrainer *trainer = &app->wifiTrainers[app->selectedRow * TRAINERS_PER_ROW + app->selectedCol];

    Window_FillTilemap(&app->windows[WINDOW_RANKINGS_MESSAGE], PIXEL_FILL(0));

    if (trainer->country == 0) {
        Text_AddPrinterWithParamsAndColor(&app->windows[WINDOW_RANKINGS_MESSAGE], FONT_SYSTEM, app->strMan.noCountryStr, 0, 4, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    } else if (trainer->region == 0) {
        StringTemplate_SetCountryName(app->strMan.strTemplate, 0, trainer->country);
        StringTemplate_Format(app->strMan.strTemplate, app->strMan.string, app->strMan.countryStr);
        Text_AddPrinterWithParamsAndColor(&app->windows[WINDOW_RANKINGS_MESSAGE], FONT_SYSTEM, app->strMan.string, 0, 4, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    } else {
        StringTemplate_SetCountryName(app->strMan.strTemplate, 0, trainer->country);
        StringTemplate_SetCityName(app->strMan.strTemplate, 1, trainer->country, trainer->region);
        StringTemplate_Format(app->strMan.strTemplate, app->strMan.string, app->strMan.countryAndCityStr);
        Text_AddPrinterWithParamsAndColor(&app->windows[WINDOW_RANKINGS_MESSAGE], FONT_SYSTEM, app->strMan.string, 0, 4, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    }

    Window_CopyToVRAM(&app->windows[WINDOW_RANKINGS_MESSAGE]);
    UpdateSpriteAnimations(app, FALSE);
}

static void PrintSelectedWifiTrainersMessage(BattleTowerRecordsApp *app)
{
    BattleTowerRecordsWifiTrainer *trainerInfo = &(app->wifiTrainers[app->selectedRow * TRAINERS_PER_ROW + app->selectedCol]);

    String *message = EasyChatSentence_ToString(&trainerInfo->message, app->heapID);

    Window_FillTilemap(&app->windows[WINDOW_RANKINGS_MESSAGE], PIXEL_FILL(0));
    Text_AddPrinterWithParamsAndColor(&app->windows[WINDOW_RANKINGS_MESSAGE], FONT_SYSTEM, message, 0, 4, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(message);
}

static void ClearMessageText(BattleTowerRecordsApp *app)
{
    Window_FillTilemap(&app->windows[WINDOW_RANKINGS_MESSAGE], PIXEL_FILL(0));
    Window_ClearAndCopyToVRAM(&app->windows[WINDOW_RANKINGS_MESSAGE]);
    UpdateSpriteAnimations(app, TRUE);
}

static void InitSpriteSystem(BattleTowerRecordsApp *app)
{
    VramTransfer_New(32, app->heapID);

    app->spriteSys = SpriteSystem_Alloc(app->heapID);
    app->spriteMan = SpriteManager_New(app->spriteSys);

    RenderOamTemplate oamTemplate = {
        .mainOamStart = 0,
        .mainOamCount = 128,
        .mainAffineOamStart = 0,
        .mainAffineOamCount = 32,
        .subOamStart = 0,
        .subOamCount = 128,
        .subAffineOamStart = 0,
        .subAffineOamCount = 32,
    };

    CharTransferTemplateWithModes transferTemplate = {
        .maxTasks = 1,
        .sizeMain = 2048,
        .sizeSub = 2048,
        .modeMain = GX_OBJVRAMMODE_CHAR_1D_32K,
        .modeSub = GX_OBJVRAMMODE_CHAR_1D_32K,
    };

    SpriteSystem_Init(app->spriteSys, &oamTemplate, &transferTemplate, 32);
    SpriteSystem_InitSprites(app->spriteSys, app->spriteMan, 4);
    RenderOam_ClearMain(app->heapID);
    RenderOam_ClearSub(app->heapID);

    SpriteResourceDataPaths resourcePaths = {
        "data/btower_chr.resdat",
        "data/btower_pal.resdat",
        "data/btower_cell.resdat",
        "data/btower_canm.resdat",
        NULL,
        NULL,
        "data/btower_celact.cldat"
    };

    SpriteSystem_LoadResourceDataFromFilepaths(app->spriteSys, app->spriteMan, &resourcePaths);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void FreeSpriteSystem(BattleTowerRecordsApp *app)
{
    SpriteSystem_DestroySpriteManager(app->spriteSys, app->spriteMan);
    SpriteSystem_Free(app->spriteSys);
    VramTransfer_Free();
}

static void DrawSprites(BattleTowerRecordsApp *app)
{
    if (app->spriteMan != NULL) {
        SpriteSystem_DrawSprites(app->spriteMan);
    }
}

static void TransferSpriteSystemOam(void)
{
    SpriteSystem_TransferOam();
}

enum {
    SPRITE_TEMPLATE_CURSOR = 0,
    SPRITE_TEMPLATE_UNK,
    SPRITE_TEMPLATE_SCROLL_UP,
    SPRITE_TEMPLATE_SCROLL_DOWN,
    SPRITE_TEMPLATE_MAX,
};

static const SpriteTemplateFromResourceHeader sSpriteTemplates[] = {
    [SPRITE_TEMPLATE_CURSOR] = {
        .resourceHeaderID = TowerRecords_Template_Interface,
        .x = 54,
        .y = 68,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_UNK] = {
        .resourceHeaderID = TowerRecords_Template_Interface,
        .x = 204,
        .y = 114,
        .z = 0,
        .animIdx = 1,
        .priority = 2,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_SCROLL_UP] = {
        .resourceHeaderID = TowerRecords_Template_Interface,
        .x = 128,
        .y = 52,
        .z = 0,
        .animIdx = 2,
        .priority = 3,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SPRITE_TEMPLATE_SCROLL_DOWN] = {
        .resourceHeaderID = TowerRecords_Template_Interface,
        .x = 128,
        .y = 132,
        .z = 0,
        .animIdx = 3,
        .priority = 4,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
};

static void LoadSprites(BattleTowerRecordsApp *app)
{
    SDK_COMPILER_ASSERT(NELEMS(sSpriteTemplates) == SPRITE_TEMPLATE_MAX);
    SDK_COMPILER_ASSERT(NELEMS(sSpriteTemplates) == NELEMS(app->sprites));

    for (int i = 0; i < SNELEMS(app->sprites); i++) {
        app->sprites[i] = SpriteSystem_NewSpriteFromResourceHeader(app->spriteSys, app->spriteMan, &sSpriteTemplates[i]);
    }

    Sprite_SetDrawFlag(app->sprites[SPRITE_TEMPLATE_SCROLL_UP], FALSE);
    Sprite_SetDrawFlag(app->sprites[SPRITE_TEMPLATE_UNK], FALSE);
    Sprite_SetAnimateFlag(app->sprites[SPRITE_TEMPLATE_CURSOR], TRUE);
    Sprite_SetAnimateFlag(app->sprites[SPRITE_TEMPLATE_SCROLL_UP], TRUE);
    Sprite_SetAnimateFlag(app->sprites[SPRITE_TEMPLATE_SCROLL_DOWN], TRUE);
    Sprite_SetExplicitPriority(app->sprites[SPRITE_TEMPLATE_UNK], 3);
}

static void DeleteSprites(BattleTowerRecordsApp *app)
{
    for (int i = 0; i < SNELEMS(app->sprites); i++) {
        Sprite_Delete2(app->sprites[i]);
    }
}

static void UpdateSpriteAnimations(BattleTowerRecordsApp *app, BOOL cancelSelected)
{
    BOOL animate;
    if (cancelSelected == FALSE) {
        Sprite_SetExplicitPalette(app->sprites[SPRITE_TEMPLATE_CURSOR], 1);
        animate = FALSE;
    } else {
        Sprite_SetExplicitPalette(app->sprites[SPRITE_TEMPLATE_CURSOR], 0);
        animate = TRUE;
    }

    Sprite_SetAnimateFlag(app->sprites[SPRITE_TEMPLATE_CURSOR], animate);
    Sprite_SetAnimateFlag(app->sprites[SPRITE_TEMPLATE_SCROLL_UP], animate);
    Sprite_SetAnimateFlag(app->sprites[SPRITE_TEMPLATE_SCROLL_DOWN], animate);
}

static void UpdateSpritePositions(BattleTowerRecordsApp *app, u8 selectedRow, u8 cursorCol, u8 cursorRow)
{
    if (app->topRowIndex == 10 - 2) {
        Sprite_SetDrawFlag(app->sprites[SPRITE_TEMPLATE_UNK], TRUE);

        if (selectedRow == 10) {
            Sprite_SetAnimFrame(app->sprites[SPRITE_TEMPLATE_UNK], 1);
            Sprite_SetDrawFlag(app->sprites[SPRITE_TEMPLATE_CURSOR], FALSE);
        } else {
            Sprite_SetAnimFrame(app->sprites[SPRITE_TEMPLATE_UNK], 0);
            Sprite_SetDrawFlag(app->sprites[SPRITE_TEMPLATE_CURSOR], TRUE);
        }
    } else {
        Sprite_SetDrawFlag(app->sprites[SPRITE_TEMPLATE_CURSOR], TRUE);
        Sprite_SetDrawFlag(app->sprites[SPRITE_TEMPLATE_UNK], FALSE);
    }

    switch (app->topRowIndex) {
    case 0:
        Sprite_SetDrawFlag(app->sprites[SPRITE_TEMPLATE_SCROLL_UP], FALSE);
        break;
    case RANKING_SCREEN_ROWS - 2:
        Sprite_SetDrawFlag(app->sprites[SPRITE_TEMPLATE_SCROLL_DOWN], FALSE);
        break;
    default:
        Sprite_SetDrawFlag(app->sprites[SPRITE_TEMPLATE_SCROLL_UP], TRUE);
        Sprite_SetDrawFlag(app->sprites[SPRITE_TEMPLATE_SCROLL_DOWN], TRUE);
        break;
    }

    Sprite_SetPositionXY(app->sprites[SPRITE_TEMPLATE_CURSOR], cursorCol * 72 + 54, cursorRow * 24 + 68);
}
