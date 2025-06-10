#ifndef POKEPLATINUM_OV97_0222D30C_H
#define POKEPLATINUM_OV97_0222D30C_H

#include <dwc.h>

#include "bg_window.h"
#include "game_options.h"
#include "list_menu.h"
#include "message.h"
#include "mystery_gift.h"
#include "overlay_manager.h"
#include "savedata.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"

#define MG_APP_NUM_MENU_WINDOWS              3
#define MG_APP_DISTRIBUTION_DATA_BUFFER_SIZE 4096

enum MysteryGiftAppState {
    MG_APP_STATE_SETUP = 0,
    MG_APP_STATE_INIT_GRAPHICS,
    MG_APP_STATE_WAIT_SCREEN_TRANSITION,
    MG_APP_STATE_WAIT_MAIN_MENU_INPUT,
    MG_APP_STATE_WAIT_RECEPTION_METHOD_CHOICE,
    MG_APP_STATE_WAIT_CONFIRM_WIRELESS_COMMS,
    MG_APP_STATE_UNUSED_6,

    MG_APP_STATE_SEARCH_FOR_FRIEND_GIFT,
    MG_APP_STATE_WAIT_CONFIRM_RECEIVE_FRIEND_GIFT,
    MG_APP_STATE_CONNECT_WITH_FRIEND,
    MG_APP_STATE_RECEIVING_FROM_FRIEND,
    MG_APP_STATE_SAVE_GIFT_FROM_FRIEND,
    MG_APP_STATE_CHECK_FRIEND_CONNECTION_STILL_VALID,
    MG_APP_STATE_WAIT_FRIEND_READY_TO_DISCONNECT,
    MG_APP_STATE_PERSON_SHARING_DISCONNECTED,
    MG_APP_STATE_RECEIVE_FROM_FRIEND_SUCCESS,
    MG_APP_STATE_FRIEND_LEFT_BEFORE_SENDING,

    MG_APP_STATE_NO_GIFT_FOUND,
    MG_APP_STATE_RETURN_TO_MENU,
    MG_APP_STATE_FOUND_WIFI_OR_GBA_GIFT,
    MG_APP_STATE_WAIT_ACCEPT_WIFI_OR_GBA_GIFT,
    MG_APP_STATE_GOTO_SHOW_RECEIVING_GIFT_MSG,
    MG_APP_STATE_SHOW_RECEIVING_GIFT_MSG,
    MG_APP_STATE_SAVE_RECEIVED_MYSTERY_GIFT,
    MG_APP_STATE_WAIT_MYSTERY_GIFT_SAVED,
    MG_APP_STATE_WAIT_BEFORE_EXIT_AFTER_RECEIVING_GIFT,
    MG_APP_STATE_UNUSED_26,
    MG_APP_STATE_SEARCH_FOR_WIFI_EVENT,

    // Values 28 to 30 are used for something else that ended up unused in the final build
    MG_APP_STATE_UNUSED_28,
    MG_APP_STATE_UNUSED_29,
    MG_APP_STATE_UNUSED_30,

    MG_APP_STATE_WAIT_CONFIRM_RECEIVE_LOCAL_WIRELESS_GIFT,
    MG_APP_STATE_SEARCH_FOR_LOCAL_WIRELESS_EVENT,
    MG_APP_STATE_RECEIVE_FROM_LOCAL_WIRELESS,
    MG_APP_STATE_WAIT_LOCAL_WIRELESS_GIFT_SAVED,
    MG_APP_STATE_WAIT_FOR_ANIMATION_FINISHED,
    MG_APP_STATE_DISCONNECT_FROM_LOCAL_WIRELESS,

    // Values 37 to 48 are used for the local wireless connection state
    MG_APP_STATE_UNUSED_37,
    MG_APP_STATE_UNUSED_38,
    MG_APP_STATE_UNUSED_39,
    MG_APP_STATE_UNUSED_40,
    MG_APP_STATE_UNUSED_41,
    MG_APP_STATE_UNUSED_42,
    MG_APP_STATE_UNUSED_43,
    MG_APP_STATE_UNUSED_44,
    MG_APP_STATE_UNUSED_45,
    MG_APP_STATE_UNUSED_46,
    MG_APP_STATE_UNUSED_47,
    MG_APP_STATE_UNUSED_48,

    MG_APP_STATE_FROM_FRIEND_OR_CANT_RECEIVE,
    MG_APP_STATE_WAIT_MESSAGE_BOX_FOR_TRANSITION,
    MG_APP_STATE_WAIT_INPUT_RETURN_TO_MENU,
    MG_APP_STATE_ASK_CONFIRM_RECEIVE_SHARED_GIFT,
    MG_APP_STATE_EXIT_TO_TITLE_SCREEN,
    MG_APP_STATE_EXIT_TO_WONDER_CARDS_APP,
    MG_APP_STATE_EXIT_AFTER_RECEIVING_GIFT,
    MG_APP_STATE_SHOW_RECEIVED_WONDERCARD,
    MG_APP_STATE_RESET_SYSTEM,

    MG_APP_KEEP_PREVIOUS_STATE = -1,
};

typedef struct MysteryGiftEventData {
    MysteryGiftEventHeader header;
    WonderCard wonderCard;
} MysteryGiftEventData;

typedef struct MysteryGiftAppData MysteryGiftAppData;

typedef void (*MysteryGiftAppMainCallbackFuncPtr)(MysteryGiftAppData *);
typedef BOOL (*DWCCallbackFuncPtr)(void);

struct MysteryGiftAppData {
    BgConfig *bgConfig;
    SaveData *saveData;
    Options *options;
    StringTemplate *strTemplate;
    MessageLoader *msgLoader;
    Strbuf *strBuf;
    Window messageBox;
    Window menuWindows[MG_APP_NUM_MENU_WINDOWS];
    Window wonderCardTitleWindow;
    int msgBoxPrinterDelay;
    int textPrinterId;
    int unused_70;
    int queuedState;
    ListMenu *listMenu;
    StringList *listMenuOptions;
    int canReceiveGiftStatus;
    int foundGiftType;
    int unused_88;
    MysteryGiftEventData eventData;
    int wirelessCommsTimeout;
    int unk_438;
    int delay;
    BOOL exitToWondercardsApp;
    SpriteList *unusedSpriteList;
    G2dRenderer unusedG2dRenderer;
    SpriteResourceCollection *unusedSpriteResourceCollections[SPRITE_RESOURCE_MAX];
    SpriteResource *unusedSpriteResources[SPRITE_RESOURCE_MAX];
    SpriteResourcesHeader unusedSpriteResourcesHeader;
    Sprite *dowloadArrowSprite;
    int unk_62C;
    int unk_630;
    int unk_634;
    u8 wirelessDistributionBuffer[MG_APP_DISTRIBUTION_DATA_BUFFER_SIZE];
    int receptionMethod;
    enum MysteryGiftAppState *statePtr;
    int unk_1640;
    int nasAuthState;
    u8 *unused_1648;
    DWCInetControl unk_164C;
    BOOL unused_16AC;
    int unk_16B0;
    int unk_16B4;
    char wifiDistributionBuffer[MG_APP_DISTRIBUTION_DATA_BUFFER_SIZE];
    int unused_26B8;
    u32 unk_26BC;
    u32 unk_26C0;
    u32 unk_26C4;
    BOOL wifiCommErrored;
    int wifiCommErrorStringID;
    int wifiCommErrorCode;
    DWCErrorType wifiCommErrorType;
    BOOL wifiExitRequested;
    DWCCallbackFuncPtr dwcCallback;
    Window wifiCommErrorWindow;
    WonderCard wonderCard;
    MysteryGiftAppMainCallbackFuncPtr mainCallback;
    int cancelSave;
    void *waitDial;
    int animationStatus;
};

void MysteryGiftApp_ToggleWaitDial(MysteryGiftAppData *appData, BOOL show);
void MysteryGiftApp_ShowWiFiCommError(MysteryGiftAppData *appData);
ApplicationManager *MysteryGiftApp_GetApplicationManager(void);

#endif // POKEPLATINUM_OV97_0222D30C_H
