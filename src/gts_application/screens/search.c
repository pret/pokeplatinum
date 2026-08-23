#include "gts_application/screens/search.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/net.h"
#include "constants/species.h"

#include "gts_application/application.h"
#include "gts_application/avatar.h"
#include "gts_application/gts.h"
#include "gts_application/networking.h"
#include "gts_application/screens/deposit.h"
#include "gts_application/screens/wfc_init.h"

#include "bg_window.h"
#include "comm_manager.h"
#include "font.h"
#include "game_options.h"
#include "global_trade.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "network_icon.h"
#include "pokemon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "string_gf.h"
#include "string_list.h"
#include "system.h"
#include "text.h"

#include "res/text/bank/gts.h"

static void GTSSearch_InitBgLayers(BgConfig *bgConfig);
static void GTSSearch_FreeBgLayers(BgConfig *bgConfig);
static void GTSSearch_LoadGraphics(GTSApplicationState *appState);
static void GTSSearch_InitSprites(GTSApplicationState *appState);
static void GTSSearch_FreeSprites(GTSApplicationState *appState);
static void GTSSearch_InitWindows(GTSApplicationState *appState);
static void GTSSearch_RemoveWindows(GTSApplicationState *appState);
static void GTSSearch_AllocState(GTSApplicationState *appState);
static void GTSSearch_FreeState(GTSApplicationState *appState);
static int GTSSearch_ShowPrompt(GTSApplicationState *appState);
static int GTSSearch_HandleInput(GTSApplicationState *appState);
static int GTSSearch_SubmitSearch(GTSApplicationState *appState);
static int GTSSearch_SendSearchRequest(GTSApplicationState *appState);
static int GTSSearch_WaitForSearchResults(GTSApplicationState *appState);
static int GTSSearch_ShowResultsMessage(GTSApplicationState *appState);
static int GTSSearch_GetRequirementsCursorIndex(GTSApplicationState *appState);
static void GTSSearch_HandleRequirementsCursorInput(GTSApplicationState *appState);
static int GTSSearch_FadeAndExit(GTSApplicationState *appState);
static int GTSSearch_ShowSpeciesSearchPrompt(GTSApplicationState *appState);
static int GTSSearch_CreateCharpad(GTSApplicationState *appState);
static int GTSSearch_HandleCharpadInput(GTSApplicationState *appState);
static int GTSSearch_CreateSpeciesMenu(GTSApplicationState *appState);
static int GTSSearch_HandleSpeciesMenuInput(GTSApplicationState *appState);
static int GTSSearch_ShowGenderSearchPrompt(GTSApplicationState *appState);
static int GTSSearch_CreateGenderMenu(GTSApplicationState *appState);
static int GTSSearch_HandleGenderMenuInput(GTSApplicationState *appState);
static int GTSSearch_ShowLevelSearchPrompt(GTSApplicationState *appState);
static int GTSSearch_CreateLevelMenu(GTSApplicationState *appState);
static int GTSSearch_HandleLevelMenuInput(GTSApplicationState *appState);
static int GTSSearch_ShowCountrySearchPrompt(GTSApplicationState *appState);
static int GTSSearch_CreateCountryMenu(GTSApplicationState *appState);
static int GTSSearch_HandleCountryMenuInput(GTSApplicationState *appState);
static int GTSSearch_CreateExitConfirmMenu(GTSApplicationState *appState);
static int GTSSearch_HandleExitConfirm(GTSApplicationState *appState);
static int GTSSearch_Idle(GTSApplicationState *appState);
static int GTSSearch_ShowSearchPromptAgain(GTSApplicationState *appState);
static int GTSSearch_WaitForText(GTSApplicationState *appState);
static int GTSSearch_WaitForResultsReveal(GTSApplicationState *appState);
static void GTSSearch_ShowMessage(GTSApplicationState *appState, int entryID, int renderDelay, int unused1, u16 unused2);
static int GTSSearch_ShowInvalidSearchMessage(GTSApplicationState *appState);
static int GTSSearch_ShowServerMaintenanceMessage(GTSApplicationState *appState);
static int GTSSearch_DisconnectAndExit(GTSApplicationState *appState);
static void GTSSearch_DrawCriteriaLabels(Window *criteriaWindows, Window *locationWindows, MessageLoader *gtsMessageLoader);
static int GTS_IsTradeTimestampRecent(GTSApplicationState *appState, int bySearching);
static int GTSSearch_RequirementsMatch(const GTSPokemonRequirements *requirements, const GTSPokemonRequirements *submittedRequirements, int countryIndex, int submittedCountryIndex);
static int GTSSearch_WaitForTextWithDelay(GTSApplicationState *appState);

static int (*sGTSSearchStateHandlers[])(GTSApplicationState *) = {
    [GTS_SEARCH_SHOW_PROMPT] = GTSSearch_ShowPrompt,
    [GTS_SEARCH_HANDLE_INPUT] = GTSSearch_HandleInput,
    [GTS_SEARCH_FADE_AND_EXIT] = GTSSearch_FadeAndExit,
    [GTS_SEARCH_SHOW_SPECIES_SEARCH_PROMPT] = GTSSearch_ShowSpeciesSearchPrompt,
    [GTS_SEARCH_CREATE_CHARPAD] = GTSSearch_CreateCharpad,
    [GTS_SEARCH_HANDLE_CHARPAD_INPUT] = GTSSearch_HandleCharpadInput,
    [GTS_SEARCH_CREATE_SPECIES_MENU] = GTSSearch_CreateSpeciesMenu,
    [GTS_SEARCH_HANDLE_SPECIES_MENU_INPUT] = GTSSearch_HandleSpeciesMenuInput,
    [GTS_SEARCH_SHOW_GENDER_SEARCH_PROMPT] = GTSSearch_ShowGenderSearchPrompt,
    [GTS_SEARCH_CREATE_GENDER_MENU] = GTSSearch_CreateGenderMenu,
    [GTS_SEARCH_HANDLE_GENDER_MENU_INPUT] = GTSSearch_HandleGenderMenuInput,
    [GTS_SEARCH_SHOW_LEVEL_SEARCH_PROMPT] = GTSSearch_ShowLevelSearchPrompt,
    [GTS_SEARCH_CREATE_LEVEL_MENU] = GTSSearch_CreateLevelMenu,
    [GTS_SEARCH_HANDLE_LEVEL_MENU_INPUT] = GTSSearch_HandleLevelMenuInput,
    [GTS_SEARCH_SHOW_COUNTRY_SEARCH_PROMPT] = GTSSearch_ShowCountrySearchPrompt,
    [GTS_SEARCH_CREATE_COUNTRY_MENU] = GTSSearch_CreateCountryMenu,
    [GTS_SEARCH_HANDLE_COUNTRY_MENU_INPUT] = GTSSearch_HandleCountryMenuInput,
    [GTS_SEARCH_SUBMIT_SEARCH] = GTSSearch_SubmitSearch,
    [GTS_SEARCH_SEND_SEARCH_REQUEST] = GTSSearch_SendSearchRequest,
    [GTS_SEARCH_WAIT_FOR_SEARCH_RESULTS] = GTSSearch_WaitForSearchResults,
    [GTS_SEARCH_SHOW_RESULTS_MESSAGE] = GTSSearch_ShowResultsMessage,
    [GTS_SEARCH_WAIT_FOR_RESULTS_REVEAL] = GTSSearch_WaitForResultsReveal,
    [GTS_SEARCH_SHOW_INVALID_SEARCH_MESSAGE] = GTSSearch_ShowInvalidSearchMessage,
    [GTS_SEARCH_WAIT_FOR_TEXT] = GTSSearch_WaitForText,
    [GTS_SEARCH_WAIT_FOR_TEXT_WITH_DELAY] = GTSSearch_WaitForTextWithDelay,
    [GTS_SEARCH_CREATE_EXIT_CONFIRM_MENU] = GTSSearch_CreateExitConfirmMenu,
    [GTS_SEARCH_HANDLE_EXIT_CONFIRM] = GTSSearch_HandleExitConfirm,
    [GTS_SEARCH_IDLE] = GTSSearch_Idle,
    [GTS_SEARCH_SHOW_SEARCH_PROMPT_AGAIN] = GTSSearch_ShowSearchPromptAgain,
    [GTS_SEARCH_SHOW_SERVER_MAINTENANCE_MESSAGE] = GTSSearch_ShowServerMaintenanceMessage,
    [GTS_SEARCH_DISCONNECT_AND_EXIT] = GTSSearch_DisconnectAndExit
};

static u16 sRequirementsCursorPositions[][2] = {
    { 20, 47 },
    { 20, 71 },
    { 20, 95 },
    { 20, 119 },
    { 176, 56 },
    { 176, 96 }
};

int GTSApplication_Search_Init(GTSApplicationState *appState, int unused)
{
    GTSSearch_AllocState(appState);
    GTSSearch_InitBgLayers(appState->bgConfig);
    GTSSearch_LoadGraphics(appState);
    GTSSearch_InitWindows(appState);
    GTSSearch_InitSprites(appState);
    GTSSearch_DrawCriteriaLabels(&appState->infoWindows[0], &appState->locationCriteriaWindows[0], appState->gtsMessageLoader);
    GTSDeposit_DrawSpeciesText(&appState->infoWindows[1], appState->speciesMessageLoader, appState->searchRequirements.species, 0, 0, TEXT_COLOR(1, 2, 0));
    GTSDeposit_DrawGenderText(&appState->infoWindows[3], appState->gtsMessageLoader, appState->searchRequirements.gender, 1, 0, 0, TEXT_COLOR(1, 2, 0));
    GTSDeposit_DrawLevelTextAtOrigin(&appState->infoWindows[5], appState->gtsMessageLoader, GTS_FindLevelMessageIndex(appState->searchRequirements.level, appState->searchRequirements.level2, 1), 0, 0, TEXT_COLOR(1, 2, 0), 1);
    GTSDeposit_DrawCountryText(&appState->locationCriteriaWindows[1], appState->countryMessageLoader, appState->gtsMessageLoader, appState->selectedCountryIndex, 0, 0, TEXT_COLOR(1, 2, 0));

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
    appState->currentScreenInstruction = GTS_SEARCH_SHOW_PROMPT;

    return 2;
}

int GTSApplication_Search_Main(GTSApplicationState *appState, int unused)
{
    return (*sGTSSearchStateHandlers[appState->currentScreenInstruction])(appState);
}

int GTSApplication_Search_Exit(GTSApplicationState *appState, int unused)
{
    GTSSearch_FreeSprites(appState);
    GTSSearch_FreeState(appState);
    GTSSearch_RemoveWindows(appState);
    GTSSearch_FreeBgLayers(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return 1;
}

static void GTSSearch_InitBgLayers(BgConfig *bgConfig)
{
    BgTemplate mainWindowTemplate = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &mainWindowTemplate, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate mainBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x0800,
        .charBase = GX_BG_CHARBASE_0x0c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &mainBgTemplate, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate subWindowTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x1000,
        .charBase = GX_BG_CHARBASE_0x14000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &subWindowTemplate, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    BgTemplate subBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x1800,
        .charBase = GX_BG_CHARBASE_0x1c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &subBgTemplate, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);

    Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
}

static void GTSSearch_FreeBgLayers(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
}

static void GTSSearch_LoadGraphics(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(narc, 3, 0, 0, 16 * 3 * 2, HEAP_ID_62);
    Graphics_LoadPaletteFromOpenNARC(narc, 5, 4, 0, 16 * 8 * 2, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 10, Options_Frame(appState->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, 1 + SCROLLING_MESSAGE_BOX_TILE_COUNT, 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 13, bgConfig, 1, 0, 16 * 5 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 26, bgConfig, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    NARC_dtor(narc);
}

static void GTSSearch_InitSprites(GTSApplicationState *appState)
{
    AffineSpriteListTemplate template;

    GTSApplication_InitAffineTemplate(&template, appState, &appState->cursorSpriteResourceHeader, NNS_G2D_VRAM_TYPE_2DMAIN);

    template.position.x = FX32_ONE;
    template.position.y = FX32_ONE;

    appState->cursorSprite = SpriteList_AddAffine(&template);

    Sprite_SetAnimateFlag(appState->cursorSprite, 1);
    Sprite_SetAnim(appState->cursorSprite, 0);
    Sprite_SetExplicitPriority(appState->cursorSprite, 1);
    NetworkIcon_Init();
}

static void GTSSearch_FreeSprites(GTSApplicationState *appState)
{
    Sprite_Delete(appState->cursorSprite);
}

static const u16 sCriteriaWindowPositions[6][2] = {
    { 3, 5 },
    { 9, 5 },
    { 3, 8 },
    { 9, 8 },
    { 3, 11 },
    { 9, 11 }
};

static const u16 Unk_ov94_02245D84[][2] = {
    { 22, 6 },
    { 22, 11 }
};

static const u16 Unk_ov94_02245D8C[][2] = {
    { 3, 14 },
    { 2, 16 }
};

static void GTSSearch_InitWindows(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->titleWindow, 0, 1, 1, TITLE_WINDOW_TILE_WIDTH, TITLE_WINDOW_TILE_HEIGHT, 13, TITLE_WINDOW_BASE_TILE);
    Window_FillTilemap(&appState->titleWindow, 0x0);

    Window_DrawAlignedMessageText(&appState->titleWindow, appState->title, 0, 1, 0, TEXT_COLOR(15, 13, 0));

    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, 0, 2, 21, BOTTOM_WINDOW_TILE_WIDTH, BOTTOM_WINDOW_TILE_HEIGHT, 13, BOTTOM_WINDOW_BASE_TILE);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0x0);

    int i, unused;

    for (i = 0; i < 6; i++) {
        Window_Add(appState->bgConfig, &appState->infoWindows[i], 3, sCriteriaWindowPositions[i][0], sCriteriaWindowPositions[i][1], INFO_WINDOW_TILE_WIDTH, INFO_WINDOW_TILE_HEIGHT, 13, 1 + (11 * 2) * i);
        Window_FillTilemap(&appState->infoWindows[i], 0x0);
    }

    for (i = 0; i < 2; i++) {
        Window_Add(appState->bgConfig, &appState->infoWindows[6 + i], 2, Unk_ov94_02245D84[i][0], Unk_ov94_02245D84[i][1], 8, 2, 13, (BOTTOM_WINDOW_BASE_TILE + BOTTOM_WINDOW_TILE_COUNT) + (8 * 2) * i);
        Window_FillTilemap(&appState->infoWindows[6 + i], 0x0);
    }

    for (i = 0; i < 2; i++) {
        Window_Add(appState->bgConfig, &appState->locationCriteriaWindows[i], 3, Unk_ov94_02245D8C[i][0], Unk_ov94_02245D8C[i][1], TITLE_WINDOW_TILE_WIDTH, TITLE_WINDOW_TILE_HEIGHT, 13, (1 + 11 * 2 * 6) + (TITLE_WINDOW_TILE_WIDTH * TITLE_WINDOW_TILE_HEIGHT) * i);
        Window_FillTilemap(&appState->locationCriteriaWindows[i], 0x0);
    }
}

static void GTSSearch_RemoveWindows(GTSApplicationState *appState)
{
    Window_Remove(&appState->bottomInstructionWindow);
    Window_Remove(&appState->titleWindow);

    for (int i = 0; i < 8; i++) {
        Window_Remove(&appState->infoWindows[i]);
    }

    for (int i = 0; i < 2; i++) {
        Window_Remove(&appState->locationCriteriaWindows[i]);
    }
}

static void GTSSearch_AllocState(GTSApplicationState *appState)
{
    appState->genericMessageBuffer = String_Init(90 * 2, HEAP_ID_62);
    appState->title = MessageLoader_GetNewString(appState->gtsMessageLoader, GTS_Text_SeekPokemon);
    appState->speciesMenuState = Heap_Alloc(HEAP_ID_62, sizeof(GTSSpeciesMenuState));

    MI_CpuClearFast(appState->speciesMenuState, sizeof(GTSSpeciesMenuState));

    appState->speciesMenuState->alphabeticalSpecies = GTS_LoadAlphabeticalPokedex(62, 0, &appState->speciesMenuState->alphabeticalSpeciesCount);
    appState->speciesMenuState->dexSeenFlags = GTS_LoadNationalDexLookup(62);

    GTS_InitTabScrollState(&appState->charpadScrollState);
}

static void GTSSearch_FreeState(GTSApplicationState *appState)
{
    Heap_Free(appState->speciesMenuState->dexSeenFlags);
    Heap_Free(appState->speciesMenuState->alphabeticalSpecies);
    Heap_Free(appState->speciesMenuState);
    String_Free(appState->genericMessageBuffer);
    String_Free(appState->title);
}

static int GTSSearch_ShowPrompt(GTSApplicationState *appState)
{
    GTSSearch_ShowMessage(appState, 8, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_HANDLE_INPUT);

    return 3;
}

static int GTSSearch_HandleInput(GTSApplicationState *appState)
{
    GTSSearch_HandleRequirementsCursorInput(appState);

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        switch (GTSSearch_GetRequirementsCursorIndex(appState)) {
        case GTS_SEARCH_CURSOR_SPECIES:
            appState->currentScreenInstruction = GTS_SEARCH_SHOW_SPECIES_SEARCH_PROMPT;
            Sound_PlayEffect(SE_CONFIRM_sseq_3);
            break;
        case GTS_SEARCH_CURSOR_GENDER:
            if (appState->searchRequirements.species != 0) {
                appState->speciesMenuState->selectedSpeciesGenderRatio = SpeciesData_GetSpeciesValue(appState->searchRequirements.species, SPECIES_DATA_GENDER_RATIO);

                if (GTSDeposit_TryAutoSetGender(&appState->searchRequirements, appState->speciesMenuState->selectedSpeciesGenderRatio)) {
                    Sound_PlayEffect(SE_CONFIRM_sseq_3);
                    return 3;
                }
            }
            appState->currentScreenInstruction = GTS_SEARCH_SHOW_GENDER_SEARCH_PROMPT;
            Sound_PlayEffect(SE_CONFIRM_sseq_3);
            break;
        case GTS_SEARCH_CURSOR_LEVEL:
            appState->currentScreenInstruction = GTS_SEARCH_SHOW_LEVEL_SEARCH_PROMPT;
            Sound_PlayEffect(SE_CONFIRM_sseq_3);
            break;
        case GTS_SEARCH_CURSOR_LOCATION:
            appState->currentScreenInstruction = GTS_SEARCH_SHOW_COUNTRY_SEARCH_PROMPT;
            Sound_PlayEffect(SE_CONFIRM_sseq_3);
            break;
        case GTS_SEARCH_CURSOR_SEARCH:
            appState->currentScreenInstruction = GTS_SEARCH_SUBMIT_SEARCH;
            break;
        case GTS_SEARCH_CURSOR_BACK:
            GTSSearch_ShowMessage(appState, 15, TEXT_SPEED_FAST, 0, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_CREATE_EXIT_CONFIRM_MENU);
            Sound_PlayEffect(SE_CONFIRM_sseq_3);
            break;
        }
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        GTSSearch_ShowMessage(appState, 15, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_CREATE_EXIT_CONFIRM_MENU);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
    } else {
        int result = GTSAvatar_GetTouchedSearchResult(appState->searchResultCount);

        if (appState->searchResultsVisible) {
            if (result >= 0) {
                Sprite_SetAnim(appState->avatarSprites[result + 1], 16 + result * 4);
                appState->currentScreenInstruction = GTS_SEARCH_FADE_AND_EXIT;
                GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SEARCH_LISTING, SCREEN_ARGUMENT_NONE);
                appState->selectedSearchResult = result;
                Sound_PlayEffect(SE_CONFIRM_sseq_3);
            }
        }
    }

    return 3;
}

static int GTSSearch_SubmitSearch(GTSApplicationState *appState)
{
    if (appState->searchRequirements.species == SPECIES_NONE) {
        GTSSearch_ShowMessage(appState, 12, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_HANDLE_INPUT);
        Sound_PlayEffect(SEQ_SE_DP_BOX03_sseq);
    } else {
        if (GTSSearch_RequirementsMatch(&appState->searchRequirements, &appState->submittedRequirements, appState->selectedCountryIndex, appState->submittedCountryIndex)) {
            GTSSearch_ShowMessage(appState, 33, TEXT_SPEED_FAST, 0, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_HANDLE_INPUT);
            Sound_PlayEffect(SEQ_SE_DP_BOX03_sseq);
        } else {
            Sound_PlayEffect(SEQ_SE_DP_Z_SEARCH_sseq);

            GTSSearch_ShowMessage(appState, 13, TEXT_SPEED_FAST, 0, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_SEND_SEARCH_REQUEST);
            GTSAvatar_HighlightSearchResults(appState);
        }
    }

    return 3;
}

static int GTS_IsTradeTimestampRecent(GTSApplicationState *appState, int bySearching)
{
    u32 datestamp;
    RTCDate date, currentDate;
    RTCTime time;

    if (bySearching == 1) {
        datestamp = GlobalTrade_GetSearchTradeDatestamp(appState->playerData->globalTrade);
    } else {
        datestamp = GlobalTrade_GetDepositTradeDatestamp(appState->playerData->globalTrade);
    }

    Date_Decode(datestamp, &date);
    DWC_GetDateTime(&currentDate, &time);

    int diff = RTC_ConvertDateToDay(&currentDate) - RTC_ConvertDateToDay(&date);

    if ((diff >= 0) && (diff < 3)) {
        return TRUE;
    }

    return FALSE;
}

static int GTSSearch_SendSearchRequest(GTSApplicationState *appState)
{
    int maxResults = 3;

    if (GTS_IsTradeTimestampRecent(appState, 1)) {
        maxResults += 2;
    }

    if (GTS_IsTradeTimestampRecent(appState, 0)) {
        maxResults += 2;
    }

    if (appState->selectedCountryIndex == 0) {
        GTSNetworking_SearchGlobal(&appState->searchRequirements, maxResults, appState->searchResults);
    } else {
        GTSCountrySearchRequest request;

        MI_CpuClear8(&request, sizeof(GTSCountrySearchRequest));

        request.species = appState->searchRequirements.species;
        request.gender = appState->searchRequirements.gender;
        request.level = appState->searchRequirements.level;
        request.level2 = appState->searchRequirements.level2;
        request.unk_05 = appState->searchRequirements.unset_05;
        request.count = maxResults;
        request.countryIndex = appState->selectedCountryIndex;

        GTSNetworking_SearchByCountry(&request, appState->searchResults);
    }

    appState->submittedRequirements = appState->searchRequirements;
    appState->submittedCountryIndex = appState->selectedCountryIndex;
    appState->networkTimeoutCounter = 0;
    appState->currentScreenInstruction = GTS_SEARCH_WAIT_FOR_SEARCH_RESULTS;
    appState->searchResultsVisible = 0;

    return 3;
}

static int GTSSearch_WaitForSearchResults(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errCode = GTSNetworking_GetErrorCode();
        appState->networkTimeoutCounter = 0;

        switch (errCode) {
        case GTS_RESULT_SUCCESS:
        case GTS_RESULT_1_FOUND:
        case GTS_RESULT_2_FOUND:
        case GTS_RESULT_3_FOUND:
        case GTS_RESULT_4_FOUND:
        case GTS_RESULT_5_FOUND:
        case GTS_RESULT_6_FOUND:
        case GTS_RESULT_7_FOUND:
            appState->searchResultCount = errCode;
            Sound_StopEffect(1535, 0);
            GTSAvatar_ShowSearchResults(appState, errCode, 1);
            appState->currentScreenInstruction = GTS_SEARCH_SHOW_RESULTS_MESSAGE;
            break;
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
            appState->currentScreenInstruction = GTS_SEARCH_SHOW_SERVER_MAINTENANCE_MESSAGE;
            break;
        case GTS_RESULT_ERROR:
            NetworkError_DisplayGTSCriticalError();
            break;
        case GTS_RESULT_CONNECTION_FAILED:
        case GTS_RESULT_ABORTED:
            appState->currentScreenInstruction = GTS_SEARCH_SHOW_INVALID_SEARCH_MESSAGE;
            break;
        default:
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == NETWORK_TIMEOUT_FRAMES) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return 3;
}

static int GTSSearch_ShowResultsMessage(GTSApplicationState *appState)
{
    if (appState->searchResultCount == 0) {
        GTSSearch_ShowMessage(appState, 14, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_HANDLE_INPUT);
        Sound_PlayEffect(SEQ_SE_DP_BOX03_sseq);
    } else {
        GTSSearch_ShowMessage(appState, 30, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_WAIT_FOR_RESULTS_REVEAL);
        appState->frameDelay = 0;
    }

    return 3;
}

static int GTSSearch_WaitForResultsReveal(GTSApplicationState *appState)
{
    appState->frameDelay++;

    if (appState->frameDelay > 45) {
        GTSSearch_ShowMessage(appState, 32, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_HANDLE_INPUT);
        appState->searchResultsVisible = 1;
    }

    return 3;
}

static int GTSSearch_ShowInvalidSearchMessage(GTSApplicationState *appState)
{
    appState->submittedRequirements.species = SPECIES_NONE;

    GTSSearch_ShowMessage(appState, 38, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_HANDLE_INPUT);
    Sound_PlayEffect(SEQ_SE_DP_BOX03_sseq);

    return 3;
}

static int GTSSearch_ShowServerMaintenanceMessage(GTSApplicationState *appState)
{
    GTSSearch_ShowMessage(appState, 147, TEXT_SPEED_NORMAL, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT_WITH_DELAY, GTS_SEARCH_DISCONNECT_AND_EXIT);
    appState->frameDelay = 0;
    Sound_PlayEffect(SEQ_SE_DP_BOX03_sseq);

    return 3;
}

static int GTSSearch_DisconnectAndExit(GTSApplicationState *appState)
{
    GTSSearch_ShowMessage(appState, 152, TEXT_SPEED_NORMAL, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT_WITH_DELAY, GTS_SEARCH_FADE_AND_EXIT);
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_NONE);
    Sound_PlayEffect(SEQ_SE_DP_BOX03_sseq);

    return 3;
}

static int GTSSearch_GetRequirementsCursorIndex(GTSApplicationState *appState)
{
    int cursorIdx;

    if (appState->speciesMenuState->requirementsActivePanel == 0) {
        cursorIdx = appState->speciesMenuState->leftPanelCursorPos;
    } else {
        cursorIdx = appState->speciesMenuState->rightPanelCursorPos + 4;
    }

    return cursorIdx;
}

static void GTSSearch_HandleRequirementsCursorInput(GTSApplicationState *appState)
{
    if (gSystem.pressedKeys & PAD_KEY_UP) {
        if (appState->speciesMenuState->requirementsActivePanel == 0) {
            if (appState->speciesMenuState->leftPanelCursorPos > 0) {
                appState->speciesMenuState->leftPanelCursorPos--;
                Sound_PlayEffect(SE_CONFIRM_sseq_3);
            }
        } else {
            if (appState->speciesMenuState->rightPanelCursorPos != 0) {
                Sound_PlayEffect(SE_CONFIRM_sseq_3);
            }

            appState->speciesMenuState->rightPanelCursorPos = 0;
        }
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (appState->speciesMenuState->requirementsActivePanel == 0) {
            if (appState->speciesMenuState->leftPanelCursorPos < 3) {
                appState->speciesMenuState->leftPanelCursorPos++;
                Sound_PlayEffect(SE_CONFIRM_sseq_3);
            }
        } else {
            if (appState->speciesMenuState->rightPanelCursorPos != 1) {
                Sound_PlayEffect(SE_CONFIRM_sseq_3);
            }

            appState->speciesMenuState->rightPanelCursorPos = 1;
        }
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (appState->speciesMenuState->requirementsActivePanel != 1) {
            Sound_PlayEffect(SE_CONFIRM_sseq_3);
        }

        appState->speciesMenuState->requirementsActivePanel = 1;
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (appState->speciesMenuState->requirementsActivePanel != 0) {
            Sound_PlayEffect(SE_CONFIRM_sseq_3);
        }

        appState->speciesMenuState->requirementsActivePanel = 0;
    }

    VecFx32 pos;

    pos.x = FX32_ONE * sRequirementsCursorPositions[GTSSearch_GetRequirementsCursorIndex(appState)][0];
    pos.y = FX32_ONE * sRequirementsCursorPositions[GTSSearch_GetRequirementsCursorIndex(appState)][1];

    Sprite_SetPosition(appState->cursorSprite, &pos);
}

static int GTSSearch_FadeAndExit(GTSApplicationState *appState)
{
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);

    appState->currentScreenInstruction = GTS_SEARCH_SHOW_PROMPT;

    return 4;
}

static int GTSSearch_ShowSpeciesSearchPrompt(GTSApplicationState *appState)
{
    GTSSearch_ShowMessage(appState, 9, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_CREATE_CHARPAD);

    Window_Add(appState->bgConfig, &appState->menuButtonWindows[0], 0, 15, 5, 4, 13, 13, (BOTTOM_WINDOW_BASE_TILE + BOTTOM_WINDOW_TILE_COUNT) + 8 * 2 * 2);
    Window_FillTilemap(&appState->menuButtonWindows[0], 0x0);

    Window_Add(appState->bgConfig, &appState->menuButtonWindows[1], 0, 21, 5, 10, 13, 13, ((BOTTOM_WINDOW_BASE_TILE + BOTTOM_WINDOW_TILE_COUNT) + 8 * 2 * 2) + 4 * 13);
    Window_FillTilemap(&appState->menuButtonWindows[1], 0x0);

    return 3;
}

static int GTSSearch_CreateCharpad(GTSApplicationState *appState)
{
    appState->activeListMenu = GTS_CreateCharpadMenu(appState, &appState->menuStringList, &appState->menuButtonWindows[0], appState->gtsMessageLoader);
    appState->listMenuCursorIndex = 0xffff;
    appState->currentScreenInstruction = GTS_SEARCH_HANDLE_CHARPAD_INPUT;

    return 3;
}

static int GTSSearch_HandleCharpadInput(GTSApplicationState *appState)
{
    switch (GTS_ProcessListMenuInput(appState->activeListMenu, &appState->listMenuCursorIndex)) {
    case GTS_CHARPAD_TAB_ABC:
    case GTS_CHARPAD_TAB_DEF:
    case GTS_CHARPAD_TAB_GHI:
    case GTS_CHARPAD_TAB_JKL:
    case GTS_CHARPAD_TAB_MNO:
    case GTS_CHARPAD_TAB_PQR:
    case GTS_CHARPAD_TAB_STU:
    case GTS_CHARPAD_TAB_VWX:
    case GTS_CHARPAD_TAB_YZ:
        ListMenu_Free(appState->activeListMenu, &appState->speciesMenuState->charpadScrollPos, &appState->speciesMenuState->charpadCursorPos);
        StringList_Free(appState->menuStringList);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        appState->currentScreenInstruction = GTS_SEARCH_CREATE_SPECIES_MENU;
        break;
    case MENU_CANCEL:
        ListMenu_Free(appState->activeListMenu, &appState->speciesMenuState->charpadScrollPos, &appState->speciesMenuState->charpadCursorPos);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        Window_EraseMessageBox(&appState->bottomInstructionWindow, 0);
        Window_Remove(&appState->menuButtonWindows[0]);
        Window_Remove(&appState->menuButtonWindows[1]);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        appState->currentScreenInstruction = GTS_SEARCH_SHOW_PROMPT;
        break;
    }

    return 3;
}

static int GTSSearch_CreateSpeciesMenu(GTSApplicationState *appState)
{
    appState->activeListMenu = GTS_CreateSpeciesMenu(appState, &appState->menuStringList, &appState->menuButtonWindows[1], appState->gtsMessageLoader, appState->speciesMessageLoader, appState->speciesMenuState, appState->playerData->pokedex);
    appState->listMenuCursorIndex = 0xffff;
    appState->currentScreenInstruction = GTS_SEARCH_HANDLE_SPECIES_MENU_INPUT;

    return 3;
}

static int GTSSearch_HandleSpeciesMenuInput(GTSApplicationState *appState)
{
    #ifdef SDK_BUILD_ARM
    u32 result;
    #else
    u64 result;
    #endif

    switch (result = GTS_ProcessListMenuInput(appState->activeListMenu, &appState->listMenuCursorIndex)) {
    case MENU_NOTHING_CHOSEN:
        break;
    case MENU_CANCEL:
        ListMenu_Free(appState->activeListMenu, &appState->speciesMenuState->speciesListScrollPos, &appState->speciesMenuState->speciesListCursorPos);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[1], 0);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        appState->currentScreenInstruction = GTS_SEARCH_CREATE_CHARPAD;
        GTS_SaveTabScrollState(&appState->charpadScrollState, appState->speciesMenuState->charpadScrollPos + appState->speciesMenuState->charpadCursorPos, appState->speciesMenuState->speciesListScrollPos, appState->speciesMenuState->speciesListCursorPos);
        break;
    default:
        ListMenu_Free(appState->activeListMenu, &appState->speciesMenuState->speciesListScrollPos, &appState->speciesMenuState->speciesListCursorPos);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        Window_EraseStandardFrame(&appState->menuButtonWindows[1], 0);
        Window_Remove(&appState->menuButtonWindows[0]);
        Window_Remove(&appState->menuButtonWindows[1]);

        appState->searchRequirements.species = result;
        appState->currentScreenInstruction = GTS_SEARCH_SHOW_PROMPT;

        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        Window_FillTilemap(&appState->infoWindows[1], 0x0);

        GTSDeposit_DrawSpeciesText(&appState->infoWindows[1], appState->speciesMessageLoader, result, 0, 0, TEXT_COLOR(1, 2, 0));
        appState->speciesMenuState->selectedSpeciesGenderRatio = SpeciesData_GetSpeciesValue(result, SPECIES_DATA_GENDER_RATIO);
        GTS_SaveTabScrollState(&appState->charpadScrollState, appState->speciesMenuState->charpadScrollPos + appState->speciesMenuState->charpadCursorPos, appState->speciesMenuState->speciesListScrollPos, appState->speciesMenuState->speciesListCursorPos);

        if (GTSDeposit_TryAutoSetGender(&appState->searchRequirements, appState->speciesMenuState->selectedSpeciesGenderRatio)) {
            Window_FillTilemap(&appState->infoWindows[3], 0x0);
            GTSDeposit_DrawGenderText(&appState->infoWindows[3], appState->gtsMessageLoader, appState->searchRequirements.gender, 1, 0, 0, TEXT_COLOR(1, 2, 0));
        }
        break;
    }

    return 3;
}

static int GTSSearch_ShowGenderSearchPrompt(GTSApplicationState *appState)
{
    GTSSearch_ShowMessage(appState, 10, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_CREATE_GENDER_MENU);

    Window_Add(appState->bgConfig, &appState->menuButtonWindows[0], 0, 21, 10, 10, 8, 13, (BOTTOM_WINDOW_BASE_TILE + BOTTOM_WINDOW_TILE_COUNT) + 8 * 2 * 2);
    Window_FillTilemap(&appState->menuButtonWindows[0], 0x0);

    return 3;
}

static int GTSSearch_CreateGenderMenu(GTSApplicationState *appState)
{
    appState->activeListMenu = GTS_CreateGenderMenu(&appState->menuStringList, &appState->menuButtonWindows[0], appState->gtsMessageLoader);
    appState->listMenuCursorIndex = 0xffff;
    appState->currentScreenInstruction = GTS_SEARCH_HANDLE_GENDER_MENU_INPUT;

    return 3;
}

static int GTSSearch_HandleGenderMenuInput(GTSApplicationState *appState)
{
    #ifdef SDK_BUILD_ARM
    u32 result;
    #else
    u64 result;
    #endif

    switch (result = GTS_ProcessListMenuInput(appState->activeListMenu, &appState->listMenuCursorIndex)) {
    case MENU_CANCEL:
        ListMenu_Free(appState->activeListMenu, NULL, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        Window_EraseMessageBox(&appState->bottomInstructionWindow, 0);
        Window_Remove(&appState->menuButtonWindows[0]);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        appState->currentScreenInstruction = GTS_SEARCH_SHOW_PROMPT;
        break;
    case 0:
    case 1:
    case 2:
        ListMenu_Free(appState->activeListMenu, NULL, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        Window_Remove(&appState->menuButtonWindows[0]);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);

        appState->searchRequirements.gender = result + 1;
        appState->currentScreenInstruction = GTS_SEARCH_SHOW_PROMPT;

        Window_FillTilemap(&appState->infoWindows[3], 0x0);
        GTSDeposit_DrawGenderText(&appState->infoWindows[3], appState->gtsMessageLoader, appState->searchRequirements.gender, 1, 0, 0, TEXT_COLOR(1, 2, 0));
        break;
    }

    return 3;
}

static int GTSSearch_ShowLevelSearchPrompt(GTSApplicationState *appState)
{
    GTSSearch_ShowMessage(appState, 11, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_CREATE_LEVEL_MENU);

    Window_Add(appState->bgConfig, &appState->menuButtonWindows[0], 0, 15, 5, 16, 13, 13, (BOTTOM_WINDOW_BASE_TILE + BOTTOM_WINDOW_TILE_COUNT) + 8 * 2 * 2);
    Window_FillTilemap(&appState->menuButtonWindows[0], 0x0);

    return 3;
}

static int GTSSearch_CreateLevelMenu(GTSApplicationState *appState)
{
    appState->activeListMenu = GTS_CreateLevelMenu(&appState->menuStringList, &appState->menuButtonWindows[0], appState->gtsMessageLoader, 1);
    appState->listMenuCursorIndex = 0xffff;
    appState->currentScreenInstruction = GTS_SEARCH_HANDLE_LEVEL_MENU_INPUT;

    return 3;
}

static int GTSSearch_HandleLevelMenuInput(GTSApplicationState *appState)
{
    #ifdef SDK_BUILD_ARM
    u32 result;
    #else
    u64 result;
    #endif

    switch (result = GTS_ProcessListMenuInput(appState->activeListMenu, &appState->listMenuCursorIndex)) {
    case MENU_NOTHING_CHOSEN:
        break;
    case MENU_CANCEL:
    case 11:
        ListMenu_Free(appState->activeListMenu, NULL, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        Window_EraseMessageBox(&appState->bottomInstructionWindow, 0);
        Window_Remove(&appState->menuButtonWindows[0]);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        appState->currentScreenInstruction = GTS_SEARCH_SHOW_PROMPT;
        break;
    default:
        ListMenu_Free(appState->activeListMenu, NULL, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        Window_Remove(&appState->menuButtonWindows[0]);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        GTS_SetLevelRequirement(&appState->searchRequirements, result, 1);

        appState->currentScreenInstruction = GTS_SEARCH_SHOW_PROMPT;

        Window_FillTilemap(&appState->infoWindows[5], 0x0);
        GTSDeposit_DrawLevelTextAtOrigin(&appState->infoWindows[5], appState->gtsMessageLoader, result, 0, 0, TEXT_COLOR(1, 2, 0), 1);
        break;
    }

    return 3;
}

static int GTSSearch_ShowCountrySearchPrompt(GTSApplicationState *appState)
{
    GTSSearch_ShowMessage(appState, 169, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_CREATE_COUNTRY_MENU);

    Window_Add(appState->bgConfig, &appState->menuButtonWindows[0], 0, 2, 5, 28, 13, 13, (BOTTOM_WINDOW_BASE_TILE + BOTTOM_WINDOW_TILE_COUNT) + 8 * 2 * 2);
    Window_FillTilemap(&appState->menuButtonWindows[0], 0x0);

    return 3;
}

static int GTSSearch_CreateCountryMenu(GTSApplicationState *appState)
{
    appState->activeListMenu = GTS_CreateCountryMenu(&appState->menuStringList, &appState->menuButtonWindows[0], appState->countryMessageLoader, appState->gtsMessageLoader);
    appState->listMenuCursorIndex = 0xffff;
    appState->currentScreenInstruction = GTS_SEARCH_HANDLE_COUNTRY_MENU_INPUT;

    return 3;
}

static int GTSSearch_HandleCountryMenuInput(GTSApplicationState *appState)
{
    #ifdef SDK_BUILD_ARM
    u32 result = GTS_ProcessListMenuInput(appState->activeListMenu, &appState->listMenuCursorIndex);
    #else
    u64 result = GTS_ProcessListMenuInput(appState->activeListMenu, &appState->listMenuCursorIndex);
    #endif

    if (result == MENU_NOTHING_CHOSEN) {
        (void)0;
    } else if ((result == MENU_CANCEL) || (result == (gGTSAvailableCountryCount + 1))) {
        ListMenu_Free(appState->activeListMenu, NULL, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        Window_EraseMessageBox(&appState->bottomInstructionWindow, 0);
        Window_Remove(&appState->menuButtonWindows[0]);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        appState->currentScreenInstruction = GTS_SEARCH_SHOW_PROMPT;
    } else {
        ListMenu_Free(appState->activeListMenu, NULL, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        Window_Remove(&appState->menuButtonWindows[0]);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);

        GTS_SetSelectedCountry(appState, result);
        appState->currentScreenInstruction = GTS_SEARCH_SHOW_PROMPT;
        Window_FillTilemap(&appState->locationCriteriaWindows[1], 0x0);
        GTSDeposit_DrawCountryText(&appState->locationCriteriaWindows[1], appState->countryMessageLoader, appState->gtsMessageLoader, appState->selectedCountryIndex, 0, 0, TEXT_COLOR(1, 2, 0));
    }

    return 3;
}

static int GTSSearch_CreateExitConfirmMenu(GTSApplicationState *appState)
{
    appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 15, ((BOTTOM_WINDOW_BASE_TILE + BOTTOM_WINDOW_TILE_COUNT) + 8 * 2 * 2) + 16 * 13);
    appState->currentScreenInstruction = GTS_SEARCH_HANDLE_EXIT_CONFIRM;

    return 3;
}

static int GTSSearch_HandleExitConfirm(GTSApplicationState *appState)
{
    int result = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (result != MENU_NOTHING_CHOSEN) {
        if (result == MENU_CANCEL) {
            appState->currentScreenInstruction = GTS_SEARCH_SHOW_PROMPT;
        } else {
            appState->currentScreenInstruction = GTS_SEARCH_FADE_AND_EXIT;
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_NONE);
            GTSAvatar_HighlightSearchResults(appState);
            appState->searchResultCount = 0;
        }
    }

    return 3;
}

static int GTSSearch_Idle(GTSApplicationState *appState)
{
    appState->currentScreenInstruction = GTS_SEARCH_HANDLE_INPUT;
    return 3;
}

static int GTSSearch_ShowSearchPromptAgain(GTSApplicationState *appState)
{
    GTSSearch_ShowMessage(appState, 146, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_SEARCH_WAIT_FOR_TEXT, GTS_SEARCH_HANDLE_INPUT);

    return 3;
}

static int GTSSearch_WaitForText(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == 0) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return 3;
}

static int GTSSearch_WaitForTextWithDelay(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == 0) {
        appState->frameDelay++;

        if (appState->frameDelay > 45) {
            appState->frameDelay = 0;
            appState->currentScreenInstruction = appState->nextScreenInstruction;
        }
    }

    return 3;
}

static void GTSSearch_ShowMessage(GTSApplicationState *appState, int entryID, int renderDelay, int unused1, u16 unused2)
{
    MessageLoader_GetString(appState->gtsMessageLoader, entryID, appState->genericMessageBuffer);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->bottomInstructionWindow, 0, 1, 10);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->bottomInstructionWindow, FONT_MESSAGE, appState->genericMessageBuffer, 0, 0, renderDelay, NULL);
}

static void GTSSearch_DrawCriteriaLabels(Window *criteriaWindows, Window *locationWindows, MessageLoader *gtsMessageLoader)
{
    String *str1, *str2, *str3;

    str1 = MessageLoader_GetNewString(gtsMessageLoader, GTS_Text_Criteria_Pokemon);
    Window_DrawAlignedSystemText(&criteriaWindows[0], str1, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    String_Free(str1);

    str3 = MessageLoader_GetNewString(gtsMessageLoader, GTS_Text_Criteria_Gender);
    Window_DrawAlignedSystemText(&criteriaWindows[2], str3, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    String_Free(str3);

    str2 = MessageLoader_GetNewString(gtsMessageLoader, GTS_Text_Criteria_Level);
    Window_DrawAlignedSystemText(&criteriaWindows[4], str2, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    String_Free(str2);

    str2 = MessageLoader_GetNewString(gtsMessageLoader, GTS_Text_Criteria_Location);
    Window_DrawAlignedSystemText(&locationWindows[0], str2, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    String_Free(str2);

    str1 = MessageLoader_GetNewString(gtsMessageLoader, GTS_Text_Criteria_Search);

    int x1 = Font_CalcCenterAlignment(FONT_SYSTEM, str1, 0, criteriaWindows[6].width * 8);
    Window_DrawAlignedSystemText(&criteriaWindows[6], str1, x1, 0, 0, TEXT_COLOR(1, 2, 0));

    String_Free(str1);

    str1 = MessageLoader_GetNewString(gtsMessageLoader, GTS_Text_Criteria_Back);

    int x2 = Font_CalcCenterAlignment(FONT_SYSTEM, str1, 0, criteriaWindows[7].width * 8);
    Window_DrawAlignedSystemText(&criteriaWindows[7], str1, x2, 0, 0, TEXT_COLOR(1, 2, 0));

    String_Free(str1);
}

static int GTSSearch_RequirementsMatch(const GTSPokemonRequirements *requirements, const GTSPokemonRequirements *submittedRequirements, int countryIndex, int submittedCountryIndex)
{
    return (requirements->species == submittedRequirements->species)
        && (requirements->gender == submittedRequirements->gender)
        && (requirements->level == submittedRequirements->level)
        && (requirements->level2 == submittedRequirements->level2)
        && (countryIndex == submittedCountryIndex);
}
