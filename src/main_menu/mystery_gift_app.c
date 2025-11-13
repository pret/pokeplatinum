#include "main_menu/mystery_gift_app.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/narc.h"
#include "constants/savedata/savedata.h"
#include "generated/string_padding_mode.h"
#include "generated/text_banks.h"

#include "game_opening/const_ov77_021D742C.h"
#include "main_menu/distribution_cartridge.h"
#include "main_menu/main_menu_util.h"
#include "main_menu/ov97_0222D04C.h"
#include "main_menu/ov97_02232054.h"
#include "main_menu/ov97_02238534.h"
#include "main_menu/ov97_02238D74.h"
#include "main_menu/wonder_cards_app.h"
#include "savedata/save_table.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "communication_system.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "list_menu.h"
#include "main.h"
#include "math_util.h"
#include "message.h"
#include "message_util.h"
#include "mystery_gift.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "render_window.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_data.h"
#include "text.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

#include "res/text/bank/mystery_gift_menu.h"
#include "res/text/bank/unk_0695.h"

FS_EXTERN_OVERLAY(game_opening);
FS_EXTERN_OVERLAY(main_menu);

#define EVENT_LOCATION_MOVIES_START     3
#define EVENT_LOCATION_MOVIES_END       14
#define EVENT_LOCATION_POKEMON_EVENT_09 64
#define EVENT_LOCATION_POKEMON_EVENT_16 71

#define MG_BACKGROUND_TILESET_SIZE   (10 * 16)
#define MG_BACKGROUND_TILEMAP_WIDTH  (HW_LCD_WIDTH / 8)
#define MG_BACKGROUND_TILEMAP_HEIGHT (HW_LCD_HEIGHT / 8)

#define NUM_MYSTERY_GIFT_PARTICLES 80

#define HIDE_DOWNLOADING_ARROW -1

#define FOUND_GIFT_CARTRIDGE 19
#define FOUND_GIFT_WIFI      27

// Make sure to update the NUM_TILES constants below if you change the size of these windows.
#define MAIN_MG_MENU_MSG_BOX_WIDTH    27
#define MAIN_MG_MENU_MSG_BOX_HEIGHT   4
#define MAIN_MG_MENU_WIDTH            16
#define MAIN_MG_MENU_MAX_HEIGHT       (2 * NELEMS(sMysteryGiftMenuOptions))
#define RECEPTION_METHODS_MENU_WIDTH  16
#define RECEPTION_METHODS_MENU_HEIGHT (2 * NELEMS(sMysteryGiftReceiveOptions))
#define YES_NO_MENU_WIDTH             6
#define YES_NO_MENU_HEIGHT            4

// Integer literals in these macros are used where the actual dimensions of the window above don't match the number of tiles allocated to them
#define NUM_TILES_MAIN_MG_MENU_MSG_BOX   (26 * 6)
#define NUM_TILES_MAIN_MG_MENU           (16 * MAIN_MG_MENU_MAX_HEIGHT)
#define NUM_TILES_RECEPTION_METHODS_MENU (17 * RECEPTION_METHODS_MENU_HEIGHT)
#define NUM_TILES_YES_NO_MENU            (YES_NO_MENU_WIDTH * YES_NO_MENU_HEIGHT)

#define BASE_TILE_MESSAGE_BOX_FRAME      1
#define BASE_TILE_STANDARD_WINDOW_FRAME  (BASE_TILE_MESSAGE_BOX_FRAME + SCROLLING_MESSAGE_BOX_TILE_COUNT)
#define BASE_TILE_MAIN_APP_MENU_MSG_BOX  (BASE_TILE_STANDARD_WINDOW_FRAME + STANDARD_WINDOW_TILE_COUNT)
#define BASE_TILE_MAIN_APP_MENU          (BASE_TILE_MAIN_APP_MENU_MSG_BOX + NUM_TILES_MAIN_MG_MENU_MSG_BOX)
#define BASE_TILE_RECEPTION_METHODS_MENU (BASE_TILE_MAIN_APP_MENU + NUM_TILES_MAIN_MG_MENU)
#define BASE_TILE_YES_NO_MENU            (BASE_TILE_RECEPTION_METHODS_MENU + NUM_TILES_RECEPTION_METHODS_MENU)
#define BASE_TILE_WONDERCARD_TITLE       (BASE_TILE_YES_NO_MENU + NUM_TILES_YES_NO_MENU)
#define BASE_TILE_WIFI_COMM_ERROR_WINDOW 100

enum MysteryGiftAnimBrightnessFadeDirection {
    FADE_TOWARDS_NORMAL,
    FADE_TOWARDS_BLACK,
    FADE_TOWARDS_WHITE
};

enum MysteryGiftMenuOption {
    MG_MENU_RECEIVE_GIFT,
    MG_MENU_CHECK_CARD,
    MG_MENU_EXIT,
};

enum MysteryGiftReceptionMethod {
    RECEPTION_METHOD_NONE = 0,
    RECEIVE_FROM_FRIEND,
    RECEIVE_FROM_GBA_CARTRIDGE,
    RECEIVE_FROM_LOCAL_WIRELESS,
    RECEIVE_FROM_WIFI,
    NUM_RECEPTION_METHODS = RECEIVE_FROM_WIFI,
};

enum MysteryGiftCanReceiveStatus {
    MYSTERY_GIFT_CAN_RECEIVE,
    MYSTERY_GIFT_CANT_RECEIVE_WRONG_VERSION,
    MYSTERY_GIFT_CANT_RECEIVE_ALREADY_RECEIVED,
    MYSTERY_GIFT_CANT_RECEIVE_NO_PGT_SLOT,
    MYSTERY_GIFT_CANT_RECEIVE_NO_WC_SLOT,
    MYSTERY_GIFT_CAN_RECEIVE_FROM_FRIEND,
};

enum WirelessDistributionSearchState {
    WIRELESS_DISTRIBUTION_STATE_INIT = 37,
    WIRELESS_DISTRIBUTION_STATE_38,
    WIRELESS_DISTRIBUTION_STATE_39,
    WIRELESS_DISTRIBUTION_STATE_40,
    WIRELESS_DISTRIBUTION_STATE_41,
    WIRELESS_DISTRIBUTION_STATE_42,
    WIRELESS_DISTRIBUTION_STATE_43,
    WIRELESS_DISTRIBUTION_STATE_44,
    WIRELESS_DISTRIBUTION_STATE_45,
    WIRELESS_DISTRIBUTION_STATE_46,
    WIRELESS_DISTRIBUTION_STATE_47,
    WIRELESS_DISTRIBUTION_STATE_48,
};

enum MysteryGiftAnimationStage {
    MG_ANIMATION_STAGE_SETUP = 0,
    MG_ANIMATION_STAGE_FADE_BG_BLACK,
    MG_ANIMATION_STAGE_PARTICLES_GATHERING,
    MG_ANIMATION_STAGE_SETUP_IMPLOSION,
    MG_ANIMATION_STAGE_IMPLODE,
    MG_ANIMATION_STAGE_FLASH_WHITE,
    MG_ANIMATION_STAGE_MOVE_TO_BOTTOM_SCREEN,
    MG_ANIMATION_STAGE_SPIRAL_OUT,
    MG_ANIMATION_STAGE_FADE_BG_WHITE,
    MG_ANIMATION_STAGE_RETURN_BG_NORMAL,
    MG_ANIMATION_STAGE_DONE = 255,
};

enum ParticleAnimationType {
    PARTICLE_ANIMATION_TYPE_ORBIT_0 = 0,
    PARTICLE_ANIMATION_TYPE_ORBIT_1,
    PARTICLE_ANIMATION_TYPE_ORBIT_2,
    PARTICLE_ANIMATION_TYPE_ORBIT_3,

    PARTICLE_ANIMATION_TYPE_SPIRAL_OUT_0 = 4,
    PARTICLE_ANIMATION_TYPE_SPIRAL_OUT_1,

    PARTICLE_ANIMATION_TYPE_RUSH_TO_CENTER = 255,
};

typedef enum MysteryGiftAppState (*StateTransitionFuncPtr)(ApplicationManager *);

typedef struct StateTransitionMenuOptionTemplate {
    int textEntryId;
    StateTransitionFuncPtr stateTransitionFuncPtr;
} StateTransitionMenuOptionTemplate;

typedef struct MysteryGiftParticle {
    int unused_00;
    int timeSinceCenterReached;
    BOOL animationDone;
    Sprite *sprite;
    VecFx32 animationCenter;
    fx32 speedToCenter;
    fx32 centerZoneRadius;
    int inFinalAnimationPhase;
    int angleAroundCenter;
    int animationType;
    int apparitionDelay;
    int movementAngle;
    int speed;
    int spiralOutAcceleration;
    int horizontalSpeed;
    int verticalSpeed;
    SysTask *animationSysTask;
} MysteryGiftParticle;

typedef struct MysteryGiftAnimationManager {
    int animationStage;
    int unused_04;
    s8 blendBrightness;
    MainMenuSpriteManager *spriteMan;
    SpriteResourcesHeader spriteResourcesHeaders[DS_SCREEN_MAX];
    SpriteResource *spriteResources[DS_SCREEN_MAX][SPRITE_RESOURCE_MAX];
    MysteryGiftParticle topScreenSmallParticles[NUM_MYSTERY_GIFT_PARTICLES];
    MysteryGiftParticle bottomScreenSmallParticles[NUM_MYSTERY_GIFT_PARTICLES];
    MysteryGiftParticle topScreenLargeParticle;
    MysteryGiftParticle bottomScreenLargeParticle;
    enum MysteryGiftAnimationStatus *animationStatusPtr;
} MysteryGiftAnimationManager;

static enum MysteryGiftAppState ShowMysteryGiftReceptionMethodsMenu(ApplicationManager *appMan);
static enum MysteryGiftAppState ExitToWonderCardsApp(ApplicationManager *appMan);
static enum MysteryGiftAppState ExitToTitleScreen(ApplicationManager *appMan);
static enum MysteryGiftAppState AskConfirmWireless_FriendOrGBA(ApplicationManager *appMan);
static enum MysteryGiftAppState AskConfirmWireless_WirelessDistribution(ApplicationManager *appMan);
static enum MysteryGiftAppState AskConfirmConnectToWFC(ApplicationManager *appMan);
static enum MysteryGiftAppState ReturnToMysteryGiftMenu(ApplicationManager *appMan);
static enum MysteryGiftAppState SetupFriendOrGBADistribution(ApplicationManager *appMan);
static enum MysteryGiftAppState ReturnToReceptionMethodChoiceAfterRefusingWireless(ApplicationManager *appMan);
static enum MysteryGiftAppState SendGiftRequestIfCanReceive(ApplicationManager *appMan);
static enum MysteryGiftAppState ReturnToReceptionMethodChoiceAfterRefusingGift(ApplicationManager *appMan);
static enum MysteryGiftAppState InitWFCConnection(ApplicationManager *appMan);
static enum MysteryGiftAppState StartSearchLocalWirelessDistribution(ApplicationManager *appMan);
static enum MysteryGiftAppState CheckPlayerCanReceive_WirelessDistribution(ApplicationManager *appMan);
static enum MysteryGiftAppState DisconnectLocalWireless(ApplicationManager *appMan);

static void MakeStateChangeListMenuFromEntryTemplates(ApplicationManager *appMan, StateTransitionMenuOptionTemplate *entries, int numEntries, Window *window, u32 msgBoxEntryId);
static void ShowMysteryGiftMenuOptions(ApplicationManager *appMan, int windowBaseTile, u32 textEntryId);
static void ShowMessageBox(ApplicationManager *appMan, Window *window, u32 entryId);
static void ov97_022302D4(void);
static void ov97_02230224(MysteryGiftAppData *appData);
static void UpdateLocalWirelessDistributionState(MysteryGiftAppData *appData);
static int ShowMessageBoxIntoStateTransition(ApplicationManager *appMan, Window *window, int textEntryId, enum MysteryGiftAppState nextState);
static void RunParticleAnimationFrame(SysTask *sysTask, MysteryGiftParticle *particle);
static void MysteryGiftApp_SetApplicationManager(ApplicationManager *appMan);

static ApplicationManager *sApplicationManager;

static StateTransitionMenuOptionTemplate sMysteryGiftMenuOptions[] = {
    [MG_MENU_RECEIVE_GIFT] = { MysteryGiftMenu_Text_ReceiveGift, ShowMysteryGiftReceptionMethodsMenu },
    [MG_MENU_CHECK_CARD] = { MysteryGiftMenu_Text_CheckCard, ExitToWonderCardsApp },
    [MG_MENU_EXIT] = { MysteryGiftMenu_Text_Exit_MysteryGift, ExitToTitleScreen }
};

static StateTransitionMenuOptionTemplate sMysteryGiftReceiveOptions[] = {
    { MysteryGiftMenu_Text_GetFromFriend, AskConfirmWireless_FriendOrGBA },
    { MysteryGiftMenu_Text_GetViaWireless, AskConfirmWireless_WirelessDistribution },
    { MysteryGiftMenu_Text_GetViaWFC, AskConfirmConnectToWFC },
    { MysteryGiftMenu_Text_Cancel_MysteryGift, ReturnToMysteryGiftMenu }
};

static StateTransitionMenuOptionTemplate sStartWirelessCommsOptions_FriendOrGBA[] = {
    { MysteryGiftMenu_Text_Yes_MysteryGift, SetupFriendOrGBADistribution },
    { MysteryGiftMenu_Text_No_MysteryGift, ReturnToReceptionMethodChoiceAfterRefusingWireless }
};

static StateTransitionMenuOptionTemplate sConfirmReceiveGiftOptions[] = {
    { MysteryGiftMenu_Text_Yes_MysteryGift, SendGiftRequestIfCanReceive },
    { MysteryGiftMenu_Text_No_MysteryGift, ReturnToReceptionMethodChoiceAfterRefusingGift }
};

static StateTransitionMenuOptionTemplate sConfirmConnectToWFCOptions[] = {
    { MysteryGiftMenu_Text_Yes_MysteryGift, InitWFCConnection },
    { MysteryGiftMenu_Text_No_MysteryGift, ReturnToReceptionMethodChoiceAfterRefusingWireless }
};

// Gets optimized out if declared static.
StateTransitionMenuOptionTemplate sUnusedYesNoOptions[] = {
    { MysteryGiftMenu_Text_Yes_MysteryGift, SendGiftRequestIfCanReceive },
    { MysteryGiftMenu_Text_No_MysteryGift, NULL }
};

static StateTransitionMenuOptionTemplate sStartWirelessCommsOption_WirelessDistribution[] = {
    { MysteryGiftMenu_Text_Yes_MysteryGift, StartSearchLocalWirelessDistribution },
    { MysteryGiftMenu_Text_No_MysteryGift, ReturnToReceptionMethodChoiceAfterRefusingWireless }
};

static StateTransitionMenuOptionTemplate sConfirmReceiveGiftOptions_WirelessDistribution[] = {
    { MysteryGiftMenu_Text_Yes_MysteryGift, CheckPlayerCanReceive_WirelessDistribution },
    { MysteryGiftMenu_Text_No_MysteryGift, DisconnectLocalWireless }
};

static ListMenuTemplate sMysteryGiftAppListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = MainMenuUtil_ListMenuCursorCB,
    .printCallback = NULL,
    .window = NULL,
    .count = 0,
    .maxDisplay = 3,
    .headerXOffset = 0,
    .textXOffset = 12,
    .cursorXOffset = 0,
    .yOffset = 0,
    .textColorFg = 0x1,
    .textColorBg = 0xF,
    .textColorShadow = 0x2,
    .letterSpacing = 0,
    .lineSpacing = 0x10,
    .pagerMode = PAGER_MODE_LEFT_RIGHT_PAD,
    .fontID = FONT_SYSTEM,
    .cursorType = 0x0
};

static int sWirelessDistribState;
static int Unk_ov97_0223F1B4;
static void *Unk_ov97_0223F1AC;

static void ToggleWaitDial(MysteryGiftAppData *appData, BOOL show)
{
    if (show == TRUE) {
        if (appData->waitDial == NULL) {
            appData->waitDial = Window_AddWaitDial(&appData->messageBox, BASE_TILE_MESSAGE_BOX_FRAME);
        }
    } else {
        if (appData->waitDial) {
            DestroyWaitDial(appData->waitDial);
        }

        appData->waitDial = NULL;
    }
}

void MysteryGiftApp_ToggleWaitDial(MysteryGiftAppData *appData, BOOL show)
{
    ToggleWaitDial(appData, show);
}

static void FreeApplicationResources(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    MainMenuUtil_FreeSprites();

    if (appData->listMenuOptions) {
        StringList_Free(appData->listMenuOptions);
    }

    if (appData->listMenu) {
        ListMenu_Free(appData->listMenu, NULL, NULL);
    }

    Window_ClearAndCopyToVRAM(&appData->messageBox);
    Window_Remove(&appData->messageBox);

    if (Window_IsInUse(&appData->wonderCardTitleWindow)) {
        Window_ClearAndCopyToVRAM(&appData->wonderCardTitleWindow);
        Window_Remove(&appData->wonderCardTitleWindow);
    }

    for (int i = 0; i < MG_APP_NUM_MENU_WINDOWS; i++) {
        if (appData->menuWindows[i].bgConfig) {
            Window_ClearAndCopyToVRAM(&appData->menuWindows[i]);
            Window_Remove(&appData->menuWindows[i]);
        }
    }

    Bg_FreeTilemapBuffer(appData->bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(appData->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(appData->bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(appData->bgConfig, BG_LAYER_SUB_1);
    Heap_Free(appData->bgConfig);
}

static void LoadDownloadArrowSpriteResources(MysteryGiftAppData *appData)
{
    MainMenuUtil_InitCharPlttTransferBuffers();
    MainMenuUtil_InitSpriteLoader();
    MainMenuUtil_LoadSprite(NARC_INDEX_GRAPHIC__MYSTERY, 10, 7, 9, 8, DS_SCREEN_MAIN);
}

static void SetDownloadArrowAnim(MysteryGiftAppData *appData, int animID)
{
    if (animID != HIDE_DOWNLOADING_ARROW) {
        appData->dowloadArrowSprite = MainMenuUtil_InitSprite(DS_SCREEN_MAIN, appData->dowloadArrowSprite, HW_LCD_WIDTH / 2, 100, animID);
    } else {
        Sprite_SetDrawFlag(appData->dowloadArrowSprite, FALSE);
    }
}

static void EraseStdFrameIfInUse(Window *window, u8 skipTransfer)
{
    if (Window_IsInUse(window) == TRUE) {
        Window_EraseStandardFrame(window, skipTransfer);
    }
}

static void EraseMsgBoxIfInUse(Window *window, u8 skipTransfer)
{
    if (Window_IsInUse(window) == TRUE) {
        Window_EraseMessageBox(window, skipTransfer);
    }
}

static enum MysteryGiftAppState SetupFriendOrGBADistribution(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    if (appData->receptionMethod != RECEIVE_FROM_GBA_CARTRIDGE) {
        ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_SearchingForGift);
    }

    EraseStdFrameIfInUse(&appData->menuWindows[2], FALSE);

    if (appData->receptionMethod != RECEIVE_FROM_GBA_CARTRIDGE) {
        ov97_0222D200(appData, 15);
        appData->wirelessCommsTimeout = (60 * 120);
        sub_02039734();
        ToggleWaitDial(appData, TRUE);
        return MG_APP_STATE_SEARCH_FOR_FRIEND_GIFT;
    } else {
        appData->foundGiftType = FOUND_GIFT_CARTRIDGE;
        return MG_APP_STATE_FOUND_WIFI_OR_GBA_GIFT;
    }
}

static enum MysteryGiftAppState SendGiftRequestIfCanReceive(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    if (appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_WRONG_VERSION) {
        return MG_APP_STATE_FROM_FRIEND_OR_CANT_RECEIVE;
    }

    if (appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_NO_PGT_SLOT
        || appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_NO_WC_SLOT
        || appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_ALREADY_RECEIVED) {
        return MG_APP_STATE_FROM_FRIEND_OR_CANT_RECEIVE;
    }

    if (appData->canReceiveGiftStatus == MYSTERY_GIFT_CAN_RECEIVE_FROM_FRIEND) {
        return MG_APP_STATE_FROM_FRIEND_OR_CANT_RECEIVE;
    }

    if (appData->receptionMethod == RECEIVE_FROM_FRIEND) {
        ov97_0222D234(appData->unk_438);
    }

    ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_RequestSentPleaseWait);
    EraseStdFrameIfInUse(&appData->menuWindows[2], FALSE);

    if (appData->receptionMethod == RECEIVE_FROM_FRIEND) {
        SetDownloadArrowAnim(appData, 0);
        ToggleWaitDial(appData, TRUE);
    }

    if (appData->receptionMethod == RECEIVE_FROM_FRIEND) {
        CommTiming_StartSync(0xAB);
        return MG_APP_STATE_CONNECT_WITH_FRIEND;
    } else {
        return MG_APP_STATE_GOTO_SHOW_RECEIVING_GIFT_MSG;
    }
}

static WonderCard *GetReceivedWonderCard(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);
    WonderCard *wonderCard = &appData->eventData.wonderCard;
    MysteryGiftEventHeader *eventHeader = &appData->eventData.header;
    MysteryGiftEventData *eventData;

    switch (appData->receptionMethod) {
    case RECEIVE_FROM_FRIEND:
        memcpy(wonderCard, ov97_0222D2B8(0, NULL, 0), sizeof(WonderCard));
        MainMenuUtil_DecryptReceivedWonderCard(&appData->eventData, &appData->eventData.wonderCard, HEAP_ID_MYSTERY_GIFT_APP);
        break;
    case RECEIVE_FROM_LOCAL_WIRELESS:
        eventData = (MysteryGiftEventData *)appData->wirelessDistributionBuffer;
        memcpy(wonderCard, &eventData->wonderCard, sizeof(WonderCard));
        memcpy(eventHeader, &eventData->header, sizeof(MysteryGiftEventHeader));
        break;
    }

    return wonderCard;
}

static BOOL ShouldPlayAnimation(WonderCard *wonderCard)
{
    switch (wonderCard->pgt.type) {
    case MYST_GIFT_UNKNOWN:
        return TRUE;
    case MYST_GIFT_ITEM:
        if (wonderCard->pgt.data.itemGiftData.shouldPlayAnimation == TRUE) {
            return TRUE;
        }
        break;
    case MYST_GIFT_POKEMON:
    case MYST_GIFT_EGG: {
        Pokemon *pokemon = &wonderCard->pgt.data.pokemonGiftData.pokemon;
        int metLocation = Pokemon_GetValue(pokemon, MON_DATA_EGG_LOCATION, NULL);

        if ((metLocation >= EVENT_LOCATION_MOVIES_START && metLocation <= EVENT_LOCATION_MOVIES_END)
            || (metLocation >= EVENT_LOCATION_POKEMON_EVENT_09 && metLocation <= EVENT_LOCATION_POKEMON_EVENT_16)) {
            return TRUE;
        }
    } break;
    }

    return FALSE;
}

static void MainCallbackSaveGame(MysteryGiftAppData *appData)
{
    if (appData->cancelSave == TRUE) {
        appData->mainCallback = NULL;
    }

    int saveStatus = MainMenuUtil_SaveState();

    if (saveStatus == SAVE_RESULT_OK || saveStatus == SAVE_RESULT_CORRUPT) {
        if (ShouldPlayAnimation(&appData->eventData.wonderCard) != TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_SAVE);
        }

        appData->mainCallback = NULL;
    }
}

static void SaveReceivedGift(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);
    MysteryGiftEventHeader *metadata = &appData->eventData.header;
    WonderCard *wonderCard = &appData->eventData.wonderCard;
    SaveData *saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;

    BOOL saveWonderCard;
    if (metadata->hasWonderCard == FALSE) {
        saveWonderCard = FALSE;
    } else {
        RTCDate receivedDate;

        saveWonderCard = TRUE;
        wonderCard->timesShared = 0;

        if (metadata->shareable == FALSE) {
            wonderCard->sharesLeft = 0;
        }

        GetCurrentDate(&receivedDate);
        wonderCard->receivedDate = RTC_ConvertDateToDay(&receivedDate);
    }

    MysteryGift *mysteryGift = SaveData_GetMysteryGift(saveData);
    MysteryGift_SetWcIDReceived(mysteryGift, metadata->id);

    BOOL saved;
    if (saveWonderCard == FALSE) {
        saved = MysteryGift_TrySavePgt(mysteryGift, &wonderCard->pgt, 3);
    } else {
        saved = MysteryGift_TrySaveWondercard(mysteryGift, wonderCard);
    }

    MainMenuUtil_InitSaving(saveData);

    appData->cancelSave = FALSE;
    appData->mainCallback = MainCallbackSaveGame;
}

static void ShowConfirmReceiveGiftMenu(ApplicationManager *appMan, BOOL hideMsgBox)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    int msgBoxTextId = !hideMsgBox ? MysteryGiftMenu_Text_ReceiveThisGift : -1;

    Window *window = &appData->menuWindows[2];

    if (window->bgConfig == NULL) {
        Window_Add(appData->bgConfig, window, BG_LAYER_MAIN_0, 23, 10, 6, TEXT_LINES_TILES(2), PLTT_0, BASE_TILE_YES_NO_MENU);
    }

    Window_DrawStandardFrame(window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_3);
    MakeStateChangeListMenuFromEntryTemplates(appMan, sConfirmReceiveGiftOptions, NELEMS(sConfirmReceiveGiftOptions), window, msgBoxTextId);
}

static enum MysteryGiftAppState ReturnToReceptionMethodChoiceAfterRefusingWireless(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    EraseStdFrameIfInUse(&appData->menuWindows[2], FALSE);
    EraseStdFrameIfInUse(&appData->wonderCardTitleWindow, FALSE);

    if (appData->receptionMethod == RECEIVE_FROM_FRIEND) {
        ToggleWaitDial(appData, FALSE);
    }

    NetworkIcon_Destroy();

    return ShowMysteryGiftReceptionMethodsMenu(appMan);
}

static enum MysteryGiftAppState AskConfirmWireless_FriendOrGBA(ApplicationManager *appMan)
{
    Window *window;
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    if (DistributionCartridge_ReadLength()) {
        appData->receptionMethod = RECEIVE_FROM_GBA_CARTRIDGE;
    } else {
        appData->receptionMethod = RECEIVE_FROM_FRIEND;
    }

    EraseStdFrameIfInUse(&appData->menuWindows[1], FALSE);

    window = &appData->menuWindows[2];

    if (window->bgConfig == NULL) {
        Window_Add(appData->bgConfig, window, BG_LAYER_MAIN_0, 23, 10, 6, TEXT_LINES_TILES(2), PLTT_0, BASE_TILE_YES_NO_MENU);
    }

    Window_DrawStandardFrame(window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_3);
    MakeStateChangeListMenuFromEntryTemplates(appMan, sStartWirelessCommsOptions_FriendOrGBA, NELEMS(sStartWirelessCommsOptions_FriendOrGBA), window, MysteryGiftMenu_Text_WirelessCommunicationsWillBeLaunched);

    return MG_APP_STATE_WAIT_CONFIRM_WIRELESS_COMMS;
}

static enum MysteryGiftAppState AskConfirmConnectToWFC(ApplicationManager *appMan)
{
    Window *window;
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    appData->receptionMethod = RECEIVE_FROM_WIFI;

    EraseStdFrameIfInUse(&appData->menuWindows[1], FALSE);

    window = &appData->menuWindows[2];

    if (window->bgConfig == NULL) {
        Window_Add(appData->bgConfig, window, BG_LAYER_MAIN_0, 23, 10, 6, TEXT_LINES_TILES(2), PLTT_0, BASE_TILE_YES_NO_MENU);
    }

    Window_DrawStandardFrame(window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_3);
    MakeStateChangeListMenuFromEntryTemplates(appMan, sConfirmConnectToWFCOptions, NELEMS(sConfirmConnectToWFCOptions), window, MysteryGiftMenu_Text_ConnectToWFC);

    return MG_APP_STATE_WAIT_CONFIRM_WIRELESS_COMMS;
}

static enum MysteryGiftAppState AskConfirmWireless_WirelessDistribution(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    appData->receptionMethod = RECEIVE_FROM_LOCAL_WIRELESS;

    EraseStdFrameIfInUse(&appData->menuWindows[1], FALSE);

    Window *window = &appData->menuWindows[2];

    if (window->bgConfig == NULL) {
        Window_Add(appData->bgConfig, window, BG_LAYER_MAIN_0, 23, 10, 6, TEXT_LINES_TILES(2), PLTT_0, BASE_TILE_YES_NO_MENU);
    }

    Window_DrawStandardFrame(window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_3);
    MakeStateChangeListMenuFromEntryTemplates(appMan, sStartWirelessCommsOption_WirelessDistribution, NELEMS(sStartWirelessCommsOption_WirelessDistribution), window, MysteryGiftMenu_Text_WirelessCommunicationsWillBeLaunched2);

    return MG_APP_STATE_WAIT_CONFIRM_WIRELESS_COMMS;
}

static void ShowConfirmReceiveGiftMenu_LocalWireless(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    Window *window = &appData->menuWindows[2];

    if (window->bgConfig == NULL) {
        Window_Add(appData->bgConfig, window, BG_LAYER_MAIN_0, 23, 10, 6, TEXT_LINES_TILES(2), PLTT_0, BASE_TILE_YES_NO_MENU);
    }

    Window_DrawStandardFrame(window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_3);
    MakeStateChangeListMenuFromEntryTemplates(appMan, sConfirmReceiveGiftOptions_WirelessDistribution, NELEMS(sConfirmReceiveGiftOptions_WirelessDistribution), window, MysteryGiftMenu_Text_ReceiveThisGift);
}

static enum MysteryGiftAppState ReturnToReceptionMethodChoiceAfterRefusingGift(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    EraseStdFrameIfInUse(&appData->menuWindows[2], FALSE);
    EraseStdFrameIfInUse(&appData->wonderCardTitleWindow, FALSE);

    NetworkIcon_Destroy();

    if (appData->receptionMethod == RECEIVE_FROM_FRIEND) {
        ov97_0222D2DC();
    }

    return ShowMysteryGiftReceptionMethodsMenu(appMan);
}

static enum MysteryGiftAppState StartSearchLocalWirelessDistribution(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_SearchingForGift);
    EraseStdFrameIfInUse(&appData->menuWindows[2], FALSE);
    ToggleWaitDial(appData, TRUE);

    sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_INIT;
    return MG_APP_STATE_SEARCH_FOR_LOCAL_WIRELESS_EVENT;
}

static enum MysteryGiftAppState CheckPlayerCanReceive_WirelessDistribution(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    if (appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_NO_PGT_SLOT
        || appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_NO_WC_SLOT
        || appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_ALREADY_RECEIVED) {
        return MG_APP_STATE_FROM_FRIEND_OR_CANT_RECEIVE;
    }

    EraseStdFrameIfInUse(&appData->menuWindows[2], FALSE);
    ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_ReceivingGiftDontTurnOff);

    return MG_APP_STATE_RECEIVE_FROM_LOCAL_WIRELESS;
}

static enum MysteryGiftAppState DisconnectLocalWireless(ApplicationManager *appMan)
{
    if (sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_40
        || sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_41
        || sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_48) {
        if (ov97_022389C8()) {
            sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_43;
        }
    }

    return MG_APP_STATE_DISCONNECT_FROM_LOCAL_WIRELESS;
}

static enum MysteryGiftAppState InitWFCConnection(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_SearchingForGift);
    ToggleWaitDial(appData, TRUE);
    EraseStdFrameIfInUse(&appData->menuWindows[2], FALSE);
    ToggleWaitDial(appData, TRUE);

    appData->nasAuthState = 4096;
    appData->dwcCallback = NULL;

    return MG_APP_STATE_SEARCH_FOR_WIFI_EVENT;
}

static enum MysteryGiftAppState ReturnToMysteryGiftMenu(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    EraseStdFrameIfInUse(&appData->menuWindows[1], FALSE);
    ShowMysteryGiftMenuOptions(appMan, BASE_TILE_MAIN_APP_MENU, MysteryGiftMenu_Text_Welcome);

    return MG_APP_STATE_WAIT_MAIN_MENU_INPUT;
}

static enum MysteryGiftAppState ShowMysteryGiftReceptionMethodsMenu(ApplicationManager *appMan)
{
    // Forward declaration required to match
    Window *window;
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);
    MysteryGift *mysteryGift = SaveData_GetMysteryGift(appData->saveData);

    if (appData->unk_62C == 30) {
        appData->unk_630 = 1;
        ov97_02230224(appData);
    }

    EraseStdFrameIfInUse(&appData->menuWindows[0], FALSE);
    window = &appData->menuWindows[1];

    if (window->bgConfig == NULL) {
        Window_Add(appData->bgConfig, window, BG_LAYER_MAIN_0, 15, 9, 16, TEXT_LINES_TILES(NUM_RECEPTION_METHODS), PLTT_0, BASE_TILE_RECEPTION_METHODS_MENU);
    }

    Window_DrawStandardFrame(window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_3);
    MakeStateChangeListMenuFromEntryTemplates(appMan, sMysteryGiftReceiveOptions, NELEMS(sMysteryGiftReceiveOptions), window, MysteryGiftMenu_Text_ChooseHowToReceiveGift);

    return MG_APP_STATE_WAIT_RECEPTION_METHOD_CHOICE;
}

static enum MysteryGiftAppState ExitToWonderCardsApp(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    if (appData->unk_62C == 30) {
        appData->unk_630 = 1;
        ov97_02230224(appData);
    }

    MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, MG_APP_STATE_EXIT_TO_WONDER_CARDS_APP, (int *)appData->statePtr, MG_APP_STATE_WAIT_SCREEN_TRANSITION);
    return MG_APP_KEEP_PREVIOUS_STATE;
}

static enum MysteryGiftAppState ExitToTitleScreen(ApplicationManager *appMan)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    if (appData->unk_62C == 30) {
        appData->unk_630 = 1;
    }

    MainMenuUtil_SetFadeToWhite(TRUE);
    MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, MG_APP_STATE_EXIT_TO_TITLE_SCREEN, (int *)appData->statePtr, MG_APP_STATE_WAIT_SCREEN_TRANSITION);

    return MG_APP_KEEP_PREVIOUS_STATE;
}

static void InitBgLayer(BgConfig *bgConfig, int bgLayer, u32 screenBase, u32 charBase)
{
    BgTemplate bgTemplate = {
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
        .mosaic = FALSE
    };

    bgTemplate.screenBase = screenBase / 0x800;
    bgTemplate.charBase = charBase / 0x4000;

    Bg_InitFromTemplate(bgConfig, bgLayer, &bgTemplate, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, bgLayer);
}

static void SetupGraphics(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    SetAllGraphicsModes(&graphicsModes);

    InitBgLayer(bgConfig, BG_LAYER_MAIN_0, GX_BG_SCRBASE_0xf000 * 0x800, GX_BG_CHARBASE_0x00000 * 0x4000);
    InitBgLayer(bgConfig, BG_LAYER_MAIN_1, GX_BG_SCRBASE_0xf800 * 0x800, GX_BG_CHARBASE_0x08000 * 0x4000);
    InitBgLayer(bgConfig, BG_LAYER_SUB_0, GX_BG_SCRBASE_0x3800 * 0x800, GX_BG_CHARBASE_0x00000 * 0x4000);
    InitBgLayer(bgConfig, BG_LAYER_SUB_1, GX_BG_SCRBASE_0x7800 * 0x800, GX_BG_CHARBASE_0x04000 * 0x4000);
}

static void LoadBottomScreenBg(BgConfig *bgConfig)
{
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, 0, PAL_LOAD_SUB_BG, PLTT_OFFSET(8), PALETTE_SIZE_BYTES, HEAP_ID_MYSTERY_GIFT_APP);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, 1, bgConfig, BG_LAYER_SUB_1, 0, MG_BACKGROUND_TILESET_SIZE * TILE_SIZE_4BPP, TRUE, HEAP_ID_MYSTERY_GIFT_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, 2, bgConfig, BG_LAYER_SUB_1, 0, MG_BACKGROUND_TILEMAP_WIDTH * MG_BACKGROUND_TILEMAP_HEIGHT * 2, TRUE, HEAP_ID_MYSTERY_GIFT_APP);
    Bg_ChangeTilemapRectPalette(bgConfig, BG_LAYER_SUB_1, 0, 0, MG_BACKGROUND_TILEMAP_WIDTH, MG_BACKGROUND_TILEMAP_HEIGHT, PLTT_8);
    Bg_CopyTilemapBufferToVRAM(bgConfig, BG_LAYER_SUB_1);
}

static void LoadBothScreensBg(BgConfig *bgConfig)
{
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, 0, PAL_LOAD_MAIN_BG, PLTT_OFFSET(8), PALETTE_SIZE_BYTES, HEAP_ID_MYSTERY_GIFT_APP);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, 1, bgConfig, BG_LAYER_MAIN_1, 0, MG_BACKGROUND_TILESET_SIZE * TILE_SIZE_4BPP, TRUE, HEAP_ID_MYSTERY_GIFT_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, 2, bgConfig, BG_LAYER_MAIN_1, 0, MG_BACKGROUND_TILEMAP_WIDTH * MG_BACKGROUND_TILEMAP_HEIGHT * 2, TRUE, HEAP_ID_MYSTERY_GIFT_APP);
    Bg_ChangeTilemapRectPalette(bgConfig, BG_LAYER_MAIN_1, 0, 0, MG_BACKGROUND_TILEMAP_WIDTH, MG_BACKGROUND_TILEMAP_HEIGHT, PLTT_8);
    Bg_CopyTilemapBufferToVRAM(bgConfig, BG_LAYER_MAIN_1);

    LoadBottomScreenBg(bgConfig);
}

static void MakeStateChangeListMenuFromEntryTemplates(ApplicationManager *appMan, StateTransitionMenuOptionTemplate *entries, int numEntries, Window *window, u32 msgBoxEntryId)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    if (appData->listMenuOptions) {
        StringList_Free(appData->listMenuOptions);
    }

    appData->listMenuOptions = StringList_New(numEntries, HEAP_ID_MYSTERY_GIFT_APP);
    appData->msgLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MYSTERY_GIFT_MENU, HEAP_ID_MYSTERY_GIFT_APP);

    for (int i = 0; i < numEntries; i++) {
        StringList_AddFromMessageBank(appData->listMenuOptions, appData->msgLoader, entries[i].textEntryId, (u32)entries[i].stateTransitionFuncPtr);
    }

    MessageLoader_Free(appData->msgLoader);

    ListMenuTemplate listMenuTemplate = sMysteryGiftAppListMenuTemplate;

    listMenuTemplate.choices = appData->listMenuOptions;
    listMenuTemplate.count = listMenuTemplate.maxDisplay = numEntries;
    listMenuTemplate.window = window;

    if (appData->listMenu) {
        ListMenu_Free(appData->listMenu, NULL, NULL);
    }

    appData->listMenu = ListMenu_New(&listMenuTemplate, 0, 0, HEAP_ID_MYSTERY_GIFT_APP);

    if (msgBoxEntryId != -1) {
        ShowMessageBox(appMan, &appData->messageBox, msgBoxEntryId);
    }
}

static void ShowMysteryGiftMenuOptions(ApplicationManager *appMan, int windowBaseTile, u32 textEntryId)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);
    StateTransitionMenuOptionTemplate entries[4];
    int numEntries = 0;
    MysteryGift *mysteryGift = SaveData_GetMysteryGift(appData->saveData);

    Window *window = &appData->menuWindows[0];
    entries[numEntries++] = sMysteryGiftMenuOptions[MG_MENU_RECEIVE_GIFT];

    if (MysteryGift_CheckHasWonderCards(mysteryGift)) {
        entries[numEntries++] = sMysteryGiftMenuOptions[MG_MENU_CHECK_CARD];
    }

    entries[numEntries++] = sMysteryGiftMenuOptions[MG_MENU_EXIT];

    if (window->bgConfig == NULL) {
        Window_Add(appData->bgConfig, window, BG_LAYER_MAIN_0, 8, 7, 16, TEXT_LINES_TILES(numEntries), PLTT_0, windowBaseTile);
    }

    Window_DrawStandardFrame(window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_3);
    MakeStateChangeListMenuFromEntryTemplates(appMan, entries, numEntries, window, textEntryId);
}

static void ShowMessageBox(ApplicationManager *appMan, Window *window, u32 entryId)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    appData->msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MYSTERY_GIFT_MENU, HEAP_ID_MYSTERY_GIFT_APP);
    appData->strTemplate = StringTemplate_Default(HEAP_ID_MYSTERY_GIFT_APP);

    Window_FillTilemap(window, Font_GetAttribute(FONT_MESSAGE, FONTATTR_BG_COLOR));

    Strbuf *strBuf = appData->strBuf ? appData->strBuf : MessageUtil_ExpandedStrbuf(appData->strTemplate, appData->msgLoader, entryId, HEAP_ID_MYSTERY_GIFT_APP);

    appData->textPrinterId = Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, strBuf, 0, 0, appData->msgBoxPrinterDelay, TEXT_COLOR(1, 2, 15), NULL);

    if (appData->strBuf == NULL) {
        Strbuf_Free(strBuf);
    }

    Window_DrawMessageBoxWithScrollCursor(window, FALSE, BASE_TILE_MESSAGE_BOX_FRAME, PLTT_2);
    MessageLoader_Free(appData->msgLoader);
    StringTemplate_Free(appData->strTemplate);

    appData->msgBoxPrinterDelay = TEXT_SPEED_NO_TRANSFER;
}

static void ShowWonderCardTitle(ApplicationManager *appMann, Window *window, charcode_t *title)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMann);

    Strbuf *strBuf = Strbuf_Init(WONDERCARD_TITLE_LENGTH + 1, HEAP_ID_MYSTERY_GIFT_APP);

    Strbuf_CopyNumChars(strBuf, title, WONDERCARD_TITLE_LENGTH);
    Window_FillTilemap(window, Font_GetAttribute(FONT_SYSTEM, FONTATTR_BG_COLOR));
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strBuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    Window_DrawStandardFrame(window, FALSE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_3);
    Strbuf_Free(strBuf);
}

static void ProcessStateTransitionMenuInput(ApplicationManager *appMan, enum MysteryGiftAppState *state, StateTransitionFuncPtr onCancel)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);
    static StateTransitionFuncPtr optionStateTransitionFunc;

    u32 input = ListMenu_ProcessInput(appData->listMenu);

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        break;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        if (onCancel) {
            enum MysteryGiftAppState nextState = onCancel(appMan);

            if (nextState != MG_APP_KEEP_PREVIOUS_STATE) {
                *state = nextState;
            }
        }
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        if (input) {
            optionStateTransitionFunc = (StateTransitionFuncPtr)input;
            enum MysteryGiftAppState nextState = optionStateTransitionFunc(appMan);

            if (nextState != MG_APP_KEEP_PREVIOUS_STATE) {
                *state = nextState;
            }
        }
        break;
    }
}

static BOOL ShowAppMainMenu(ApplicationManager *appMan, MysteryGiftAppData *appData)
{
    Text_ResetAllPrinters();
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(0), HEAP_ID_MYSTERY_GIFT_APP);
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(1), HEAP_ID_MYSTERY_GIFT_APP);

    int frameType = Options_Frame(appData->options);

    LoadMessageBoxGraphics(appData->bgConfig, BG_LAYER_MAIN_0, BASE_TILE_MESSAGE_BOX_FRAME, PLTT_2, frameType, HEAP_ID_MYSTERY_GIFT_APP);
    LoadStandardWindowGraphics(appData->bgConfig, BG_LAYER_MAIN_0, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_3, STANDARD_WINDOW_FIELD, HEAP_ID_MYSTERY_GIFT_APP);

    *HW_BG_A_PLTT_COLOR(PLTT_0, 0) = GX_RGB(12, 12, 31);

    if (!Window_IsInUse(&appData->messageBox)) {
        Window_Add(appData->bgConfig, &appData->messageBox, BG_LAYER_MAIN_0, 2, 19, 27, TEXT_LINES_TILES(2), PLTT_0, BASE_TILE_MAIN_APP_MENU_MSG_BOX);
    }

    ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_Welcome);
    ShowMysteryGiftMenuOptions(appMan, BASE_TILE_MAIN_APP_MENU, MysteryGiftMenu_Text_Welcome);
    LoadBothScreensBg(appData->bgConfig);

    return TRUE;
}

static void SearchForWiFiDistributionEvent(ApplicationManager *appMan, enum MysteryGiftAppState *state)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    switch (ov97_02238EAC(appMan, &appData->nasAuthState)) {
    case 0:
        break;
    case 1:
        memcpy(&appData->eventData, appData->wifiDistributionBuffer, sizeof(MysteryGiftEventData));
        ToggleWaitDial(appData, FALSE);
        appData->foundGiftType = FOUND_GIFT_WIFI;
        *state = MG_APP_STATE_FOUND_WIFI_OR_GBA_GIFT;
        appData->giftSearchResultDelay = 0;
        break;
    case 2:
    case 3:
        ToggleWaitDial(appData, FALSE);
        appData->giftSearchResultDelay = 0;
        *state = MG_APP_STATE_NO_GIFT_FOUND;
        break;
    case 4:
        Window_ClearAndCopyToVRAM(&appData->wifiCommErrorWindow);
        Window_Remove(&appData->wifiCommErrorWindow);
        Bg_ClearTilemap(appData->bgConfig, BG_LAYER_MAIN_0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ShowMysteryGiftMenuOptions(appMan, BASE_TILE_MAIN_APP_MENU, MysteryGiftMenu_Text_Welcome);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
        *state = MG_APP_STATE_WAIT_MAIN_MENU_INPUT;
        break;
    }
}

void MysteryGiftApp_ShowWiFiCommError(MysteryGiftAppData *appData)
{
    int textEntryID = appData->wifiCommErrorStringID != -1 ? appData->wifiCommErrorStringID : pl_msg_00000695_00011;

    ToggleWaitDial(appData, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, FALSE);
    Bg_ClearTilemap(appData->bgConfig, BG_LAYER_MAIN_0);

    StringTemplate *strTemplate = StringTemplate_Default(HEAP_ID_MYSTERY_GIFT_APP);
    StringTemplate_SetNumber(strTemplate, 0, appData->wifiCommErrorCode, 5, PADDING_MODE_ZEROES, CHARSET_MODE_EN);

    MainMenuWindow window;
    MainMenuUtil_InitWindow(&window, &appData->wifiCommErrorWindow, PLTT_1, TEXT_BANK_UNK_0695, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_3);
    MainMenuWindow_SetDimensionsAndBasetile(&window, 24, TEXT_LINES_TILES(8), BASE_TILE_WIFI_COMM_ERROR_WINDOW);
    MainMenuWindow_SetScrollableAndFont(&window, FALSE, FONT_MESSAGE);

    window.strTemplate = strTemplate;

    MainMenuUtil_ShowWindowAtPos(appData->bgConfig, &window, 4, 4, textEntryID);
    StringTemplate_Free(strTemplate);
}

static int ShowMessageBoxForCanReceiveStatus(ApplicationManager *appMan)
{
    int textEntryID;
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    if (appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_NO_PGT_SLOT) {
        textEntryID = MysteryGiftMenu_Text_DeliveryManOverloaded;
    } else if (appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_NO_WC_SLOT) {
        textEntryID = MysteryGiftMenu_Text_OutOfRoomForWonderCards;
    } else if (appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_ALREADY_RECEIVED) {
        textEntryID = MysteryGiftMenu_Text_AlreadyReceivedCantGetAnotherOne;
    } else if (appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_WRONG_VERSION) {
        textEntryID = MysteryGiftMenu_Text_GiftCannotBeReceivedInThisVersion;
    } else if (appData->canReceiveGiftStatus == MYSTERY_GIFT_CAN_RECEIVE_FROM_FRIEND) {
        textEntryID = MysteryGiftMenu_Text_GiftBeingSharedByAnotherPerson;
        return ShowMessageBoxIntoStateTransition(appMan, &appData->messageBox, textEntryID, MG_APP_STATE_ASK_CONFIRM_RECEIVE_SHARED_GIFT);
    }

    return ShowMessageBoxIntoStateTransition(appMan, &appData->messageBox, textEntryID, MG_APP_STATE_WAIT_INPUT_RETURN_TO_MENU);
}

static inline int WaitUntilMsgBoxPrinterFinished(ApplicationManager *appMan, int nextState)
{
    return ShowMessageBoxIntoStateTransition(appMan, NULL, 0, nextState);
}

static int ShowMessageBoxIntoStateTransition(ApplicationManager *appMan, Window *window, int textEntryId, enum MysteryGiftAppState nextState)
{
    StringTemplate *strTemplate;
    MessageLoader *msgLoader;
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    if (window && textEntryId) {
        msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MYSTERY_GIFT_MENU, HEAP_ID_MYSTERY_GIFT_APP);
        strTemplate = StringTemplate_Default(HEAP_ID_MYSTERY_GIFT_APP);
        appData->strBuf = MessageUtil_ExpandedStrbuf(strTemplate, msgLoader, textEntryId, HEAP_ID_MYSTERY_GIFT_APP);
        appData->msgBoxPrinterDelay = TEXT_SPEED_FAST;

        ShowMessageBox(appMan, window, textEntryId);
        appData->queuedState = nextState;

        StringTemplate_Free(strTemplate);
        MessageLoader_Free(msgLoader);
    } else {
        if (Text_IsPrinterActive(appData->textPrinterId) == FALSE) {
            Strbuf_Free(appData->strBuf);
            appData->strBuf = NULL;
            appData->msgBoxPrinterDelay = TEXT_SPEED_INSTANT;
            return appData->queuedState;
        }
    }

    return MG_APP_STATE_WAIT_MESSAGE_BOX_FOR_TRANSITION;
}

static void FreeMultiplayerCommResources(MysteryGiftAppData *appData)
{
    switch (appData->receptionMethod) {
    case RECEPTION_METHOD_NONE:
        break;
    case RECEIVE_FROM_FRIEND:
        ov97_0222D2DC();
        NetworkIcon_Destroy();
        break;
    case RECEIVE_FROM_GBA_CARTRIDGE:
        break;
    case RECEIVE_FROM_LOCAL_WIRELESS:
        break;
    case RECEIVE_FROM_WIFI:
        break;
    }
}

static int MysteryGiftApp_Init(ApplicationManager *appMan, int *unused)
{
    MysteryGiftApp_SetApplicationManager(appMan);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_MYSTERY_GIFT_APP, HEAP_SIZE_MYSTERY_GIFT_APP);

    MysteryGiftAppData *appData = ApplicationManager_NewData(appMan, sizeof(MysteryGiftAppData), HEAP_ID_MYSTERY_GIFT_APP);
    memset(appData, 0, sizeof(MysteryGiftAppData));
    appData->bgConfig = BgConfig_New(HEAP_ID_MYSTERY_GIFT_APP);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    ov97_02232054();
    SetupGraphics(appData->bgConfig);

    SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
    SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_10, SEQ_PRESENT, 1);
    DistributionCartridge_UseHeap(HEAP_ID_MYSTERY_GIFT_APP);

    if (DistributionCartridge_ReadLength()) {
        appData->receptionMethod = RECEIVE_FROM_GBA_CARTRIDGE;
        SetGBACartridgeVersion(gGameVersion);
        MainMenuUtil_ToggleTerminateOnGBACartRemoved(TRUE);
    }

    appData->unk_62C = 29;
    appData->saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
    appData->options = SaveData_GetOptions(appData->saveData);
    appData->msgBoxPrinterDelay = TEXT_SPEED_NO_TRANSFER;

    Heap_Create(HEAP_ID_SYSTEM, HEAP_ID_91, 0x300);

    return TRUE;
}

static void LoadParticleSpriteResources(MysteryGiftAnimationManager *animMan)
{
    enum NarcID narcID = NARC_INDEX_GRAPHIC__MYSTERY;
    int tilesID = 39;
    int paletteID = 36;
    int cellsID = 38;
    int animationID = 37;
    int compressed = TRUE;
    int vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    int resourceID = 20000 + vramType;
    int heapID = HEAP_ID_MYSTERY_GIFT_APP;
    int baseIndex = 0;

    vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    resourceID = 20000 + vramType;

    animMan->spriteResources[DS_SCREEN_MAIN][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_CHAR], narcID, tilesID, compressed, resourceID, vramType, heapID);
    animMan->spriteResources[DS_SCREEN_MAIN][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_PLTT], narcID, paletteID, FALSE, resourceID, vramType, PLTT_1, heapID);
    animMan->spriteResources[DS_SCREEN_MAIN][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_CELL], narcID, cellsID, compressed, resourceID, SPRITE_RESOURCE_CELL, heapID);
    animMan->spriteResources[DS_SCREEN_MAIN][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_ANIM], narcID, animationID, compressed, resourceID, SPRITE_RESOURCE_ANIM, heapID);

    vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    resourceID = 20000 + vramType;

    animMan->spriteResources[DS_SCREEN_SUB][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_CHAR], narcID, tilesID, compressed, resourceID, vramType, heapID);
    animMan->spriteResources[DS_SCREEN_SUB][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_PLTT], narcID, paletteID, FALSE, resourceID, vramType, PLTT_1, heapID);
    animMan->spriteResources[DS_SCREEN_SUB][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_CELL], narcID, cellsID, compressed, resourceID, SPRITE_RESOURCE_CELL, heapID);
    animMan->spriteResources[DS_SCREEN_SUB][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_ANIM], narcID, animationID, compressed, resourceID, SPRITE_RESOURCE_ANIM, heapID);

    SpriteTransfer_RequestChar(animMan->spriteResources[DS_SCREEN_MAIN][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestChar(animMan->spriteResources[DS_SCREEN_SUB][SPRITE_RESOURCE_CHAR]);

    SpriteTransfer_RequestPlttFreeSpace(animMan->spriteResources[DS_SCREEN_MAIN][SPRITE_RESOURCE_PLTT]);
    SpriteTransfer_RequestPlttFreeSpace(animMan->spriteResources[DS_SCREEN_SUB][SPRITE_RESOURCE_PLTT]);

    vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    resourceID = 20000 + vramType;

    SpriteResourcesHeader_Init(&animMan->spriteResourcesHeaders[DS_SCREEN_MAIN], resourceID, resourceID, resourceID, resourceID, -1, -1, FALSE, 0, animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_CHAR], animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_PLTT], animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_CELL], animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_ANIM], NULL, NULL);

    vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    resourceID = 20000 + vramType;

    // Despite baseIndex always being 0, replacing `baseIndex + DS_SCREEN_SUB` with `DS_SCREEN_SUB` doesn't match here.
    SpriteResourcesHeader_Init(&animMan->spriteResourcesHeaders[baseIndex + DS_SCREEN_SUB], resourceID, resourceID, resourceID, resourceID, -1, -1, FALSE, 0, animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_CHAR], animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_PLTT], animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_CELL], animMan->spriteMan->resourceCollections[SPRITE_RESOURCE_ANIM], NULL, NULL);
}

static Sprite *InitParticleSprite(MysteryGiftAnimationManager *animMan, int vramType)
{
    Sprite *sprite;

    {
        AffineSpriteListTemplate template;

        // 0 is the top screen, 1 is the bottom screen. Using enum variants doesn't match.
        enum DSScreen screen = (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) ? 0 : 1;

        template.list = animMan->spriteMan->spriteList;
        template.resourceData = &animMan->spriteResourcesHeaders[screen];
        template.position.z = 0;
        template.affineScale.x = FX32_ONE;
        template.affineScale.y = FX32_ONE;
        template.affineScale.z = FX32_ONE;
        template.affineZRotation = 0;
        template.position.x = FX32_CONST(HW_LCD_WIDTH / 2);
        template.position.y = FX32_CONST(32);
        template.priority = 10;
        template.vramType = vramType;
        template.heapID = HEAP_ID_MYSTERY_GIFT_APP;

        if (template.vramType == NNS_G2D_VRAM_TYPE_2DSUB) {
            template.position.y += FX32_CONST(256);
        }

        sprite = SpriteList_AddAffine(&template);
    }

    if (sprite) {
        Sprite_SetAnimateFlag(sprite, TRUE);
        Sprite_SetExplicitPriority(sprite, 0);
        Sprite_SetAnim(sprite, 0);
        Sprite_SetDrawFlag(sprite, TRUE);
    }

    return sprite;
}

static void SetupTopScreenLargeParticle(MysteryGiftAnimationManager *animMan)
{
    animMan->topScreenLargeParticle.sprite = InitParticleSprite(animMan, NNS_G2D_VRAM_TYPE_2DMAIN);

    Sprite_SetAnimNoRestart(animMan->topScreenLargeParticle.sprite, 2);
    Sprite_SetAnimFrame(animMan->topScreenLargeParticle.sprite, 0);
    Sprite_SetDrawFlag(animMan->topScreenLargeParticle.sprite, FALSE);
    Sprite_SetPriority(animMan->topScreenLargeParticle.sprite, 0);
    Sprite_SetAffineOverwriteMode(animMan->topScreenLargeParticle.sprite, AFFINE_OVERWRITE_MODE_DOUBLE);

    // Cast to explicitly remove the const qualifier
    VecFx32 *spritePos = (VecFx32 *)Sprite_GetPosition(animMan->topScreenLargeParticle.sprite);
    spritePos->x = FX32_CONST(HW_LCD_WIDTH / 2);
    spritePos->y = FX32_CONST(HW_LCD_HEIGHT / 2);
}

static void SetupBottomScreenLargeParticle(MysteryGiftAnimationManager *animMan)
{
    animMan->bottomScreenLargeParticle.sprite = InitParticleSprite(animMan, NNS_G2D_VRAM_TYPE_2DSUB);

    Sprite_SetAnimNoRestart(animMan->bottomScreenLargeParticle.sprite, 4);
    Sprite_SetAnimFrame(animMan->bottomScreenLargeParticle.sprite, 0);
    Sprite_SetDrawFlag(animMan->bottomScreenLargeParticle.sprite, FALSE);
    Sprite_SetPriority(animMan->bottomScreenLargeParticle.sprite, 0);
    Sprite_SetAffineOverwriteMode(animMan->bottomScreenLargeParticle.sprite, AFFINE_OVERWRITE_MODE_DOUBLE);

    // Cast to explicitly remove the const qualifier
    VecFx32 *spritePos = (VecFx32 *)Sprite_GetPosition(animMan->bottomScreenLargeParticle.sprite);
    spritePos->x = FX32_CONST(HW_LCD_WIDTH / 2);
    spritePos->y = FX32_CONST(256);
}

static void DeleteTopScreenLargeParticle(MysteryGiftAnimationManager *animMan)
{
    Sprite_Delete(animMan->topScreenLargeParticle.sprite);
    animMan->topScreenLargeParticle.sprite = NULL;
}

static void DeleteBottomScreenLargeParticle(MysteryGiftAnimationManager *animMan)
{
    Sprite_Delete(animMan->bottomScreenLargeParticle.sprite);
    animMan->bottomScreenLargeParticle.sprite = NULL;
}

static void UpdateAllParticleSpritesAnimations(MysteryGiftAnimationManager *animMan)
{
    for (int i = 0; i < NUM_MYSTERY_GIFT_PARTICLES; i++) {
        if (animMan->topScreenSmallParticles[i].sprite) {
            Sprite_UpdateAnim(animMan->topScreenSmallParticles[i].sprite, FX32_CONST(2));
        }

        if (animMan->bottomScreenSmallParticles[i].sprite) {
            Sprite_UpdateAnim(animMan->bottomScreenSmallParticles[i].sprite, FX32_CONST(2));
        }
    }

    if (animMan->topScreenLargeParticle.sprite) {
        Sprite_UpdateAnim(animMan->topScreenLargeParticle.sprite, FX32_CONST(2));
    }

    if (animMan->bottomScreenLargeParticle.sprite) {
        Sprite_UpdateAnim(animMan->bottomScreenLargeParticle.sprite, FX32_CONST(2));
    }
}

static void InitAllTopScreenParticlesSprite(MysteryGiftAnimationManager *animMan)
{
    for (int i = 0; i < NUM_MYSTERY_GIFT_PARTICLES; i++) {
        animMan->topScreenSmallParticles[i].sprite = InitParticleSprite(animMan, NNS_G2D_VRAM_TYPE_2DMAIN);
        Sprite_SetAnimNoRestart(animMan->topScreenSmallParticles[i].sprite, 1);
        Sprite_SetAnimFrame(animMan->topScreenSmallParticles[i].sprite, 0);
    }
}

static void InitSomeTopScreenParticlesSprite(MysteryGiftAnimationManager *animMan)
{
    for (int i = 0; i < NUM_MYSTERY_GIFT_PARTICLES; i++) {
        if (i < (NUM_MYSTERY_GIFT_PARTICLES / 4)) {
            animMan->topScreenSmallParticles[i].sprite = InitParticleSprite(animMan, NNS_G2D_VRAM_TYPE_2DMAIN);
            Sprite_SetAnimNoRestart(animMan->topScreenSmallParticles[i].sprite, 1);
            Sprite_SetAnimFrame(animMan->topScreenSmallParticles[i].sprite, 0);
        } else {
            animMan->topScreenSmallParticles[i].sprite = NULL;
        }
    }
}

static void InitAllBottomScreenParticlesSprite(MysteryGiftAnimationManager *animMan)
{
    for (int i = 0; i < NUM_MYSTERY_GIFT_PARTICLES; i++) {
        animMan->bottomScreenSmallParticles[i].sprite = InitParticleSprite(animMan, NNS_G2D_VRAM_TYPE_2DSUB);
        Sprite_SetAnimNoRestart(animMan->bottomScreenSmallParticles[i].sprite, 5);
        Sprite_SetAnimFrame(animMan->bottomScreenSmallParticles[i].sprite, 0);
    }
}

static void DeleteTopScreenSmallParticles(MysteryGiftAnimationManager *animMan)
{
    for (int i = 0; i < NUM_MYSTERY_GIFT_PARTICLES; i++) {
        if (animMan->topScreenSmallParticles[i].sprite == NULL) {
            continue;
        }

        Sprite_Delete(animMan->topScreenSmallParticles[i].sprite);
        animMan->topScreenSmallParticles[i].sprite = NULL;
        SysTask_Done(animMan->topScreenSmallParticles[i].animationSysTask);
    }
}

static void DeleteBottomScreenSmallParticles(MysteryGiftAnimationManager *animMan)
{
    for (int i = 0; i < NUM_MYSTERY_GIFT_PARTICLES; i++) {
        Sprite_Delete(animMan->bottomScreenSmallParticles[i].sprite);
        animMan->bottomScreenSmallParticles[i].sprite = NULL;
        SysTask_Done(animMan->bottomScreenSmallParticles[i].animationSysTask);
    }
}

static void SetupTopScreenParticlesForGather(MysteryGiftAnimationManager *animMan)
{
    for (int i = 0; i < NUM_MYSTERY_GIFT_PARTICLES; i++) {
        animMan->topScreenSmallParticles[i].animationCenter.x = FX32_CONST(HW_LCD_WIDTH / 2);
        animMan->topScreenSmallParticles[i].animationCenter.y = FX32_CONST(HW_LCD_HEIGHT / 2);
        animMan->topScreenSmallParticles[i].speedToCenter = FX32_CONST(4);
        animMan->topScreenSmallParticles[i].centerZoneRadius = FX32_CONST(5);
        animMan->topScreenSmallParticles[i].animationType = PARTICLE_ANIMATION_TYPE_ORBIT_0 + (i % 4);
        animMan->topScreenSmallParticles[i].movementAngle = 0;
        animMan->topScreenSmallParticles[i].timeSinceCenterReached = 0;

        {
            animMan->topScreenSmallParticles[i].speedToCenter = FX_F32_TO_FX32((i / 10) + 4);
        }
        {
            if (i > 50) {
                animMan->topScreenSmallParticles[i].apparitionDelay = 260 + i + LCRNG_Next() % 5;
            } else if (i > 40) {
                animMan->topScreenSmallParticles[i].apparitionDelay = 250 + i + LCRNG_Next() % 5;
            } else if (i > 30) {
                animMan->topScreenSmallParticles[i].apparitionDelay = 240 + i + LCRNG_Next() % 5;
            } else if (i > 25) {
                animMan->topScreenSmallParticles[i].apparitionDelay = 230 + i + LCRNG_Next() % 5;
            } else if (i > 20) {
                animMan->topScreenSmallParticles[i].apparitionDelay = 220 + i + LCRNG_Next() % 5;
            } else {
                int presetDelays[] = { 1, 30, 60, 90, 90, 120, 120, 120, 150, 150, 150, 150, 180, 180, 180, 180, 210, 210, 210, 210, 210 };

                animMan->topScreenSmallParticles[i].apparitionDelay = presetDelays[i];
            }

            animMan->topScreenSmallParticles[i].apparitionDelay = ((animMan->topScreenSmallParticles[i].apparitionDelay + 1) / 2) * 0.7;
            animMan->topScreenSmallParticles[i].apparitionDelay += 1;
        }

        animMan->topScreenSmallParticles[i].speed = 15;
        animMan->topScreenSmallParticles[i].horizontalSpeed = animMan->topScreenSmallParticles[i].speed;
        animMan->topScreenSmallParticles[i].verticalSpeed = animMan->topScreenSmallParticles[i].speed;

        VecFx32 spritePos = *(VecFx32 *)Sprite_GetPosition(animMan->topScreenSmallParticles[i].sprite);
        // Random position at the top of the screen, excluding the outermost 16 pixels on each side
        spritePos.x = FX32_CONST(16 + (LCRNG_Next() % (HW_LCD_WIDTH - (2 * 16))));
        spritePos.y = FX32_CONST(0);

        Sprite_SetPosition(animMan->topScreenSmallParticles[i].sprite, &spritePos);
        Sprite_SetDrawFlag(animMan->topScreenSmallParticles[i].sprite, FALSE);

        animMan->topScreenSmallParticles[i].animationSysTask = SysTask_Start((SysTaskFunc)RunParticleAnimationFrame, &animMan->topScreenSmallParticles[i], 6);
    }
}

static void SetupTopScreenParticlesForImplosion(MysteryGiftAnimationManager *animMan)
{
    VecFx32 spritePos;

    for (int i = 0; i < NUM_MYSTERY_GIFT_PARTICLES; i++) {
        if (animMan->topScreenSmallParticles[i].sprite == NULL) {
            continue;
        }

        animMan->topScreenSmallParticles[i].animationCenter.x = FX32_CONST(HW_LCD_WIDTH / 2);
        animMan->topScreenSmallParticles[i].animationCenter.y = FX32_CONST(HW_LCD_HEIGHT / 2);
        animMan->topScreenSmallParticles[i].speedToCenter = FX32_CONST(12);
        animMan->topScreenSmallParticles[i].centerZoneRadius = FX32_CONST(1);

        animMan->topScreenSmallParticles[i].animationType = PARTICLE_ANIMATION_TYPE_RUSH_TO_CENTER;
        animMan->topScreenSmallParticles[i].movementAngle = 0;
        animMan->topScreenSmallParticles[i].timeSinceCenterReached = 0;
        animMan->topScreenSmallParticles[i].animationDone = FALSE;

        if (i > 30) {
            animMan->topScreenSmallParticles[i].apparitionDelay = 15 + (LCRNG_Next() % 10);
        } else if (i > 20) {
            animMan->topScreenSmallParticles[i].apparitionDelay = 10 + (LCRNG_Next() % 10);
        } else if (i > 10) {
            animMan->topScreenSmallParticles[i].apparitionDelay = 10 + (LCRNG_Next() % 5);
        } else {
            animMan->topScreenSmallParticles[i].apparitionDelay = 5 + (LCRNG_Next() % 5);
        }

        animMan->topScreenSmallParticles[i].apparitionDelay = 0;
        animMan->topScreenSmallParticles[i].horizontalSpeed = animMan->topScreenSmallParticles[i].speed;
        animMan->topScreenSmallParticles[i].verticalSpeed = animMan->topScreenSmallParticles[i].speed;

        int angle = LCRNG_Next() % 360;
        int distance = 64 + (LCRNG_Next() % 32);

        spritePos.x = animMan->topScreenSmallParticles[i].animationCenter.x + (CalcSineDegrees_Wraparound(angle) * distance);
        spritePos.y = animMan->topScreenSmallParticles[i].animationCenter.y + (CalcCosineDegrees_Wraparound(angle) * distance);

        Sprite_SetPosition(animMan->topScreenSmallParticles[i].sprite, &spritePos);

        Sprite_SetAnimNoRestart(animMan->topScreenSmallParticles[i].sprite, 1);
        Sprite_SetDrawFlag(animMan->topScreenSmallParticles[i].sprite, FALSE);

        animMan->topScreenSmallParticles[i].animationSysTask = SysTask_Start((SysTaskFunc)RunParticleAnimationFrame, &animMan->topScreenSmallParticles[i], 6);
    }
}

static void SetupBottomScreenSmallParticlesForSpiralOut(MysteryGiftAnimationManager *animMan)
{
    int i;
    VecFx32 spritePos;

    for (i = 0; i < NUM_MYSTERY_GIFT_PARTICLES; i++) {
        animMan->bottomScreenSmallParticles[i].animationCenter.x = FX32_CONST(HW_LCD_WIDTH / 2);
        animMan->bottomScreenSmallParticles[i].animationCenter.y = FX32_CONST(384);
        animMan->bottomScreenSmallParticles[i].speedToCenter = FX32_CONST(4);
        animMan->bottomScreenSmallParticles[i].centerZoneRadius = FX32_CONST(5);
        animMan->bottomScreenSmallParticles[i].animationType = PARTICLE_ANIMATION_TYPE_SPIRAL_OUT_0 + (i % 2);
        animMan->bottomScreenSmallParticles[i].movementAngle = 0;
        animMan->bottomScreenSmallParticles[i].timeSinceCenterReached = 0;
        animMan->bottomScreenSmallParticles[i].spiralOutAcceleration = 2 + (LCRNG_Next() % 4);
        animMan->bottomScreenSmallParticles[i].speedToCenter = FX_F32_TO_FX32((i / 30) + 4);

        if (i > 60) {
            animMan->bottomScreenSmallParticles[i].speed = 5;
            animMan->bottomScreenSmallParticles[i].apparitionDelay = 70 + (LCRNG_Next() % 10);
        } else if (i > 50) {
            animMan->bottomScreenSmallParticles[i].speed = 5;
            animMan->bottomScreenSmallParticles[i].apparitionDelay = 60 + (LCRNG_Next() % 10);
        } else if (i > 40) {
            animMan->bottomScreenSmallParticles[i].speed = 5;
            animMan->bottomScreenSmallParticles[i].apparitionDelay = 50 + (LCRNG_Next() % 5);
        } else if (i > 30) {
            animMan->bottomScreenSmallParticles[i].speed = 5;
            animMan->bottomScreenSmallParticles[i].apparitionDelay = 40 + (LCRNG_Next() % 10);
        } else if (i > 20) {
            animMan->bottomScreenSmallParticles[i].speed = 5;
            animMan->bottomScreenSmallParticles[i].apparitionDelay = 30 + (LCRNG_Next() % 10);
        } else if (i > 10) {
            animMan->bottomScreenSmallParticles[i].speed = 5;
            animMan->bottomScreenSmallParticles[i].apparitionDelay = 20 + (LCRNG_Next() % 5);
        } else {
            animMan->bottomScreenSmallParticles[i].speed = 5;
            animMan->bottomScreenSmallParticles[i].apparitionDelay = 10 + (LCRNG_Next() % 5);
        }

        animMan->bottomScreenSmallParticles[i].horizontalSpeed = animMan->bottomScreenSmallParticles[i].speed;
        animMan->bottomScreenSmallParticles[i].verticalSpeed = animMan->bottomScreenSmallParticles[i].speed;

        spritePos = *(VecFx32 *)Sprite_GetPosition(animMan->bottomScreenSmallParticles[i].sprite);

        spritePos.x = FX32_CONST(HW_LCD_WIDTH / 2);
        spritePos.y = FX32_CONST(384);

        Sprite_SetPosition(animMan->bottomScreenSmallParticles[i].sprite, &spritePos);
        Sprite_SetDrawFlag(animMan->bottomScreenSmallParticles[i].sprite, TRUE);

        animMan->bottomScreenSmallParticles[i].animationSysTask = SysTask_Start((SysTaskFunc)RunParticleAnimationFrame, &animMan->bottomScreenSmallParticles[i], 6);
    }
}

static BOOL CalcVecTowardsCenter(s16 centerX, s16 centerY, f32 particleX, f32 particleY, f32 *outX, f32 *outY, f32 length, s16 minDistanceToCenter)
{
    Vec2F32 outVec, vecToCenter, zeroVec;

    zeroVec.x = 0;
    zeroVec.y = 0;

    vecToCenter.x = (centerX - particleX);
    vecToCenter.y = (centerY - particleY);

    outVec.x = 0;
    outVec.y = 0;

    f32 distSquared = (vecToCenter.x * vecToCenter.x) + (vecToCenter.y * vecToCenter.y);

    f32 dist = FX_FX32_TO_F32(FX_Sqrt(FX_F32_TO_FX32(distSquared)));

    if (dist < length || minDistanceToCenter > dist || dist == 0) {
        return FALSE;
    }

    outVec.x = (vecToCenter.x * length) / dist;
    outVec.y = (vecToCenter.y * length) / dist;

    *outX = (outVec.x + zeroVec.x);
    *outY = (outVec.y + zeroVec.y);

    return TRUE;
}

static void RunParticleAnimationFrame(SysTask *sysTask, MysteryGiftParticle *particle)
{
    if (particle->apparitionDelay) {
        Sprite_SetAnimFrame(particle->sprite, 0);
        particle->apparitionDelay--;
        return;
    } else {
        Sprite_SetDrawFlag(particle->sprite, TRUE);
    }

    f32 towardsCenterX, towardsCenterY;

    VecFx32 spritePos = *(VecFx32 *)Sprite_GetPosition(particle->sprite);
    BOOL hasNotReachedCenter = CalcVecTowardsCenter(particle->animationCenter.x >> FX32_SHIFT, particle->animationCenter.y >> FX32_SHIFT, FX_FX32_TO_F32(spritePos.x), FX_FX32_TO_F32(spritePos.y), &towardsCenterX, &towardsCenterY, FX_FX32_TO_F32(particle->speedToCenter), FX_FX32_TO_F32(particle->centerZoneRadius));

    if (hasNotReachedCenter && particle->inFinalAnimationPhase == FALSE) {
        spritePos.x += FX_F32_TO_FX32(towardsCenterX);
        spritePos.y += FX_F32_TO_FX32(towardsCenterY);

        Sprite_SetPosition(particle->sprite, &spritePos);
    } else {
        switch (particle->inFinalAnimationPhase) {
        case FALSE:
            particle->angleAroundCenter = FX_Atan2Idx(FX_F32_TO_FX32(particle->animationCenter.y - spritePos.y), FX_F32_TO_FX32(particle->animationCenter.x - spritePos.x));
            particle->inFinalAnimationPhase++;
            break;
        case TRUE:
            if (particle->timeSinceCenterReached < 20) {
                particle->timeSinceCenterReached++;
            } else {
                particle->animationDone = TRUE;
            }

            particle->angleAroundCenter += 8;

            if (particle->animationType == PARTICLE_ANIMATION_TYPE_ORBIT_0) {
                particle->movementAngle += 8;
                particle->movementAngle %= 360;
                particle->horizontalSpeed = (CalcCosineDegrees_Wraparound(particle->movementAngle) * particle->speed) >> FX32_SHIFT;

                spritePos.x = particle->animationCenter.x + (CalcSineDegrees_Wraparound(particle->angleAroundCenter) * particle->horizontalSpeed * +1);
                spritePos.y = particle->animationCenter.y + (CalcCosineDegrees_Wraparound(particle->angleAroundCenter) * particle->verticalSpeed * +1);
            } else if (particle->animationType == PARTICLE_ANIMATION_TYPE_ORBIT_1) {
                particle->movementAngle += 8;
                particle->movementAngle %= 360;
                particle->verticalSpeed = (CalcSineDegrees_Wraparound(particle->movementAngle) * particle->speed) >> FX32_SHIFT;

                spritePos.x = particle->animationCenter.x + (CalcSineDegrees_Wraparound(particle->angleAroundCenter) * particle->horizontalSpeed * +1);
                spritePos.y = particle->animationCenter.y + (CalcCosineDegrees_Wraparound(particle->angleAroundCenter) * particle->verticalSpeed * +1);
            } else if (particle->animationType == PARTICLE_ANIMATION_TYPE_ORBIT_2) {
                particle->movementAngle += 8;
                particle->movementAngle %= 360;
                particle->verticalSpeed = (CalcSineDegrees_Wraparound(particle->movementAngle) * particle->speed) >> FX32_SHIFT;

                spritePos.x = particle->animationCenter.x + (CalcSineDegrees_Wraparound(particle->angleAroundCenter) * particle->horizontalSpeed * -1);
                spritePos.y = particle->animationCenter.y + (CalcCosineDegrees_Wraparound(particle->angleAroundCenter) * particle->verticalSpeed * -1);
            } else if (particle->animationType == PARTICLE_ANIMATION_TYPE_ORBIT_3) {
                particle->movementAngle += 8;
                particle->movementAngle %= 360;
                particle->horizontalSpeed = (CalcCosineDegrees_Wraparound(particle->movementAngle) * particle->speed) >> FX32_SHIFT;

                spritePos.x = particle->animationCenter.x + (CalcSineDegrees_Wraparound(particle->angleAroundCenter) * particle->horizontalSpeed * -1);
                spritePos.y = particle->animationCenter.y + (CalcCosineDegrees_Wraparound(particle->angleAroundCenter) * particle->verticalSpeed * -1);
            } else if (particle->animationType == PARTICLE_ANIMATION_TYPE_SPIRAL_OUT_0) {
                if (particle->speed < 96) {
                    particle->speed += particle->spiralOutAcceleration;
                }

                particle->horizontalSpeed = particle->speed;
                particle->verticalSpeed = particle->speed;

                spritePos.x = particle->animationCenter.x + (CalcSineDegrees_Wraparound(particle->angleAroundCenter) * particle->horizontalSpeed * +1);
                spritePos.y = particle->animationCenter.y + (CalcCosineDegrees_Wraparound(particle->angleAroundCenter) * particle->verticalSpeed * +1);
            } else if (particle->animationType == PARTICLE_ANIMATION_TYPE_SPIRAL_OUT_1) {
                if (particle->speed < 96) {
                    particle->speed += particle->spiralOutAcceleration;
                }

                particle->horizontalSpeed = particle->speed;
                particle->verticalSpeed = particle->speed;

                spritePos.x = particle->animationCenter.x + (CalcSineDegrees_Wraparound(particle->angleAroundCenter) * particle->horizontalSpeed * -1);
                spritePos.y = particle->animationCenter.y + (CalcCosineDegrees_Wraparound(particle->angleAroundCenter) * particle->verticalSpeed * -1);
            } else {
                particle->timeSinceCenterReached = 10;
                particle->speedToCenter += FX32_CONST(0.5);

                hasNotReachedCenter = CalcVecTowardsCenter(particle->animationCenter.x >> FX32_SHIFT, particle->animationCenter.y >> FX32_SHIFT, FX_FX32_TO_F32(spritePos.x), FX_FX32_TO_F32(spritePos.y), &towardsCenterX, &towardsCenterY, FX_FX32_TO_F32(particle->speedToCenter), FX_FX32_TO_F32(0));

                if (hasNotReachedCenter) {
                    spritePos.x += FX_F32_TO_FX32(towardsCenterX);
                    spritePos.y += FX_F32_TO_FX32(towardsCenterY);

                    Sprite_SetPosition(particle->sprite, &spritePos);
                } else {
                    particle->animationDone = TRUE;
                }
            }

            particle->angleAroundCenter %= 360;
            Sprite_SetPosition(particle->sprite, &spritePos);
            break;
        }
    }
}

static void SetTopScreenBlendBrightness(MysteryGiftAnimationManager *animMan)
{
    G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BD, animMan->blendBrightness);
}

static void SetBottomScreenBlendBrightness(MysteryGiftAnimationManager *animMan)
{
    G2S_SetBlendBrightness(GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BD, animMan->blendBrightness);
}

static void SetBothScreensBlendBrightness(MysteryGiftAnimationManager *animMan)
{
    SetTopScreenBlendBrightness(animMan);
    SetBottomScreenBlendBrightness(animMan);
}

static void MakeBlackTransparent(void)
{
    Bg_MaskPalette(BG_LAYER_MAIN_1, COLOR_BLACK);
    Bg_MaskPalette(BG_LAYER_SUB_1, COLOR_BLACK);
}

static BOOL FadeBothScreensBlendBrightness(MysteryGiftAnimationManager *animMan, enum MysteryGiftAnimBrightnessFadeDirection direction, s8 speed)
{
    BOOL reachedLimit = TRUE;

    switch (direction) {
    case FADE_TOWARDS_NORMAL:
        if (animMan->blendBrightness > 0) {
            if (animMan->blendBrightness - speed > 0) {
                animMan->blendBrightness -= speed;
                reachedLimit = FALSE;
            } else {
                animMan->blendBrightness = 0;
            }
        } else if (animMan->blendBrightness < 0) {
            if (animMan->blendBrightness + speed < 0) {
                animMan->blendBrightness += speed;
                reachedLimit = FALSE;
            } else {
                animMan->blendBrightness = 0;
            }
        }
        break;
    case FADE_TOWARDS_BLACK:
        if (animMan->blendBrightness - speed > BRIGHTNESS_BLACK) {
            animMan->blendBrightness -= speed;
            reachedLimit = FALSE;
        } else {
            animMan->blendBrightness = BRIGHTNESS_BLACK;
        }
        break;
    case FADE_TOWARDS_WHITE:
        if (animMan->blendBrightness + speed < BRIGHTNESS_WHITE) {
            animMan->blendBrightness += speed;
            reachedLimit = FALSE;
        } else {
            animMan->blendBrightness = BRIGHTNESS_WHITE;
        }
        break;
    }

    SetBothScreensBlendBrightness(animMan);
    return reachedLimit;
}

static BOOL FadeTopScreenBlendBrightness(MysteryGiftAnimationManager *animMan, enum MysteryGiftAnimBrightnessFadeDirection direction, s8 speed)
{
    BOOL reachedLimit = TRUE;

    switch (direction) {
    case FADE_TOWARDS_NORMAL:
        if (animMan->blendBrightness > 0) {
            if (animMan->blendBrightness - speed > 0) {
                animMan->blendBrightness -= speed;
                reachedLimit = FALSE;
            } else {
                animMan->blendBrightness = 0;
            }
        } else if (animMan->blendBrightness < 0) {
            if (animMan->blendBrightness + speed < 0) {
                animMan->blendBrightness += speed;
                reachedLimit = FALSE;
            } else {
                animMan->blendBrightness = 0;
            }
        }
        break;
    case FADE_TOWARDS_BLACK:
        if (animMan->blendBrightness - speed > BRIGHTNESS_BLACK) {
            animMan->blendBrightness -= speed;
            reachedLimit = FALSE;
        } else {
            animMan->blendBrightness = BRIGHTNESS_BLACK;
        }
        break;
    case FADE_TOWARDS_WHITE:
        if (animMan->blendBrightness + speed < BRIGHTNESS_WHITE) {
            animMan->blendBrightness += speed;
            reachedLimit = FALSE;
        } else {
            animMan->blendBrightness = BRIGHTNESS_WHITE;
        }
        break;
    }

    SetTopScreenBlendBrightness(animMan);
    return reachedLimit;
}

static void SetupTopScreenParticlesAnimation(MysteryGiftAnimationManager *animMan)
{
    animMan->blendBrightness = 0;

    SetBothScreensBlendBrightness(animMan);
    LoadParticleSpriteResources(animMan);
    InitAllTopScreenParticlesSprite(animMan);
    SetupTopScreenParticlesForGather(animMan);
    SetupTopScreenLargeParticle(animMan);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void RunMysteryGiftAnimationFrame(SysTask *sysTask, MysteryGiftAnimationManager *animMan)
{
    BOOL goToNextStage;

    switch (animMan->animationStage) {
    case MG_ANIMATION_STAGE_SETUP: {
        SetupTopScreenParticlesAnimation(animMan);
        animMan->animationStage = MG_ANIMATION_STAGE_FADE_BG_BLACK;
    } break;
    case MG_ANIMATION_STAGE_FADE_BG_BLACK: {
        goToNextStage = FadeBothScreensBlendBrightness(animMan, FADE_TOWARDS_BLACK, 2);

        if (goToNextStage) {
            animMan->animationStage = MG_ANIMATION_STAGE_PARTICLES_GATHERING;
        }
    } break;
    case MG_ANIMATION_STAGE_PARTICLES_GATHERING: {
        int numParticlesDone = 0;

        goToNextStage = TRUE;

        for (int i = 0; i < NUM_MYSTERY_GIFT_PARTICLES; i++) {
            if (animMan->topScreenSmallParticles[i].animationDone) {
                numParticlesDone++;
                continue;
            }

            goToNextStage = FALSE;
        }

        if (numParticlesDone > 50) {
            Sprite_SetAnimNoRestart(animMan->topScreenLargeParticle.sprite, 4);
        } else if (numParticlesDone > 30) {
            Sprite_SetAnimNoRestart(animMan->topScreenLargeParticle.sprite, 3);
        } else if (numParticlesDone > 7) {
            Sprite_SetDrawFlag(animMan->topScreenLargeParticle.sprite, TRUE);
        }

        if (goToNextStage || (numParticlesDone == (NUM_MYSTERY_GIFT_PARTICLES - 1))) {
            animMan->animationStage = MG_ANIMATION_STAGE_SETUP_IMPLOSION;
            DeleteTopScreenSmallParticles(animMan);
        }
    } break;
    case MG_ANIMATION_STAGE_SETUP_IMPLOSION:
        if (*animMan->animationStatusPtr == MG_ANIMATION_STATUS_PROCEED_IMPLOSION) {
            InitSomeTopScreenParticlesSprite(animMan);
            SetupTopScreenParticlesForImplosion(animMan);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
            MakeBlackTransparent();
            animMan->animationStage = MG_ANIMATION_STAGE_IMPLODE;
        }
        break;
    case MG_ANIMATION_STAGE_IMPLODE: {
        int numParticlesDone = 0;

        goToNextStage = TRUE;

        for (int i = 0; i < NUM_MYSTERY_GIFT_PARTICLES; i++) {
            if (animMan->topScreenSmallParticles[i].sprite == NULL) {
                continue;
            }

            if (animMan->topScreenSmallParticles[i].animationDone) {
                numParticlesDone++;
                continue;
            }

            goToNextStage = FALSE;
        }

        FadeTopScreenBlendBrightness(animMan, FADE_TOWARDS_WHITE, 2);

        if (goToNextStage || (numParticlesDone == ((NUM_MYSTERY_GIFT_PARTICLES / 4) - 1))) {
            Sound_PlayEffect(SEQ_SE_DP_SAVE);
            animMan->animationStage = MG_ANIMATION_STAGE_FLASH_WHITE;
            DeleteTopScreenSmallParticles(animMan);
            SetupBottomScreenLargeParticle(animMan);
        }
    } break;
    case MG_ANIMATION_STAGE_FLASH_WHITE:
        goToNextStage = FadeTopScreenBlendBrightness(animMan, FADE_TOWARDS_WHITE, 2);

        if (goToNextStage) {
            FadeTopScreenBlendBrightness(animMan, FADE_TOWARDS_BLACK, 2);
            animMan->animationStage = MG_ANIMATION_STAGE_MOVE_TO_BOTTOM_SCREEN;
        }
        break;
    case MG_ANIMATION_STAGE_MOVE_TO_BOTTOM_SCREEN:
        goToNextStage = FadeTopScreenBlendBrightness(animMan, FADE_TOWARDS_BLACK, 2);

        if (goToNextStage == 0) {
            break;
        }

        VecFx32 *topLargeParticlePos = (VecFx32 *)Sprite_GetPosition(animMan->topScreenLargeParticle.sprite);
        VecFx32 *bottomLargeParticlePos = (VecFx32 *)Sprite_GetPosition(animMan->bottomScreenLargeParticle.sprite);

        if (topLargeParticlePos->y < FX32_CONST(256 - 32)) {
            topLargeParticlePos->y += FX32_CONST(8);
        }

        fx32 topLargeParticleYPastScreen = topLargeParticlePos->y - FX32_CONST(HW_LCD_HEIGHT);

        if (topLargeParticleYPastScreen > FX32_CONST(0)) {
            if (bottomLargeParticlePos->y < FX32_CONST(384)) {
                bottomLargeParticlePos->y += FX32_CONST(8);

                if (Sprite_GetDrawFlag(animMan->bottomScreenLargeParticle.sprite) == 0) {
                    Sprite_SetDrawFlag(animMan->bottomScreenLargeParticle.sprite, TRUE);
                }
            } else {
                animMan->animationStage = MG_ANIMATION_STAGE_SPIRAL_OUT;
                DeleteTopScreenLargeParticle(animMan);
                InitAllBottomScreenParticlesSprite(animMan);
                SetupBottomScreenSmallParticlesForSpiralOut(animMan);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
            }
        }
        break;
    case MG_ANIMATION_STAGE_SPIRAL_OUT:
        goToNextStage = TRUE;

        int numParticlesDone = 0;

        for (int i = 0; i < NUM_MYSTERY_GIFT_PARTICLES; i++) {
            if (animMan->bottomScreenSmallParticles[i].animationDone) {
                numParticlesDone++;
                continue;
            }

            goToNextStage = FALSE;
        }

        if (numParticlesDone > 7) {
            FadeBothScreensBlendBrightness(animMan, FADE_TOWARDS_WHITE, 1);
        }

        if (numParticlesDone > 50) {
            Sprite_SetDrawFlag(animMan->bottomScreenLargeParticle.sprite, FALSE);
        } else if (numParticlesDone > 30) {
            Sprite_SetAnimNoRestart(animMan->bottomScreenLargeParticle.sprite, 2);
        } else if (numParticlesDone > 7) {
            Sprite_SetAnimNoRestart(animMan->bottomScreenLargeParticle.sprite, 3);
        }

        if (goToNextStage) {
            animMan->animationStage = MG_ANIMATION_STAGE_FADE_BG_WHITE;
            DeleteBottomScreenSmallParticles(animMan);
            DeleteBottomScreenLargeParticle(animMan);
        }
        break;
    case MG_ANIMATION_STAGE_FADE_BG_WHITE: {
        goToNextStage = FadeBothScreensBlendBrightness(animMan, FADE_TOWARDS_WHITE, 1);

        if (goToNextStage) {
            animMan->animationStage = MG_ANIMATION_STAGE_RETURN_BG_NORMAL;
        }
    } break;
    case MG_ANIMATION_STAGE_RETURN_BG_NORMAL: {
        goToNextStage = FadeBothScreensBlendBrightness(animMan, FADE_TOWARDS_NORMAL, 2);

        if (goToNextStage) {
            animMan->animationStage = MG_ANIMATION_STAGE_DONE;
        }
    } break;
    default:
        *animMan->animationStatusPtr = MG_ANIMATION_STATUS_DONE;
        SysTask_Done(sysTask);
        Heap_Free(animMan);
        return;
    }

    UpdateAllParticleSpritesAnimations(animMan);
}

static BOOL MysteryGiftApp_Main(ApplicationManager *appMan, enum MysteryGiftAppState *state)
{
    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    CTRDG_IsExisting();

    if (appData->unk_62C != 29) {
        ov97_02230224(appData);
    }

    switch (*state) {
    case MG_APP_STATE_SETUP:
        MainMenuUtil_Init(HEAP_ID_MYSTERY_GIFT_APP);
        appData->statePtr = state;
        *state = MG_APP_STATE_INIT_GRAPHICS;
        break;

    case MG_APP_STATE_INIT_GRAPHICS:
        ShowAppMainMenu(appMan, appData);
        LoadDownloadArrowSpriteResources(appData);
        MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_IN, MG_APP_STATE_WAIT_MAIN_MENU_INPUT, (int *)state, MG_APP_STATE_WAIT_SCREEN_TRANSITION);
        break;
    case MG_APP_STATE_WAIT_SCREEN_TRANSITION:
        MainMenuUtil_CheckScreenFadeDone((int *)state);
        break;
    case MG_APP_STATE_WAIT_MAIN_MENU_INPUT:
        ProcessStateTransitionMenuInput(appMan, state, ExitToTitleScreen);
        break;
    case MG_APP_STATE_WAIT_RECEPTION_METHOD_CHOICE:
        ProcessStateTransitionMenuInput(appMan, state, ReturnToMysteryGiftMenu);
        break;
    case MG_APP_STATE_WAIT_CONFIRM_WIRELESS_COMMS:
        ProcessStateTransitionMenuInput(appMan, state, ReturnToReceptionMethodChoiceAfterRefusingWireless);
        break;
    case MG_APP_STATE_SEARCH_FOR_WIFI_EVENT:
        SearchForWiFiDistributionEvent(appMan, state);
        break;
    case MG_APP_STATE_SEARCH_FOR_LOCAL_WIRELESS_EVENT:
        UpdateLocalWirelessDistributionState(appData);

        if (sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_45) {
            ToggleWaitDial(appData, FALSE);
            GetReceivedWonderCard(appMan);

            appData->canReceiveGiftStatus = ov97_02232148(appData->saveData, &appData->eventData);

            if (appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_WRONG_VERSION) {
                ToggleWaitDial(appData, FALSE);
                *state = MG_APP_STATE_FROM_FRIEND_OR_CANT_RECEIVE;
            } else {
                if (!Window_IsInUse(&appData->wonderCardTitleWindow)) {
                    Window_Add(appData->bgConfig, &appData->wonderCardTitleWindow, BG_LAYER_MAIN_0, 3, 2, 26, TEXT_LINES_TILES(2), PLTT_0, BASE_TILE_WONDERCARD_TITLE);
                }

                ShowWonderCardTitle(appMan, &appData->wonderCardTitleWindow, ov97_02238D54());
                ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_ReceiveThisGift);
                ShowConfirmReceiveGiftMenu_LocalWireless(appMan);
                *state = MG_APP_STATE_WAIT_CONFIRM_RECEIVE_LOCAL_WIRELESS_GIFT;
            }
        }

        if (sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_47
            || sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_46) {
            ov97_022302D4();
            *state = MG_APP_STATE_NO_GIFT_FOUND;
        }
        break;
    case MG_APP_STATE_WAIT_CONFIRM_RECEIVE_LOCAL_WIRELESS_GIFT:
        ProcessStateTransitionMenuInput(appMan, state, DisconnectLocalWireless);
        UpdateLocalWirelessDistributionState(appData);
        break;
    case MG_APP_STATE_RECEIVE_FROM_LOCAL_WIRELESS: {
        WonderCard *wonderCard = GetReceivedWonderCard(appMan);

        ToggleWaitDial(appData, TRUE);
        SetDownloadArrowAnim(appData, 1);

        if (ShouldPlayAnimation(wonderCard) == TRUE) {
            SaveReceivedGift(appMan);

            appData->animationStatus = MG_ANIMATION_STATUS_BEGIN;

            SetDownloadArrowAnim(appData, HIDE_DOWNLOADING_ARROW);
            EraseStdFrameIfInUse(&appData->wonderCardTitleWindow, FALSE);

            {
                MysteryGiftAnimationManager *animMan = Heap_Alloc(HEAP_ID_MYSTERY_GIFT_APP, sizeof(MysteryGiftAnimationManager));

                memset(animMan, 0, sizeof(MysteryGiftAnimationManager));

                animMan->animationStatusPtr = &appData->animationStatus;
                animMan->spriteMan = MainMenuUtil_GetSpriteManager();

                SysTask_Start((SysTaskFunc)RunMysteryGiftAnimationFrame, animMan, 5);
            }
        } else {
            MainMenuUtil_LoadGiftSprite(appData->bgConfig, wonderCard);
            SaveReceivedGift(appMan);
        }

        *state = MG_APP_STATE_WAIT_LOCAL_WIRELESS_GIFT_SAVED;
    } break;
    case MG_APP_STATE_WAIT_FOR_ANIMATION_FINISHED:
        if (appData->animationStatus == MG_ANIMATION_STATUS_DONE) {
            *state = ShowMessageBoxIntoStateTransition(appMan, &appData->messageBox, MysteryGiftMenu_Text_GiftReceivedPickUpInPokeMart, MG_APP_STATE_EXIT_AFTER_RECEIVING_GIFT);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
        }
        break;
    case MG_APP_STATE_WAIT_LOCAL_WIRELESS_GIFT_SAVED: {
        int saveStatus = MainMenuUtil_GetSavingStatus();

        if (saveStatus == 4) {
            MainMenuUtil_ContinueSaving();
        }

        if (saveStatus == SAVE_RESULT_OK) {
            ToggleWaitDial(appData, FALSE);
            SetDownloadArrowAnim(appData, HIDE_DOWNLOADING_ARROW);
            EraseMsgBoxIfInUse(&appData->messageBox, FALSE);

            Bg_ClearTilemap(appData->bgConfig, BG_LAYER_MAIN_0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);

            WonderCard *wonderCard = &appData->eventData.wonderCard;

            if (ShouldPlayAnimation(wonderCard) == TRUE) {
                MainMenuUtil_LoadGiftSprite(appData->bgConfig, wonderCard);
                appData->animationStatus = MG_ANIMATION_STATUS_PROCEED_IMPLOSION;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_UG_020);
            }

            *state = MG_APP_STATE_WAIT_FOR_ANIMATION_FINISHED;
        } else if (saveStatus == SAVE_RESULT_CORRUPT) {
            ToggleWaitDial(appData, FALSE);
            SetDownloadArrowAnim(appData, HIDE_DOWNLOADING_ARROW);

            appData->eventData.header.hasWonderCard = FALSE;
            *state = ShowMessageBoxIntoStateTransition(appMan, &appData->messageBox, MysteryGiftMenu_Text_ProblemWithReceivingTheGift, MG_APP_STATE_EXIT_AFTER_RECEIVING_GIFT);
        }
    } break;
    case MG_APP_STATE_DISCONNECT_FROM_LOCAL_WIRELESS:
        UpdateLocalWirelessDistributionState(appData);

        if (sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_47
            || sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_45
            || sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_46) {
            if (sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_47) {
                ov97_022302D4();
            }

            *state = ReturnToReceptionMethodChoiceAfterRefusingGift(appMan);
        }
        break;
    case MG_APP_STATE_SEARCH_FOR_FRIEND_GIFT:
        if ((appData->unk_438 = ov97_0222D250(appData)) != -1) {
            ToggleWaitDial(appData, FALSE);

            appData->canReceiveGiftStatus = ov97_02232148(appData->saveData, &appData->eventData);

            if (!Window_IsInUse(&appData->wonderCardTitleWindow)) {
                Window_Add(appData->bgConfig, &appData->wonderCardTitleWindow, BG_LAYER_MAIN_0, 3, 2, 26, TEXT_LINES_TILES(2), PLTT_0, BASE_TILE_WONDERCARD_TITLE);
            }

            ShowWonderCardTitle(appMan, &appData->wonderCardTitleWindow, appData->eventData.header.title);
            ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_ReceiveThisGift);
            ShowConfirmReceiveGiftMenu(appMan, FALSE);
            *state = MG_APP_STATE_WAIT_CONFIRM_RECEIVE_FRIEND_GIFT;
        }

        if (JOY_NEW(PAD_BUTTON_B) || --appData->wirelessCommsTimeout == 0) {
            ToggleWaitDial(appData, FALSE);
            ov97_0222D2DC();
            NetworkIcon_Destroy();
            *state = MG_APP_STATE_NO_GIFT_FOUND;
        }
        break;
    case MG_APP_STATE_WAIT_CONFIRM_RECEIVE_FRIEND_GIFT:
        ProcessStateTransitionMenuInput(appMan, state, ReturnToReceptionMethodChoiceAfterRefusingGift);
        break;
    case MG_APP_STATE_CONNECT_WITH_FRIEND: {
        int netID = CommSys_CurNetId();

        if (netID != 0 && CommSys_IsPlayerConnected(netID)) {
            if (CommTiming_IsSyncState(0xAB) == TRUE) {
                ToggleWaitDial(appData, FALSE);
                CommMan_SetErrorHandling(TRUE, TRUE);
                ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_ReceivingGiftDontTurnOff);
                SetDownloadArrowAnim(appData, 1);
                ToggleWaitDial(appData, TRUE);
                appData->wirelessCommsTimeout = 600;
                *state = MG_APP_STATE_RECEIVING_FROM_FRIEND;
            }
        } else if (netID != 0 && CommSys_IsPlayerConnected(netID) == FALSE) {
            ov97_0222D2DC();
            NetworkIcon_Destroy();
            SetDownloadArrowAnim(appData, HIDE_DOWNLOADING_ARROW);
            ToggleWaitDial(appData, FALSE);
            *state = MG_APP_STATE_FRIEND_LEFT_BEFORE_SENDING;
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B) || --appData->wirelessCommsTimeout == 0) {
            ov97_0222D2DC();
            NetworkIcon_Destroy();
            SetDownloadArrowAnim(appData, HIDE_DOWNLOADING_ARROW);
            ToggleWaitDial(appData, FALSE);
            *state = MG_APP_STATE_NO_GIFT_FOUND;
        }
    } break;
    case MG_APP_STATE_RECEIVING_FROM_FRIEND:
        if (ov97_0222D2A0()) {
            *state = MG_APP_STATE_SAVE_GIFT_FROM_FRIEND;
        }

        int netID = CommSys_CurNetId();

        if (JOY_NEW(PAD_BUTTON_B)
            || --appData->wirelessCommsTimeout == 0
            || (netID != 0 && CommSys_IsPlayerConnected(netID) == FALSE)) {
            ToggleWaitDial(appData, FALSE);
            ov97_0222D2DC();
            NetworkIcon_Destroy();
            *state = MG_APP_STATE_NO_GIFT_FOUND;
        }
        break;
    case MG_APP_STATE_SAVE_GIFT_FROM_FRIEND:
        MainMenuUtil_LoadGiftSprite(appData->bgConfig, GetReceivedWonderCard(appMan));
        CommMan_SetErrorHandling(0, 0);
        SaveReceivedGift(appMan);
        *state = MG_APP_STATE_CHECK_FRIEND_CONNECTION_STILL_VALID;
        break;
    case MG_APP_STATE_CHECK_FRIEND_CONNECTION_STILL_VALID: {
        int netID = CommSys_CurNetId();

        if (netID != 0 && CommSys_IsPlayerConnected(netID) == FALSE) {
            ov97_0222D2DC();
            appData->cancelSave = TRUE;
            MainMenuUtil_CancelSave();
            ToggleWaitDial(appData, FALSE);
            NetworkIcon_Destroy();
            SetDownloadArrowAnim(appData, HIDE_DOWNLOADING_ARROW);
            *state = MG_APP_STATE_PERSON_SHARING_DISCONNECTED;
            break;
        }

        if (MainMenuUtil_GetSavingStatus() == MAIN_MENU_UTIL_SAVING_IDLE) {
            CommTiming_StartSync(0x93);
            *state = MG_APP_STATE_WAIT_FRIEND_READY_TO_DISCONNECT;
            appData->delay = 120;
        } else if (MainMenuUtil_GetSavingStatus() == MAIN_MENU_UTIL_SAVE_FAILURE) {
            MainMenuUtil_CancelSave();
            appData->eventData.header.hasWonderCard = FALSE;
            ToggleWaitDial(appData, FALSE);
            *state = ShowMessageBoxIntoStateTransition(appMan, &appData->messageBox, MysteryGiftMenu_Text_ProblemWithReceivingTheGift, MG_APP_STATE_EXIT_AFTER_RECEIVING_GIFT);
        }
    } break;
    case MG_APP_STATE_WAIT_FRIEND_READY_TO_DISCONNECT:
        if (CommTiming_IsSyncState(0x93) == TRUE) {
            MainMenuUtil_ContinueSaving();
            appData->delay = 10;
            *state = MG_APP_STATE_RECEIVE_FROM_FRIEND_SUCCESS;
        } else if (--appData->delay == 0) {
            MainMenuUtil_CancelSave();
            appData->eventData.header.hasWonderCard = FALSE;
            ToggleWaitDial(appData, FALSE);
            *state = ShowMessageBoxIntoStateTransition(appMan, &appData->messageBox, MysteryGiftMenu_Text_ProblemWithReceivingTheGift, MG_APP_STATE_EXIT_AFTER_RECEIVING_GIFT);
        }
        break;
    case MG_APP_STATE_PERSON_SHARING_DISCONNECTED:
        EraseStdFrameIfInUse(&appData->wonderCardTitleWindow, FALSE);
        appData->eventData.header.hasWonderCard = FALSE;
        *state = ShowMessageBoxIntoStateTransition(appMan, &appData->messageBox, MysteryGiftMenu_Text_PersonSharingDisconnected, MG_APP_STATE_EXIT_AFTER_RECEIVING_GIFT);
        break;
    case MG_APP_STATE_RECEIVE_FROM_FRIEND_SUCCESS:
        if (--appData->delay == 0) {
            ToggleWaitDial(appData, FALSE);
            ov97_0222D2DC();
            NetworkIcon_Destroy();
            Sound_PlayEffect(SEQ_SE_DP_UG_020);
            SetDownloadArrowAnim(appData, HIDE_DOWNLOADING_ARROW);
            *state = ShowMessageBoxIntoStateTransition(appMan, &appData->messageBox, MysteryGiftMenu_Text_GiftReceivedPickUpInPokeMart, MG_APP_STATE_EXIT_AFTER_RECEIVING_GIFT);
        }
        break;
    case MG_APP_STATE_FRIEND_LEFT_BEFORE_SENDING:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_RequestTurnedDown);
        EraseStdFrameIfInUse(&appData->wonderCardTitleWindow, FALSE);
        *state = MG_APP_STATE_RETURN_TO_MENU;
        break;
    case MG_APP_STATE_NO_GIFT_FOUND:
        if (appData->giftSearchResultDelay) {
            appData->giftSearchResultDelay--;
            break;
        }

        ToggleWaitDial(appData, FALSE);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_NoGiftsToBeFound);
        EraseStdFrameIfInUse(&appData->wonderCardTitleWindow, FALSE);
        *state = MG_APP_STATE_RETURN_TO_MENU;
        break;
    case MG_APP_STATE_RETURN_TO_MENU:
        if (gSystem.pressedKeys) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ShowMysteryGiftMenuOptions(appMan, BASE_TILE_MAIN_APP_MENU, MysteryGiftMenu_Text_Welcome);
            *state = MG_APP_STATE_WAIT_MAIN_MENU_INPUT;
        }
        break;
    case MG_APP_STATE_FOUND_WIFI_OR_GBA_GIFT:
        if (appData->giftSearchResultDelay) {
            appData->giftSearchResultDelay--;
            break;
        }

        if (appData->foundGiftType != FOUND_GIFT_WIFI) {
            DistributionCartridge_ReadData(&appData->eventData, sizeof(MysteryGiftEventData));
        }

        appData->canReceiveGiftStatus = ov97_02232148(appData->saveData, &appData->eventData);

        if (appData->canReceiveGiftStatus == MYSTERY_GIFT_CANT_RECEIVE_WRONG_VERSION) {
            ToggleWaitDial(appData, FALSE);
            *state = MG_APP_STATE_FROM_FRIEND_OR_CANT_RECEIVE;
        } else {
            if (!Window_IsInUse(&appData->wonderCardTitleWindow)) {
                Window_Add(appData->bgConfig, &appData->wonderCardTitleWindow, BG_LAYER_MAIN_0, 3, 2, 26, TEXT_LINES_TILES(2), PLTT_0, BASE_TILE_WONDERCARD_TITLE);
            }

            ShowWonderCardTitle(appMan, &appData->wonderCardTitleWindow, appData->eventData.header.title);
            ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_ReceiveThisGift);
            ShowConfirmReceiveGiftMenu(appMan, FALSE);
            *state = MG_APP_STATE_WAIT_ACCEPT_WIFI_OR_GBA_GIFT;
        }
        break;
    case MG_APP_STATE_WAIT_ACCEPT_WIFI_OR_GBA_GIFT:
        ProcessStateTransitionMenuInput(appMan, state, ReturnToReceptionMethodChoiceAfterRefusingGift);
        break;
    case MG_APP_STATE_GOTO_SHOW_RECEIVING_GIFT_MSG:
        *state = MG_APP_STATE_SHOW_RECEIVING_GIFT_MSG;
        break;
    case MG_APP_STATE_SHOW_RECEIVING_GIFT_MSG: {
        WonderCard *wonderCard = GetReceivedWonderCard(appMan);

        MainMenuUtil_LoadGiftSprite(appData->bgConfig, wonderCard);
        ShowMessageBox(appMan, &appData->messageBox, MysteryGiftMenu_Text_ReceivingGiftDontTurnOff);
        SetDownloadArrowAnim(appData, 1);
        ToggleWaitDial(appData, TRUE);
        appData->delay = 60;
        *state = MG_APP_STATE_SAVE_RECEIVED_MYSTERY_GIFT;
    } break;
    case MG_APP_STATE_SAVE_RECEIVED_MYSTERY_GIFT:
        if (--appData->delay == 0) {
            SaveReceivedGift(appMan);
            *state = MG_APP_STATE_WAIT_MYSTERY_GIFT_SAVED;
        }
        break;
    case MG_APP_STATE_WAIT_MYSTERY_GIFT_SAVED:
        if (MainMenuUtil_GetSavingStatus() == MAIN_MENU_UTIL_SAVING_IDLE) {
            MainMenuUtil_ContinueSaving();
        }

        if (MainMenuUtil_GetSavingStatus() == MAIN_MENU_UTIL_SAVE_SUCCESS) {
            appData->delay = 1;
            ToggleWaitDial(appData, FALSE);
            SetDownloadArrowAnim(appData, HIDE_DOWNLOADING_ARROW);
            Sound_PlayEffect(SEQ_SE_DP_UG_020);
            *state = ShowMessageBoxIntoStateTransition(appMan, &appData->messageBox, MysteryGiftMenu_Text_GiftReceivedPickUpInPokeMart, MG_APP_STATE_WAIT_BEFORE_EXIT_AFTER_RECEIVING_GIFT);
        } else if (MainMenuUtil_GetSavingStatus() == MAIN_MENU_UTIL_SAVE_FAILURE) {
            SetDownloadArrowAnim(appData, HIDE_DOWNLOADING_ARROW);
            appData->eventData.header.hasWonderCard = FALSE;
            *state = ShowMessageBoxIntoStateTransition(appMan, &appData->messageBox, MysteryGiftMenu_Text_ProblemWithReceivingTheGift, MG_APP_STATE_EXIT_AFTER_RECEIVING_GIFT);
        }
        break;
    case MG_APP_STATE_WAIT_BEFORE_EXIT_AFTER_RECEIVING_GIFT:
        if (--appData->delay == 0) {
            appData->delay = 65536;
            *state = MG_APP_STATE_EXIT_AFTER_RECEIVING_GIFT;
        }
        break;
    case MG_APP_STATE_FROM_FRIEND_OR_CANT_RECEIVE:
        if (appData->canReceiveGiftStatus != MYSTERY_GIFT_CAN_RECEIVE_FROM_FRIEND) {
            FreeMultiplayerCommResources(appData);
        }

        *state = ShowMessageBoxForCanReceiveStatus(appMan);
        EraseStdFrameIfInUse(&appData->menuWindows[2], FALSE);
        break;
    case MG_APP_STATE_WAIT_MESSAGE_BOX_FOR_TRANSITION:
        *state = WaitUntilMsgBoxPrinterFinished(appMan, *state);
        break;
    case MG_APP_STATE_WAIT_INPUT_RETURN_TO_MENU:
        if (gSystem.pressedKeys) {
            EraseStdFrameIfInUse(&appData->wonderCardTitleWindow, FALSE);
            *state = ReturnToMysteryGiftMenu(appMan);
        }
        break;
    case MG_APP_STATE_ASK_CONFIRM_RECEIVE_SHARED_GIFT:
        ShowConfirmReceiveGiftMenu(appMan, TRUE);
        *state = MG_APP_STATE_WAIT_CONFIRM_RECEIVE_FRIEND_GIFT;
        appData->canReceiveGiftStatus = MYSTERY_GIFT_CAN_RECEIVE;
        break;
    case MG_APP_STATE_EXIT_TO_TITLE_SCREEN:
        FreeApplicationResources(appMan);
        appData->exitToWondercardsApp = FALSE;
        return TRUE;
        break;
    case MG_APP_STATE_EXIT_TO_WONDER_CARDS_APP:
        FreeApplicationResources(appMan);
        appData->exitToWondercardsApp = TRUE;
        return TRUE;
        break;
    case MG_APP_STATE_EXIT_AFTER_RECEIVING_GIFT:
        if (gSystem.pressedKeys) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (appData->eventData.header.hasWonderCard == TRUE) {
                MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, MG_APP_STATE_SHOW_RECEIVED_WONDERCARD, (int *)appData->statePtr, MG_APP_STATE_WAIT_SCREEN_TRANSITION);
            } else {
                MainMenuUtil_SetFadeToWhite(TRUE);
                MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, MG_APP_STATE_RESET_SYSTEM, (int *)appData->statePtr, MG_APP_STATE_WAIT_SCREEN_TRANSITION);
            }
        }
        break;
    case MG_APP_STATE_SHOW_RECEIVED_WONDERCARD:
        LoadBottomScreenBg(appData->bgConfig);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, TRUE);
        WonderCardsApp_ShowWondercard(appData->bgConfig, &appData->eventData.wonderCard, HEAP_ID_MYSTERY_GIFT_APP);
        MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_IN, MG_APP_STATE_EXIT_AFTER_RECEIVING_GIFT, (int *)appData->statePtr, MG_APP_STATE_WAIT_SCREEN_TRANSITION);
        appData->eventData.header.hasWonderCard = FALSE; // Makes the game exit the application
        break;
    case MG_APP_STATE_RESET_SYSTEM:
        OS_ResetSystem(0);
        break;
    default:
        // Should never be reached
        break;
    }

    if (appData->mainCallback) {
        appData->mainCallback(appData);
    }

    MainMenuUtil_UpdateSpritesForAnimStatus(appData->animationStatus);
    return FALSE;
}

ApplicationManager *MysteryGiftApp_GetApplicationManager(void)
{
    return sApplicationManager;
}

void MysteryGiftApp_SetApplicationManager(ApplicationManager *param0)
{
    sApplicationManager = param0;
}

extern const ApplicationManagerTemplate gWonderCardsAppTemplate;

static int MysteryGiftApp_Exit(ApplicationManager *appMan, int *unused)
{
    FS_EXTERN_OVERLAY(game_opening);
    FS_EXTERN_OVERLAY(main_menu);

    MysteryGiftAppData *appData = ApplicationManager_Data(appMan);

    if (appData->exitToWondercardsApp == FALSE) {
        EnqueueApplication(FS_OVERLAY_ID(game_opening), &gTitleScreenAppTemplate);
    } else if (appData->exitToWondercardsApp == TRUE) {
        EnqueueApplication(FS_OVERLAY_ID(main_menu), &gWonderCardsAppTemplate);
    }

    Heap_Destroy(HEAP_ID_91);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_MYSTERY_GIFT_APP);

    if (appData->receptionMethod == RECEIVE_FROM_GBA_CARTRIDGE) {
        SetGBACartridgeVersion(VERSION_NONE);
    }

    MainMenuUtil_ToggleTerminateOnGBACartRemoved(FALSE);

    return TRUE;
}

static void ov97_02230224(MysteryGiftAppData *param0)
{
    int v0;

    switch (param0->unk_62C) {
    case 29:
        break;
    case 28:
        sub_02037D48(param0->saveData);
        param0->unk_630 = 120;
        param0->unk_62C = 30;
        break;
    case 30:
        v0 = sub_02037DA0();

        if (v0 & 0x1) {
            param0->unk_634 = 1;
        }

        if (--param0->unk_630 == 0) {
            sub_02037D84();
            param0->unk_62C = 29;
        }
        break;
    }
}

static void ov97_02230280(int param0)
{
    switch (param0) {
    case 0:
        sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_40;
        break;
    case 1:
        sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_41;
        break;
    case 2:
        sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_42;
        break;
    case 3:
        if (sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_42) {
            sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_44;
        } else {
            sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_47;
        }
        break;
    case 4:
        sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_48;
        break;
    }
}

static void ov97_022302D4(void)
{
    WirelessDriver_Shutdown();
    Heap_Free(Unk_ov97_0223F1AC);
    NetworkIcon_Destroy();

    Unk_ov97_0223F1AC = NULL;
}

static void UpdateLocalWirelessDistributionState(MysteryGiftAppData *appData)
{
    if (sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_44) {
        ov97_022302D4();

        if (ov97_02238CA0()) {
            sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_45;
        } else {
            sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_46;
        }
    }

    if (sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_INIT
        || sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_38
        || sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_39
        || sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_40
        || sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_41
        || sWirelessDistribState == WIRELESS_DISTRIBUTION_STATE_43) {
        NetworkIcon_SetStrength(WM_LINK_LEVEL_3 - WM_GetLinkLevel());
    }

    switch (sWirelessDistribState) {
    case WIRELESS_DISTRIBUTION_STATE_INIT:
        WirelessDriver_Init();
        sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_38;
        break;
    case WIRELESS_DISTRIBUTION_STATE_38:
        if (WirelessDriver_IsReady() == 1) {
            Unk_ov97_0223F1B4 = 0;
            Unk_ov97_0223F1AC = Heap_Alloc(HEAP_ID_MYSTERY_GIFT_APP, ov97_02238D4C());
            ov97_02238A4C(appData->wirelessDistributionBuffer, ov97_02230280, Unk_ov97_0223F1AC);
            sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_39;
            sub_02039734();
        }
        break;
    case WIRELESS_DISTRIBUTION_STATE_39:
        break;
    case WIRELESS_DISTRIBUTION_STATE_40:
        break;
    case WIRELESS_DISTRIBUTION_STATE_41:
        Unk_ov97_0223F1B4++;
        break;
    case WIRELESS_DISTRIBUTION_STATE_42:
        break;
    case WIRELESS_DISTRIBUTION_STATE_43:
        break;
    case WIRELESS_DISTRIBUTION_STATE_45:
        break;
    case WIRELESS_DISTRIBUTION_STATE_47:
        return;
        break;
    case WIRELESS_DISTRIBUTION_STATE_48:
        break;
    case WIRELESS_DISTRIBUTION_STATE_46:
        break;
    }

    if (JOY_NEW(PAD_BUTTON_B)) {
        switch (sWirelessDistribState) {
        case WIRELESS_DISTRIBUTION_STATE_40:
        case WIRELESS_DISTRIBUTION_STATE_41:
        case WIRELESS_DISTRIBUTION_STATE_48:
            if (ov97_022389C8()) {
                sWirelessDistribState = WIRELESS_DISTRIBUTION_STATE_43;
            }
            break;
        case WIRELESS_DISTRIBUTION_STATE_45:
        case WIRELESS_DISTRIBUTION_STATE_47:
        case WIRELESS_DISTRIBUTION_STATE_46:
            return;
        default:
            break;
        }
    }
}

const ApplicationManagerTemplate gMysteryGiftAppTemplate = {
    MysteryGiftApp_Init,
    (OverlayFunc)MysteryGiftApp_Main,
    MysteryGiftApp_Exit,
    FS_OVERLAY_ID_NONE
};
