#include "overlay094/screens/network_handler.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/savedata/savedata.h"
#include "generated/game_records.h"
#include "generated/species.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/wi_fi_history.h"

#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/networking.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/screens/main_menu.h"
#include "overlay094/screens/select_pokemon.h"
#include "overlay094/screens/wfc_init.h"
#include "savedata/save_table.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "global_trade.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "render_window.h"
#include "savedata.h"
#include "screen_fade.h"
#include "strbuf.h"
#include "string_template.h"
#include "system_vars.h"
#include "text.h"
#include "tv_episode_segment.h"
#include "unk_0202CC64.h"
#include "unk_0202F180.h"
#include "unk_020366A0.h"
#include "unk_02038F8C.h"
#include "unk_020393C8.h"
#include "unk_02039814.h"
#include "vars_flags.h"

#include "res/text/bank/gts.h"
#include "res/text/bank/location_names.h"

#define GTS_TIMESTAMPS_TRADE_BY_DEPOSITING 0
#define GTS_TIMESTAMPS_TRADE_BY_SEARCHING  1

static void GTSApplication_NetworkHandler_InitBackground(BgConfig *bgConfig);
static void GTSApplication_NetworkHandler_CleanupBackground(BgConfig *bgConfig);
static void GTSApplication_NetworkHandler_InitGraphics(GTSApplicationState *appState);
static void GTSApplication_NetworkHandler_CreateWindow(GTSApplicationState *appState);
static void GTSApplication_NetworkHandler_CleanupWindows(GTSApplicationState *appState);
static void GTSApplication_NetworkHandler_InitStrings(GTSApplicationState *appState);
static void GTSApplication_NetworkHandler_CleanupStrings(GTSApplicationState *appState);
static void GTS_LogTradeInJournal(JournalEntry *journalEntry, GTSPokemonListing *param1);
static void GTSApplication_NetworkHandler_ReturnToPreviousScreen(GTSApplicationState *appState);
static void GTSApplication_NetworkHandler_FlagGeonetCommunicatedWith(WiFiHistory *wiFiHistory, GTSPokemonListing *param1);
static void GTSApplication_NetworkHandler_StorePokemonFromSearching(GTSApplicationState *appState, Pokemon *param1, int param2);
static void GTS_SetTradedTimestamp(GlobalTrade *globalTrade, int param1);
static int GTSApplication_NetworkHandler_HaveSpaceForPokemon(GTSApplicationState *appState, GTSPokemonListing *param1);
static void ov94_022438C8(GTSApplicationState *appState);
static void GTSApplication_NetworkHandler_SetSaveInstructions(GTSApplicationState *appState, int param1, int param2);
static int GTSApplication_NetworkHandler_ParseScreenArgument(GTSApplicationState *appState);
static int ov94_02242E9C(GTSApplicationState *appState);
static int ov94_02242ED0(GTSApplicationState *appState);
static int ov94_02242F78(GTSApplicationState *appState);
static int ov94_02242F98(GTSApplicationState *appState);
static int ov94_02243778(GTSApplicationState *appState);
static int ov94_0224377C(GTSApplicationState *appState);
static int ov94_02243794(GTSApplicationState *appState);
static int ov94_02243920(GTSApplicationState *appState);
static int ov94_02243948(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_FadeAndExit(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_WaitForText(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_GetListedPokemonRequest(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_GetListedPokemonResponse(GTSApplicationState *appState);
static int ov94_02243104(GTSApplicationState *appState);
static int ov94_02243120(GTSApplicationState *appState);
static int ov94_022431A4(GTSApplicationState *appState);
static int ov94_022431F0(GTSApplicationState *appState);
static int ov94_022432D8(GTSApplicationState *appState);
static int ov94_022432F4(GTSApplicationState *appState);
static int ov94_022437AC(GTSApplicationState *appState);
static int ov94_02243884(GTSApplicationState *appState);
static void ov94_02243B08(GTSApplicationState *appState, int param1);
static void GTSApplication_NetworkHandler_StorePokemonFromDepositing(GTSApplicationState *appState, Pokemon *param1, int param2, int param3);
static int GTSApplication_NetworkHandler_PrepareFullSave(GTSApplicationState *appState);
static int ov94_02243974(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_WaitForSaveComplete(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_GetListedPokemonResponse2(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_GetListedPokemonRequest2(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_GetListingStatusResponse(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_GetListingStatusRequest(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_PerformDepositTrade(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_DeleteReceivedPokemonResponse(GTSApplicationState *appState);
static int ov94_022437C0(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_WaitForSaveProceed(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_WaitForFrameDelay(GTSApplicationState *appState);
static int ov94_02243554(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_FullSave(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_WaitForSuccessfulSave(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_DeleteReceivedPokemonRequest(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_DeleteDesyncedPokemonRequest(GTSApplicationState *appState);
static int GTSApplication_NetworkHandler_DeleteDesyncedPokemonResponse(GTSApplicationState *appState);
static BOOL GTSApplication_NetworkHandler_IsListingDesynced(GTSApplicationState *appState);

static int (*sGTSNetworkHandlerScreenStates[])(GTSApplicationState *) = {
    GTSApplication_NetworkHandler_ParseScreenArgument,
    ov94_02243778, // noop
    ov94_02242E9C,
    ov94_02242ED0,
    ov94_02242F78,
    ov94_02242F98,
    ov94_0224377C,
    GTSApplication_NetworkHandler_GetListedPokemonRequest,
    GTSApplication_NetworkHandler_GetListedPokemonResponse,
    ov94_02243104,
    ov94_02243120,
    ov94_02243794, // go to screen #9, called after saving and receiving a pokemon
    ov94_022431A4,
    ov94_022431F0,
    ov94_022432D8,
    ov94_022432F4,
    ov94_022437AC,
    ov94_02243884,
    GTSApplication_NetworkHandler_PerformDepositTrade,
    GTSApplication_NetworkHandler_DeleteReceivedPokemonRequest,
    GTSApplication_NetworkHandler_DeleteReceivedPokemonResponse,
    ov94_022437C0,
    GTSApplication_NetworkHandler_DeleteDesyncedPokemonRequest,
    GTSApplication_NetworkHandler_DeleteDesyncedPokemonResponse,
    GTSApplication_NetworkHandler_GetListingStatusRequest,
    GTSApplication_NetworkHandler_GetListingStatusResponse,
    GTSApplication_NetworkHandler_GetListedPokemonRequest2,
    GTSApplication_NetworkHandler_GetListedPokemonResponse2,
    ov94_02243554,
    ov94_02243974,
    GTSApplication_NetworkHandler_PrepareFullSave,
    GTSApplication_NetworkHandler_WaitForFrameDelay,
    GTSApplication_NetworkHandler_WaitForSaveProceed,
    GTSApplication_NetworkHandler_WaitForSaveComplete,
    GTSApplication_NetworkHandler_FullSave,
    GTSApplication_NetworkHandler_WaitForSuccessfulSave,
    GTSApplication_NetworkHandler_FadeAndExit,
    GTSApplication_NetworkHandler_WaitForText,
    ov94_02243920, // comms error
    ov94_02243948
};

int GTSApplication_NetworkHandler_Init(GTSApplicationState *appState, int unused1)
{
    GTSApplication_NetworkHandler_InitStrings(appState);
    GTSApplication_NetworkHandler_InitBackground(appState->bgConfig);
    GTSApplication_NetworkHandler_InitGraphics(appState);
    GTSApplication_NetworkHandler_CreateWindow(appState);

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
    ov94_02245934(appState);

    appState->currentScreenInstruction = 0;

    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_NetworkHandler_Main(GTSApplicationState *appState, int unused1)
{
    NetworkIcon_SetStrength(GTSApplication_GetNetworkStrength());
    return (*sGTSNetworkHandlerScreenStates[appState->currentScreenInstruction])(appState);
}

int GTSApplication_NetworkHandler_Exit(GTSApplicationState *appState, int unused1)
{
    GTSApplication_NetworkHandler_CleanupStrings(appState);
    GTSApplication_NetworkHandler_CleanupWindows(appState);
    GTSApplication_NetworkHandler_CleanupBackground(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return GTS_LOOP_STATE_INIT;
}

static void GTSApplication_NetworkHandler_InitBackground(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_0,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate main0Template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &main0Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate main1Template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &main1Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate main2Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &main2Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    BgTemplate sub0Template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &sub0Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    BgTemplate sub1Template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &sub1Template, BG_TYPE_STATIC);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void GTSApplication_NetworkHandler_CleanupBackground(BgConfig *appState)
{
    Bg_FreeTilemapBuffer(appState, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(appState, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(appState, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(appState, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(appState, BG_LAYER_MAIN_0);
}

static void GTSApplication_NetworkHandler_InitGraphics(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__WORLDTRADE, 0, 0, 0, PALETTE_SIZE_BYTES * 3, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), HEAP_ID_62);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 10, Options_Frame(appState->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, 1 + (18 + 12), 11, 0, HEAP_ID_62);

    if (appState->hasAvatarFinishedMoving == FALSE) {
        Bg_ToggleLayer(BG_LAYER_SUB_0, FALSE);
        Bg_ToggleLayer(BG_LAYER_SUB_1, FALSE);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, FALSE);
    }

    if (appState->previousScreen == 9) {
        ov94_0223D068(appState);
    }
}

static void GTSApplication_NetworkHandler_CreateWindow(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, 0, 2, 19, 27, 4, 13, (1 + (18 + 12)) + 9);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0x0);
}

static void GTSApplication_NetworkHandler_CleanupWindows(GTSApplicationState *appState)
{
    Window_Remove(&appState->bottomInstructionWindow);
}

static void GTSApplication_NetworkHandler_InitStrings(GTSApplicationState *appState)
{
    appState->genericMessageBuffer = Strbuf_Init(90 * 2, HEAP_ID_62);
}

static void GTSApplication_NetworkHandler_CleanupStrings(GTSApplicationState *appState)
{
    Strbuf_Free(appState->genericMessageBuffer);
}

static int GTSApplication_NetworkHandler_ParseScreenArgument(GTSApplicationState *appState)
{
    switch (appState->screenArgument) {
    case SCREEN_ARGUMENT_DEPOSIT_POKEMON:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_CheckingStatus, TEXT_SPEED_FAST, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, 37, 2);
        break;
    case SCREEN_ARGUMENT_TAKE_BACK_POKEMON:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_CheckingStatus, TEXT_SPEED_FAST, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, 37, 7);
        break;
    case SCREEN_ARGUMENT_9: // this is called after you've selected a pokemon in the trade screen to trade with someone
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_CheckingStatus, TEXT_SPEED_FAST, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, 37, 12);
        break;
    case SCREEN_ARGUMENT_10:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_CheckingStatus, TEXT_SPEED_FAST, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, 37, 18);
        appState->fadeBothScreens = TRUE;
        break;
    case SCREEN_ARGUMENT_CHECK_SERVER:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_CheckingStatus, TEXT_SPEED_INSTANT, 0xf0f);
        appState->currentScreenInstruction = 24;
        break;
    case SCREEN_ARGUMENT_SAVE_AFTER_EVOLVE:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_Saving, TEXT_SPEED_FAST, 0xf0f);
        appState->nextScreen = GTS_SCREEN_MAIN_MENU;
        appState->currentScreenInstruction = 29;
        break;
    default:
        GF_ASSERT(FALSE);
    }

    GTSApplicationState_AddWaitDial(appState);

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02242E9C(GTSApplicationState *appState)
{
    Pokemon_ClearBallCapsuleData((Pokemon *)appState->receivedListing.pokemon.bytes);
    GTSNetworking_Post(&appState->receivedListing);

    appState->currentScreenInstruction = 3;
    appState->networkTimeoutCounter = 0;

    GTSApplication_NetworkHandler_SetSaveInstructions(appState, 4, 6);

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02242ED0(GTSApplicationState *param0)
{
    int v0;

    if ((v0 = GTSNetworking_RequestComplete())) {
        s32 v1 = GTSNetworking_GetErrorCode();

        param0->networkTimeoutCounter = 0;

        switch (v1) {
        case 0: // first byte = 1
            ov94_02243B08(param0, 1);
            GameRecords_IncrementRecordValue(param0->playerData->records, RECORD_UNK_044);
            param0->currentScreenInstruction = 30;
            break;
        case -1: // first byte = 7
            param0->commsErrorMessage = v1;
            param0->currentScreenInstruction = 38;
            break;
        case -6: // first byte = 12
        case -7: // first byte = 13
        case -8: // first byte = 8
        case -9: // first byte = 9
        case -10: // first byte = 10
        case -11: // first byte = 11
        case -5: // first byte = 2
            param0->commsErrorMessage = v1;
            param0->currentScreenInstruction = 39;
            break;
        case -12:
        case -4: // first byte = 3
            param0->commsErrorMessage = v1;
            param0->currentScreenInstruction = 39;
            break;
        case -2: // first byte = 14
        case -14:
        case -15:
            param0->commsErrorMessage = v1;
            param0->currentScreenInstruction = 38;
            break;
        case -13: // catch-all
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        param0->networkTimeoutCounter++;

        if (param0->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02242F78(GTSApplicationState *param0)
{
    ov94_0223B834();

    param0->currentScreenInstruction = 5;
    param0->networkTimeoutCounter = 0;
    param0->isPokemonListed = 1;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02242F98(GTSApplicationState *param0)
{
    if (GTSNetworking_RequestComplete()) {
        s32 v0 = GTSNetworking_GetErrorCode();
        param0->networkTimeoutCounter = 0;

        switch (v0) {
        case 0:
            param0->currentScreenInstruction = 33;
            break;
        case -12:
        case -4:
            param0->commsErrorMessage = v0;
            param0->currentScreenInstruction = 39;
            break;
        case -1:
        case -3:
        case -5:
        case -2:
        case -14:
        case -15:
            Link_SetErrorState(4);
            break;
        case -13:
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        param0->networkTimeoutCounter++;

        if (param0->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_GetListedPokemonRequest(GTSApplicationState *appState)
{
    GTSNetworking_GetListedPokemon(&appState->receivedListing);

    appState->currentScreenInstruction = 8;
    appState->networkTimeoutCounter = 0;

    GTSApplication_NetworkHandler_SetSaveInstructions(appState, 9, 11);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_GetListedPokemonResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errorCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errorCode) {
        case 0: // listing returned
            if (appState->receivedListing.exchangedFromRemote) {
                appState->currentScreenInstruction = 24; // we have a trade waiting
            } else {
                GTSApplication_NetworkHandler_StorePokemonFromDepositing(appState, (Pokemon *)appState->receivedListing.pokemon.bytes, GlobalTrade_GetUnusedInt(appState->playerData->globalTrade), appState->receivedListing.exchangedFromRemote);
                appState->currentScreenInstruction = 30;
            }
            break;
        case -3: // first byte = 5
            appState->currentScreenInstruction = 38;
            break;
        case -4: // first byte = 3
            appState->currentScreenInstruction = 38;
            break;
        case -12:
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = 39;
            break;
        case -15:
        case -2: // first byte = 14
        case -14:
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = 38;
            break;
        case -13: // catchall
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02243104(GTSApplicationState *param0)
{
    GTSNetworking_Return();

    param0->currentScreenInstruction = 10;
    param0->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02243120(GTSApplicationState *param0)
{
    if (GTSNetworking_RequestComplete()) {
        s32 v0 = GTSNetworking_GetErrorCode();

        param0->networkTimeoutCounter = 0;

        switch (v0) {
        case 0:
            param0->currentScreenInstruction = 33;
            break;
        case -3:
        case -4:
        case -5:
            Link_SetErrorState(3);
            break;
        case -12:
        case -15:
        case -2:
        case -14:
            Link_SetErrorState(4);
            break;
        case -13:
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        param0->networkTimeoutCounter++;

        if (param0->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_022431A4(GTSApplicationState *param0)
{
    Pokemon_ClearBallCapsuleData((Pokemon *)param0->receivedListing.pokemon.bytes);

    ov94_0223BA88(param0->searchResults[param0->selectedSearchResult].unk_108, &param0->receivedListing, &param0->selectedListing);
    GTSApplication_NetworkHandler_SetSaveInstructions(param0, 14, 16);

    param0->currentScreenInstruction = 13;
    param0->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_022431F0(GTSApplicationState *param0)
{
    int v0;

    if ((v0 = GTSNetworking_RequestComplete())) {
        s32 v1 = GTSNetworking_GetErrorCode();

        param0->networkTimeoutCounter = 0;

        switch (v1) {
        case 0: // successful
            param0->currentScreenInstruction = 30;

            ov94_02243B08(param0, 0);
            GTSApplication_NetworkHandler_StorePokemonFromSearching(param0, (Pokemon *)param0->selectedListing.pokemon.bytes, param0->selectedBoxId);
            GTSApplication_NetworkHandler_FlagGeonetCommunicatedWith(param0->playerData->wiFiHistory, &param0->selectedListing);
            GameRecords_IncrementTrainerScore(param0->playerData->records, TRAINER_SCORE_EVENT_GTS_TRADE_COMPLETE);
            GTS_LogTradeInJournal(param0->playerData->journalEntry, &param0->selectedListing);
            GameRecords_IncrementRecordValue(param0->playerData->records, RECORD_WIFI_TRADES);
            sub_0206D104(SaveData_GetTVBroadcast(param0->playerData->saveData));
            break;
        case -5: // first byte = 2
            param0->commsErrorMessage = v1;
            param0->currentScreenInstruction = 17;
            break;
        case -6: // first byte = 12
        case -7: // first byte = 13
        case -8: // first byte = 8
        case -9: // first byte = 9
        case -10: // first byte = 10
        case -11: // first byte = 11
            param0->commsErrorMessage = v1;
            param0->currentScreenInstruction = 39;
            break;
        case -12:
            param0->commsErrorMessage = v1;
            param0->currentScreenInstruction = 39;
            break;
        case -2: // first byte = 14
        case -14:
        case -15:
            param0->commsErrorMessage = v1;
            param0->currentScreenInstruction = 38;
            break;
        case -13: // catch-all
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        param0->networkTimeoutCounter++;

        if (param0->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_022432D8(GTSApplicationState *param0)
{
    ov94_0223BAEC();

    param0->currentScreenInstruction = 15;
    param0->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_022432F4(GTSApplicationState *param0)
{
    if (GTSNetworking_RequestComplete()) {
        s32 v0 = GTSNetworking_GetErrorCode();

        param0->networkTimeoutCounter = 0;

        switch (v0) {
        case 0:
            param0->currentScreenInstruction = 33;
            break;
        case -5:
            Link_SetErrorState(3);
            break;
        case -12:
        case -2:
        case -14:
        case -15:
            Link_SetErrorState(4);
            break;
        case -13:
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        param0->networkTimeoutCounter++;

        if (param0->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_GetListingStatusRequest(GTSApplicationState *appState)
{
    GTSNetworking_GetListingStatus(&appState->receivedListing);

    appState->currentScreenInstruction = 25;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_GetListingStatusResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errorCode = GTSNetworking_GetErrorCode(); // this is 1 (if pokemon returned), otherwise a value based off of the first byte returned
        appState->networkTimeoutCounter = 0;

        switch (errorCode) {
        case 0: // first byte = 4
            appState->currentScreenInstruction = 26;
            break;
        case 1: // get pokemon
            appState->isPokemonListed = 1;

            switch (GTSApplication_NetworkHandler_HaveSpaceForPokemon(appState, &appState->receivedListing)) {
            case 1:
                GTSApplicationState_DestroyWaitDial(appState);
                GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_Error_StorageBoxesFull, TEXT_SPEED_FAST, 0xf0f);
                GTSApplication_SetCurrentAndNextScreenInstruction(appState, 37, 28);
                break;
            case 2:
                GTSApplicationState_DestroyWaitDial(appState);
                GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_Error_PartyFullMail, TEXT_SPEED_FAST, 0xf0f);
                GTSApplication_SetCurrentAndNextScreenInstruction(appState, 37, 28);
                break;
            case 0: // all OK, store the traded pokemon
                appState->currentScreenInstruction = 18;
                appState->fadeBothScreens = 1;
                break;
            }
            break;
        case -3: // first byte = 5
            appState->isPokemonListed = 0;

            if (GlobalTrade_IsPokemonListed(appState->playerData->globalTrade)) {
                Pokemon *tempPokemon = Pokemon_New(HEAP_ID_62);

                GlobalTrade_CopyStoredPokemon(appState->playerData->globalTrade, tempPokemon);
                StringTemplate_SetNickname(appState->stringTemplate, 0, Pokemon_GetBoxPokemon(tempPokemon));

                appState->depositReturnError = pl_msg_00000671_00002;
                appState->currentScreenInstruction = 34;

                GTSApplication_NetworkHandler_StorePokemonFromDepositing(appState, tempPokemon, GlobalTrade_GetUnusedInt(appState->playerData->globalTrade), 0);

                GlobalTrade_SetPokemonListed(appState->playerData->globalTrade, 0);
                Heap_Free(tempPokemon);
            } else {
                GTSApplication_NetworkHandler_ReturnToPreviousScreen(appState);
            }
            break;
        case -4: // first byte = 3; pokemon is fleeing
            appState->isPokemonListed = 0;

            if (GlobalTrade_IsPokemonListed(appState->playerData->globalTrade)) {
                Pokemon *tempPokemon = Pokemon_New(HEAP_ID_62);

                GlobalTrade_CopyStoredPokemon(appState->playerData->globalTrade, tempPokemon);
                StringTemplate_SetNickname(appState->stringTemplate, 0, Pokemon_GetBoxPokemon(tempPokemon));

                appState->depositReturnError = pl_msg_00000671_00003;
                appState->currentScreenInstruction = 34;

                GlobalTrade_SetPokemonListed(appState->playerData->globalTrade, 0);
                Heap_Free(tempPokemon);
            }
            break;
        case -12:
        case -15:
        case -2: // first byte = 14
        case -14:
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = 38;
            break;
        case -13: // catch-all
            NetworkError_DisplayNetworkError(HEAP_ID_APPLICATION, 1, 0);
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02243554(GTSApplicationState *param0)
{
    GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
    param0->currentScreenInstruction = 36;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_GetListedPokemonRequest2(GTSApplicationState *appState)
{
    GTSNetworking_GetListedPokemon(&appState->receivedListing);

    appState->currentScreenInstruction = 27;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_GetListedPokemonResponse2(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errorCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errorCode) {
        case 0: // received pokemon
            if (GTSApplication_NetworkHandler_IsListingDesynced(appState)) {
                appState->currentScreenInstruction = 22;
                appState->isPokemonListed = 0;
                return GTS_LOOP_STATE_MAIN;
            } else {
                appState->isPokemonListed = 1;
            }
            break;
        case -3: // first byte = 5
            appState->isPokemonListed = 0;
            break;
        case -4: // first byte = 3
            break;
        case -12:
        case -15:
        case -2: // first byte = 14
        case -14:
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = 38;
            return GTS_LOOP_STATE_MAIN;
        case -13: // catch-all
            NetworkError_DisplayGTSCriticalError();
            return GTS_LOOP_STATE_MAIN;
        }

        GTSApplication_NetworkHandler_ReturnToPreviousScreen(appState);
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static void GTSApplication_NetworkHandler_ReturnToPreviousScreen(GTSApplicationState *appState)
{
    switch (appState->returnAfterNetworkScreen) {
    case GTS_SCREEN_MAIN_MENU:
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
        appState->currentScreenInstruction = 36;
        break;
    case GTS_SCREEN_LISTING:
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_LISTING, SCREEN_ARGUMENT_3);
        appState->currentScreenInstruction = 36;
        break;
    }
}

static int GTSApplication_NetworkHandler_PerformDepositTrade(GTSApplicationState *appState)
{
    GTSApplication_NetworkHandler_StorePokemonFromDepositing(appState, (Pokemon *)appState->receivedListing.pokemon.bytes, GlobalTrade_GetUnusedInt(appState->playerData->globalTrade), appState->receivedListing.exchangedFromRemote);
    GTSApplication_NetworkHandler_FlagGeonetCommunicatedWith(appState->playerData->wiFiHistory, &appState->receivedListing);

    GameRecords_IncrementTrainerScore(appState->playerData->records, TRAINER_SCORE_EVENT_GTS_TRADE_COMPLETE);
    GTS_LogTradeInJournal(appState->playerData->journalEntry, &appState->receivedListing);
    GameRecords_IncrementRecordValue(appState->playerData->records, RECORD_WIFI_TRADES);

    TVBroadcast *broadcast = SaveData_GetTVBroadcast(appState->playerData->saveData);
    sub_0206D104(broadcast);

    GlobalTrade_SetPokemonListed(appState->playerData->globalTrade, 0);
    appState->currentScreenInstruction = 30;
    GTSApplication_NetworkHandler_SetSaveInstructions(appState, 19, 11);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_DeleteReceivedPokemonRequest(GTSApplicationState *appState)
{
    GTSNetworking_Delete();

    appState->currentScreenInstruction = 20;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_DeleteReceivedPokemonResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errorCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errorCode) {
        case 0: // first byte = 1
            appState->currentScreenInstruction = 33;
            break;
        case -3: // first byte = 5
            Link_SetErrorState(3);
            break;
        case -4: // first byte = 3
        case -12:
            appState->commsErrorMessage = errorCode;
        case -15:
        case -2: // first byte = 14
        case -14:
            Link_SetErrorState(4);
            break;
        case -13: // catch-all
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02243778(GTSApplicationState *param0)
{
    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0224377C(GTSApplicationState *param0)
{
    param0->isPokemonListed = TRUE;
    GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_TRADE, SCREEN_ARGUMENT_DEPOSIT_POKEMON);
    param0->currentScreenInstruction = 36;

    return 3;
}

static int ov94_02243794(GTSApplicationState *appState)
{
    appState->isPokemonListed = FALSE;
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_TRADE, SCREEN_ARGUMENT_TAKE_BACK_POKEMON);
    appState->currentScreenInstruction = 36;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_022437AC(GTSApplicationState *param0)
{
    GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_TRADE, SCREEN_ARGUMENT_9);
    param0->currentScreenInstruction = 36;

    return 3;
}

static int ov94_022437C0(GTSApplicationState *param0)
{
    param0->isPokemonListed = 0;
    GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_TRADE, SCREEN_ARGUMENT_10);
    param0->currentScreenInstruction = 30;

    return 3;
}

static int GTSApplication_NetworkHandler_DeleteDesyncedPokemonRequest(GTSApplicationState *appState)
{
    GTSNetworking_Return();

    appState->currentScreenInstruction = 23;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_DeleteDesyncedPokemonResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errorCode = GTSNetworking_GetErrorCode();
        appState->networkTimeoutCounter = 0;

        switch (errorCode) {
        case 0: // first byte = 1 (successful)
            GTSApplication_NetworkHandler_ReturnToPreviousScreen(appState);
            break;
        case -3: // first byte = 5
            GTSApplication_NetworkHandler_ReturnToPreviousScreen(appState);
        case -4: // first byte = 3
            GTSApplication_NetworkHandler_ReturnToPreviousScreen(appState);
        case -5: // first byte = 2 (unsuccessful delete)
            Link_SetErrorState(3);
            break;
        case -12:
        case -15:
        case -2: // first byte = 14
        case -14:
            Link_SetErrorState(4);
            break;
        case -13:
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return 3;
}

static int ov94_02243884(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_Error_TradedToSomeoneElse, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 37, 36);
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
    GTSApplicationState_DestroyWaitDial(appState);
    ov94_022442E4(appState);

    return 3;
}

static void ov94_022438C8(GTSApplicationState *appState)
{
    int errorMessage = GTS_Text_Error_CommsErrorPadded;

    switch (appState->commsErrorMessage) {
    case -6:
    case -7:
    case -8:
    case -9:
    case -10:
    case -11:
        errorMessage = GTS_Text_Error_PokemonCannotBeOffered;
        break;
    case -1:
        errorMessage = GTS_Text_Error_GTSCrowded;
        break;
    case -2:
    case -14:
        errorMessage = GTS_Text_Error_DisconnectedFromGTSReturning;
        break;
    case -12:
    case -15:
    case -3:
    case -5:
        errorMessage = GTS_Text_Error_CommsErrorPadded;
        break;
    }

    GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, errorMessage, TEXT_SPEED_FAST, 0xf0f);
}

static int ov94_02243920(GTSApplicationState *param0)
{
    ov94_022438C8(param0);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 37, 36);
    GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_0);
    GTSApplicationState_DestroyWaitDial(param0);

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02243948(GTSApplicationState *param0)
{
    ov94_022438C8(param0);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 37, 36);
    GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
    GTSApplicationState_DestroyWaitDial(param0);
    ov94_022442E4(param0);

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02243974(GTSApplicationState *param0)
{
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 37, 30);
    GTSApplication_NetworkHandler_SetSaveInstructions(param0, 33, 36);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_PrepareFullSave(GTSApplicationState *appState)
{
    SaveData_SetFullSaveRequired();
    SaveData_SaveStateInit(appState->playerData->saveData, 2);

    appState->currentScreenInstruction = 31;
    appState->frameDelay = LCRNG_RandMod(60) + 2;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_WaitForFrameDelay(GTSApplicationState *appState)
{
    appState->frameDelay--;

    if (appState->frameDelay == 0) {
        appState->currentScreenInstruction = 32;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_WaitForSaveProceed(GTSApplicationState *appState)
{
    if (SaveData_SaveStateMain(appState->playerData->saveData) == SAVE_RESULT_PROCEED_FINAL) {
        appState->currentScreenInstruction = appState->duringSaveInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_WaitForSaveComplete(GTSApplicationState *appState)
{
    if (SaveData_SaveStateMain(appState->playerData->saveData) == SAVE_RESULT_OK) {
        appState->currentScreenInstruction = appState->successfulSaveInstruction;
        GTSApplicationState_DestroyWaitDial(appState);
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_FullSave(GTSApplicationState *appState)
{
    SaveData_SetFullSaveRequired();
    SaveData_SaveStateInit(appState->playerData->saveData, 2);

    appState->currentScreenInstruction = 35;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_WaitForSuccessfulSave(GTSApplicationState *appState)
{
    if (SaveData_SaveStateMain(appState->playerData->saveData) == SAVE_RESULT_OK) {
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
        GTSApplicationState_DestroyWaitDial(appState);
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, appState->depositReturnError, TEXT_SPEED_FAST, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, 37, 28);
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_NetworkHandler_FadeAndExit(GTSApplicationState *appState)
{
    GTSApplicationState_DestroyWaitDial(appState);
    NetworkIcon_Destroy();

    if (appState->fadeBothScreens == 1) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    } else {
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    }

    appState->currentScreenInstruction = 0;

    return GTS_LOOP_STATE_FINISH;
}

static int GTSApplication_NetworkHandler_WaitForText(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == 0) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

static void ov94_02243B08(GTSApplicationState *param0, int param1)
{
    if (param0->selectedBoxId != MAX_PC_BOXES) {
        Pokemon *v0 = Pokemon_New(HEAP_ID_62);

        Pokemon_FromBoxPokemon(PCBoxes_GetBoxMonAt(param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112), v0);
        sub_0202DA7C(param0->playerData->globalTrade, v0, param0->selectedBoxId);
        PCBoxes_InitBoxMonAt(param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112);
        Heap_Free(v0);
    } else {
        Pokemon *v1 = Party_GetPokemonBySlotIndex(param0->playerData->party, param0->unk_112);

        Pokemon_ClearBallCapsuleData(v1);
        sub_0202DA7C(param0->playerData->globalTrade, v1, param0->selectedBoxId);
        Party_RemovePokemonBySlotIndex(param0->playerData->party, param0->unk_112);

        if (Party_HasSpecies(param0->playerData->party, SPECIES_CHATOT) == 0) {
            ChatotCry *v2 = SaveData_GetChatotCry(param0->playerData->saveData);
            ResetChatotCryDataStatus(v2);
        }
    }

    if (param1) {
        GlobalTrade_SetPokemonListed(param0->playerData->globalTrade, 1);
    }
}

static void GTSApplication_NetworkHandler_StorePokemonFromDepositing(GTSApplicationState *appState, Pokemon *pokemon, int boxIndex, int exchangedFromRemote)
{
    int unused = Pokemon_GetValue(pokemon, MON_DATA_HELD_ITEM, NULL);

    SaveData_UpdateCatchRecords(appState->playerData->saveData, pokemon);
    boxIndex = MAX_PC_BOXES;

    if (Party_GetCurrentCount(appState->playerData->party) == MAX_PARTY_SIZE) {
        boxIndex = 0;
    }

    // this should always be true, except for when you're delisting your own pokemon
    if (exchangedFromRemote) {
        u8 friendship = BASE_FRIENDSHIP_VALUE;

        if (Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL) == SPECIES_ARCEUS) {
            if (Pokemon_GetValue(pokemon, MON_DATA_FATEFUL_ENCOUNTER, NULL) || ((Pokemon_GetValue(pokemon, MON_DATA_MET_LOCATION, NULL) == LocationNames_Text_HallOfOrigin) && (Pokemon_GetValue(pokemon, MON_DATA_FATEFUL_ENCOUNTER, NULL) == FALSE))) {
                VarsFlags *varsFlags = SaveData_GetVarsFlags(appState->playerData->saveData);

                if (SystemVars_GetArceusEventState(varsFlags) == FALSE) {
                    SystemVars_SetArceusEventState(varsFlags, TRUE);
                }
            }
        }

        Pokemon_SetValue(pokemon, MON_DATA_FRIENDSHIP, &friendship);
        Pokemon_SetValue(pokemon, MON_DATA_GENDER, NULL);

        GTS_SetTradedTimestamp(appState->playerData->globalTrade, GTS_TIMESTAMPS_TRADE_BY_DEPOSITING);
    }

    if (boxIndex == MAX_PC_BOXES) {
        Party_AddPokemon(appState->playerData->party, pokemon);
        int partyIndex = Party_GetCurrentCount(appState->playerData->party);

        appState->tradedPokemonLocation.boxIndex = MAX_PC_BOXES;
        appState->tradedPokemonLocation.index = partyIndex - 1;
    } else {
        int boxPosition = 0;

        PCBoxes_TryGetNextAvailableSpace(appState->playerData->pcBoxes, &boxIndex, &boxPosition);
        PCBoxes_TryStoreBoxMonInBox(appState->playerData->pcBoxes, boxIndex, Pokemon_GetBoxPokemon(pokemon));

        appState->tradedPokemonLocation.boxIndex = boxIndex;
        appState->tradedPokemonLocation.index = boxPosition;
    }

    GlobalTrade_SetPokemonListed(appState->playerData->globalTrade, 0);
}

static void GTSApplication_NetworkHandler_StorePokemonFromSearching(GTSApplicationState *appState, Pokemon *pokemon, int boxIndex)
{
    SaveData_UpdateCatchRecords(appState->playerData->saveData, pokemon);

    boxIndex = MAX_PC_BOXES;

    if (Party_GetCurrentCount(appState->playerData->party) == MAX_PARTY_SIZE) {
        boxIndex = 0;
    }

    if (Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL) == SPECIES_ARCEUS) {
        if (Pokemon_GetValue(pokemon, MON_DATA_FATEFUL_ENCOUNTER, NULL) || ((Pokemon_GetValue(pokemon, MON_DATA_MET_LOCATION, NULL) == LocationNames_Text_HallOfOrigin) && (Pokemon_GetValue(pokemon, MON_DATA_FATEFUL_ENCOUNTER, NULL) == FALSE))) {
            VarsFlags *varsFlags = SaveData_GetVarsFlags(appState->playerData->saveData);

            if (SystemVars_GetArceusEventState(varsFlags) == FALSE) {
                SystemVars_SetArceusEventState(varsFlags, TRUE);
            }
        }
    }

    u8 friendship = BASE_FRIENDSHIP_VALUE;
    Pokemon_SetValue(pokemon, MON_DATA_FRIENDSHIP, &friendship);

    Pokemon_SetValue(pokemon, MON_DATA_GENDER, NULL);

    if (boxIndex == MAX_PC_BOXES) {
        Party_AddPokemon(appState->playerData->party, pokemon);
        int partyIndex = Party_GetCurrentCount(appState->playerData->party);

        appState->tradedPokemonLocation.boxIndex = MAX_PC_BOXES;
        appState->tradedPokemonLocation.index = partyIndex - 1;
    } else {
        int boxPosition = 0;

        PCBoxes_TryGetNextAvailableSpace(appState->playerData->pcBoxes, &boxIndex, &boxPosition);
        PCBoxes_TryStoreBoxMonInBox(appState->playerData->pcBoxes, boxIndex, Pokemon_GetBoxPokemon(pokemon));

        appState->tradedPokemonLocation.boxIndex = boxIndex;
        appState->tradedPokemonLocation.index = boxPosition;
    }

    GTS_SetTradedTimestamp(appState->playerData->globalTrade, GTS_TIMESTAMPS_TRADE_BY_SEARCHING);
}

static void GTS_SetTradedTimestamp(GlobalTrade *globalTrade, int type)
{
    RTCDate currentDate;
    RTCTime unused;
    u32 timestamp;

    DWC_GetDateTime(&currentDate, &unused);

    timestamp = Date_Encode(&currentDate);

    if (type == GTS_TIMESTAMPS_TRADE_BY_SEARCHING) {
        GlobalTrade_SetSearchTradeDatestamp(globalTrade, timestamp);
    } else {
        GlobalTrade_SetDepositTradeDatestamp(globalTrade, timestamp);
    }
}

static void GTSApplication_NetworkHandler_FlagGeonetCommunicatedWith(WiFiHistory *wiFiHistory, GTSPokemonListing *listing)
{
    WiFiHistory_FlagGeonetCommunicatedWith(wiFiHistory, listing->trainerCountry, listing->trainerRegion, listing->trainerLanguage);
}

static void GTS_LogTradeInJournal(JournalEntry *journalEntry, GTSPokemonListing *listing)
{
    void *journalEntryOnlineEvent;
    u16 nickname[MON_NAME_LEN + 1];
    Pokemon *mon = (Pokemon *)listing->pokemon.bytes;

    Pokemon_GetValue(mon, MON_DATA_NICKNAME, nickname);
    journalEntryOnlineEvent = JournalEntry_CreateEventGotPokemonGTS(listing->unk_10C, listing->unk_F6, nickname, Pokemon_GetGender(mon), 62);
    JournalEntry_SaveData(journalEntry, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
}

static int GTSApplication_NetworkHandler_HaveSpaceForPokemon(GTSApplicationState *param0, GTSPokemonListing *listing)
{
    if (Pokemon_IsHoldingMail((Pokemon *)listing->pokemon.bytes)
        && (Party_GetCurrentCount(param0->playerData->party) == MAX_PARTY_SIZE)) {
        return 2;
    }

    if ((param0->deferredBoxPokemonCount == (MAX_MONS_PER_BOX * MAX_PC_BOXES)) && (Party_GetCurrentCount(param0->playerData->party) == MAX_PARTY_SIZE)) {
        return 1;
    }

    return 0;
}

static void GTSApplication_NetworkHandler_SetSaveInstructions(GTSApplicationState *appState, int duringSaveInstruction, int successfulSaveInstruction)
{
    appState->duringSaveInstruction = duringSaveInstruction;
    appState->successfulSaveInstruction = successfulSaveInstruction;
}

static BOOL GTSApplication_NetworkHandler_IsListingDesynced(GTSApplicationState *appState)
{
    if (GlobalTrade_IsPokemonListed(appState->playerData->globalTrade) == FALSE) {
        if (appState->isPokemonListed) {
            return TRUE;
        }
    }

    return FALSE;
}
