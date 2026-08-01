#include "gts_application/screens/search_listing.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "gts_application/application.h"
#include "gts_application/avatar.h"
#include "gts_application/gts.h"
#include "gts_application/screens/deposit.h"
#include "gts_application/screens/listing.h"
#include "gts_application/screens/wfc_init.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "menu.h"
#include "message.h"
#include "message_util.h"
#include "network_icon.h"
#include "pokemon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"

#include "res/text/bank/gts.h"

static void GTSSearchListing_InitBgLayers(BgConfig *bgConfig);
static void GTSSearchListing_FreeBgLayers(BgConfig *bgConfig);
static void GTSSearchListing_InitGraphics(GTSApplicationState *appState);
static void GTSSearchListing_InitWindows(GTSApplicationState *appState);
static void GTSSearchListing_RemoveWindows(GTSApplicationState *appState);
static void GTSSearchListing_InitStrings(GTSApplicationState *appState);
static void GTSSearchListing_FreeStrings(GTSApplicationState *appState);
static void GTSSearchListing_InitSprites(GTSApplicationState *appState);
static void GTSSearchListing_FreeSprites(GTSApplicationState *appState);
static int GTSSearchListing_WaitFadeIn(GTSApplicationState *appState);
static int GTSSearchListing_HandleInput(GTSApplicationState *appState);
static int GTSSearchListing_FadeAndExit(GTSApplicationState *appState);
static int GTSSearchListing_WaitForText(GTSApplicationState *appState);
static int GTSSearchListing_ShowConfirmationMenu(GTSApplicationState *appState);
static int GTSSearchListing_HandleConfirmationMenu(GTSApplicationState *appState);
static int GTSSearchListing_UpdateInfoPanel(GTSApplicationState *appState);
static void GTSSearchListing_RefreshInfoPanel(GTSApplicationState *appState);
static void GTSSearchListing_DrawTabHeaders(MessageLoader *messageLoader, Window windows[]);
static void GTSSearchListing_ShowMessage(GTSApplicationState *appState, int messageId, int textSpeed, int unused1, u16 unused2);
static void GTSSearchListing_DrawRequirementsInfo(Window *window, MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, GTSPokemonRequirements *requirements);
static void GTSSearchListing_DrawTrainerLocationText(Window *window, String *countryString, String *cityString);

static int (*sGTSSearchListingStateHandlers[])(GTSApplicationState *appState) = {
    [GTS_SEARCHLISTING_IDLE] = GTSSearchListing_WaitFadeIn,
    [GTS_SEARCHLISTING_HANDLE_INPUT] = GTSSearchListing_HandleInput,
    [GTS_SEARCHLISTING_FADE_AND_EXIT] = GTSSearchListing_FadeAndExit,
    [GTS_SEARCHLISTING_WAIT_FOR_TEXT] = GTSSearchListing_WaitForText,
    [GTS_SEARCHLISTING_SHOW_CONFIRMATION_MENU] = GTSSearchListing_ShowConfirmationMenu,
    [GTS_SEARCHLISTING_HANDLE_CONFIRMATION_MENU] = GTSSearchListing_HandleConfirmationMenu,
    [GTS_SEARCHLISTING_HANDLE_UPDATE_INFO_PANEL] = GTSSearchListing_UpdateInfoPanel
};

int GTSApplication_SearchListing_Init(GTSApplicationState *appState, int unused)
{
    GTSSearchListing_InitStrings(appState);
    GTSSearchListing_InitBgLayers(appState->bgConfig);
    GTSSearchListing_InitGraphics(appState);
    GTSSearchListing_InitWindows(appState);
    GTSSearchListing_InitSprites(appState);
    GTS_DrawOfferedPokemonInfo(appState->gtsMessageLoader, appState->speciesMessageLoader, appState->stringTemplate, &appState->infoWindows[0], Pokemon_GetBoxPokemon((Pokemon *)appState->searchResults[appState->selectedSearchResult].pokemon.bytes), &appState->searchResults[appState->selectedSearchResult].criteria);

    Pokemon *mon = (Pokemon *)appState->searchResults[appState->selectedSearchResult].pokemon.bytes;

    GTS_DrawTrainerInfo(appState->gtsMessageLoader, &appState->infoWindows[5], appState->searchResults[appState->selectedSearchResult].trainerNames, mon, &appState->infoWindows[10]);
    GTS_LoadListingPokemonSprite((Pokemon *)appState->searchResults[appState->selectedSearchResult].pokemon.bytes);
    GTSSearchListing_DrawTabHeaders(appState->gtsMessageLoader, &appState->infoWindows[7]);
    GTSSearchListing_RefreshInfoPanel(appState);

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);

    appState->currentScreenInstruction = GTS_SEARCHLISTING_IDLE;
    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_SearchListing_Main(GTSApplicationState *appState, int unused)
{
    return (*sGTSSearchListingStateHandlers[appState->currentScreenInstruction])(appState);
}

int GTSApplication_SearchListing_Exit(GTSApplicationState *appState, int unused)
{
    GTSSearchListing_FreeSprites(appState);
    GTSSearchListing_FreeStrings(appState);
    GTSSearchListing_RemoveWindows(appState);
    GTSSearchListing_FreeBgLayers(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return GTS_LOOP_STATE_INIT;
}

static void GTSSearchListing_InitBgLayers(BgConfig *bgConfig)
{
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
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, HEAP_ID_62);
}

static void GTSSearchListing_FreeBgLayers(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
}

static void GTSSearchListing_InitGraphics(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;

    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 10, Options_Frame(appState->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, 1 + SCROLLING_MESSAGE_BOX_TILE_COUNT, 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 17, bgConfig, 1, 0, 16 * 5 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__WORLDTRADE, 7, 0, 0, 16 * 3 * 2, HEAP_ID_62);
}

static void GTSSearchListing_InitSprites(GTSApplicationState *appState)
{
    AffineSpriteListTemplate template;

    GTSApplication_InitAffineTemplate(&template, appState, &appState->cursorSpriteResourceHeader, NNS_G2D_VRAM_TYPE_2DMAIN);

    template.position.x = FX32_ONE * 208;
    template.position.y = FX32_ONE * 58;

    appState->listingCursorSprite = SpriteList_AddAffine(&template);

    Sprite_SetAnimateFlag(appState->listingCursorSprite, 1);
    Sprite_SetAnim(appState->listingCursorSprite, 37);
    NetworkIcon_Init();
}

static void GTSSearchListing_FreeSprites(GTSApplicationState *appState)
{
    Sprite_Delete(appState->listingCursorSprite);
}

static const int sWindowLayouts[][4] = {
    { 1, 2, 10, 2 },
    { 12, 2, 8, 2 },
    { 14, 4, 7, 2 },
    { 1, 7, 6, 2 },
    { 7, 7, 11, 2 },
    { 2, 10, 9, 2 },
    { 12, 10, 8, 2 },
    { 3, 13, 9, 2 },
    { 16, 13, 13, 2 },
    { 2, 15, 28, 5 },
    { 1, 5, 5, 2 },
    { 7, 5, 7, 2 }
};

static void GTSSearchListing_InitWindows(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, 0, 2, 21, BOTTOM_WINDOW_TILE_WIDTH, BOTTOM_WINDOW_TILE_HEIGHT, 13, 1 + SCROLLING_MESSAGE_BOX_TILE_COUNT + 9);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0x0);
    Window_Add(appState->bgConfig, &appState->menuButtonWindows[0], 0, 21, 15, 5 * 2, 4, 13, TITLE_WINDOW_BASE_TILE + BOTTOM_WINDOW_TILE_COUNT);

    int baseTile = ((TITLE_WINDOW_BASE_TILE + BOTTOM_WINDOW_TILE_COUNT) + (5 * 2) * 4);

    for (int i = 0; i < NELEMS(sWindowLayouts); i++) {
        Window_Add(appState->bgConfig, &appState->infoWindows[i], 0, sWindowLayouts[i][0], sWindowLayouts[i][1], sWindowLayouts[i][2], sWindowLayouts[i][3], 13, baseTile);
        Window_FillTilemap(&appState->infoWindows[i], 0x0);

        baseTile += sWindowLayouts[i][2] * sWindowLayouts[i][3];
    }
}

static void GTSSearchListing_RemoveWindows(GTSApplicationState *appState)
{
    Window_Remove(&appState->bottomInstructionWindow);
    Window_Remove(&appState->menuButtonWindows[0]);

    for (int i = 0; i < NELEMS(sWindowLayouts); i++) {
        Window_Remove(&appState->infoWindows[i]);
    }
}

static void GTSSearchListing_InitStrings(GTSApplicationState *appState)
{
    GTSPokemonListing *listing = &appState->searchResults[appState->selectedSearchResult];

    appState->genericMessageBuffer = String_Init(90 * 2, HEAP_ID_62);

    StringTemplate_ClearArgs(appState->stringTemplate);

    if (listing->trainerCountry != 0) {
        StringTemplate_SetCountryName(appState->stringTemplate, 8, listing->trainerCountry);
    }

    if (listing->trainerRegion != 0) {
        StringTemplate_SetCityName(appState->stringTemplate, 9, listing->trainerCountry, listing->trainerRegion);
    }

    appState->trainerLocationStrings[0] = MessageUtil_ExpandedString(appState->stringTemplate, appState->gtsMessageLoader, Text_Gts_Template_Country, HEAP_ID_62);
    appState->trainerLocationStrings[1] = MessageUtil_ExpandedString(appState->stringTemplate, appState->gtsMessageLoader, Text_Gts_Template_City, HEAP_ID_62);
}

static void GTSSearchListing_FreeStrings(GTSApplicationState *appState)
{
    String_Free(appState->trainerLocationStrings[0]);
    String_Free(appState->trainerLocationStrings[1]);
    String_Free(appState->genericMessageBuffer);
}

static int GTSSearchListing_WaitFadeIn(GTSApplicationState *appState)
{
    appState->currentScreenInstruction = GTS_SEARCHLISTING_HANDLE_INPUT;
    return GTS_LOOP_STATE_MAIN;
}

static int GTSSearchListing_HandleInput(GTSApplicationState *appState)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        GTSSearchListing_ShowMessage(appState, Gts_Text_TradeForThisPokemon, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCHLISTING_WAIT_FOR_TEXT, GTS_SEARCHLISTING_SHOW_CONFIRMATION_MENU);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        appState->currentScreenInstruction = GTS_SEARCHLISTING_FADE_AND_EXIT;
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SEARCH, SCREEN_ARGUMENT_NONE);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (appState->selectedInfoTab == 0) {
            appState->selectedInfoTab = 1;
            appState->currentScreenInstruction = GTS_SEARCHLISTING_HANDLE_UPDATE_INFO_PANEL;

            Sound_PlayEffect(SE_CONFIRM_sseq_3);
        }
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (appState->selectedInfoTab != 0) {
            appState->selectedInfoTab = 0;
            appState->currentScreenInstruction = GTS_SEARCHLISTING_HANDLE_UPDATE_INFO_PANEL;

            Sound_PlayEffect(SE_CONFIRM_sseq_3);
        }
    } else {
        int newSelectedResult = GTSAvatar_GetTouchedSearchResult(appState->searchResultCount);

        if ((newSelectedResult != appState->selectedSearchResult) && (newSelectedResult >= 0)) {
            Sprite_SetAnim(appState->avatarSprites[newSelectedResult + 1], 16 + newSelectedResult * 4);
            appState->currentScreenInstruction = GTS_SEARCHLISTING_FADE_AND_EXIT;
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SEARCH_LISTING, SCREEN_ARGUMENT_NONE);
            appState->selectedSearchResult = newSelectedResult;
            Sound_PlayEffect(SE_CONFIRM_sseq_3);
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSSearchListing_FadeAndExit(GTSApplicationState *appState)
{
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);

    appState->currentScreenInstruction = GTS_SEARCHLISTING_IDLE;
    return GTS_LOOP_STATE_FINISH;
}

static int GTSSearchListing_ShowConfirmationMenu(GTSApplicationState *appState)
{
    appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 15, (TITLE_WINDOW_BASE_TILE + BOTTOM_WINDOW_TILE_COUNT) + (5 * 2) * 4 + 262 + 64 + 36);
    appState->currentScreenInstruction = GTS_SEARCHLISTING_HANDLE_CONFIRMATION_MENU;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSSearchListing_HandleConfirmationMenu(GTSApplicationState *appState)
{
    int result = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (result != MENU_NOTHING_CHOSEN) {
        if (result == MENU_CANCEL) {
            appState->currentScreenInstruction = GTS_SEARCHLISTING_FADE_AND_EXIT;
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SEARCH, SCREEN_ARGUMENT_NONE);
            GTSSearchListing_DrawTabHeaders(appState->gtsMessageLoader, &appState->infoWindows[7]);
            GTSSearchListing_RefreshInfoPanel(appState);
        } else {
            appState->currentScreenInstruction = GTS_SEARCHLISTING_FADE_AND_EXIT;
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SELECT_POKEMON, SCREEN_ARGUMENT_CHOOSE_LISTED_MON);
            GTSSearchListing_DrawTabHeaders(appState->gtsMessageLoader, &appState->infoWindows[7]);
            GTSSearchListing_RefreshInfoPanel(appState);
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static void GTSSearchListing_RefreshInfoPanel(GTSApplicationState *appState)
{
    if (appState->selectedInfoTab == 0) {
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 27, appState->bgConfig, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
        GTSSearchListing_DrawRequirementsInfo(&appState->infoWindows[9], appState->gtsMessageLoader, appState->speciesMessageLoader, &appState->searchResults[appState->selectedSearchResult].requirements);
    } else {
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 28, appState->bgConfig, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
        GTSSearchListing_DrawTrainerLocationText(&appState->infoWindows[9], appState->trainerLocationStrings[0], appState->trainerLocationStrings[1]);
    }
}

static int GTSSearchListing_UpdateInfoPanel(GTSApplicationState *appState)
{
    GTSSearchListing_RefreshInfoPanel(appState);
    appState->currentScreenInstruction = GTS_SEARCHLISTING_HANDLE_INPUT;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSSearchListing_WaitForText(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

static void GTSSearchListing_ShowMessage(GTSApplicationState *appState, int messageId, int textSpeed, int unused1, u16 unused2)
{
    MessageLoader_GetString(appState->gtsMessageLoader, messageId, appState->genericMessageBuffer);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->bottomInstructionWindow, 0, 1, 10);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->bottomInstructionWindow, FONT_MESSAGE, appState->genericMessageBuffer, 0, 0, textSpeed, NULL);
}

static void GTSSearchListing_DrawTabHeaders(MessageLoader *messageLoader, Window windows[])
{
    String *wantedHeader = MessageLoader_GetNewString(messageLoader, Gts_Text_WantedPokemon);
    String *locationHeader = MessageLoader_GetNewString(messageLoader, Gts_Text_OTLocation);

    Window_DrawAlignedSystemText(&windows[0], wantedHeader, 0, 2, 0, TEXT_COLOR(15, 2, 0));
    Window_DrawAlignedSystemText(&windows[1], locationHeader, 0, 2, 1, TEXT_COLOR(15, 2, 0));

    String_Free(wantedHeader);
    String_Free(locationHeader);
}

static void GTSSearchListing_DrawRequirementsInfo(Window *window, MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, GTSPokemonRequirements *requirements)
{
    Window_FillTilemap(window, 0x0);

    GTSDeposit_DrawSpeciesText(window, speciesMessageLoader, requirements->species, 0, 3, TEXT_COLOR(15, 2, 0));
    GTSDeposit_DrawGenderText(window, gtsMessageLoader, requirements->gender, 0, 3, 70, TEXT_COLOR(15, 2, 0));
#if POKEPLATINUM_REVISION == 0
    GTSDeposit_DrawLevelText(window + 1, gtsMessageLoader, GTS_FindLevelMessageIndex(requirements->level, requirements->level2, 0), 0, 19, TEXT_COLOR(15, 2, 0), 0, 8);
#else
    GTSDeposit_DrawLevelText(window, gtsMessageLoader, GTS_FindLevelMessageIndex(requirements->level, requirements->level2, 0), 0, 19, TEXT_COLOR(15, 2, 0), 0, 8);
#endif
}

static void GTSSearchListing_DrawTrainerLocationText(Window *window, String *countryString, String *cityString)
{
    Window_FillTilemap(window, 0x0);

    if (countryString != NULL) {
        Window_DrawAlignedSystemText(window, countryString, 0, 3, 0, TEXT_COLOR(15, 2, 0));
    }

    if (cityString != NULL) {
        Window_DrawAlignedSystemText(window, cityString, 8, 19, 0, TEXT_COLOR(15, 2, 0));
    }
}
