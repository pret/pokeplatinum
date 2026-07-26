#include "overlay094/screens/select_pokemon.h"

#include <dwc.h>
#include <nitro.h>

#include "generated/items.h"
#include "generated/species.h"

#include "global/utility.h"
#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/screens/deposit.h"
#include "overlay094/screens/wfc_init.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "network_icon.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"

#include "res/text/bank/gts.h"

typedef struct PokemonIcon {
    int tileData;
    int paletteIndex;
    Sprite *sprite;
    u8 vramOffset[512]; // icon bytes
} PokemonIcon;

static void GTSSelectMon_InitBgLayers(BgConfig *bgConfig);
static void GTSSelectMon_FreeBgLayers(BgConfig *bgConfig);
static void GTSSelectMon_LoadGraphics(GTSApplicationState *appState);
static void GTSSelectMon_InitSprites(GTSApplicationState *appState);
static void GTSSelectMon_FreeSprites(GTSApplicationState *appState);
static void GTSSelectMon_InitWindows(GTSApplicationState *appState);
static void GTSSelectMon_RemoveWindows(GTSApplicationState *appState);
static void GTSSelectMon_AllocState(GTSApplicationState *appState);
static void GTSSelectMon_FreeState(GTSApplicationState *appState);
static int GTSSelectMon_WaitFadeIn(GTSApplicationState *appState);
static int GTSSelectMon_HandleInput(GTSApplicationState *appState);
static int GTSSelectMon_FadeAndExit(GTSApplicationState *appState);
static int GTSSelectMon_CreateExitConfirmMenu(GTSApplicationState *appState);
static int GTSSelectMon_HandleExitConfirm(GTSApplicationState *appState);
static int GTSSelectMon_WaitForText(GTSApplicationState *appState);
static int GTSSelectMon_WaitForTextAndEraseBox(GTSApplicationState *appState);
static void GTSSelectMon_ShowMessage(GTSApplicationState *appState, int entryID, int renderDelay, int unused1, u16 unused2, int isConfirmWindow);
static void GTSSelectMon_LoadPokemonIcon(int species, int form, int isEgg, int iconIndex, Sprite *sprite, NARC *narc, PokemonIcon *monIcon);
static void GTSSelectMon_LoadBoxDisplay(GTSApplicationState *appState, int boxID);
static int GTSSelectMon_CycleBoxId(int boxId, int boxCount, int direction);
static void GTSSelectMon_HandleCursorInput(GTSApplicationState *appState);
static int GTSSelectMon_CreatePokemonMenu(GTSApplicationState *appState);
static int GTSSelectMon_HandlePokemonMenuInput(GTSApplicationState *appState);
static int GTSSelectMon_CreateTradeMenu(GTSApplicationState *appState);
static int GTSSelectMon_HandleTradeMenuInput(GTSApplicationState *appState);
static int GTSSelectMon_HandleTradeConfirm(GTSApplicationState *appState);
static int GTSSelectMon_CreateTradeConfirmMenu(GTSApplicationState *appState);
static int GTSSelectMon_ShowBallCapsuleTradePrompt(GTSApplicationState *appState);
static int GTSSelectMon_ShowBallCapsuleDepositPrompt(GTSApplicationState *appState);
static int GTSSelectMon_CreateBallCapsuleTradeConfirmMenu(GTSApplicationState *appState);
static int GTSSelectMon_HandleBallCapsuleTradeConfirm(GTSApplicationState *appState);
static int GTSSelectMon_BoxMonMatchesRequirements(BoxPokemon *boxMon, GTSPokemonRequirements *requirements);
static void GTSSelectMon_FillTradeListing(GTSPokemonListing *listing, GTSApplicationState *appState);
static void GTSSelectMon_SetupSlot(BoxPokemon *boxMon, Sprite *iconSprite, Sprite *itemSprite, u16 *species, int iconIndex, NARC *narc, GTSPokemonCriteria *criteria, PokemonIcon *monIcon);
static void *NARC_AllocAndUnpackBGCharacterData(NARC *narc, u32 memberIdx, NNSG2dCharacterData **charData, u32 heapID);
static BOOL GTSApplication_SelectMon_MatchesRequirements(GTSPokemonCriteria *criteria, GTSPokemonRequirements *requirements);
static void GTSApplication_SelectMon_DarkenNonMatchingMons(GTSPokemonCriteria *criteria, Sprite **unused, GTSPokemonRequirements *requirements, PokemonIcon *icons);
static int GTSSelectMon_CanOfferPokemon(Party *party, PCBoxes *unused1, int boxID, int unused2);
static int GTSSelectMon_GetSlotStatus(Party *party, PCBoxes *pcBoxes, int boxID, int slot);
static int GTSSelectMon_InitiateTrade(GTSApplicationState *appState);
static int BoxPokemon_HasUnusedRibbons(BoxPokemon *boxMon);
static BOOL BoxPokemon_FormNotInDP(BoxPokemon *boxMon);
static BOOL BoxPokemon_HeldItemNotInDP(BoxPokemon *boxMon);

static int (*sGTSPokemonSelectScreenStates[])(GTSApplicationState *) = {
    [GTS_SELECTMON_WAIT_FADE_IN] = GTSSelectMon_WaitFadeIn,
    [GTS_SELECTMON_HANDLE_INPUT] = GTSSelectMon_HandleInput,
    [GTS_SELECTMON_FADE_AND_EXIT] = GTSSelectMon_FadeAndExit,
    [GTS_SELECTMON_WAIT_FOR_TEXT] = GTSSelectMon_WaitForText,
    [GTS_SELECTMON_WAIT_FOR_TEXT_AND_ERASE_BOX] = GTSSelectMon_WaitForTextAndEraseBox,
    [GTS_SELECTMON_CREATE_EXIT_CONFIRM_MENU] = GTSSelectMon_CreateExitConfirmMenu,
    [GTS_SELECTMON_HANDLE_EXIT_CONFIRM] = GTSSelectMon_HandleExitConfirm,
    [GTS_SELECTMON_CREATE_POKEMON_MENU] = GTSSelectMon_CreatePokemonMenu,
    [GTS_SELECTMON_HANDLE_POKEMON_MENU_INPUT] = GTSSelectMon_HandlePokemonMenuInput,
    [GTS_SELECTMON_CREATE_TRADE_MENU] = GTSSelectMon_CreateTradeMenu,
    [GTS_SELECTMON_HANDLE_TRADE_MENU_INPUT] = GTSSelectMon_HandleTradeMenuInput,
    [GTS_SELECTMON_SHOW_BALL_CAPSULE_TRADE_PROMPT] = GTSSelectMon_ShowBallCapsuleTradePrompt,
    [GTS_SELECTMON_CREATE_TRADE_CONFIRM_MENU] = GTSSelectMon_CreateTradeConfirmMenu,
    [GTS_SELECTMON_HANDLE_TRADE_CONFIRM] = GTSSelectMon_HandleTradeConfirm,
    [GTS_SELECTMON_SHOW_BALL_CAPSULE_DEPOSIT_PROMPT] = GTSSelectMon_ShowBallCapsuleDepositPrompt,
    [GTS_SELECTMON_CREATE_BALL_CAPSULE_TRADE_CONFIRM_MENU] = GTSSelectMon_CreateBallCapsuleTradeConfirmMenu,
    [GTS_SELECTMON_HANDLE_BALL_CAPSULE_TRADE_CONFIRM] = GTSSelectMon_HandleBallCapsuleTradeConfirm
};

int GTSApplication_SelectMon_Init(GTSApplicationState *appState, int unused)
{
    UNUSED(unused);

    GTSSelectMon_AllocState(appState);
    GTSSelectMon_InitBgLayers(appState->bgConfig);
    GTSSelectMon_LoadGraphics(appState);
    GTSSelectMon_InitWindows(appState);
    GTSSelectMon_InitSprites(appState);

    if (appState->previousScreen == 8) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
    } else {
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
    }

    GTSSelectMon_LoadBoxDisplay(appState, appState->selectedBoxId);
    GTSApplication_InitNetworkIcon(appState);

    appState->currentScreenInstruction = GTS_SELECTMON_WAIT_FADE_IN;

    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_SelectMon_Main(GTSApplicationState *appState, int unused)
{
    UNUSED(unused);

    NetworkIcon_SetStrength(GTSApplication_GetNetworkStrength());

    return (*sGTSPokemonSelectScreenStates[appState->currentScreenInstruction])(appState);
}

int GTSApplication_SelectMon_Exit(GTSApplicationState *appState, int unused)
{
    NetworkIcon_Destroy();

    GTSSelectMon_FreeSprites(appState);
    GTSSelectMon_FreeState(appState);
    GTSSelectMon_RemoveWindows(appState);
    GTSSelectMon_FreeBgLayers(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return 1;
}

static void GTSSelectMon_InitBgLayers(BgConfig *bgConfig)
{
    GraphicsModes mode = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    SetAllGraphicsModes(&mode);

    BgTemplate mainWindowTemplate = {
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
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &mainWindowTemplate, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate mainBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &mainBgTemplate, 0);

    BgTemplate mainBgOverlayTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &mainBgOverlayTemplate, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    BgTemplate subWindowTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &subWindowTemplate, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    BgTemplate subBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_256,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &subBgTemplate, 0);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void GTSSelectMon_FreeBgLayers(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
}

static void GTSSelectMon_LoadGraphics(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(narc, 2, 0, 0, 16 * 3 * 2, HEAP_ID_62);
    Graphics_LoadPaletteFromOpenNARC(narc, 5, 4, 0, 16 * 8 * 2, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 10, Options_Frame(appState->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, 1 + SCROLLING_MESSAGE_BOX_TILE_COUNT, 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 12, bgConfig, 1, 0, 16 * 5 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 24, bgConfig, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 29, bgConfig, 2, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    NARC_dtor(narc);
}

static const u16 sPokemonSlotPositions[][2] = {
    { 25, 60 },
    { 51, 60 },
    { 77, 60 },
    { 103, 60 },
    { 129, 60 },
    { 155, 60 },
    { 25, 84 },
    { 51, 84 },
    { 77, 84 },
    { 103, 84 },
    { 129, 84 },
    { 155, 84 },
    { 25, 108 },
    { 51, 108 },
    { 77, 108 },
    { 103, 108 },
    { 129, 108 },
    { 155, 108 },
    { 25, 132 },
    { 51, 132 },
    { 77, 132 },
    { 103, 132 },
    { 129, 132 },
    { 155, 132 },
    { 25, 156 },
    { 51, 156 },
    { 77, 156 },
    { 103, 156 },
    { 129, 156 },
    { 155, 156 },
    { 224, 175 },
    { 98, 32 }
};

static const u16 sBoxArrowPositions[][2] = {
    { 162, 36 },
    { 22, 36 }
};

static void GTSSelectMon_InitSprites(GTSApplicationState *appState)
{
    AffineSpriteListTemplate template;

    GTSApplication_InitAffineTemplate(&template, appState, &appState->cursorSpriteResourceHeader, NNS_G2D_VRAM_TYPE_2DMAIN);

    template.position.x = FX32_ONE * sPokemonSlotPositions[appState->partySlotIndex][0];
    template.position.y = FX32_ONE * sPokemonSlotPositions[appState->partySlotIndex][1];

    appState->cursorSprite = SpriteList_AddAffine(&template);

    Sprite_SetAnimateFlag(appState->cursorSprite, 1);
    Sprite_SetAnim(appState->cursorSprite, 4);

    if ((appState->partySlotIndex == 31) || ((appState->partySlotIndex >= 0) && (appState->partySlotIndex <= 5))) {
        Sprite_SetExplicitPriority(appState->cursorSprite, 0);
    } else {
        Sprite_SetExplicitPriority(appState->cursorSprite, 1);
    }

    for (int i = 0; i < 30; i++) {
        template.position.x = FX32_ONE * sPokemonSlotPositions[i][0];
        template.position.y = FX32_ONE * sPokemonSlotPositions[i][1];
        template.priority = 20;

        appState->boxSlotIconSprites[i] = SpriteList_AddAffine(&template);

        Sprite_SetAnim(appState->boxSlotIconSprites[i], 6 + i);
        Sprite_SetExplicitPriority(appState->boxSlotIconSprites[i], 1);
    }

    for (int i = 0; i < 30; i++) {
        template.position.x = FX32_ONE * (sPokemonSlotPositions[i][0] + 4);
        template.position.y = FX32_ONE * (sPokemonSlotPositions[i][1] + 6);
        template.priority = 10;

        appState->boxSlotItemSprites[i] = SpriteList_AddAffine(&template);

        Sprite_SetAnim(appState->boxSlotItemSprites[i], 40);
        Sprite_SetExplicitPriority(appState->boxSlotItemSprites[i], 1);
    }

    for (int i = 0; i < 6; i++) {
        template.position.x = FX32_ONE * (sPokemonSlotPositions[i][0] + 4 + 8);
        template.position.y = FX32_ONE * (sPokemonSlotPositions[i][1] + 6);
        template.priority = 10;

        appState->selectPokemonPartySprites[i] = SpriteList_AddAffine(&template);

        Sprite_SetAnim(appState->selectPokemonPartySprites[i], 42);
        Sprite_SetExplicitPriority(appState->selectPokemonPartySprites[i], 1);
    }

    for (int i = 0; i < 2; i++) {
        template.position.x = FX32_ONE * sBoxArrowPositions[i][0];
        template.position.y = FX32_ONE * sBoxArrowPositions[i][1];

        appState->boxArrowSprites[i] = SpriteList_AddAffine(&template);

        Sprite_SetAnimateFlag(appState->boxArrowSprites[i], 1);
        Sprite_SetAnim(appState->boxArrowSprites[i], 38 + i);
        Sprite_SetExplicitPriority(appState->boxArrowSprites[i], 1);
    }
}

static void GTSSelectMon_FreeSprites(GTSApplicationState *appState)
{
    for (int i = 0; i < 2; i++) {
        Sprite_Delete(appState->boxArrowSprites[i]);
    }

    Sprite_Delete(appState->cursorSprite);

    for (int i = 0; i < 30; i++) {
        Sprite_Delete(appState->boxSlotIconSprites[i]);
        Sprite_Delete(appState->boxSlotItemSprites[i]);
    }

    for (int i = 0; i < 6; i++) {
        Sprite_Delete(appState->selectPokemonPartySprites[i]);
    }
}

static void GTSSelectMon_InitWindows(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->titleWindow, 0, 1, 1, 28, 2, 13, 1 + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT);
    Window_FillTilemap(&appState->titleWindow, 0x0);

    Window_DrawAlignedSystemText(&appState->titleWindow, appState->title, 0, 1, 0, TEXT_COLOR(15, 14, 0));

    Window_Add(appState->bgConfig, &appState->networkErrWindow, 0, 5, 3, 13, 3, 13, (1 + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT) + TITLE_WINDOW_TILE_WIDTH * TITLE_WINDOW_TILE_HEIGHT);
    Window_FillTilemap(&appState->networkErrWindow, 0x0);
    Window_CopyToVRAM(&appState->networkErrWindow);
    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, 0, 2, 21, 27, 2, 13, ((1 + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT) + TITLE_WINDOW_TILE_WIDTH * TITLE_WINDOW_TILE_HEIGHT) + 13 * 13);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0x0);
    Window_Add(appState->bgConfig, &appState->confirmationWindow, 0, 2, 19, 27, 4, 13, (((1 + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT) + TITLE_WINDOW_TILE_WIDTH * TITLE_WINDOW_TILE_HEIGHT) + 13 * 13) + 27 * 2);
    Window_FillTilemap(&appState->confirmationWindow, 0x0);
    Window_Add(appState->bgConfig, &appState->menuButtonWindows[1], 1, 25, 21, 6, 2, 0, ((((1 + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT) + TITLE_WINDOW_TILE_WIDTH * TITLE_WINDOW_TILE_HEIGHT) + 13 * 13) + 27 * 2) + 2 * 19);
    Window_FillTilemap(&appState->menuButtonWindows[1], 0x606);

    Window_DrawAlignedSystemText(&appState->menuButtonWindows[1], appState->cancelButtonLabel, 0, 1, 1, TEXT_COLOR(1, 3, 6));

    Window_Add(appState->bgConfig, &appState->menuButtonWindows[0], 0, 21, 13, 5 * 2, 6, 13, (((((1 + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT) + TITLE_WINDOW_TILE_WIDTH * TITLE_WINDOW_TILE_HEIGHT) + 13 * 13) + 27 * 2) + 2 * 19) + 6 * 2);
}

static void GTSSelectMon_RemoveWindows(GTSApplicationState *appState)
{
    Window_Remove(&appState->confirmationWindow);
    Window_Remove(&appState->menuButtonWindows[1]);
    Window_Remove(&appState->menuButtonWindows[0]);
    Window_Remove(&appState->bottomInstructionWindow);
    Window_Remove(&appState->networkErrWindow);
    Window_Remove(&appState->titleWindow);
}

static void GTSSelectMon_AllocState(GTSApplicationState *appState)
{
    appState->selectPokemonBoxName = String_Init(9 * 2, HEAP_ID_62);
    appState->genericMessageBuffer = String_Init(90 * 2, HEAP_ID_62);

    if (appState->screenArgument == SCREEN_ARGUMENT_CHOOSE_OFFER_MON) {
        appState->title = MessageLoader_GetNewString(appState->gtsMessageLoader, GTS_Text_ChooseYourOfferPokemon);
    } else if (appState->screenArgument == SCREEN_ARGUMENT_CHOOSE_LISTED_MON) {
        appState->title = MessageLoader_GetNewString(appState->gtsMessageLoader, GTS_Text_ChooseYourListedPokemon);
    }

    appState->cancelButtonLabel = MessageLoader_GetNewString(appState->gtsMessageLoader, GTS_Text_CancelPokemonSelection);

    if (appState->partySlotIndex == 30) {
        appState->partySlotIndex = 0;
    }

    appState->boxCriteria = Heap_Alloc(HEAP_ID_62, sizeof(GTSBoxPokemonCriteria));
}

static void GTSSelectMon_FreeState(GTSApplicationState *appState)
{
    Heap_Free(appState->boxCriteria);
    String_Free(appState->selectPokemonBoxName);
    String_Free(appState->genericMessageBuffer);
    String_Free(appState->cancelButtonLabel);
    String_Free(appState->title);
}

static int GTSSelectMon_WaitFadeIn(GTSApplicationState *appState)
{
    if (IsScreenFadeDone()) {
        appState->currentScreenInstruction = GTS_SELECTMON_HANDLE_INPUT;
    }

    return 3;
}

static const u8 sSlotNavigationTable[][4] = {
    { 31, 6, 5, 1 },
    { 31, 7, 0, 2 },
    { 31, 8, 1, 3 },
    { 31, 9, 2, 4 },
    { 31, 10, 3, 5 },
    { 31, 11, 4, 0 },
    { 0, 12, 11, 7 },
    { 1, 13, 6, 8 },
    { 2, 14, 7, 9 },
    { 3, 15, 8, 10 },
    { 4, 16, 9, 11 },
    { 5, 17, 10, 6 },
    { 6, 18, 17, 13 },
    { 7, 19, 12, 14 },
    { 8, 20, 13, 15 },
    { 9, 21, 14, 16 },
    { 10, 22, 15, 17 },
    { 11, 23, 16, 12 },
    { 12, 24, 23, 19 },
    { 13, 25, 18, 20 },
    { 14, 26, 19, 21 },
    { 15, 27, 20, 22 },
    { 16, 28, 21, 23 },
    { 17, 29, 22, 18 },
    { 18, 31, 30, 25 },
    { 19, 31, 24, 26 },
    { 20, 31, 25, 27 },
    { 21, 31, 26, 28 },
    { 22, 31, 27, 29 },
    { 23, 31, 28, 30 },
    { 30, 30, 29, 24 },
    { 26, 2, 99, 101 }
};

static int GTSSelectMon_HandleInput(GTSApplicationState *appState)
{
    GTSSelectMon_HandleCursorInput(appState);

    if (appState->screenArgument == SCREEN_ARGUMENT_CHOOSE_OFFER_MON) {
        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_NONE);
            appState->currentScreenInstruction = GTS_SELECTMON_FADE_AND_EXIT;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
            if (appState->partySlotIndex == 30) {
                GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_NONE);
                appState->currentScreenInstruction = GTS_SELECTMON_FADE_AND_EXIT;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            } else {
                if (appState->partySlotIndex != 31) {
                    Sound_PlayEffect(SEQ_SE_CONFIRM);

                    switch (GTSSelectMon_GetSlotStatus(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex)) {
                    case GTS_SLOTSTATUS_VALID_MON:
                        if (GTSSelectMon_CanOfferPokemon(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex)) {
                            StringTemplate_SetNickname(appState->stringTemplate, 0, GTSApplication_GetSelectedBoxMon(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex));
                            GTSSelectMon_ShowMessage(appState, pl_msg_00000671_00022, TEXT_SPEED_FAST, 0, 0xf0f, 0);
                            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT, GTS_SELECTMON_CREATE_POKEMON_MENU);
                        } else {
                            GTSSelectMon_ShowMessage(appState, GTS_Text_Error_PokemonCannotBeOffered, TEXT_SPEED_FAST, 0, 0xf0f, 1);
                            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT_AND_ERASE_BOX, GTS_SELECTMON_HANDLE_INPUT);
                        }
                        break;
                    case GTS_SLOTSTATUS_EGG:
                        GTSSelectMon_ShowMessage(appState, pl_msg_00000671_00027, TEXT_SPEED_FAST, 0, 0xf0f, 1);
                        GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT_AND_ERASE_BOX, GTS_SELECTMON_HANDLE_INPUT);
                        break;
                    }
                }
            }
        }
    } else if (appState->screenArgument == SCREEN_ARGUMENT_CHOOSE_LISTED_MON) {
        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SEARCH_LISTING, SCREEN_ARGUMENT_NONE);
            appState->currentScreenInstruction = GTS_SELECTMON_FADE_AND_EXIT;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
            if (appState->partySlotIndex == 30) {
                GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SEARCH_LISTING, SCREEN_ARGUMENT_NONE);
                appState->currentScreenInstruction = GTS_SELECTMON_FADE_AND_EXIT;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            } else {
                if (appState->partySlotIndex != 31) {
                    switch (GTSSelectMon_GetSlotStatus(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex)) {
                    case GTS_SLOTSTATUS_VALID_MON:
                        BoxPokemon *boxMon = GTSApplication_GetSelectedBoxMon(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex);

                        if (GTSSelectMon_BoxMonMatchesRequirements(boxMon, &appState->searchResults[appState->selectedSearchResult].requirements)) {
                            if (GTSSelectMon_CanOfferPokemon(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex)) {
                                StringTemplate_SetNickname(appState->stringTemplate, 0, boxMon);
                                GTSSelectMon_ShowMessage(appState, pl_msg_00000671_00018, TEXT_SPEED_FAST, 0, 0xf0f, 0);
                                GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT, GTS_SELECTMON_CREATE_TRADE_MENU);
                                Sound_PlayEffect(SEQ_SE_CONFIRM);
                            } else {
                                GTSSelectMon_ShowMessage(appState, GTS_Text_Error_PokemonCannotBeOffered, TEXT_SPEED_FAST, 0, 0xf0f, 1);
                                GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT_AND_ERASE_BOX, GTS_SELECTMON_HANDLE_INPUT);
                            }
                        } else {
                            Sound_PlayEffect(SEQ_SE_CONFIRM);
                        }
                        break;
                    case GTS_SLOTSTATUS_EGG:
                    case GTS_SLOTSTATUS_NO_SPECIES:
                        Sound_PlayEffect(SEQ_SE_CONFIRM);
                        break;
                    }
                }
            }
        }
    }

    return 3;
}

static void GTSSelectMon_HandleCursorInput(GTSApplicationState *appState)
{
    int cursorMoved = 0, direction = 0, nextSlotIndex = 0;

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        direction = 1;
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        direction = 2;
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        direction = 3;
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        direction = 4;
    }

    if (direction != 0) {
        nextSlotIndex = sSlotNavigationTable[appState->partySlotIndex][direction - 1];

        if (nextSlotIndex != appState->partySlotIndex) {
            if ((nextSlotIndex == 99) || (nextSlotIndex == 101)) {
                appState->selectedBoxId = GTSSelectMon_CycleBoxId(appState->selectedBoxId, MAX_PC_BOXES + 1, nextSlotIndex - 100);
                GTSSelectMon_LoadBoxDisplay(appState, appState->selectedBoxId);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            } else {
                cursorMoved = 1;
                appState->partySlotIndex = nextSlotIndex;
            }
        }
    }

    if (cursorMoved) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        GTSApplication_SetSpritePosition(appState->cursorSprite, sPokemonSlotPositions[appState->partySlotIndex][0], sPokemonSlotPositions[appState->partySlotIndex][1]);
    }

    if ((appState->partySlotIndex == 31) || ((appState->partySlotIndex >= 0) && (appState->partySlotIndex <= 5))) {
        Sprite_SetExplicitPriority(appState->cursorSprite, 0);
    } else {
        Sprite_SetExplicitPriority(appState->cursorSprite, 1);
    }
}

static int GTSSelectMon_CycleBoxId(int boxId, int boxCount, int direction)
{
    boxId += direction;

    if (boxId < 0) {
        return boxCount - 1;
    }

    if (boxId == boxCount) {
        return 0;
    }

    return boxId;
}

static int GTSSelectMon_CreatePokemonMenu(GTSApplicationState *appState)
{
    MenuTemplate template;

    template.fontID = FONT_SYSTEM;
    template.xSize = 1;
    template.ySize = 3;
    template.lineSpacing = 0;
    template.suppressCursor = FALSE;
    template.loopAround = FALSE;

    appState->menuStringList = StringList_New(3, HEAP_ID_62);

    StringList_AddFromMessageBank(appState->menuStringList, appState->gtsMessageLoader, GTS_Text_Option_Summary, 1);
    StringList_AddFromMessageBank(appState->menuStringList, appState->gtsMessageLoader, GTS_Text_Option_Offer, 2);
    StringList_AddFromMessageBank(appState->menuStringList, appState->gtsMessageLoader, GTS_Text_Option_Cancel, 3);

    template.choices = appState->menuStringList;
    template.window = &appState->menuButtonWindows[0];

    Window_DrawStandardFrame(&appState->menuButtonWindows[0], 1, 1 + SCROLLING_MESSAGE_BOX_TILE_COUNT, 11);

    appState->popupMenu = Menu_NewAndCopyToVRAM(&template, 9, 0, 0, 62, PAD_BUTTON_B);
    appState->currentScreenInstruction = GTS_SELECTMON_HANDLE_POKEMON_MENU_INPUT;

    return 3;
}

static int GTSSelectMon_HandlePokemonMenuInput(GTSApplicationState *appState)
{
    BoxPokemon *boxMon;

    switch (Menu_ProcessInput(appState->popupMenu)) {
    case 1: // summary
        Menu_Free(appState->popupMenu, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        appState->currentScreenInstruction = GTS_SELECTMON_FADE_AND_EXIT;
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_POKEMON_SUMMARY, SCREEN_ARGUMENT_CHOOSE_OFFER_MON);
        break;
    case 2: // offer
        Menu_Free(appState->popupMenu, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);

        boxMon = GTSApplication_GetSelectedBoxMon(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex);

        if (BoxPokemon_HasUnusedRibbons(boxMon)) {
            GTSSelectMon_ShowMessage(appState, pl_msg_00000671_00037, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT_AND_ERASE_BOX, GTS_SELECTMON_HANDLE_INPUT);
        } else if (BoxPokemon_FormNotInDP(boxMon)) {
            GTSSelectMon_ShowMessage(appState, pl_msg_00000671_00170, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT_AND_ERASE_BOX, GTS_SELECTMON_HANDLE_INPUT);
        } else if (BoxPokemon_HeldItemNotInDP(boxMon)) {
            GTSSelectMon_ShowMessage(appState, pl_msg_00000671_00171, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT_AND_ERASE_BOX, GTS_SELECTMON_HANDLE_INPUT);
        } else {
            int hasBallCapsule = 0;

            if (GTSApplication_IsBoxIDParty(appState->selectedBoxId)) {
                Pokemon *mon;

                mon = Party_GetPokemonBySlotIndex(appState->playerData->party, appState->partySlotIndex);

                if (Pokemon_GetValue(mon, MON_DATA_BALL_CAPSULE_ID, NULL)) {
                    hasBallCapsule = 1;
                    appState->currentScreenInstruction = GTS_SELECTMON_SHOW_BALL_CAPSULE_DEPOSIT_PROMPT;
                }
            }

            if (hasBallCapsule == 0) {
                appState->selectedBoxMon = GTSApplication_GetSelectedBoxMon(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex);
                appState->currentScreenInstruction = GTS_SELECTMON_FADE_AND_EXIT;

                GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_DEPOSIT, SCREEN_ARGUMENT_NONE);
            }
        }
        break;
    case 3: // cancel
    case MENU_CANCEL:
        Menu_Free(appState->popupMenu, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        Window_EraseMessageBox(&appState->bottomInstructionWindow, 0);
        appState->currentScreenInstruction = GTS_SELECTMON_HANDLE_INPUT;
        break;
    }

    return 3;
}

static int GTSSelectMon_CreateTradeMenu(GTSApplicationState *appState)
{
    MenuTemplate template;

    template.fontID = FONT_SYSTEM;
    template.xSize = 1;
    template.ySize = 3;
    template.lineSpacing = 0;
    template.suppressCursor = FALSE;
    template.loopAround = FALSE;

    appState->menuStringList = StringList_New(3, HEAP_ID_62);

    StringList_AddFromMessageBank(appState->menuStringList, appState->gtsMessageLoader, 84, 1);
    StringList_AddFromMessageBank(appState->menuStringList, appState->gtsMessageLoader, 85, 2);
    StringList_AddFromMessageBank(appState->menuStringList, appState->gtsMessageLoader, 86, 3);

    template.choices = appState->menuStringList;
    template.window = &appState->menuButtonWindows[0];

    Window_FillTilemap(template.window, 0xf0f);
    Window_DrawStandardFrame(&appState->menuButtonWindows[0], 1, 1 + SCROLLING_MESSAGE_BOX_TILE_COUNT, 11);

    appState->popupMenu = Menu_NewAndCopyToVRAM(&template, 9, 0, 0, 62, PAD_BUTTON_B);
    appState->currentScreenInstruction = GTS_SELECTMON_HANDLE_TRADE_MENU_INPUT;

    return 3;
}

static int GTSSelectMon_HandleTradeMenuInput(GTSApplicationState *appState)
{
    BoxPokemon *boxMon;

    switch (Menu_ProcessInput(appState->popupMenu)) {
    case 1:
        Menu_Free(appState->popupMenu, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        appState->currentScreenInstruction = GTS_SELECTMON_FADE_AND_EXIT;
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_POKEMON_SUMMARY, SCREEN_ARGUMENT_CHOOSE_LISTED_MON);
        break;
    case 2:
        Menu_Free(appState->popupMenu, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);

        boxMon = GTSApplication_GetSelectedBoxMon(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex);

        if (BoxPokemon_HasUnusedRibbons(boxMon)) {
            GTSSelectMon_ShowMessage(appState, pl_msg_00000671_00037, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT_AND_ERASE_BOX, GTS_SELECTMON_HANDLE_INPUT);
        } else if (BoxPokemon_FormNotInDP(boxMon)) {
            GTSSelectMon_ShowMessage(appState, pl_msg_00000671_00170, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT_AND_ERASE_BOX, GTS_SELECTMON_HANDLE_INPUT);
        } else if (BoxPokemon_HeldItemNotInDP(boxMon)) {
            GTSSelectMon_ShowMessage(appState, pl_msg_00000671_00171, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT_AND_ERASE_BOX, GTS_SELECTMON_HANDLE_INPUT);
        } else {
            int hasBallCapsule = 0;

            if (GTSApplication_IsBoxIDParty(appState->selectedBoxId)) {
                Pokemon *mon;

                mon = Party_GetPokemonBySlotIndex(appState->playerData->party, appState->partySlotIndex);

                if (Pokemon_GetValue(mon, MON_DATA_BALL_CAPSULE_ID, NULL)) {
                    hasBallCapsule = 1;
                    appState->currentScreenInstruction = GTS_SELECTMON_SHOW_BALL_CAPSULE_TRADE_PROMPT;
                }
            }

            if (hasBallCapsule == 0) {
                GTSSelectMon_InitiateTrade(appState);
            }
        }
        break;
    case 3:
    case MENU_CANCEL:
        Menu_Free(appState->popupMenu, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        Window_EraseMessageBox(&appState->bottomInstructionWindow, 0);
        appState->currentScreenInstruction = GTS_SELECTMON_HANDLE_INPUT;
        break;
    }

    return 3;
}

static int GTSSelectMon_FadeAndExit(GTSApplicationState *appState)
{
    if ((appState->nextScreen == GTS_SCREEN_WFC_INIT) || (appState->nextScreen == GTS_SCREEN_POKEMON_SUMMARY)) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
        appState->fadeBothScreens = TRUE;
    } else {
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    }

    appState->currentScreenInstruction = GTS_SELECTMON_WAIT_FADE_IN;

    return 4;
}

static int GTSSelectMon_CreateExitConfirmMenu(GTSApplicationState *appState)
{
    appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 15, ((((((1 + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT) + TITLE_WINDOW_TILE_WIDTH * TITLE_WINDOW_TILE_HEIGHT) + 13 * 13) + 27 * 2) + 2 * 19) + 6 * 2) + (5 * 2) * 6);
    appState->currentScreenInstruction = GTS_SELECTMON_HANDLE_EXIT_CONFIRM;

    return 3;
}

static int GTSSelectMon_HandleExitConfirm(GTSApplicationState *appState)
{
    int result = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (result != MENU_NOTHING_CHOSEN) {
        if (result == MENU_CANCEL) {
            appState->currentScreenInstruction = GTS_SELECTMON_WAIT_FADE_IN;
        } else {
            appState->currentScreenInstruction = GTS_SELECTMON_FADE_AND_EXIT;
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_NONE);
        }
    }

    return 3;
}

static int GTSSelectMon_ShowBallCapsuleTradePrompt(GTSApplicationState *appState)
{
    GTSSelectMon_ShowMessage(appState, pl_msg_00000671_00025, TEXT_SPEED_FAST, 0, 0xf0f, 1);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT, GTS_SELECTMON_CREATE_TRADE_CONFIRM_MENU);

    return 3;
}

static int GTSSelectMon_CreateTradeConfirmMenu(GTSApplicationState *appState)
{
    appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 13, ((((((1 + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT) + TITLE_WINDOW_TILE_WIDTH * TITLE_WINDOW_TILE_HEIGHT) + 13 * 13) + 27 * 2) + 2 * 19) + 6 * 2) + (5 * 2) * 6);
    appState->currentScreenInstruction = GTS_SELECTMON_HANDLE_TRADE_CONFIRM;

    return 3;
}

static int GTSSelectMon_HandleTradeConfirm(GTSApplicationState *appState)
{
    int result = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (result != MENU_NOTHING_CHOSEN) {
        if (result == MENU_CANCEL) {
            Window_EraseMessageBox(&appState->confirmationWindow, 0);
            appState->currentScreenInstruction = GTS_SELECTMON_HANDLE_INPUT;
        } else {
            GTSSelectMon_InitiateTrade(appState);
        }
    }

    return 3;
}

static int GTSSelectMon_InitiateTrade(GTSApplicationState *appState)
{
    Pokemon *mon = (Pokemon *)appState->searchResults[appState->selectedSearchResult].pokemon.bytes;

    if (Pokemon_IsHoldingMail(mon) && (appState->selectedBoxId != MAX_PC_BOXES)) {
        if (Party_GetCurrentCount(appState->playerData->party) == MAX_PARTY_SIZE) {
            GTSSelectMon_ShowMessage(appState, pl_msg_00000671_00028, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT_AND_ERASE_BOX, GTS_SELECTMON_HANDLE_INPUT);
            return 0;
        }
    }

    appState->selectedBoxMon = GTSApplication_GetSelectedBoxMon(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex);
    appState->currentScreenInstruction = GTS_SELECTMON_FADE_AND_EXIT;
    appState->fadeBothScreens = TRUE;

    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_NETWORK_HANDLER, SCREEN_ARGUMENT_EXCHANGE_POKEMON);
    GTSSelectMon_FillTradeListing(&appState->receivedListing, appState);

    appState->searchResultCount = 0;

    return 1;
}

static int GTSSelectMon_ShowBallCapsuleDepositPrompt(GTSApplicationState *appState)
{
    GTSSelectMon_ShowMessage(appState, pl_msg_00000671_00025, TEXT_SPEED_FAST, 0, 0xf0f, 1);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SELECTMON_WAIT_FOR_TEXT, GTS_SELECTMON_CREATE_BALL_CAPSULE_TRADE_CONFIRM_MENU);

    return 3;
}

static int GTSSelectMon_CreateBallCapsuleTradeConfirmMenu(GTSApplicationState *appState)
{
    appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 13, ((((((1 + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT) + TITLE_WINDOW_TILE_WIDTH * TITLE_WINDOW_TILE_HEIGHT) + 13 * 13) + 27 * 2) + 2 * 19) + 6 * 2) + (5 * 2) * 6);
    appState->currentScreenInstruction = GTS_SELECTMON_HANDLE_BALL_CAPSULE_TRADE_CONFIRM;

    return 3;
}

static int GTSSelectMon_HandleBallCapsuleTradeConfirm(GTSApplicationState *appState)
{
    int result = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (result != MENU_NOTHING_CHOSEN) {
        if (result == MENU_CANCEL) {
            Window_EraseMessageBox(&appState->confirmationWindow, 0);
            appState->currentScreenInstruction = GTS_SELECTMON_HANDLE_INPUT;
        } else {
            appState->selectedBoxMon = GTSApplication_GetSelectedBoxMon(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex);
            appState->currentScreenInstruction = GTS_SELECTMON_FADE_AND_EXIT;
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_DEPOSIT, SCREEN_ARGUMENT_NONE);
        }
    }

    return 3;
}

static int GTSSelectMon_WaitForText(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == 0) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return 3;
}

static int GTSSelectMon_WaitForTextAndEraseBox(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == 0) {
        Window_EraseMessageBox(&appState->confirmationWindow, 0);
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return 3;
}

static void GTSSelectMon_ShowMessage(GTSApplicationState *appState, int entryID, int renderDelay, int unused1, u16 unused2, int isConfirmWindow)
{
    Window *window;
    String *str = MessageLoader_GetNewString(appState->gtsMessageLoader, entryID);
    StringTemplate_Format(appState->stringTemplate, appState->genericMessageBuffer, str);

    if (isConfirmWindow == 0) {
        window = &appState->bottomInstructionWindow;
    } else {
        window = &appState->confirmationWindow;
    }

    Window_FillTilemap(window, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(window, 0, 1, 10);

    appState->textPrinter = Text_AddPrinterWithParams(window, FONT_MESSAGE, appState->genericMessageBuffer, 0, 0, renderDelay, NULL);

    String_Free(str);
}

static void *NARC_AllocAndUnpackBGCharacterData(NARC *narc, u32 memberIdx, NNSG2dCharacterData **charData, u32 heapID)
{
    void *data = NARC_AllocAndReadWholeMember(narc, memberIdx, heapID);

    if (data != NULL) {
        if (NNS_G2dGetUnpackedBGCharacterData(data, charData) == 0) {
            Heap_Free(data);
            return NULL;
        }
    }

    return data;
}

static void GTSSelectMon_LoadPokemonIcon(int species, int form, int isEgg, int iconIndex, Sprite *sprite, NARC *narc, PokemonIcon *monIcon)
{
    u8 *rawData;
    NNSG2dCharacterData *charData;

    rawData = NARC_AllocAndUnpackBGCharacterData(narc, PokeIconSpriteIndex(species, isEgg, form), &charData, 62);

    MI_CpuCopyFast(charData->pRawData, monIcon->vramOffset, (4 * 4) * 0x20);

    monIcon->tileData = (12 + iconIndex * (4 * 4)) * 0x20;
    monIcon->sprite = sprite;
    monIcon->paletteIndex = PokeIconPaletteIndex(species, form, isEgg) + 3;

    Heap_Free(rawData);
}

static void GTSSelectMon_SetLevelCriteria(BoxPokemon *boxMon, GTSPokemonCriteria *criteria)
{
    criteria->level = BoxPokemon_GetLevel(boxMon);
}

static void GTSSelectMon_UploadMonIconsCallback(void *statePtr)
{
    GTSApplicationState *appState = statePtr;
    int i;
    PokemonIcon *monIcon = appState->selectPokemonIconHeapPtr;

    for (i = 0; i < 30; i++, monIcon++) {
        if (monIcon->sprite) {
            DC_FlushRange(monIcon->vramOffset, (4 * 4) * 0x20);
            GX_LoadOBJ(monIcon->vramOffset, monIcon->tileData, (4 * 4) * 0x20);

            Sprite_SetExplicitPalette(monIcon->sprite, monIcon->paletteIndex);
        }
    }

    Heap_Free(appState->selectPokemonIconHeapPtr);
}

static void GTSSelectMon_SetupSlot(BoxPokemon *boxMon, Sprite *iconSprite, Sprite *itemSprite, u16 *species, int iconIndex, NARC *narc, GTSPokemonCriteria *criteria, PokemonIcon *monIcon)
{
    int speciesExists, item, isEgg, form;

    BoxPokemon_EnterDecryptionContext(boxMon);

    speciesExists = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL);
    *species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);

    form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);
    isEgg = BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL);
    item = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);

    criteria->species = *species;
    criteria->gender = BoxPokemon_GetValue(boxMon, MON_DATA_GENDER, NULL) + 1;

    if (isEgg) {
        criteria->level = 0;
    }

    BoxPokemon_ExitDecryptionContext(boxMon, 1);

    if (speciesExists) {
        GTSSelectMon_LoadPokemonIcon(*species, form, isEgg, iconIndex, iconSprite, narc, monIcon);
        Sprite_SetDrawFlag(iconSprite, TRUE);

        if (item != 0) {
            Sprite_SetDrawFlag(itemSprite, TRUE);

            if (Item_IsMail(item)) {
                Sprite_SetAnim(itemSprite, 41);
            } else {
                Sprite_SetAnim(itemSprite, 40);
            }
        } else {
            Sprite_SetDrawFlag(itemSprite, FALSE);
        }
    } else {
        Sprite_SetDrawFlag(iconSprite, FALSE);
        Sprite_SetDrawFlag(itemSprite, FALSE);

        monIcon->sprite = NULL;
    }
}

static void GTSSelectMon_LoadBoxDisplay(GTSApplicationState *appState, int boxID)
{
    u16 species[MAX_MONS_PER_BOX], i;

    PCBoxes *pcBoxes = appState->playerData->pcBoxes;
    NARC *narc;
    PokemonIcon *icons;

    appState->selectPokemonIconHeapPtr = icons = Heap_AllocAtEnd(HEAP_ID_APPLICATION, sizeof(PokemonIcon) * MAX_MONS_PER_BOX);
    narc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_62);

    if ((boxID >= 0) && (boxID < MAX_PC_BOXES)) {
        for (i = 0; i < MAX_MONS_PER_BOX; i++) {
            GTSSelectMon_SetLevelCriteria(PCBoxes_GetBoxMonAt(pcBoxes, boxID, i), &appState->boxCriteria->criteria[i]);
        }

        for (i = 0; i < MAX_MONS_PER_BOX; i++) {
            appState->boxCriteria->criteria[i].species = SPECIES_NONE;
            GTSSelectMon_SetupSlot(PCBoxes_GetBoxMonAt(pcBoxes, boxID, i), appState->boxSlotIconSprites[i], appState->boxSlotItemSprites[i], &species[i], i, narc, &appState->boxCriteria->criteria[i], &icons[i]);

            // "in party" shows as its own box, so when in a box context we want to hide the party
            if (i < MAX_PARTY_SIZE) {
                Sprite_SetDrawFlag(appState->selectPokemonPartySprites[i], 0);
            }
        }

        PCBoxes_BufferBoxName(pcBoxes, boxID, appState->selectPokemonBoxName);
    } else {
        int partyCount = Party_GetCurrentCount(appState->playerData->party);

        for (i = 0; i < partyCount; i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(appState->playerData->party, i);
            BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);

            GTSSelectMon_SetLevelCriteria(boxMon, &appState->boxCriteria->criteria[i]);
            GTSSelectMon_SetupSlot(boxMon, appState->boxSlotIconSprites[i], appState->boxSlotItemSprites[i], &species[i], i, narc, &appState->boxCriteria->criteria[i], &icons[i]);

            if (Pokemon_GetValue(mon, MON_DATA_BALL_CAPSULE_ID, NULL)) {
                Sprite_SetDrawFlag(appState->selectPokemonPartySprites[i], 1);
            } else {
                Sprite_SetDrawFlag(appState->selectPokemonPartySprites[i], 0);
            }
        }

        for (; i < MAX_MONS_PER_BOX; i++) {
            appState->boxCriteria->criteria[i].species = SPECIES_NONE;
            Sprite_SetDrawFlag(appState->boxSlotIconSprites[i], 0);
            Sprite_SetDrawFlag(appState->boxSlotItemSprites[i], 0);
            icons[i].sprite = NULL;

            if (i < MAX_PARTY_SIZE) {
                Sprite_SetDrawFlag(appState->selectPokemonPartySprites[i], 0);
            }
        }

        MessageLoader_GetString(appState->gtsMessageLoader, pl_msg_00000671_00089, appState->selectPokemonBoxName);
    }

    NARC_dtor(narc);
    Window_FillTilemap(&appState->networkErrWindow, 0x0);

    Window_DrawAlignedSystemText(&appState->networkErrWindow, appState->selectPokemonBoxName, 0, 5, 1, TEXT_COLOR(1, 2, 0));

    if (appState->screenArgument == SCREEN_ARGUMENT_CHOOSE_LISTED_MON) {
        GTSApplication_SelectMon_DarkenNonMatchingMons(appState->boxCriteria->criteria, appState->boxSlotIconSprites, &appState->searchResults[appState->selectedSearchResult].requirements, icons);
    }

    appState->updateBoxPalettesFunc = GTSSelectMon_UploadMonIconsCallback;
}

BOOL GTSApplication_IsBoxIDParty(int boxID)
{
    return boxID == MAX_PC_BOXES;
}

BoxPokemon *GTSApplication_GetSelectedBoxMon(Party *party, PCBoxes *pcBoxes, int boxID, int slot)
{
    if (GTSApplication_IsBoxIDParty(boxID)) {
        if (slot > (Party_GetCurrentCount(party) - 1)) {
            return NULL;
        }

        return Pokemon_GetBoxPokemon(Party_GetPokemonBySlotIndex(party, slot));
    }

    return PCBoxes_GetBoxMonAt(pcBoxes, boxID, slot);
}

static BOOL GTSSelectMon_CanOfferPokemon(Party *party, PCBoxes *unused1, int boxID, int unused2)
{
    if (GTSApplication_IsBoxIDParty(boxID)) {
        if (Party_GetCurrentCount(party) < 2) { // BUG? includes eggs, so a party of [valid mon, egg] passes the < 2 guard. The last non-egg PokÃ©mon can be deposited, leaving only an egg.
            return FALSE;
        }
    }

    return TRUE;
}

static const u16 sUnusedRibbons[] = {
    MON_DATA_MARINE_RIBBON,
    MON_DATA_LAND_RIBBON,
    MON_DATA_SKY_RIBBON,
    MON_DATA_RED_RIBBON,
    MON_DATA_GREEN_RIBBON,
    MON_DATA_BLUE_RIBBON,
    MON_DATA_FESTIVAL_RIBBON,
    MON_DATA_CARNIVAL_RIBBON,
    MON_DATA_CLASSIC_RIBBON,
    MON_DATA_PREMIER_RIBBON,
};

static int BoxPokemon_HasUnusedRibbons(BoxPokemon *boxMon)
{
    int count = 0;
    int reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    for (int i = 0; i < SNELEMS(sUnusedRibbons); i++) {
        count += BoxPokemon_GetValue(boxMon, sUnusedRibbons[i], NULL);
    }

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);

    if (count) {
        return TRUE;
    }

    return FALSE;
}

static BOOL BoxPokemon_FormNotInDP(BoxPokemon *boxMon)
{
    int reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    int species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    int form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);

    if (form > 0) {
        switch (species) {
        case SPECIES_GIRATINA:
        case SPECIES_SHAYMIN:
        case SPECIES_ROTOM:
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL BoxPokemon_HeldItemNotInDP(BoxPokemon *boxMon)
{
    int reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    int item = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);

    switch (item) {
    case ITEM_GRISEOUS_ORB:
        return TRUE;
    }

    return FALSE;
}

static int GTSSelectMon_GetSlotStatus(Party *party, PCBoxes *pcBoxes, int boxID, int slot)
{
    BoxPokemon *boxMon = GTSApplication_GetSelectedBoxMon(party, pcBoxes, boxID, slot);

    if (boxMon == NULL) {
        return GTS_SLOTSTATUS_NO_SPECIES;
    }

    if (!BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL)) {
        return GTS_SLOTSTATUS_NO_SPECIES;
    }

    if (BoxPokemon_GetValue(boxMon, MON_DATA_SANITY_IS_EGG, NULL)) {
        return GTS_SLOTSTATUS_EGG;
    }

    return GTS_SLOTSTATUS_VALID_MON;
}

static BOOL GTSApplication_SelectMon_MatchesRequirements(GTSPokemonCriteria *criteria, GTSPokemonRequirements *requirements)
{
    if (criteria->species != requirements->species) {
        return FALSE;
    }

    if (requirements->gender != 3) {
        if (requirements->gender != criteria->gender) {
            return FALSE;
        }
    }

    if (criteria->level == 0) {
        return FALSE;
    }

    if (requirements->level != 0) {
        if (requirements->level > criteria->level) {
            return FALSE;
        }
    }

    if (requirements->level2 != 0) {
        if (requirements->level2 < criteria->level) {
            return FALSE;
        }
    }

    return TRUE;
}

static int GTSSelectMon_BoxMonMatchesRequirements(BoxPokemon *boxMon, GTSPokemonRequirements *requirements)
{
    GTSPokemonCriteria criteria;

    criteria.species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    criteria.gender = BoxPokemon_GetValue(boxMon, MON_DATA_GENDER, NULL) + 1;
    criteria.level = BoxPokemon_GetLevel(boxMon);

    return GTSApplication_SelectMon_MatchesRequirements(&criteria, requirements);
}

static void GTSSelectMon_FillTradeListing(GTSPokemonListing *listing, GTSApplicationState *appState)
{
    GTSPokemonCriteria criteria;
    GTSPokemonRequirements requirements;
    BoxPokemon *boxMon;

    criteria.species = BoxPokemon_GetValue(appState->selectedBoxMon, MON_DATA_SPECIES, NULL);
    criteria.gender = BoxPokemon_GetValue(appState->selectedBoxMon, MON_DATA_GENDER, NULL) + 1;
    criteria.level = BoxPokemon_GetLevel(appState->selectedBoxMon);

    listing->criteria = criteria;

    GTS_FillListing(listing, appState);

    boxMon = Pokemon_GetBoxPokemon((Pokemon *)appState->searchResults[appState->selectedSearchResult].pokemon.bytes);

    requirements.species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    requirements.gender = BoxPokemon_GetValue(boxMon, MON_DATA_GENDER, NULL) + 1;
    requirements.level = 0;
    requirements.level2 = 0;

    listing->requirements = requirements;
}

static void GTSApplication_SelectMon_DarkenNonMatchingMons(GTSPokemonCriteria *criteria, Sprite **unused, GTSPokemonRequirements *requirements, PokemonIcon *icons)
{
    UNUSED(unused);

    for (int i = 0; i < MAX_MONS_PER_BOX; i++) {
        if (criteria[i].species != SPECIES_NONE) {
            if (GTSApplication_SelectMon_MatchesRequirements(&criteria[i], requirements) == FALSE) {
                icons[i].paletteIndex += 3; // greyed out
            }
        }
    }
}

BOOL Pokemon_IsHoldingMail(Pokemon *mon)
{
    if (Item_IsMail(Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL))) {
        return TRUE;
    }

    return FALSE;
}
