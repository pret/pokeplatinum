#include "applications/poffin_case/manager.h"

#include <nitro.h>

#include "applications/poffin_case/main.h"
#include "applications/poffin_case/menus.h"
#include "applications/poffin_case/sprites.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "poffin_sprite.h"
#include "poffin_types.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "unk_0208C098.h"
#include "vram_transfer.h"

#include "res/graphics/poffin_case/poru_gra.naix"
#include "res/text/bank/poffin_case.h"

typedef enum PoffinManagerState {
    STATE_SELECT_POFFIN = 0,
    STATE_INIT_ACTION_MENU,
    STATE_SELECT_ACTION,
    STATE_INIT_DELETE_POFFIN_CONFIRM,
    STATE_CONFIRM_DELETE_POFFIN,
    STATE_DELETE_POFFIN,
} PoffinManagerState;

typedef BOOL (*PoffinManagerStateFunc)(PoffinManager *);

static int UpdateApp(PoffinManager *app);
static int LoadApp(PoffinManager *app);
static int UnloadApp(PoffinManager *app);
static void SetGXBanks(void);
static void InitBackgrounds(PoffinManager *app);
static void FreeBackgrounds(PoffinManager *app);
static void LoadGraphics(PoffinManager *app);
static void Dummy(PoffinManager *app);
static void InitWindows(PoffinManager *app);
static void FreeWindows(PoffinManager *app);
static void InitMessages(PoffinManager *app);
static void FreeMessages(PoffinManager *app);
static void InitSprites(PoffinManager *app);
static void FreeSprites(PoffinManager *app);
static int State_SelectPoffin(PoffinManager *app);
static int State_InitActionMenu(PoffinManager *app);
static int State_SelectAction(PoffinManager *app);
static int State_InitDeletePoffinConfirm(PoffinManager *app);
static int State_ConfirmDeletePoffin(PoffinManager *app);
static int State_DeletePoffin(PoffinManager *app);

static const PoffinManagerStateFunc sStateFuncs[] = {
    [STATE_SELECT_POFFIN] = State_SelectPoffin,
    [STATE_INIT_ACTION_MENU] = State_InitActionMenu,
    [STATE_SELECT_ACTION] = State_SelectAction,
    [STATE_INIT_DELETE_POFFIN_CONFIRM] = State_InitDeletePoffinConfirm,
    [STATE_CONFIRM_DELETE_POFFIN] = State_ConfirmDeletePoffin,
    [STATE_DELETE_POFFIN] = State_DeletePoffin
};

BOOL PoffinManager_Init(ApplicationManager *appMan, int *unused)
{
    PoffinCaseAppData *caseData = ApplicationManager_Args(appMan);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POFFIN_MANAGER, 0x20000);

    PoffinManager *app = ApplicationManager_NewData(appMan, sizeof(PoffinManager), HEAP_ID_POFFIN_MANAGER);
    MI_CpuClear8(app, sizeof(PoffinManager));

    app->heapID = HEAP_ID_POFFIN_MANAGER;
    app->data = caseData;
    app->flavorFilter = caseData->flavorFilter;
    app->buttonHeld = 0xffff;

    return TRUE;
}

BOOL PoffinManager_Main(ApplicationManager *appMan, int *unused)
{
    PoffinManager *app = ApplicationManager_Data(appMan);

    if (UpdateApp(app)) {
        return TRUE;
    }

    return FALSE;
}

BOOL PoffinManager_Exit(ApplicationManager *appMan, int *unused)
{
    PoffinManager *app = ApplicationManager_Data(appMan);

    app->data->selectedPoffin = app->selectedPoffin;
    app->data->poffinRemoved = app->givePoffin;
    app->data->flavorFilter = app->flavorFilter;
    app->data->listPos = app->listPos;
    app->data->cursorPos = app->cursorPos;

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(app->heapID);

    return TRUE;
}

static int UpdateApp(PoffinManager *app)
{
    switch (app->lifecycle) {
    case 0:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        EnableTouchPad();
        InitializeTouchPad(4);
        break;
    case 1:
        if (!LoadApp(app)) {
            return FALSE;
        }

        app->dummy = 0;
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, app->heapID);
        break;
    case 2:
        PoffinManager_UpdateSprites(app);

        if (!IsScreenFadeDone()) {
            return FALSE;
        }
        break;
    case 3:
        PoffinManager_UpdateSprites(app);

        if (!sStateFuncs[app->state](app)) {
            return FALSE;
        }

        app->dummy = 0;
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, app->heapID);
        break;
    case 4:
        PoffinManager_UpdateSprites(app);

        if (!IsScreenFadeDone()) {
            return FALSE;
        }
        break;
    case 5:
        if (!UnloadApp(app)) {
            return FALSE;
        }
        break;
    case 6:
        DisableTouchPad();
        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        SetVBlankCallback(NULL, NULL);
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();
        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        break;
    default:
        return TRUE;
    }

    app->lifecycle++;
    return FALSE;
}

static void VBlankCallback(void *ptr)
{
    PoffinManager *app = ptr;

    if (app->spriteSys != NULL) {
        SpriteSystem_TransferOam();
    }

    VramTransfer_Process();
    Bg_RunScheduledUpdates(app->bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static int ProcessTouchScreenAction(PoffinManager *app)
{
    int hitbox;
    static const TouchScreenRect sHitboxes[] = {
        [FLAVOR_SPICY] = { .rect = { .top = 34, .bottom = 62, .left = 96, .right = 160 } },
        [FLAVOR_DRY] = { .rect = { .top = 82, .bottom = 110, .left = 160, .right = 224 } },
        [FLAVOR_SWEET] = { .rect = { .top = 148, .bottom = 176, .left = 136, .right = 200 } },
        [FLAVOR_BITTER] = { .rect = { .top = 150, .bottom = 178, .left = 56, .right = 120 } },
        [FLAVOR_SOUR] = { .rect = { .top = 82, .bottom = 110, .left = 32, .right = 96 } },
        [FLAVOR_MAX] = { .rect = { .top = 102, .bottom = 130, .left = 96, .right = 160 } },
        { .rect = { .top = 255, .bottom = 0, .left = 0, .right = 0 } }
    };

    hitbox = TouchScreen_CheckRectanglePressed(sHitboxes);

    if (hitbox != TOUCHSCREEN_INPUT_NONE) {
        return hitbox;
    }

    hitbox = TouchScreen_CheckRectangleHeld(sHitboxes);

    if (hitbox == TOUCHSCREEN_INPUT_NONE) {
        if (app->buttonHeld == TRUE) {
            PoffinManager_UpdateFilterButton(app, app->flavorFilter, BUTTON_ACTION_RELEASE_SELECTED);
        }
    }

    return -1;
}

static BOOL State_SelectPoffin(PoffinManager *app)
{
    u32 menuSelection = LIST_NOTHING_CHOSEN;

    if (app->poffinMenu == NULL) {
        return FALSE;
    }

    int touchScreenAction = ProcessTouchScreenAction(app);

    if (gSystem.heldKeys != 0) {
        if (!app->buttonHeld) {
            menuSelection = ListMenu_ProcessInput(app->poffinMenu);
        }
    } else {
        if (touchScreenAction >= 0) {
            PoffinManager_UpdatePoffinFilter(app, touchScreenAction);
        }
        return FALSE;
    }

    if (menuSelection == LIST_NOTHING_CHOSEN) {
        return FALSE;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        app->selectedPoffin = POFFIN_LIST_SENTINEL;
        app->givePoffin = FALSE;
        return TRUE;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        switch (menuSelection) {
        case LIST_NOTHING_CHOSEN:
        case LIST_CANCEL:
        case POFFIN_LIST_SENTINEL:
            app->selectedPoffin = POFFIN_LIST_SENTINEL;
            app->givePoffin = FALSE;
            return TRUE;
        default:
            app->selectedPoffin = menuSelection;
            app->state = STATE_INIT_ACTION_MENU;
            return FALSE;
        }
    }

    return FALSE;
}

static BOOL State_InitActionMenu(PoffinManager *app)
{
    PoffinCaseApp_UpdateListSprites(app, 1);
    PoffinManager_CreateActionMenu(app);

    app->state = STATE_SELECT_ACTION;

    return FALSE;
}

static BOOL State_SelectAction(PoffinManager *app)
{
    u32 menuSelection = ListMenu_ProcessInput(app->actionMenu);

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        PoffinManager_FreeActionMenu(app);
        PoffinCaseApp_UpdateListSprites(app, 0);
        app->state = STATE_SELECT_POFFIN;
        return FALSE;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        switch (menuSelection) {
        case 0:
            app->givePoffin = TRUE;
            return TRUE;
        case 1:
            PoffinManager_FreeActionMenu(app);
            PoffinManager_ShowDiscardQuestion(app);
            app->state = STATE_INIT_DELETE_POFFIN_CONFIRM;
            break;
        case LIST_NOTHING_CHOSEN:
        case LIST_CANCEL:
        default:
            PoffinManager_FreeActionMenu(app);
            PoffinCaseApp_UpdateListSprites(app, 0);
            app->state = STATE_SELECT_POFFIN;
            break;
        }
    }

    return FALSE;
}

static BOOL State_InitDeletePoffinConfirm(PoffinManager *app)
{
    if (Text_IsPrinterActive(app->printerID)) {
        return FALSE;
    }

    PoffinManager_CreateYesNoMenu(app);
    app->state = STATE_CONFIRM_DELETE_POFFIN;
    return FALSE;
}

static BOOL State_ConfirmDeletePoffin(PoffinManager *app)
{
    switch (Menu_ProcessInputAndHandleExit(app->yesNoMenu, app->heapID)) {
    case 0:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        PoffinManager_ShowThrownOutMessage(app);
        app->state = STATE_DELETE_POFFIN;
        return FALSE;
    case MENU_CANCELED:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Window_EraseMessageBox(&app->windows[2], FALSE);
        app->state = STATE_INIT_ACTION_MENU;
        return FALSE;
    }

    return FALSE;
}

static BOOL State_DeletePoffin(PoffinManager *app)
{
    if (Text_IsPrinterActive(app->printerID)) {
        return FALSE;
    }

    if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) == 0) {
        return FALSE;
    }

    Window_EraseMessageBox(&app->windows[2], TRUE);
    Window_ClearAndCopyToVRAM(&app->windows[2]);

    app->data->poffins[app->selectedPoffin].deleted = 1;
    app->data->poffinRemoved = TRUE;

    PoffinManager_FreePoffinList(app, 0);
    PoffinManager_InitPoffinList(app);
    PoffinCaseApp_UpdateListSprites(app, 0);

    app->state = STATE_SELECT_POFFIN;
    return FALSE;
}

static BOOL LoadApp(PoffinManager *app)
{
    switch (app->loadState) {
    case 0:
        InitBackgrounds(app);
        break;
    case 1:
        LoadGraphics(app);
        break;
    case 2:
        InitMessages(app);
        InitWindows(app);
        break;
    case 3:
        PoffinManager_InitSpriteSystem(app);
        break;
    case 4:
        InitSprites(app);
        break;
    case 5:
        PoffinManager_InitPoffinList(app);
        PoffinManager_UpdateFilterButton(app, app->flavorFilter, BUTTON_ACTION_SET_AS_ACTIVE);
        SetVBlankCallback(VBlankCallback, app);
        app->loadState = 0;
        return TRUE;
    }

    app->loadState++;
    return FALSE;
}

static int UnloadApp(PoffinManager *app)
{
    switch (app->loadState) {
    case 0:
        if (app->actionList != NULL) {
            PoffinManager_FreeActionMenu(app);
        }

        PoffinManager_FreePoffinList(app, TRUE);
        break;
    case 1:
        FreeSprites(app);
        PoffinManager_FreeSpriteSystem(app);
        break;
    case 2:
        FreeWindows(app);
        FreeMessages(app);
        break;
    case 3:
        Dummy(app);
        break;
    case 4:
        FreeBackgrounds(app);
        break;
    case 5:
        return TRUE;
    }

    app->loadState++;
    return FALSE;
}

static void SetGXBanks(void)
{
    GXBanks banks = {
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

    GXLayers_SetBanks(&banks);
}

static void InitBackgrounds(PoffinManager *app)
{
    SetGXBanks();

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
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x10000,
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
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x10000,
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
    };

    for (int i = 0, j = 0; j < 6; ++i, j++) {
        Bg_InitFromTemplate(app->bgConfig, i, &bgTemplates[j], BG_TYPE_STATIC);
        Bg_ClearTilemap(app->bgConfig, i);
        Bg_ClearTilesRange(i, 32, 0, app->heapID);
    }
}

static void FreeBackgrounds(PoffinManager *app)
{
    for (int i = 0; i < 6; i++) {
        Bg_FreeTilemapBuffer(app->bgConfig, i);
    }

    Heap_Free(app->bgConfig);
}

static void LoadGraphics(PoffinManager *poffinCase)
{
    NARC *poru_gra = NARC_ctor(NARC_INDEX_GRAPHIC__PORU_GRA, poffinCase->heapID);

    App_LoadGraphicMember(poffinCase->bgConfig, poffinCase->heapID, poru_gra, NARC_INDEX_GRAPHIC__PORU_GRA, main_tiles_NCGR, BG_LAYER_MAIN_0, GRAPHICSMEMBER_TILES, 0, 0);
    App_LoadGraphicMember(poffinCase->bgConfig, poffinCase->heapID, poru_gra, NARC_INDEX_GRAPHIC__PORU_GRA, sub_tiles_NCGR, BG_LAYER_SUB_1, GRAPHICSMEMBER_TILES, 0, 0);
    App_LoadGraphicMember(poffinCase->bgConfig, poffinCase->heapID, poru_gra, NARC_INDEX_GRAPHIC__PORU_GRA, background_NCLR, BG_LAYER_MAIN_0, GRAPHICSMEMBER_PALETTE, PALETTE_SIZE_BYTES * 12, 0);
    App_LoadGraphicMember(poffinCase->bgConfig, poffinCase->heapID, poru_gra, NARC_INDEX_GRAPHIC__PORU_GRA, background_NCLR, BG_LAYER_SUB_0, GRAPHICSMEMBER_PALETTE, PALETTE_SIZE_BYTES * 12, 0);
    App_LoadGraphicMember(poffinCase->bgConfig, poffinCase->heapID, poru_gra, NARC_INDEX_GRAPHIC__PORU_GRA, main_tilemap_NSCR, BG_LAYER_MAIN_3, GRAPHICSMEMBER_TILEMAP, 0, 0);
    App_LoadGraphicMember(poffinCase->bgConfig, poffinCase->heapID, poru_gra, NARC_INDEX_GRAPHIC__PORU_GRA, sub_tilemap_NSCR, BG_LAYER_SUB_1, GRAPHICSMEMBER_TILEMAP, 0, 0);
    NARC_dtor(poru_gra);
    Bg_ScheduleTilemapTransfer(poffinCase->bgConfig, BG_LAYER_MAIN_3);
    Bg_ScheduleTilemapTransfer(poffinCase->bgConfig, BG_LAYER_SUB_1);
}

static void Dummy(PoffinManager *app)
{
    return;
}

static void InitWindows(PoffinManager *app)
{
    static const struct {
        u8 bgLayer, left, top, width, height, palette;
        u16 baseTile;
    } windowParams[] = {
        { 2, 2, 4, 22, 12, 13, 40 },
        { 2, 11, 20, 10, 2, 13, 305 },
        { 1, 2, 19, 27, 4, 12, 325 },
        { 1, 26, 17, 5, 6, 13, 433 },
        { 1, 26, 13, 5, 4, 13, 463 },
        { 1, 0, 0, 16, 2, 13, 483 },
        { 4, 6, 0, 20, 3, 13, 1 },
        { 4, 12, 5, 8, 3, 5, 65 },
        { 4, 20, 10, 8, 3, 6, 89 },
        { 4, 17, 19, 8, 3, 7, 113 },
        { 4, 7, 19, 8, 3, 8, 137 },
        { 4, 4, 10, 8, 3, 9, 161 },
        { 4, 12, 13, 8, 3, 10, 185 }
    };

    LoadStandardWindowGraphics(app->bgConfig, BG_LAYER_MAIN_1, 31, 15, STANDARD_WINDOW_SYSTEM, app->heapID);
    LoadMessageBoxGraphics(app->bgConfig, BG_LAYER_MAIN_1, 1, 14, Options_Frame(app->data->options), app->heapID);
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), app->heapID);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(12), app->heapID);
    Font_LoadTextPalette(PAL_LOAD_SUB_BG, PLTT_OFFSET(13), app->heapID);

    for (int i = 0; i < NUM_WINDOWS; i++) {
        Window_Add(app->bgConfig, &app->windows[i], windowParams[i].bgLayer, windowParams[i].left, windowParams[i].top, windowParams[i].width, windowParams[i].height, windowParams[i].palette, windowParams[i].baseTile);
        Window_FillTilemap(&app->windows[i], 0);
    }

    PoffinManager_PrintHeaderandButtons(app);
}

static void FreeWindows(PoffinManager *app)
{
    for (int i = 0; i < NUM_WINDOWS; i++) {
        Window_ClearAndCopyToVRAM(&app->windows[i]);
        Window_Remove(&app->windows[i]);
    }
}

static void InitMessages(PoffinManager *app)
{
    Font_InitManager(FONT_SUBSCREEN, app->heapID);

    app->msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POFFIN_CASE, app->heapID);
    app->poffinTypes = PoffinTypeList_New(app->heapID);
    app->messages.template = StringTemplate_New(2, 64, app->heapID);
    app->messages.string = String_Init(64, app->heapID);
    app->messages.closeStr = MessageLoader_GetNewString(app->msgLoader, PoffinCase_Text_Close);
    app->messages.listItemStr = MessageLoader_GetNewString(app->msgLoader, PoffinCase_Text_ListItem);
    app->messages.smoothStr = MessageLoader_GetNewString(app->msgLoader, PoffinCase_Text_Smooth);
    app->messages.discardStr = MessageLoader_GetNewString(app->msgLoader, PoffinCase_Text_Discard);
    app->messages.thrownOutStr = MessageLoader_GetNewString(app->msgLoader, PoffinCase_Text_ThrownOut);
    app->messages.headerStr = MessageLoader_GetNewString(app->msgLoader, PoffinCase_Text_PoffinCase);

    for (int i = 0; i < FLAVOR_MAX + 1; i++) {
        app->messages.flavorStrs[i] = MessageLoader_GetNewString(app->msgLoader, 11 + i);

        if (i >= FLAVOR_MAX) {
            break;
        }

        app->messages.flavorDescs[i] = MessageLoader_GetNewString(app->msgLoader, 17 + i);
    }

    app->messages.textDelay = Options_TextFrameDelay(app->data->options);
}

static void FreeMessages(PoffinManager *app)
{
    for (int i = 0; i < FLAVOR_MAX + 1; i++) {
        String_Free(app->messages.flavorStrs[i]);

        if (i >= FLAVOR_MAX) {
            break;
        }

        String_Free(app->messages.flavorDescs[i]);
    }

    String_Free(app->messages.headerStr);
    String_Free(app->messages.thrownOutStr);
    String_Free(app->messages.discardStr);
    String_Free(app->messages.smoothStr);
    String_Free(app->messages.listItemStr);
    String_Free(app->messages.closeStr);
    String_Free(app->messages.string);
    StringTemplate_Free(app->messages.template);
    PoffinTypeList_Free(app->poffinTypes);
    MessageLoader_Free(app->msgLoader);
    Font_Free(FONT_SUBSCREEN);
}

static void InitSprites(PoffinManager *app)
{
    static const SpriteTemplateFromResourceHeader templates[] = {
        { 0, 105, 40, 0, 0, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 0, 0, 0 },
        { 0, 80, 18, 0, 1, 2, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 0, 0, 0 },
        { 0, 80, 140, 0, 2, 2, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 0, 0, 0 },
        { 0, 10, 100, 0, 3, 3, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 0, 0, 0 },
        { 1, 10, 100, 0, 0, 1, 2, NNS_G2D_VRAM_TYPE_2DSUB, 0, 0, 0, 0 }
    };

    for (int i = 0; i < NUM_LIST_SPRITES; i++) {
        app->listSprites[i] = SpriteSystem_NewSpriteFromResourceHeader(app->spriteSys, app->spriteMan, &templates[i]);
        Sprite_SetDrawFlag(app->listSprites[i], TRUE);
    }

    Sprite_SetAnimateFlag(app->listSprites[0], FALSE);
    Sprite_SetAnimateFlag(app->listSprites[1], TRUE);
    Sprite_SetAnimateFlag(app->listSprites[2], TRUE);

    for (int i = 0; i < FLAVOR_MAX; i++) {
        static const struct {
            u16 x, y;
        } sTypeIconPositions[] = {
            [FLAVOR_SPICY] = { 40, 156 },
            [FLAVOR_DRY] = { 54, 165 },
            [FLAVOR_SWEET] = { 49, 180 },
            [FLAVOR_BITTER] = { 31, 180 },
            [FLAVOR_SOUR] = { 26, 165 }
        };

        app->flavorSprites[i] = SpriteSystem_NewSpriteFromResourceHeader(app->spriteSys, app->spriteMan, &templates[3]);

        Sprite_SetDrawFlag(app->flavorSprites[i], TRUE);
        Sprite_SetAnim(app->flavorSprites[i], i + 3);
        Sprite_SetPositionXY(app->flavorSprites[i], sTypeIconPositions[i].x, sTypeIconPositions[i].y);
    }

    for (int i = 0; i < FLAVOR_MAX + 1; i++) {
        static const struct {
            u16 x, y;
        } sButtonPositions[] = {
            [FLAVOR_SPICY] = { 128, 48 },
            [FLAVOR_DRY] = { 192, 96 },
            [FLAVOR_SWEET] = { 168, 162 },
            [FLAVOR_BITTER] = { 88, 164 },
            [FLAVOR_SOUR] = { 64, 96 },
            [FLAVOR_MAX] = { 128, 116 }
        };

        app->buttonSprites[i] = SpriteSystem_NewSpriteFromResourceHeader(app->spriteSys, app->spriteMan, &templates[4]);

        Sprite_SetDrawFlag(app->buttonSprites[i], TRUE);
        Sprite_SetAnim(app->buttonSprites[i], i * 3);
        Sprite_SetAnimSpeed(app->buttonSprites[i], FX32_CONST(2));
        Sprite_SetExplicitPalette(app->buttonSprites[i], i + 2);
        Sprite_SetAnimateFlag(app->buttonSprites[i], FALSE);
        Sprite_SetPositionXY(app->buttonSprites[i], sButtonPositions[i].x, sButtonPositions[i].y);
    }

    app->poffinSprite = PoffinSprite_New(app->poffinSpriteMan, 0, 231, 76, 0, 1, 0, FALSE);

    ManagedSprite_SetDrawFlag(app->poffinSprite->sprite, FALSE);
}

static void FreeSprites(PoffinManager *app)
{

    PoffinSprite_Free(app->poffinSpriteMan, app->poffinSprite);

    for (int i = 0; i < FLAVOR_MAX + 1; i++) {
        Sprite_Delete2(app->buttonSprites[i]);
    }

    for (int i = 0; i < FLAVOR_MAX; i++) {
        Sprite_Delete2(app->flavorSprites[i]);
    }

    for (int i = 0; i < NUM_LIST_SPRITES; i++) {
        Sprite_Delete2(app->listSprites[i]);
    }
}
