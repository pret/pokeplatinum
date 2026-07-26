#include "overlay094/screens/network_handler.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/net.h"
#include "constants/savedata/savedata.h"
#include "generated/game_records.h"
#include "generated/species.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/tv_broadcast.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/wi_fi_history.h"

#include "overlay094/application.h"
#include "overlay094/avatar.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/networking.h"
#include "overlay094/screens/main_menu.h"
#include "overlay094/screens/select_pokemon.h"
#include "overlay094/screens/wfc_init.h"
#include "savedata/save_table.h"

#include "bg_window.h"
#include "chatot_cry.h"
#include "comm_manager.h"
#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "global_trade.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "network_icon.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "render_window.h"
#include "save_catchrecords.h"
#include "savedata.h"
#include "screen_fade.h"
#include "string_gf.h"
#include "string_template.h"
#include "system_vars.h"
#include "text.h"
#include "tv_segment.h"
#include "unk_02038F8C.h"
#include "unk_02039814.h"
#include "vars_flags.h"

#include "res/text/bank/gts.h"
#include "res/text/bank/location_names.h"

#define GTS_TIMESTAMPS_TRADE_BY_DEPOSITING 0
#define GTS_TIMESTAMPS_TRADE_BY_SEARCHING  1

static void GTSNetworkHandler_InitBgLayers(BgConfig *bgConfig);
static void GTSNetworkHandler_FreeBgLayers(BgConfig *bgConfig);
static void GTSNetworkHandler_InitGraphics(GTSApplicationState *appState);
static void GTSNetworkHandler_InitWindows(GTSApplicationState *appState);
static void GTSNetworkHandler_RemoveWindows(GTSApplicationState *appState);
static void GTSNetworkHandler_InitStrings(GTSApplicationState *appState);
static void GTSNetworkHandler_CleanupStrings(GTSApplicationState *appState);
static void GTSNetworkHandler_LogTradeInJournal(JournalEntry *journalEntry, GTSPokemonListing *listing);
static void GTSNetworkHandler_ReturnToPreviousScreen(GTSApplicationState *appState);
static void GTSNetworkHandler_FlagGeonetCommunicatedWith(WiFiHistory *wiFiHistory, GTSPokemonListing *listing);
static void GTSNetworkHandler_StorePokemonFromSearching(GTSApplicationState *appState, Pokemon *mon, int boxIndex);
static void GTSNetworkHandler_SetTradedTimestamp(GlobalTrade *globalTrade, int type);
static int GTSNetworkHandler_HaveSpaceForPokemon(GTSApplicationState *appState, GTSPokemonListing *listing);
static void GTSNetworkHandler_ShowCommsError(GTSApplicationState *appState);
static void GTSNetworkHandler_SetSaveInstructions(GTSApplicationState *appState, int duringSaveInstruction, int successfulSaveInstruction);
static int GTSNetworkHandler_ParseScreenArgument(GTSApplicationState *appState);
static int GTSNetworkHandler_BeginPostListing(GTSApplicationState *appState);
static int GTSNetworkHandler_WaitForPostResponse(GTSApplicationState *appState);
static int GTSNetworkHandler_FinishPost(GTSApplicationState *appState);
static int GTSNetworkHandler_PostFinishResponse(GTSApplicationState *appState);
static int GTSNetworkHandler_Idle(GTSApplicationState *appState);
static int GTSNetworkHandler_TradeDeposit(GTSApplicationState *appState);
static int GTSNetworkHandler_TradeTakeBack(GTSApplicationState *appState);
static int GTSNetworkHandler_ShowCommsErrorAndDisconnect(GTSApplicationState *appState);
static int GTSNetworkHandler_ShowCommsErrorAndReturnToMenu(GTSApplicationState *appState);
static int GTSNetworkHandler_FadeAndExit(GTSApplicationState *appState);
static int GTSNetworkHandler_WaitForText(GTSApplicationState *appState);
static int GTSNetworkHandler_GetListedPokemonRequest(GTSApplicationState *appState);
static int GTSNetworkHandler_GetListedPokemonResponse(GTSApplicationState *appState);
static int GTSNetworkHandler_ReturnRequest(GTSApplicationState *appState);
static int GTSNetworkHandler_ReturnResponse(GTSApplicationState *appState);
static int GTSNetworkHandler_ExchangeRequest(GTSApplicationState *appState);
static int GTSNetworkHandler_ExchangeResponse(GTSApplicationState *appState);
static int GTSNetworkHandler_ExchangeFinishRequest(GTSApplicationState *appState);
static int GTSNetworkHandler_ExchangeFinishResponse(GTSApplicationState *appState);
static int GTSNetworkHandler_GoToTradeDeposit(GTSApplicationState *appState);
static int GTSNetworkHandler_ShowAlreadyTradedError(GTSApplicationState *appState);
static void GTSNetworkHandler_MoveSelectedPokemonToGlobalTrade(GTSApplicationState *appState, int markAsListed);
static void GTSNetworkHandler_StorePokemonFromDepositing(GTSApplicationState *appState, Pokemon *mon, int boxIndex, int exchangedFromRemote);
static int GTSNetworkHandler_PrepareFullSave(GTSApplicationState *appState);
static int GTSNetworkHandler_BeginSaveSequence(GTSApplicationState *appState);
static int GTSNetworkHandler_WaitForSaveComplete(GTSApplicationState *appState);
static int GTSNetworkHandler_GetListedPokemonResponse2(GTSApplicationState *appState);
static int GTSNetworkHandler_GetListedPokemonRequest2(GTSApplicationState *appState);
static int GTSNetworkHandler_GetListingStatusResponse(GTSApplicationState *appState);
static int GTSNetworkHandler_GetListingStatusRequest(GTSApplicationState *appState);
static int GTSNetworkHandler_PerformDepositTrade(GTSApplicationState *appState);
static int GTSNetworkHandler_DeleteReceivedPokemonResponse(GTSApplicationState *appState);
static int GTSNetworkHandler_GoToTradeTakeBack(GTSApplicationState *appState);
static int GTSNetworkHandler_WaitForSaveProceed(GTSApplicationState *appState);
static int GTSNetworkHandler_WaitForFrameDelay(GTSApplicationState *appState);
static int GTSNetworkHandler_ReturnToMainMenu(GTSApplicationState *appState);
static int GTSNetworkHandler_FullSave(GTSApplicationState *appState);
static int GTSNetworkHandler_WaitForSuccessfulSave(GTSApplicationState *appState);
static int GTSNetworkHandler_DeleteReceivedPokemonRequest(GTSApplicationState *appState);
static int GTSNetworkHandler_DeleteDesyncedPokemonRequest(GTSApplicationState *appState);
static int GTSNetworkHandler_DeleteDesyncedPokemonResponse(GTSApplicationState *appState);
static BOOL GTSNetworkHandler_IsListingDesynced(GTSApplicationState *appState);

static int (*sGTSNetworkHandlerScreenStates[])(GTSApplicationState *) = {
    [GTS_NETHANDLER_PARSE_SCREEN_ARGUMENT] = GTSNetworkHandler_ParseScreenArgument,
    [GTS_NETHANDLER_IDLE] = GTSNetworkHandler_Idle,
    [GTS_NETHANDLER_BEGIN_POST_LISTING] = GTSNetworkHandler_BeginPostListing,
    [GTS_NETHANDLER_WAIT_FOR_POST_RESPONSE] = GTSNetworkHandler_WaitForPostResponse,
    [GTS_NETHANDLER_FINISH_POST] = GTSNetworkHandler_FinishPost,
    [GTS_NETHANDLER_POST_FINISH_RESPONSE] = GTSNetworkHandler_PostFinishResponse,
    [GTS_NETHANDLER_TRADE_DEPOSIT] = GTSNetworkHandler_TradeDeposit,
    [GTS_NETHANDLER_GET_LISTED_POKEMON_REQUEST] = GTSNetworkHandler_GetListedPokemonRequest,
    [GTS_NETHANDLER_GET_LISTED_POKEMON_RESPONSE] = GTSNetworkHandler_GetListedPokemonResponse,
    [GTS_NETHANDLER_RETURN_REQUEST] = GTSNetworkHandler_ReturnRequest,
    [GTS_NETHANDLER_RETURN_RESPONSE] = GTSNetworkHandler_ReturnResponse,
    [GTS_NETHANDLER_TRADE_TAKE_BACK] = GTSNetworkHandler_TradeTakeBack,
    [GTS_NETHANDLER_EXCHANGE_REQUEST] = GTSNetworkHandler_ExchangeRequest,
    [GTS_NETHANDLER_EXCHANGE_RESPONSE] = GTSNetworkHandler_ExchangeResponse,
    [GTS_NETHANDLER_EXCHANGE_FINISH_REQUEST] = GTSNetworkHandler_ExchangeFinishRequest,
    [GTS_NETHANDLER_EXCHANGE_FINISH_RESPONSE] = GTSNetworkHandler_ExchangeFinishResponse,
    [GTS_NETHANDLER_GO_TO_TRADE_DEPOSIT] = GTSNetworkHandler_GoToTradeDeposit,
    [GTS_NETHANDLER_SHOW_ALREADY_TRADED_ERROR] = GTSNetworkHandler_ShowAlreadyTradedError,
    [GTS_NETHANDLER_PERFORM_DEPOSIT_TRADE] = GTSNetworkHandler_PerformDepositTrade,
    [GTS_NETHANDLER_DELETE_RECEIVED_POKEMON_REQUEST] = GTSNetworkHandler_DeleteReceivedPokemonRequest,
    [GTS_NETHANDLER_DELETE_RECEIVED_POKEMON_RESPONSE] = GTSNetworkHandler_DeleteReceivedPokemonResponse,
    [GTS_NETHANDLER_GO_TO_TRADE_TAKE_BACK] = GTSNetworkHandler_GoToTradeTakeBack,
    [GTS_NETHANDLER_DELETE_DESYNCED_POKEMON_REQUEST] = GTSNetworkHandler_DeleteDesyncedPokemonRequest,
    [GTS_NETHANDLER_DELETE_DESYNCED_POKEMON_RESPONSE] = GTSNetworkHandler_DeleteDesyncedPokemonResponse,
    [GTS_NETHANDLER_GET_LISTING_STATUS_REQUEST] = GTSNetworkHandler_GetListingStatusRequest,
    [GTS_NETHANDLER_GET_LISTING_STATUS_RESPONSE] = GTSNetworkHandler_GetListingStatusResponse,
    [GTS_NETHANDLER_GET_LISTED_POKEMON_REQUEST_2] = GTSNetworkHandler_GetListedPokemonRequest2,
    [GTS_NETHANDLER_GET_LISTED_POKEMON_RESPONSE_2] = GTSNetworkHandler_GetListedPokemonResponse2,
    [GTS_NETHANDLER_RETURN_TO_MAIN_MENU] = GTSNetworkHandler_ReturnToMainMenu,
    [GTS_NETHANDLER_BEGIN_SAVE_SEQUENCE] = GTSNetworkHandler_BeginSaveSequence,
    [GTS_NETHANDLER_PREPARE_FULL_SAVE] = GTSNetworkHandler_PrepareFullSave,
    [GTS_NETHANDLER_WAIT_FOR_FRAME_DELAY] = GTSNetworkHandler_WaitForFrameDelay,
    [GTS_NETHANDLER_WAIT_FOR_SAVE_PROCEED] = GTSNetworkHandler_WaitForSaveProceed,
    [GTS_NETHANDLER_WAIT_FOR_SAVE_COMPLETE] = GTSNetworkHandler_WaitForSaveComplete,
    [GTS_NETHANDLER_FULL_SAVE] = GTSNetworkHandler_FullSave,
    [GTS_NETHANDLER_WAIT_FOR_SUCCESSFUL_SAVE] = GTSNetworkHandler_WaitForSuccessfulSave,
    [GTS_NETHANDLER_FADE_AND_EXIT] = GTSNetworkHandler_FadeAndExit,
    [GTS_NETHANDLER_WAIT_FOR_TEXT] = GTSNetworkHandler_WaitForText,
    [GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_DISCONNECT] = GTSNetworkHandler_ShowCommsErrorAndDisconnect,
    [GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_RETURN_TO_MENU] = GTSNetworkHandler_ShowCommsErrorAndReturnToMenu
};

int GTSApplication_NetworkHandler_Init(GTSApplicationState *appState, int unused)
{
    GTSNetworkHandler_InitStrings(appState);
    GTSNetworkHandler_InitBgLayers(appState->bgConfig);
    GTSNetworkHandler_InitGraphics(appState);
    GTSNetworkHandler_InitWindows(appState);

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
    GTSApplication_InitNetworkIcon(appState);

    appState->currentScreenInstruction = GTS_NETHANDLER_PARSE_SCREEN_ARGUMENT;

    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_NetworkHandler_Main(GTSApplicationState *appState, int unused)
{
    NetworkIcon_SetStrength(GTSApplication_GetNetworkStrength());
    return (*sGTSNetworkHandlerScreenStates[appState->currentScreenInstruction])(appState);
}

int GTSApplication_NetworkHandler_Exit(GTSApplicationState *appState, int unused)
{
    GTSNetworkHandler_CleanupStrings(appState);
    GTSNetworkHandler_RemoveWindows(appState);
    GTSNetworkHandler_FreeBgLayers(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return GTS_LOOP_STATE_INIT;
}

static void GTSNetworkHandler_InitBgLayers(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_0,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&graphicsModes);

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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &mainWindowTemplate, BG_TYPE_STATIC);
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &mainBgTemplate, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

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
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &mainBgOverlayTemplate, BG_TYPE_STATIC);
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &subWindowTemplate, BG_TYPE_STATIC);
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &subBgTemplate, BG_TYPE_STATIC);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void GTSNetworkHandler_FreeBgLayers(BgConfig *appState)
{
    Bg_FreeTilemapBuffer(appState, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(appState, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(appState, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(appState, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(appState, BG_LAYER_MAIN_0);
}

static void GTSNetworkHandler_InitGraphics(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__WORLDTRADE, 0, 0, 0, PALETTE_SIZE_BYTES * 3, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), HEAP_ID_62);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 10, Options_Frame(appState->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, 1 + SCROLLING_MESSAGE_BOX_TILE_COUNT, 11, 0, HEAP_ID_62);

    if (appState->hasAvatarFinishedMoving == FALSE) {
        Bg_ToggleLayer(BG_LAYER_SUB_0, FALSE);
        Bg_ToggleLayer(BG_LAYER_SUB_1, FALSE);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, FALSE);
    }

    if (appState->previousScreen == GTS_SCREEN_TRADE) {
        GTS_LoadSubScreenGraphics(appState);
    }
}

static void GTSNetworkHandler_InitWindows(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, 0, 2, 19, 27, 4, 13, 1 + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0x0);
}

static void GTSNetworkHandler_RemoveWindows(GTSApplicationState *appState)
{
    Window_Remove(&appState->bottomInstructionWindow);
}

static void GTSNetworkHandler_InitStrings(GTSApplicationState *appState)
{
    appState->genericMessageBuffer = String_Init(90 * 2, HEAP_ID_62);
}

static void GTSNetworkHandler_CleanupStrings(GTSApplicationState *appState)
{
    String_Free(appState->genericMessageBuffer);
}

static int GTSNetworkHandler_ParseScreenArgument(GTSApplicationState *appState)
{
    switch (appState->screenArgument) {
    case SCREEN_ARGUMENT_DEPOSIT_POKEMON:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_CheckingStatus, TEXT_SPEED_FAST, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_NETHANDLER_WAIT_FOR_TEXT, GTS_NETHANDLER_BEGIN_POST_LISTING);
        break;
    case SCREEN_ARGUMENT_TAKE_BACK_POKEMON:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_CheckingStatus, TEXT_SPEED_FAST, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_NETHANDLER_WAIT_FOR_TEXT, GTS_NETHANDLER_GET_LISTED_POKEMON_REQUEST);
        break;
    case SCREEN_ARGUMENT_EXCHANGE_POKEMON:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_CheckingStatus, TEXT_SPEED_FAST, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_NETHANDLER_WAIT_FOR_TEXT, GTS_NETHANDLER_EXCHANGE_REQUEST);
        break;
    case SCREEN_ARGUMENT_EXCHANGE_POKEMON_ALT:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_CheckingStatus, TEXT_SPEED_FAST, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_NETHANDLER_WAIT_FOR_TEXT, GTS_NETHANDLER_PERFORM_DEPOSIT_TRADE);
        appState->fadeBothScreens = TRUE;
        break;
    case SCREEN_ARGUMENT_CHECK_SERVER:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_CheckingStatus, TEXT_SPEED_INSTANT, 0xf0f);
        appState->currentScreenInstruction = GTS_NETHANDLER_GET_LISTING_STATUS_REQUEST;
        break;
    case SCREEN_ARGUMENT_SAVE_AFTER_EVOLVE:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_Saving, TEXT_SPEED_FAST, 0xf0f);
        appState->nextScreen = GTS_SCREEN_MAIN_MENU;
        appState->currentScreenInstruction = GTS_NETHANDLER_BEGIN_SAVE_SEQUENCE;
        break;
    default:
        GF_ASSERT(FALSE);
    }

    GTSApplication_AddWaitDial(appState);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_BeginPostListing(GTSApplicationState *appState)
{
    Pokemon_ClearBallCapsuleData((Pokemon *)appState->receivedListing.pokemon.bytes);
    GTSNetworking_Post(&appState->receivedListing);

    appState->currentScreenInstruction = GTS_NETHANDLER_WAIT_FOR_POST_RESPONSE;
    appState->networkTimeoutCounter = 0;

    GTSNetworkHandler_SetSaveInstructions(appState, GTS_NETHANDLER_FINISH_POST, GTS_NETHANDLER_TRADE_DEPOSIT);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_WaitForPostResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errCode) {
        case GTS_RESULT_SUCCESS:
            GTSNetworkHandler_MoveSelectedPokemonToGlobalTrade(appState, 1);
            GameRecords_IncrementRecordValue(appState->playerData->records, RECORD_UNK_044);
            appState->currentScreenInstruction = GTS_NETHANDLER_PREPARE_FULL_SAVE;
            break;
        case GTS_RESULT_GTS_CROWDED:
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_DISCONNECT;
            break;
        case GTS_RESULT_CANNOT_BE_OFFERED_1:
        case GTS_RESULT_CANNOT_BE_OFFERED_2:
        case GTS_RESULT_CANNOT_BE_OFFERED_3:
        case GTS_RESULT_CANNOT_BE_OFFERED_4:
        case GTS_RESULT_CANNOT_BE_OFFERED_5:
        case GTS_RESULT_CANNOT_BE_OFFERED_6:
        case GTS_RESULT_ALREADY_DEPOSITED:
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_RETURN_TO_MENU;
            break;
        case GTS_RESULT_ABORTED:
        case GTS_RESULT_NOT_FOUND:
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_RETURN_TO_MENU;
            break;
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
        case GTS_RESULT_CONNECTION_FAILED:
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_DISCONNECT;
            break;
        case GTS_RESULT_ERROR:
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == NETWORK_TIMEOUT_FRAMES) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_FinishPost(GTSApplicationState *appState)
{
    GTSNetworking_PostFinish();

    appState->currentScreenInstruction = GTS_NETHANDLER_POST_FINISH_RESPONSE;
    appState->networkTimeoutCounter = 0;
    appState->isPokemonListed = 1;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_PostFinishResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errCode = GTSNetworking_GetErrorCode();
        appState->networkTimeoutCounter = 0;

        switch (errCode) {
        case GTS_RESULT_SUCCESS:
            appState->currentScreenInstruction = GTS_NETHANDLER_WAIT_FOR_SAVE_COMPLETE;
            break;
        case GTS_RESULT_ABORTED:
        case GTS_RESULT_NOT_FOUND:
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_RETURN_TO_MENU;
            break;
        case GTS_RESULT_GTS_CROWDED:
        case GTS_RESULT_ALREADY_TRADED:
        case GTS_RESULT_ALREADY_DEPOSITED:
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
        case GTS_RESULT_CONNECTION_FAILED:
            CommManager_SetCommError(4);
            break;
        case GTS_RESULT_ERROR:
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == NETWORK_TIMEOUT_FRAMES) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_GetListedPokemonRequest(GTSApplicationState *appState)
{
    GTSNetworking_GetListedPokemon(&appState->receivedListing);

    appState->currentScreenInstruction = GTS_NETHANDLER_GET_LISTED_POKEMON_RESPONSE;
    appState->networkTimeoutCounter = 0;

    GTSNetworkHandler_SetSaveInstructions(appState, GTS_NETHANDLER_RETURN_REQUEST, GTS_NETHANDLER_TRADE_TAKE_BACK);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_GetListedPokemonResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errorCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errorCode) {
        case GTS_RESULT_SUCCESS:
            if (appState->receivedListing.exchangedFromRemote) {
                appState->currentScreenInstruction = GTS_NETHANDLER_GET_LISTING_STATUS_REQUEST;
            } else {
                GTSNetworkHandler_StorePokemonFromDepositing(appState, (Pokemon *)appState->receivedListing.pokemon.bytes, GlobalTrade_GetUnusedInt(appState->playerData->globalTrade), appState->receivedListing.exchangedFromRemote);
                appState->currentScreenInstruction = GTS_NETHANDLER_PREPARE_FULL_SAVE;
            }
            break;
        case GTS_RESULT_ALREADY_TRADED:
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_DISCONNECT;
            break;
        case GTS_RESULT_NOT_FOUND:
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_DISCONNECT;
            break;
        case GTS_RESULT_ABORTED:
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_RETURN_TO_MENU;
            break;
        case GTS_RESULT_CONNECTION_FAILED:
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_DISCONNECT;
            break;
        case GTS_RESULT_ERROR:
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == NETWORK_TIMEOUT_FRAMES) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_ReturnRequest(GTSApplicationState *appState)
{
    GTSNetworking_Return();

    appState->currentScreenInstruction = GTS_NETHANDLER_RETURN_RESPONSE;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_ReturnResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errCode) {
        case GTS_RESULT_SUCCESS:
            appState->currentScreenInstruction = GTS_NETHANDLER_WAIT_FOR_SAVE_COMPLETE;
            break;
        case GTS_RESULT_ALREADY_TRADED:
        case GTS_RESULT_NOT_FOUND:
        case GTS_RESULT_ALREADY_DEPOSITED:
            CommManager_SetCommError(3);
            break;
        case GTS_RESULT_ABORTED:
        case GTS_RESULT_CONNECTION_FAILED:
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
            CommManager_SetCommError(4);
            break;
        case GTS_RESULT_ERROR:
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == NETWORK_TIMEOUT_FRAMES) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_ExchangeRequest(GTSApplicationState *appState)
{
    Pokemon_ClearBallCapsuleData((Pokemon *)appState->receivedListing.pokemon.bytes);

    GTSNetworking_Exchange(appState->searchResults[appState->selectedSearchResult].listingId, &appState->receivedListing, &appState->selectedListing);
    GTSNetworkHandler_SetSaveInstructions(appState, GTS_NETHANDLER_EXCHANGE_FINISH_REQUEST, GTS_NETHANDLER_GO_TO_TRADE_DEPOSIT);

    appState->currentScreenInstruction = GTS_NETHANDLER_EXCHANGE_RESPONSE;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_ExchangeResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errCode) {
        case GTS_RESULT_SUCCESS:
            appState->currentScreenInstruction = GTS_NETHANDLER_PREPARE_FULL_SAVE;

            GTSNetworkHandler_MoveSelectedPokemonToGlobalTrade(appState, 0);
            GTSNetworkHandler_StorePokemonFromSearching(appState, (Pokemon *)appState->selectedListing.pokemon.bytes, appState->selectedBoxId);
            GTSNetworkHandler_FlagGeonetCommunicatedWith(appState->playerData->wiFiHistory, &appState->selectedListing);
            GameRecords_IncrementTrainerScore(appState->playerData->records, TRAINER_SCORE_EVENT_GTS_TRADE_COMPLETE);
            GTSNetworkHandler_LogTradeInJournal(appState->playerData->journalEntry, &appState->selectedListing);
            GameRecords_IncrementRecordValue(appState->playerData->records, RECORD_WIFI_TRADES);
            sub_0206D104(SaveData_GetTVBroadcast(appState->playerData->saveData));
            break;
        case GTS_RESULT_ALREADY_DEPOSITED:
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_ALREADY_TRADED_ERROR;
            break;
        case GTS_RESULT_CANNOT_BE_OFFERED_1:
        case GTS_RESULT_CANNOT_BE_OFFERED_2:
        case GTS_RESULT_CANNOT_BE_OFFERED_3:
        case GTS_RESULT_CANNOT_BE_OFFERED_4:
        case GTS_RESULT_CANNOT_BE_OFFERED_5:
        case GTS_RESULT_CANNOT_BE_OFFERED_6:
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_RETURN_TO_MENU;
            break;
        case GTS_RESULT_ABORTED:
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_RETURN_TO_MENU;
            break;
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
        case GTS_RESULT_CONNECTION_FAILED:
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_DISCONNECT;
            break;
        case GTS_RESULT_ERROR:
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == NETWORK_TIMEOUT_FRAMES) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_ExchangeFinishRequest(GTSApplicationState *appState)
{
    GTSNetworking_ExchangeFinish();

    appState->currentScreenInstruction = GTS_NETHANDLER_EXCHANGE_FINISH_RESPONSE;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_ExchangeFinishResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errCode) {
        case GTS_RESULT_SUCCESS:
            appState->currentScreenInstruction = GTS_NETHANDLER_WAIT_FOR_SAVE_COMPLETE;
            break;
        case GTS_RESULT_ALREADY_DEPOSITED:
            CommManager_SetCommError(3);
            break;
        case GTS_RESULT_ABORTED:
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
        case GTS_RESULT_CONNECTION_FAILED:
            CommManager_SetCommError(4);
            break;
        case GTS_RESULT_ERROR:
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == NETWORK_TIMEOUT_FRAMES) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_GetListingStatusRequest(GTSApplicationState *appState)
{
    GTSNetworking_GetListingStatus(&appState->receivedListing);

    appState->currentScreenInstruction = GTS_NETHANDLER_GET_LISTING_STATUS_RESPONSE;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_GetListingStatusResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errCode = GTSNetworking_GetErrorCode();
        appState->networkTimeoutCounter = 0;

        switch (errCode) {
        case GTS_RESULT_SUCCESS:
            appState->currentScreenInstruction = GTS_NETHANDLER_GET_LISTED_POKEMON_REQUEST_2;
            break;
        case GTS_RESULT_PROFILE_EXISTS:
            appState->isPokemonListed = 1;

            switch (GTSNetworkHandler_HaveSpaceForPokemon(appState, &appState->receivedListing)) {
            case 1:
                GTSApplication_DestroyWaitDial(appState);
                GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_Error_StorageBoxesFull, TEXT_SPEED_FAST, 0xf0f);
                GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_NETHANDLER_WAIT_FOR_TEXT, GTS_NETHANDLER_RETURN_TO_MAIN_MENU);
                break;
            case 2:
                GTSApplication_DestroyWaitDial(appState);
                GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_Error_PartyFullMail, TEXT_SPEED_FAST, 0xf0f);
                GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_NETHANDLER_WAIT_FOR_TEXT, GTS_NETHANDLER_RETURN_TO_MAIN_MENU);
                break;
            case 0: // all OK, store the traded pokemon
                appState->currentScreenInstruction = GTS_NETHANDLER_PERFORM_DEPOSIT_TRADE;
                appState->fadeBothScreens = TRUE;
                break;
            }
            break;
        case GTS_RESULT_ALREADY_TRADED:
            appState->isPokemonListed = 0;

            if (GlobalTrade_IsPokemonListed(appState->playerData->globalTrade)) {
                Pokemon *tempPokemon = Pokemon_New(HEAP_ID_62);

                GlobalTrade_CopyFromStoredPokemon(appState->playerData->globalTrade, tempPokemon);
                StringTemplate_SetNickname(appState->stringTemplate, 0, Pokemon_GetBoxPokemon(tempPokemon));

                appState->depositReturnError = pl_msg_00000671_00002;
                appState->currentScreenInstruction = GTS_NETHANDLER_FULL_SAVE;

                GTSNetworkHandler_StorePokemonFromDepositing(appState, tempPokemon, GlobalTrade_GetUnusedInt(appState->playerData->globalTrade), 0);

                GlobalTrade_SetPokemonListed(appState->playerData->globalTrade, 0);
                Heap_Free(tempPokemon);
            } else {
                GTSNetworkHandler_ReturnToPreviousScreen(appState);
            }
            break;
        case GTS_RESULT_NOT_FOUND:
            appState->isPokemonListed = 0;

            if (GlobalTrade_IsPokemonListed(appState->playerData->globalTrade)) {
                Pokemon *tempPokemon = Pokemon_New(HEAP_ID_62);

                GlobalTrade_CopyFromStoredPokemon(appState->playerData->globalTrade, tempPokemon);
                StringTemplate_SetNickname(appState->stringTemplate, 0, Pokemon_GetBoxPokemon(tempPokemon));

                appState->depositReturnError = pl_msg_00000671_00003;
                appState->currentScreenInstruction = GTS_NETHANDLER_FULL_SAVE;

                GlobalTrade_SetPokemonListed(appState->playerData->globalTrade, 0);
                Heap_Free(tempPokemon);
            }
            break;
        case GTS_RESULT_ABORTED:
        case GTS_RESULT_CONNECTION_FAILED:
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_DISCONNECT;
            break;
        case GTS_RESULT_ERROR:
            NetworkError_DisplayNetworkError(HEAP_ID_APPLICATION, 1, 0);
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == NETWORK_TIMEOUT_FRAMES) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_ReturnToMainMenu(GTSApplicationState *appState)
{
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_NONE);
    appState->currentScreenInstruction = GTS_NETHANDLER_FADE_AND_EXIT;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_GetListedPokemonRequest2(GTSApplicationState *appState)
{
    GTSNetworking_GetListedPokemon(&appState->receivedListing);

    appState->currentScreenInstruction = GTS_NETHANDLER_GET_LISTED_POKEMON_RESPONSE_2;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_GetListedPokemonResponse2(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errCode) {
        case GTS_RESULT_SUCCESS:
            if (GTSNetworkHandler_IsListingDesynced(appState)) {
                appState->currentScreenInstruction = GTS_NETHANDLER_DELETE_DESYNCED_POKEMON_REQUEST;
                appState->isPokemonListed = 0;
                return GTS_LOOP_STATE_MAIN;
            } else {
                appState->isPokemonListed = 1;
            }
            break;
        case GTS_RESULT_ALREADY_TRADED:
            appState->isPokemonListed = 0;
            break;
        case GTS_RESULT_NOT_FOUND:
            break;
        case GTS_RESULT_ABORTED:
        case GTS_RESULT_CONNECTION_FAILED:
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTS_NETHANDLER_SHOW_COMMS_ERROR_AND_DISCONNECT;
            return GTS_LOOP_STATE_MAIN;
        case GTS_RESULT_ERROR:
            NetworkError_DisplayGTSCriticalError();
            return GTS_LOOP_STATE_MAIN;
        }

        GTSNetworkHandler_ReturnToPreviousScreen(appState);
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == NETWORK_TIMEOUT_FRAMES) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static void GTSNetworkHandler_ReturnToPreviousScreen(GTSApplicationState *appState)
{
    switch (appState->returnAfterNetworkScreen) {
    case GTS_SCREEN_MAIN_MENU:
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_NONE);
        appState->currentScreenInstruction = GTS_NETHANDLER_FADE_AND_EXIT;
        break;
    case GTS_SCREEN_LISTING:
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_LISTING, SCREEN_ARGUMENT_RESUME_LISTING);
        appState->currentScreenInstruction = GTS_NETHANDLER_FADE_AND_EXIT;
        break;
    }
}

static int GTSNetworkHandler_PerformDepositTrade(GTSApplicationState *appState)
{
    GTSNetworkHandler_StorePokemonFromDepositing(appState, (Pokemon *)appState->receivedListing.pokemon.bytes, GlobalTrade_GetUnusedInt(appState->playerData->globalTrade), appState->receivedListing.exchangedFromRemote);
    GTSNetworkHandler_FlagGeonetCommunicatedWith(appState->playerData->wiFiHistory, &appState->receivedListing);

    GameRecords_IncrementTrainerScore(appState->playerData->records, TRAINER_SCORE_EVENT_GTS_TRADE_COMPLETE);
    GTSNetworkHandler_LogTradeInJournal(appState->playerData->journalEntry, &appState->receivedListing);
    GameRecords_IncrementRecordValue(appState->playerData->records, RECORD_WIFI_TRADES);

    TVBroadcast *broadcast = SaveData_GetTVBroadcast(appState->playerData->saveData);
    sub_0206D104(broadcast);

    GlobalTrade_SetPokemonListed(appState->playerData->globalTrade, 0);
    appState->currentScreenInstruction = GTS_NETHANDLER_PREPARE_FULL_SAVE;
    GTSNetworkHandler_SetSaveInstructions(appState, GTS_NETHANDLER_DELETE_RECEIVED_POKEMON_REQUEST, GTS_NETHANDLER_TRADE_TAKE_BACK);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_DeleteReceivedPokemonRequest(GTSApplicationState *appState)
{
    GTSNetworking_Delete();

    appState->currentScreenInstruction = GTS_NETHANDLER_DELETE_RECEIVED_POKEMON_RESPONSE;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_DeleteReceivedPokemonResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errCode) {
        case GTS_RESULT_SUCCESS:
            appState->currentScreenInstruction = GTS_NETHANDLER_WAIT_FOR_SAVE_COMPLETE;
            break;
        case GTS_RESULT_ALREADY_TRADED:
            CommManager_SetCommError(3);
            break;
        case GTS_RESULT_NOT_FOUND:
        case GTS_RESULT_ABORTED:
            appState->commsErrorMessage = errCode;
        case GTS_RESULT_CONNECTION_FAILED:
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
            CommManager_SetCommError(4);
            break;
        case GTS_RESULT_ERROR:
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == NETWORK_TIMEOUT_FRAMES) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_Idle(GTSApplicationState *appState)
{
    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_TradeDeposit(GTSApplicationState *appState)
{
    appState->isPokemonListed = TRUE;
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_TRADE, SCREEN_ARGUMENT_DEPOSIT_POKEMON);
    appState->currentScreenInstruction = GTS_NETHANDLER_FADE_AND_EXIT;

    return 3;
}

static int GTSNetworkHandler_TradeTakeBack(GTSApplicationState *appState)
{
    appState->isPokemonListed = FALSE;
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_TRADE, SCREEN_ARGUMENT_TAKE_BACK_POKEMON);
    appState->currentScreenInstruction = GTS_NETHANDLER_FADE_AND_EXIT;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_GoToTradeDeposit(GTSApplicationState *appState)
{
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_TRADE, SCREEN_ARGUMENT_EXCHANGE_POKEMON);
    appState->currentScreenInstruction = GTS_NETHANDLER_FADE_AND_EXIT;

    return 3;
}

static int GTSNetworkHandler_GoToTradeTakeBack(GTSApplicationState *appState)
{
    appState->isPokemonListed = 0;
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_TRADE, SCREEN_ARGUMENT_EXCHANGE_POKEMON_ALT);
    appState->currentScreenInstruction = GTS_NETHANDLER_PREPARE_FULL_SAVE;

    return 3;
}

static int GTSNetworkHandler_DeleteDesyncedPokemonRequest(GTSApplicationState *appState)
{
    GTSNetworking_Return();

    appState->currentScreenInstruction = GTS_NETHANDLER_DELETE_DESYNCED_POKEMON_RESPONSE;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_DeleteDesyncedPokemonResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errorCode = GTSNetworking_GetErrorCode();
        appState->networkTimeoutCounter = 0;

        switch (errorCode) {
        case GTS_RESULT_SUCCESS:
            GTSNetworkHandler_ReturnToPreviousScreen(appState);
            break;
        case GTS_RESULT_ALREADY_TRADED:
            GTSNetworkHandler_ReturnToPreviousScreen(appState);
            // BUG: probably should have a break here, or remove above line
        case GTS_RESULT_NOT_FOUND:
            GTSNetworkHandler_ReturnToPreviousScreen(appState);
        case GTS_RESULT_ALREADY_DEPOSITED:
            CommManager_SetCommError(3);
            break;
        case GTS_RESULT_ABORTED:
        case GTS_RESULT_CONNECTION_FAILED:
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
            CommManager_SetCommError(4);
            break;
        case GTS_RESULT_ERROR:
            NetworkError_DisplayGTSCriticalError();
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

static int GTSNetworkHandler_ShowAlreadyTradedError(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_Error_TradedToSomeoneElse, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_NETHANDLER_WAIT_FOR_TEXT, GTS_NETHANDLER_FADE_AND_EXIT);
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_NONE);
    GTSApplication_DestroyWaitDial(appState);
    GTSAvatar_HighlightSearchResults(appState);

    return 3;
}

static void GTSNetworkHandler_ShowCommsError(GTSApplicationState *appState)
{
    int errorMessage = GTS_Text_Error_CommsErrorPadded;

    switch (appState->commsErrorMessage) {
    case GTS_RESULT_CANNOT_BE_OFFERED_1:
    case GTS_RESULT_CANNOT_BE_OFFERED_2:
    case GTS_RESULT_CANNOT_BE_OFFERED_3:
    case GTS_RESULT_CANNOT_BE_OFFERED_4:
    case GTS_RESULT_CANNOT_BE_OFFERED_5:
    case GTS_RESULT_CANNOT_BE_OFFERED_6:
        errorMessage = GTS_Text_Error_PokemonCannotBeOffered;
        break;
    case GTS_RESULT_GTS_CROWDED:
        errorMessage = GTS_Text_Error_GTSCrowded;
        break;
    case GTS_RESULT_SERVER_MAINTENANCE:
    case GTS_RESULT_NOT_IN_DCF_PHASE:
        errorMessage = GTS_Text_Error_DisconnectedFromGTSReturning;
        break;
    case GTS_RESULT_ABORTED:
    case GTS_RESULT_CONNECTION_FAILED:
    case GTS_RESULT_ALREADY_TRADED:
    case GTS_RESULT_ALREADY_DEPOSITED:
        errorMessage = GTS_Text_Error_CommsErrorPadded;
        break;
    }

    GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, errorMessage, TEXT_SPEED_FAST, 0xf0f);
}

static int GTSNetworkHandler_ShowCommsErrorAndDisconnect(GTSApplicationState *appState)
{
    GTSNetworkHandler_ShowCommsError(appState);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_NETHANDLER_WAIT_FOR_TEXT, GTS_NETHANDLER_FADE_AND_EXIT);
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_NONE);
    GTSApplication_DestroyWaitDial(appState);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_ShowCommsErrorAndReturnToMenu(GTSApplicationState *appState)
{
    GTSNetworkHandler_ShowCommsError(appState);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_NETHANDLER_WAIT_FOR_TEXT, GTS_NETHANDLER_FADE_AND_EXIT);
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_NONE);
    GTSApplication_DestroyWaitDial(appState);
    GTSAvatar_HighlightSearchResults(appState);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_BeginSaveSequence(GTSApplicationState *appState)
{
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_NETHANDLER_WAIT_FOR_TEXT, GTS_NETHANDLER_PREPARE_FULL_SAVE);
    GTSNetworkHandler_SetSaveInstructions(appState, GTS_NETHANDLER_WAIT_FOR_SAVE_COMPLETE, GTS_NETHANDLER_FADE_AND_EXIT);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_PrepareFullSave(GTSApplicationState *appState)
{
    SaveData_SetFullSaveRequired();
    SaveData_SaveStateInit(appState->playerData->saveData, 2);

    appState->currentScreenInstruction = GTS_NETHANDLER_WAIT_FOR_FRAME_DELAY;
    appState->frameDelay = LCRNG_RandMod(60) + 2;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_WaitForFrameDelay(GTSApplicationState *appState)
{
    appState->frameDelay--;

    if (appState->frameDelay == 0) {
        appState->currentScreenInstruction = GTS_NETHANDLER_WAIT_FOR_SAVE_PROCEED;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_WaitForSaveProceed(GTSApplicationState *appState)
{
    if (SaveData_SaveStateMain(appState->playerData->saveData) == SAVE_RESULT_PROCEED_FINAL) {
        appState->currentScreenInstruction = appState->duringSaveInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_WaitForSaveComplete(GTSApplicationState *appState)
{
    if (SaveData_SaveStateMain(appState->playerData->saveData) == SAVE_RESULT_OK) {
        appState->currentScreenInstruction = appState->successfulSaveInstruction;
        GTSApplication_DestroyWaitDial(appState);
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_FullSave(GTSApplicationState *appState)
{
    SaveData_SetFullSaveRequired();
    SaveData_SaveStateInit(appState->playerData->saveData, 2);

    appState->currentScreenInstruction = GTS_NETHANDLER_WAIT_FOR_SUCCESSFUL_SAVE;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_WaitForSuccessfulSave(GTSApplicationState *appState)
{
    if (SaveData_SaveStateMain(appState->playerData->saveData) == SAVE_RESULT_OK) {
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_NONE);
        GTSApplication_DestroyWaitDial(appState);
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, appState->depositReturnError, TEXT_SPEED_FAST, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTS_NETHANDLER_WAIT_FOR_TEXT, GTS_NETHANDLER_RETURN_TO_MAIN_MENU);
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSNetworkHandler_FadeAndExit(GTSApplicationState *appState)
{
    GTSApplication_DestroyWaitDial(appState);
    NetworkIcon_Destroy();

    if (appState->fadeBothScreens == TRUE) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    } else {
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    }

    appState->currentScreenInstruction = GTS_NETHANDLER_PARSE_SCREEN_ARGUMENT;

    return GTS_LOOP_STATE_FINISH;
}

static int GTSNetworkHandler_WaitForText(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == 0) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

static void GTSNetworkHandler_MoveSelectedPokemonToGlobalTrade(GTSApplicationState *appState, int markAsListed)
{
    if (appState->selectedBoxId != MAX_PC_BOXES) {
        Pokemon *mon = Pokemon_New(HEAP_ID_62);

        Pokemon_FromBoxPokemon(PCBoxes_GetBoxMonAt(appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex), mon);
        GlobalTrade_CopyToStoredPokemon(appState->playerData->globalTrade, mon, appState->selectedBoxId);
        PCBoxes_InitBoxMonAt(appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex);
        Heap_Free(mon);
    } else {
        Pokemon *mon = Party_GetPokemonBySlotIndex(appState->playerData->party, appState->partySlotIndex);

        Pokemon_ClearBallCapsuleData(mon);
        GlobalTrade_CopyToStoredPokemon(appState->playerData->globalTrade, mon, appState->selectedBoxId);
        Party_RemovePokemonBySlotIndex(appState->playerData->party, appState->partySlotIndex);

        if (Party_HasSpecies(appState->playerData->party, SPECIES_CHATOT) == 0) {
            ChatotCry *chatotCry = SaveData_GetChatotCry(appState->playerData->saveData);
            ChatotCry_ResetStatus(chatotCry);
        }
    }

    if (markAsListed) {
        GlobalTrade_SetPokemonListed(appState->playerData->globalTrade, 1);
    }
}

static void GTSNetworkHandler_StorePokemonFromDepositing(GTSApplicationState *appState, Pokemon *mon, int boxIndex, int exchangedFromRemote)
{
    int unused = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

    SaveData_UpdateCatchRecords(appState->playerData->saveData, mon);
    boxIndex = MAX_PC_BOXES;

    if (Party_GetCurrentCount(appState->playerData->party) == MAX_PARTY_SIZE) {
        boxIndex = 0;
    }

    // this should always be true, except for when you're delisting your own pokemon
    if (exchangedFromRemote) {
        u8 friendship = BASE_FRIENDSHIP_VALUE;

        if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) == SPECIES_ARCEUS) {
            if (Pokemon_GetValue(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL) || ((Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == LocationNames_Text_HallOfOrigin) && (Pokemon_GetValue(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL) == FALSE))) {
                VarsFlags *varsFlags = SaveData_GetVarsFlags(appState->playerData->saveData);

                if (SystemVars_GetArceusEventState(varsFlags) == FALSE) {
                    SystemVars_SetArceusEventState(varsFlags, TRUE);
                }
            }
        }

        Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, &friendship);
        Pokemon_SetValue(mon, MON_DATA_GENDER, NULL);

        GTSNetworkHandler_SetTradedTimestamp(appState->playerData->globalTrade, GTS_TIMESTAMPS_TRADE_BY_DEPOSITING);
    }

    if (boxIndex == MAX_PC_BOXES) {
        Party_AddPokemon(appState->playerData->party, mon);
        int partyIndex = Party_GetCurrentCount(appState->playerData->party);

        appState->tradedPokemonLocation.boxIndex = MAX_PC_BOXES;
        appState->tradedPokemonLocation.index = partyIndex - 1;
    } else {
        int boxPosition = 0;

        PCBoxes_TryGetNextAvailableSpace(appState->playerData->pcBoxes, &boxIndex, &boxPosition);
        PCBoxes_TryStoreBoxMonInBox(appState->playerData->pcBoxes, boxIndex, Pokemon_GetBoxPokemon(mon));

        appState->tradedPokemonLocation.boxIndex = boxIndex;
        appState->tradedPokemonLocation.index = boxPosition;
    }

    GlobalTrade_SetPokemonListed(appState->playerData->globalTrade, 0);
}

static void GTSNetworkHandler_StorePokemonFromSearching(GTSApplicationState *appState, Pokemon *mon, int boxIndex)
{
    SaveData_UpdateCatchRecords(appState->playerData->saveData, mon);

    boxIndex = MAX_PC_BOXES;

    if (Party_GetCurrentCount(appState->playerData->party) == MAX_PARTY_SIZE) {
        boxIndex = 0;
    }

    if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) == SPECIES_ARCEUS) {
        if (Pokemon_GetValue(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL) || ((Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == LocationNames_Text_HallOfOrigin) && (Pokemon_GetValue(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL) == FALSE))) {
            VarsFlags *varsFlags = SaveData_GetVarsFlags(appState->playerData->saveData);

            if (SystemVars_GetArceusEventState(varsFlags) == FALSE) {
                SystemVars_SetArceusEventState(varsFlags, TRUE);
            }
        }
    }

    u8 friendship = BASE_FRIENDSHIP_VALUE;
    Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, &friendship);

    Pokemon_SetValue(mon, MON_DATA_GENDER, NULL);

    if (boxIndex == MAX_PC_BOXES) {
        Party_AddPokemon(appState->playerData->party, mon);
        int partyIndex = Party_GetCurrentCount(appState->playerData->party);

        appState->tradedPokemonLocation.boxIndex = MAX_PC_BOXES;
        appState->tradedPokemonLocation.index = partyIndex - 1;
    } else {
        int boxPosition = 0;

        PCBoxes_TryGetNextAvailableSpace(appState->playerData->pcBoxes, &boxIndex, &boxPosition);
        PCBoxes_TryStoreBoxMonInBox(appState->playerData->pcBoxes, boxIndex, Pokemon_GetBoxPokemon(mon));

        appState->tradedPokemonLocation.boxIndex = boxIndex;
        appState->tradedPokemonLocation.index = boxPosition;
    }

    GTSNetworkHandler_SetTradedTimestamp(appState->playerData->globalTrade, GTS_TIMESTAMPS_TRADE_BY_SEARCHING);
}

static void GTSNetworkHandler_SetTradedTimestamp(GlobalTrade *globalTrade, int type)
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

static void GTSNetworkHandler_FlagGeonetCommunicatedWith(WiFiHistory *wiFiHistory, GTSPokemonListing *listing)
{
    WiFiHistory_FlagGeonetCommunicatedWith(wiFiHistory, listing->trainerCountry, listing->trainerRegion, listing->trainerLanguage);
}

static void GTSNetworkHandler_LogTradeInJournal(JournalEntry *journalEntry, GTSPokemonListing *listing)
{
    void *journalEntryOnlineEvent;
    u16 nickname[MON_NAME_LEN + 1];
    Pokemon *mon = (Pokemon *)listing->pokemon.bytes;

    Pokemon_GetValue(mon, MON_DATA_NICKNAME, nickname);
    journalEntryOnlineEvent = JournalEntry_CreateEventGotPokemonGTS(listing->trainerNames, listing->trainerGender, nickname, Pokemon_GetGender(mon), 62);
    JournalEntry_SaveData(journalEntry, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
}

static int GTSNetworkHandler_HaveSpaceForPokemon(GTSApplicationState *appState, GTSPokemonListing *listing)
{
    if (Pokemon_IsHoldingMail((Pokemon *)listing->pokemon.bytes)
        && (Party_GetCurrentCount(appState->playerData->party) == MAX_PARTY_SIZE)) {
        return 2;
    }

    if ((appState->deferredBoxPokemonCount == (MAX_MONS_PER_BOX * MAX_PC_BOXES)) && (Party_GetCurrentCount(appState->playerData->party) == MAX_PARTY_SIZE)) {
        return 1;
    }

    return 0;
}

static void GTSNetworkHandler_SetSaveInstructions(GTSApplicationState *appState, int duringSaveInstruction, int successfulSaveInstruction)
{
    appState->duringSaveInstruction = duringSaveInstruction;
    appState->successfulSaveInstruction = successfulSaveInstruction;
}

static BOOL GTSNetworkHandler_IsListingDesynced(GTSApplicationState *appState)
{
    if (GlobalTrade_IsPokemonListed(appState->playerData->globalTrade) == FALSE) {
        if (appState->isPokemonListed) {
            return TRUE;
        }
    }

    return FALSE;
}
