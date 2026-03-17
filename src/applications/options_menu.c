#include "applications/options_menu.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "render_text.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "system.h"
#include "text.h"
#include "unk_020393C8.h"
#include "vram_transfer.h"

#include "res/graphics/options_menu/config_gra.naix"
#include "res/text/bank/options_menu.h"

#define MENU_TITLE_BASE_TILE      10
#define MENU_TITLE_WIDTH          12
#define MENU_TITLE_HEIGHT         2
#define ENTRIES_BASE_TILE         (MENU_TITLE_BASE_TILE + MENU_TITLE_WIDTH * MENU_TITLE_HEIGHT)
#define ENTRIES_WIDTH             30
#define ENTRIES_HEIGHT            14
#define DESCRIPTION_BASE_TILE     (ENTRIES_BASE_TILE + ENTRIES_WIDTH * ENTRIES_HEIGHT)
#define DESCRIPTION_WIDTH         27
#define DESCRIPTION_HEIGHT        4
#define STANDARD_WINDOW_BASE_TILE (DESCRIPTION_BASE_TILE + DESCRIPTION_WIDTH * DESCRIPTION_HEIGHT)
#define MESSAGE_BOX_BASE_TILE     (STANDARD_WINDOW_BASE_TILE + 9)
#define CONFIRMATION_BASE_TILE    (MESSAGE_BOX_BASE_TILE + 30)

#define CHOICES_X     (12 * 8 + 4)
#define CHOICES_WIDTH (48 * 8)

#define SINGLE_ENTRY_HEIGHT 16
#define FIRST_ENTRY_OFFSET  24

#define NUM_WINDOWS      3
#define NUM_BG_TEMPLATES 5

#define HEAP_ALLOCATION_SIZE 0x10000

enum OptionsMenuEntryID {
    ENTRY_TEXT_SPEED = 0,
    ENTRY_SOUND_MODE,
    ENTRY_BATTLE_SCENE,
    ENTRY_BATTLE_STYLE,
    ENTRY_BUTTON_MODE,
    ENTRY_MESSAGE_BOX_FRAME,
    ENTRY_CLOSE,

    MAX_ENTRIES,
};

typedef struct OptionsMenuEntry {
    u16 numChoices;
    u16 selected;
    String *choices[20];
} OptionsMenuEntry;

typedef struct OptionsMenuData {
    enum HeapID heapID;
    int state;
    int subState;
    int dummy0C;
    u32 saveSelections : 2;
    u32 cursor : 3;
    u32 dummy10_5 : 16;
    u32 redrawMessageBox : 1;
    u32 dummy10_22 : 10;
    BgConfig *bgConfig;
    OptionsMenu options;
    Options *saveOptions;
    MessageLoader *msgLoader;
    void *nscrBuffer;
    NNSG2dScreenData *tilemapData;

    union {
        Window asArray[NUM_WINDOWS];
        struct {
            Window title;
            Window entries;
            Window description;
        };
    } windows;

    union {
        OptionsMenuEntry asArray[MAX_ENTRIES];
        struct {
            OptionsMenuEntry textSpeed;
            OptionsMenuEntry soundMode;
            OptionsMenuEntry battleScene;
            OptionsMenuEntry battleStyle;
            OptionsMenuEntry buttonMode;
            OptionsMenuEntry messageBoxStyle;
            OptionsMenuEntry close;
        };
    } entries;

    Menu *yesNoChoice;
    u32 textPrinter;
    void *dummy2B0;
    void *dummy2B4;
    void *dummy2B8;
} OptionsMenuData;

static void OptionsMenuVBlank(void *data);

static int SetupMenuVisuals(OptionsMenuData *menuData);
static void SetVRAMBanks(void);
static void SetupBgs(OptionsMenuData *menuData);
static void LoadBgTiles(OptionsMenuData *menuData);
static void SetupWindows(OptionsMenuData *menuData);

static void PrintTitleAndEntries(OptionsMenuData *param0);
static void PrintEntryChoices(OptionsMenuData *menuData, u16 entry);
static void PrintEntryDescription(OptionsMenuData *menuData, u16 entry, BOOL scheduleVRAMCopy);
static void PrintBankEntryAsDescription(OptionsMenuData *menuData, u16 entry, BOOL scheduleVRAMCopy);
static BOOL IsTextPrinterDone(const OptionsMenuData *menuData);
static void LoadAllEntryChoices(OptionsMenuData *menuData);

static BOOL ChangesWereMade(OptionsMenuData *menuData);
static void DrawConfirmationPrompt(OptionsMenuData *menuData);

static void ProcessMainInput(OptionsMenuData *menuData);
static u32 ProcessConfirmationInput(OptionsMenuData *menuData);

static int TeardownMenuData(OptionsMenuData *menuData);
static void TeardownBgs(OptionsMenuData *menuData);
static void TeardownTilemaps(OptionsMenuData *menuData);
static void TeardownWindows(OptionsMenuData *menuData);

BOOL OptionsMenu_Init(ApplicationManager *appMan, int *state)
{
    OptionsMenuData *menuData = NULL;
    Options *options = ApplicationManager_Args(appMan);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_OPTIONS_MENU, HEAP_ALLOCATION_SIZE);

    menuData = ApplicationManager_NewData(appMan, sizeof(OptionsMenuData), HEAP_ID_OPTIONS_MENU);
    memset(menuData, 0, sizeof(OptionsMenuData));

    menuData->options.textSpeed = Options_TextSpeed(options);
    menuData->options.battleScene = Options_BattleScene(options);
    menuData->options.battleStyle = Options_BattleStyle(options);
    menuData->options.soundMode = Options_SoundMode(options);
    menuData->options.buttonMode = Options_ButtonMode(options);
    menuData->options.messageBoxStyle = Options_Frame(options);
    menuData->heapID = HEAP_ID_OPTIONS_MENU;
    menuData->saveOptions = options;

    RenderControlFlags_SetCanABSpeedUpPrint(FALSE);

    return TRUE;
}

BOOL OptionsMenu_Exit(ApplicationManager *appMan, int *state)
{
    OptionsMenuData *menuData = ApplicationManager_Data(appMan);

    if (menuData->saveSelections == 1) {
        menuData->options.textSpeed = menuData->entries.textSpeed.selected;
        menuData->options.battleScene = menuData->entries.battleScene.selected;
        menuData->options.battleStyle = menuData->entries.battleStyle.selected;
        menuData->options.soundMode = menuData->entries.soundMode.selected;
        menuData->options.buttonMode = menuData->entries.buttonMode.selected;
        menuData->options.messageBoxStyle = menuData->entries.messageBoxStyle.selected;
    }

    Options_SetTextSpeed(menuData->saveOptions, menuData->options.textSpeed);
    Options_SetBattleScene(menuData->saveOptions, menuData->options.battleScene);
    Options_SetBattleStyle(menuData->saveOptions, menuData->options.battleStyle);
    Options_SetSoundMode(menuData->saveOptions, menuData->options.soundMode);
    Options_SetButtonMode(menuData->saveOptions, menuData->options.buttonMode);
    Options_SetFrame(menuData->saveOptions, menuData->options.messageBoxStyle);
    Sound_SetPlaybackMode(menuData->options.soundMode);
    Options_SetSystemButtonMode(NULL, menuData->options.buttonMode);

    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(menuData->heapID);

    return TRUE;
}

enum OptonsMenuState {
    STATE_SETUP_MENU_VISUALS = 0,
    STATE_WAIT_FOR_FADE_IN,
    STATE_HANDLE_INPUT,
    STATE_CONFIRM_NEW_SETTINGS,
    STATE_WAIT_CONFIRM_NEW_SETTINGS,
    STATE_HANDLE_YES_NO_INPUT,
    STATE_START_VISUAL_TEARDOWN,
    STATE_WAIT_FOR_FADE_OUT,
    STATE_TEARDOWN,
};

BOOL OptionsMenu_Main(ApplicationManager *appMan, int *state)
{
    OptionsMenuData *menuData = ApplicationManager_Data(appMan);
    u32 choiceYesNo;

    switch (menuData->state) {
    case STATE_SETUP_MENU_VISUALS:
        if (!SetupMenuVisuals(menuData)) {
            return FALSE;
        }

        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, menuData->heapID);
        break;

    case STATE_WAIT_FOR_FADE_IN:
        if (!IsScreenFadeDone()) {
            return FALSE;
        }
        break;

    case STATE_HANDLE_INPUT:
        if ((JOY_NEW(PAD_BUTTON_A) && menuData->cursor == ENTRY_CLOSE) || JOY_NEW(PAD_BUTTON_B)) {
            if (ChangesWereMade(menuData) == TRUE) {
                menuData->state = STATE_CONFIRM_NEW_SETTINGS;
            } else {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                menuData->saveSelections = 2;
                menuData->state = STATE_START_VISUAL_TEARDOWN;
            }

            return FALSE;
        }

        ProcessMainInput(menuData);
        return FALSE;

    case STATE_CONFIRM_NEW_SETTINGS:
        RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
        PrintBankEntryAsDescription(menuData, OptionsMenu_Text_ConfirmDialog, FALSE);
        break;

    case STATE_WAIT_CONFIRM_NEW_SETTINGS:
        if (IsTextPrinterDone(menuData)) {
            RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
            DrawConfirmationPrompt(menuData);
            menuData->state = STATE_HANDLE_YES_NO_INPUT;
        }

        return FALSE;

    case STATE_HANDLE_YES_NO_INPUT:
        choiceYesNo = ProcessConfirmationInput(menuData);

        if (choiceYesNo != MENU_NOTHING_CHOSEN) {
            if (choiceYesNo == 0) {
                Sound_StopEffect(SEQ_SE_CONFIRM, 0);
                Sound_PlayEffect(SEQ_SE_DP_SAVE);
                menuData->saveSelections = 1;
            } else {
                menuData->saveSelections = 2;
            }

            menuData->state = STATE_START_VISUAL_TEARDOWN;
        }

        return FALSE;

    case STATE_START_VISUAL_TEARDOWN:
        if (Text_IsPrinterActive(menuData->textPrinter)) {
            Text_RemovePrinter(menuData->textPrinter);
        }

        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, menuData->heapID);
        break;

    case STATE_WAIT_FOR_FADE_OUT:
        if (!IsScreenFadeDone()) {
            return FALSE;
        }
        break;

    case STATE_TEARDOWN:
        if (!TeardownMenuData(menuData)) {
            return FALSE;
        }

        return TRUE;
    }

    menuData->state++;
    return FALSE;
}

static void SetVRAMBanks()
{
    GXBanks banks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_16_G,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE,
    };

    GXLayers_SetBanks(&banks);
}

static void OptionsMenuVBlank(void *data)
{
    OptionsMenuData *menuData = data;

    if (menuData->redrawMessageBox) {
        LoadMessageBoxGraphics(menuData->bgConfig,
            BG_LAYER_MAIN_1,
            MESSAGE_BOX_BASE_TILE,
            15,
            menuData->entries.messageBoxStyle.selected,
            menuData->heapID);
        menuData->redrawMessageBox = FALSE;
    }

    SpriteSystem_TransferOam();
    NNS_GfdDoVramTransfer();
    Bg_RunScheduledUpdates(menuData->bgConfig);
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static int SetupMenuVisuals(OptionsMenuData *menuData)
{
    switch (menuData->subState) {
    case 0:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        SetVRAMBanks();
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        SetupBgs(menuData);
        break;

    case 1:
        LoadBgTiles(menuData);
        menuData->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND,
            NARC_INDEX_MSGDATA__PL_MSG,
            TEXT_BANK_OPTIONS_MENU,
            menuData->heapID);
        LoadAllEntryChoices(menuData);
        break;

    case 2:
        SetupWindows(menuData);
        PrintTitleAndEntries(menuData);
        VramTransfer_New(32, menuData->heapID);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
        NetworkIcon_Init();
        SetVBlankCallback(OptionsMenuVBlank, menuData);
        menuData->subState = 0;
        return TRUE;
    }

    menuData->subState++;
    return FALSE;
}

static int TeardownMenuData(OptionsMenuData *menuData)
{
    int v0 = 0, v1 = 0;

    switch (menuData->subState) {
    case 0:
        VramTransfer_Free();
        TeardownWindows(menuData);

        for (v0 = 0; v0 < MAX_ENTRIES; v0++) {
            for (v1 = 0; v1 < menuData->entries.asArray[v0].numChoices; v1++) {
                String_Free(menuData->entries.asArray[v0].choices[v1]);
            }
        }

        MessageLoader_Free(menuData->msgLoader);
        TeardownTilemaps(menuData);
        TeardownBgs(menuData);
        break;

    case 1:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        menuData->subState = 0;
        return TRUE;
    }

    menuData->subState++;
    return FALSE;
}

static void SetupBgs(OptionsMenuData *menuData)
{
    menuData->bgConfig = BgConfig_New(menuData->heapID);

    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplates[NUM_BG_TEMPLATES] = {
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
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
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
            .charBase = GX_BG_CHARBASE_0x00000,
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
            .screenBase = GX_BG_SCRBASE_0xe000,
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
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    for (int i = 0; i < NUM_BG_TEMPLATES; i++) {
        static const int sBgLayers[NUM_BG_TEMPLATES] = {
            // Must declared inline to match.
            BG_LAYER_MAIN_0,
            BG_LAYER_MAIN_1,
            BG_LAYER_MAIN_2,
            BG_LAYER_MAIN_3,
            BG_LAYER_SUB_0,
        };

        Bg_InitFromTemplate(menuData->bgConfig, sBgLayers[i], &(bgTemplates[i]), BG_TYPE_STATIC);
        Bg_ClearTilemap(menuData->bgConfig, sBgLayers[i]);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, menuData->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, menuData->heapID);
}

static void TeardownBgs(OptionsMenuData *menuData)
{
    Bg_FreeTilemapBuffer(menuData->bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(menuData->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(menuData->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(menuData->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(menuData->bgConfig, BG_LAYER_MAIN_0);
    Heap_Free(menuData->bgConfig);
}

static void LoadBgTiles(OptionsMenuData *menuData)
{
    NNSG2dCharacterData *cursorTiles;
    NNSG2dPaletteData *cursorPalette;

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__CONFIG_GRA, menuData->heapID);

    u32 memberSize = NARC_GetMemberSize(narc, tiles_NCGR);
    void *memberBuffer = Heap_AllocAtEnd(menuData->heapID, memberSize);
    NARC_ReadWholeMember(narc, tiles_NCGR, memberBuffer);
    NNS_G2dGetUnpackedCharacterData(memberBuffer, &cursorTiles);
    Bg_LoadTiles(menuData->bgConfig, BG_LAYER_MAIN_0, cursorTiles->pRawData, cursorTiles->szByte, 0);
    Bg_LoadTiles(menuData->bgConfig, BG_LAYER_SUB_0, cursorTiles->pRawData, cursorTiles->szByte, 0);
    Heap_Free(memberBuffer);

    memberSize = NARC_GetMemberSize(narc, tiles_NCLR);
    memberBuffer = Heap_AllocAtEnd(menuData->heapID, memberSize);
    NARC_ReadWholeMember(narc, tiles_NCLR, memberBuffer);
    NNS_G2dGetUnpackedPaletteData(memberBuffer, &cursorPalette);
    Bg_LoadPalette(BG_LAYER_MAIN_0, cursorPalette->pRawData, PALETTE_SIZE_BYTES, 0);
    Bg_LoadPalette(BG_LAYER_SUB_0, cursorPalette->pRawData, PALETTE_SIZE_BYTES, 0);
    Heap_Free(memberBuffer);

    memberSize = NARC_GetMemberSize(narc, tilemap_bin);
    menuData->nscrBuffer = Heap_Alloc(menuData->heapID, memberSize);
    NARC_ReadWholeMember(narc, tilemap_bin, menuData->nscrBuffer);
    NNS_G2dGetUnpackedScreenData(menuData->nscrBuffer, &(menuData->tilemapData));

    NARC_dtor(narc);

    Bg_FillTilemapRect(menuData->bgConfig,
        BG_LAYER_MAIN_2,
        1,
        0,
        0,
        32,
        32,
        TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(menuData->bgConfig,
        BG_LAYER_SUB_0,
        1,
        0,
        0,
        32,
        32,
        TILEMAP_FILL_VAL_INCLUDES_PALETTE);

    Bg_CopyRectToTilemapRect(menuData->bgConfig,
        BG_LAYER_MAIN_0,
        0,
        0,
        32,
        2,
        menuData->tilemapData->rawData,
        0,
        0,
        menuData->tilemapData->screenWidth / 8,
        menuData->tilemapData->screenHeight / 8);

    Bg_SetOffset(menuData->bgConfig, BG_LAYER_MAIN_0, BG_OFFSET_UPDATE_SET_Y, -FIRST_ENTRY_OFFSET);
    Bg_ScheduleTilemapTransfer(menuData->bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleTilemapTransfer(menuData->bgConfig, BG_LAYER_MAIN_0);
    Bg_ScheduleTilemapTransfer(menuData->bgConfig, BG_LAYER_SUB_0);
}

static void TeardownTilemaps(OptionsMenuData *menuData)
{
    Heap_Free(menuData->nscrBuffer);
}

static void SetupWindows(OptionsMenuData *menuData)
{
    Window_Add(menuData->bgConfig,
        &menuData->windows.title,
        BG_LAYER_MAIN_1,
        1,
        0,
        MENU_TITLE_WIDTH,
        MENU_TITLE_HEIGHT,
        13,
        MENU_TITLE_BASE_TILE);
    Window_Add(menuData->bgConfig,
        &menuData->windows.entries,
        BG_LAYER_MAIN_1,
        1,
        3,
        ENTRIES_WIDTH,
        ENTRIES_HEIGHT,
        13,
        ENTRIES_BASE_TILE);
    Window_Add(menuData->bgConfig,
        &menuData->windows.description,
        BG_LAYER_MAIN_1,
        2,
        19,
        DESCRIPTION_WIDTH,
        DESCRIPTION_HEIGHT,
        12,
        DESCRIPTION_BASE_TILE);
    LoadStandardWindowGraphics(menuData->bgConfig,
        BG_LAYER_MAIN_1,
        STANDARD_WINDOW_BASE_TILE,
        14,
        STANDARD_WINDOW_SYSTEM,
        menuData->heapID);
    LoadMessageBoxGraphics(menuData->bgConfig,
        BG_LAYER_MAIN_1,
        MESSAGE_BOX_BASE_TILE,
        15,
        menuData->options.messageBoxStyle,
        menuData->heapID);

    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), menuData->heapID);
    Font_LoadTextPalette(PAL_LOAD_SUB_BG, PLTT_OFFSET(13), menuData->heapID);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(12), menuData->heapID);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_SUB_BG, PLTT_OFFSET(12), menuData->heapID);

    Window_FillTilemap(&menuData->windows.title, PIXEL_FILL(0));
    Window_FillTilemap(&menuData->windows.entries, PIXEL_FILL(15));
    Window_FillTilemap(&menuData->windows.description, PIXEL_FILL(15));
    Window_ClearTilemap(&menuData->windows.description);
    Window_ClearTilemap(&menuData->windows.entries);
    Window_ClearTilemap(&menuData->windows.title);

    Window_DrawStandardFrame(&menuData->windows.entries, TRUE, STANDARD_WINDOW_BASE_TILE, 14);
    Window_DrawMessageBoxWithScrollCursor(&menuData->windows.description, TRUE, MESSAGE_BOX_BASE_TILE, 15);
}

static void TeardownWindows(OptionsMenuData *menuData)
{
    Window_EraseStandardFrame(&menuData->windows.entries, FALSE);
    Window_EraseMessageBox(&menuData->windows.description, FALSE);

    for (u16 i = 0; i < 3; i++) {
        Window_ClearAndCopyToVRAM(&menuData->windows.asArray[i]);
        Window_FillTilemap(&menuData->windows.asArray[i], 0);
        Window_ClearTilemap(&menuData->windows.asArray[i]);
        Window_Remove(&menuData->windows.asArray[i]);
    }
}

static const u8 sEntryLabels[MAX_ENTRIES] = {
    OptionsMenu_Text_TextSpeedLabel,
    OptionsMenu_Text_SoundModeLabel,
    OptionsMenu_Text_BattleSceneLabel,
    OptionsMenu_Text_BattleStyleLabel,
    OptionsMenu_Text_ButtonModeLabel,
    OptionsMenu_Text_MessageBoxStyleLabel,
    OptionsMenu_Text_CloseLabel,
};

static void PrintTitleAndEntries(OptionsMenuData *menuData)
{
    u16 i; // Must forward-declare to match
    TextColor transparentBg = TEXT_COLOR(1, 2, 0);
    TextColor whiteBg = TEXT_COLOR(1, 2, 15);

    String *string = String_Init(256, menuData->heapID);
    MessageLoader_GetString(menuData->msgLoader, OptionsMenu_Text_Title, string);
    Text_AddPrinterWithParamsAndColor(&menuData->windows.title,
        FONT_SYSTEM,
        string,
        2,
        2,
        TEXT_SPEED_INSTANT,
        transparentBg,
        NULL);

    for (i = 0; i < MAX_ENTRIES; i++) {
        String_Clear(string);
        MessageLoader_GetString(menuData->msgLoader, sEntryLabels[i], string);
        Text_AddPrinterWithParamsAndColor(&menuData->windows.entries,
            FONT_SYSTEM,
            string,
            4,
            16 * i,
            TEXT_SPEED_NO_TRANSFER,
            whiteBg,
            NULL);
    }

    for (i = 0; i < MAX_ENTRIES; i++) {
        PrintEntryChoices(menuData, i);
    }

    PrintEntryDescription(menuData, ENTRY_TEXT_SPEED, TRUE);
    Window_CopyToVRAM(&menuData->windows.title);
    Window_CopyToVRAM(&menuData->windows.entries);
    String_Free(string);
}

static const int sNumChoicesPerEntry[MAX_ENTRIES] = {
    3,
    2,
    2,
    2,
    3,
    20,
    0,
};

static const u8 sFirstChoicePerEntry[MAX_ENTRIES] = {
    OptionsMenu_Text_TextSpeedSlow,
    OptionsMenu_Text_SoundModeStereo,
    OptionsMenu_Text_BattleSceneOn,
    OptionsMenu_Text_BattleStyleShift,
    OptionsMenu_Text_ButtonModeNormal,
    OptionsMenu_Text_MessageBoxStyle_01,
    NULL,
};

static void LoadAllEntryChoices(OptionsMenuData *menuData)
{
    u16 i, j;
    for (i = 0; i < MAX_ENTRIES; i++) {
        menuData->entries.asArray[i].numChoices = sNumChoicesPerEntry[i];
        for (j = 0; j < sNumChoicesPerEntry[i]; j++) {
            menuData->entries.asArray[i].choices[j] = MessageLoader_GetNewString(menuData->msgLoader, sFirstChoicePerEntry[i] + j);
        }
    }

    menuData->entries.textSpeed.selected = menuData->options.textSpeed;
    menuData->entries.battleScene.selected = menuData->options.battleScene;
    menuData->entries.battleStyle.selected = menuData->options.battleStyle;
    menuData->entries.soundMode.selected = menuData->options.soundMode;
    menuData->entries.buttonMode.selected = menuData->options.buttonMode;
    menuData->entries.messageBoxStyle.selected = menuData->options.messageBoxStyle;
}

static const s8 sEntryXOffsets[] = { 0, 0, 0, 0, 0, 0, 0 };

static void PrintEntryChoices(OptionsMenuData *menuData, u16 entry)
{
    TextColor darkGray, red, color;
    u16 i;
    u8 textSpeed;
    s8 xOffset = 0;

    darkGray = TEXT_COLOR(1, 2, 15);
    red = TEXT_COLOR(3, 4, 15);

    Window_FillRectWithColor(&menuData->windows.entries, PIXEL_FILL(15), CHOICES_X + sEntryXOffsets[entry], entry * SINGLE_ENTRY_HEIGHT, CHOICES_WIDTH, SINGLE_ENTRY_HEIGHT);
    if (entry == ENTRY_MESSAGE_BOX_FRAME) {
        Text_AddPrinterWithParamsAndColor(&menuData->windows.entries,
            FONT_SYSTEM,
            menuData->entries.asArray[entry].choices[menuData->entries.asArray[entry].selected],
            48 + CHOICES_X,
            entry * SINGLE_ENTRY_HEIGHT,
            TEXT_SPEED_NO_TRANSFER,
            red,
            NULL);
        Window_CopyToVRAM(&menuData->windows.entries);
        menuData->redrawMessageBox = TRUE;
        return;
    }

    if (entry == ENTRY_SOUND_MODE) {
        Sound_SetPlaybackMode(menuData->entries.asArray[entry].selected);
    } else if (entry == ENTRY_BUTTON_MODE) {
        Options_SetSystemButtonMode(NULL, menuData->entries.asArray[entry].selected);
    } else if (entry == ENTRY_TEXT_SPEED) {
        Options_SetTextSpeed(menuData->saveOptions, menuData->entries.asArray[entry].selected);
        PrintEntryDescription(menuData, entry, FALSE);
    }

    xOffset = 0;
    for (i = 0; i < menuData->entries.asArray[entry].numChoices; i++) {
        if (i == menuData->entries.asArray[entry].selected) {
            color = red;
        } else {
            color = darkGray;
        }

        if (i == menuData->entries.asArray[entry].numChoices - 1) {
            textSpeed = TEXT_SPEED_NO_TRANSFER;
        } else {
            textSpeed = TEXT_SPEED_NO_TRANSFER;
        }

        if (entry == ENTRY_BUTTON_MODE) {
            Text_AddPrinterWithParamsAndColor(&menuData->windows.entries,
                FONT_SYSTEM,
                menuData->entries.asArray[entry].choices[i],
                xOffset + CHOICES_X,
                entry * SINGLE_ENTRY_HEIGHT,
                textSpeed,
                color,
                NULL);
            xOffset += Font_CalcStringWidth(FONT_SYSTEM, menuData->entries.asArray[entry].choices[i], 0) + 12;
        } else {
            Text_AddPrinterWithParamsAndColor(&menuData->windows.entries,
                FONT_SYSTEM,
                menuData->entries.asArray[entry].choices[i],
                i * 48 + CHOICES_X + sEntryXOffsets[entry],
                entry * SINGLE_ENTRY_HEIGHT,
                textSpeed,
                color,
                NULL);
        }
    }

    Window_CopyToVRAM(&menuData->windows.asArray[1]);
}

static void PrintBankEntryAsDescription(OptionsMenuData *menuData, u16 entry, BOOL scheduleVRAMCopy)
{
    // Kill any active printer
    if (IsTextPrinterDone(menuData) == FALSE) {
        Text_RemovePrinter(menuData->textPrinter);
    }

    u8 renderDelay = Options_TextFrameDelay(menuData->saveOptions);

    Window_FillTilemap(&menuData->windows.description, 15);

    TextColor color = TEXT_COLOR(1, 2, 15);
    String *string = String_Init(256, menuData->heapID);
    MessageLoader_GetString(menuData->msgLoader, entry, string);

    if (scheduleVRAMCopy == FALSE) {
        menuData->textPrinter = Text_AddPrinterWithParamsAndColor(&menuData->windows.description,
            FONT_MESSAGE,
            string,
            4,
            0,
            renderDelay,
            color,
            NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(&menuData->windows.description,
            FONT_MESSAGE,
            string,
            4,
            0,
            TEXT_SPEED_NO_TRANSFER,
            color,
            NULL);
        Window_ScheduleCopyToVRAM(&menuData->windows.description);
    }

    String_Free(string);
}

static BOOL IsTextPrinterDone(const OptionsMenuData *menuData)
{
    return Text_IsPrinterActive(menuData->textPrinter) == FALSE;
}

static void ProcessMainInput(OptionsMenuData *menuData)
{
    OptionsMenuEntry *entry = &menuData->entries.asArray[menuData->cursor];

    if (menuData->cursor != ENTRY_CLOSE) {
        if (JOY_NEW(PAD_KEY_RIGHT)) {
            entry->selected = (entry->selected + 1) % entry->numChoices;
            PrintEntryChoices(menuData, menuData->cursor);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (JOY_NEW(PAD_KEY_LEFT)) {
            entry->selected = (entry->selected + entry->numChoices - 1) % entry->numChoices;
            PrintEntryChoices(menuData, menuData->cursor);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
    }

    if (JOY_NEW(PAD_KEY_UP)) {
        menuData->cursor = (menuData->cursor + 7 - 1) % 7;
        Bg_ScheduleScroll(menuData->bgConfig,
            BG_LAYER_MAIN_0,
            BG_OFFSET_UPDATE_SET_Y,
            -(menuData->cursor * SINGLE_ENTRY_HEIGHT + FIRST_ENTRY_OFFSET));

        PrintEntryDescription(menuData, menuData->cursor, TRUE);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (JOY_NEW(PAD_KEY_DOWN)) {
        menuData->cursor = (menuData->cursor + 1) % 7;
        Bg_ScheduleScroll(menuData->bgConfig,
            BG_LAYER_MAIN_0,
            BG_OFFSET_UPDATE_SET_Y,
            -(menuData->cursor * SINGLE_ENTRY_HEIGHT + FIRST_ENTRY_OFFSET));

        PrintEntryDescription(menuData, menuData->cursor, TRUE);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}

static BOOL ChangesWereMade(OptionsMenuData *menuData)
{
    return menuData->options.textSpeed != menuData->entries.textSpeed.selected
        || menuData->options.battleScene != menuData->entries.battleScene.selected
        || menuData->options.battleStyle != menuData->entries.battleStyle.selected
        || menuData->options.soundMode != menuData->entries.soundMode.selected
        || menuData->options.buttonMode != menuData->entries.buttonMode.selected
        || menuData->options.messageBoxStyle != menuData->entries.messageBoxStyle.selected;
}

static const WindowTemplate sConfirmationWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_3,
    .tilemapLeft = 25,
    .tilemapTop = 13,
    .width = 6,
    .height = 4,
    .palette = 13,
    .baseTile = CONFIRMATION_BASE_TILE,
};

static void DrawConfirmationPrompt(OptionsMenuData *menuData)
{
    menuData->yesNoChoice = Menu_MakeYesNoChoice(menuData->bgConfig,
        &sConfirmationWindowTemplate,
        STANDARD_WINDOW_BASE_TILE,
        14,
        menuData->heapID);
}

static u32 ProcessConfirmationInput(OptionsMenuData *menuData)
{
    return Menu_ProcessInputAndHandleExit(menuData->yesNoChoice, menuData->heapID);
}

static const u8 sEntryDescriptions[MAX_ENTRIES] = {
    OptionsMenu_Text_TextSpeedDescription,
    OptionsMenu_Text_SoundModeDescription,
    OptionsMenu_Text_BattleSceneDescription,
    OptionsMenu_Text_BattleStyleDescription,
    OptionsMenu_Text_ButtonModeDescription,
    OptionsMenu_Text_MessageBoxStyleDescription,
    OptionsMenu_Text_CloseDescription,
};

static void PrintEntryDescription(OptionsMenuData *menuData, u16 entry, BOOL scheduleVRAMCopy)
{
    PrintBankEntryAsDescription(menuData, sEntryDescriptions[entry], scheduleVRAMCopy);
}
