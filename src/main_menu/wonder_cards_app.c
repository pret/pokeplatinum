#include "main_menu/wonder_cards_app.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/narc.h"
#include "generated/string_padding_mode.h"

#include "main_menu/main_menu_util.h"
#include "main_menu/mystery_gift_app.h"
#include "main_menu/ov97_0222D04C.h"
#include "main_menu/ov97_02232054.h"
#include "savedata/save_table.h"

#include "bg_window.h"
#include "buffer_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "list_menu.h"
#include "main.h"
#include "message.h"
#include "message_util.h"
#include "mystery_gift.h"
#include "overlay_manager.h"
#include "palette.h"
#include "pokemon_icon.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

#include "res/graphics/main_menu/main_menu_graphics.naix"
#include "res/text/bank/mystery_gift_menu.h"

FS_EXTERN_OVERLAY(main_menu);

#define DIRECTION_NEXT     1
#define DIRECTION_PREVIOUS -1

#define SCROLL_REGISTER_SIZE sizeof(u16)

#define WONDERCARD_HEIGHT 168

#define CENTER_TEXT -1

#define SHARE_UNLIMITED 0xff

#define SHARE_MAX_PLAYERS 4

#define EMPTY_ORDER_SLOT 0x7fff * 0x7fff

#define BASE_TILE_SYSTEM_WINDOW_FRAME 1
#define BASE_TILE_FIELD_WINDOW_FRAME  (BASE_TILE_SYSTEM_WINDOW_FRAME + STANDARD_WINDOW_TILE_COUNT)
#define BASE_TILE_MESSAGE_BOX_FRAME   (BASE_TILE_FIELD_WINDOW_FRAME + STANDARD_WINDOW_TILE_COUNT)
#define BASE_TILE_WINDOWS_START       (BASE_TILE_MESSAGE_BOX_FRAME + SCROLLING_MESSAGE_BOX_TILE_COUNT)

// Make sure to update the TILESET_SIZE constants if you edit the tilesets
#define WC_SHARE_SCREEN_TILESET_SIZE   96
#define WC_SHARE_SCREEN_TILEMAP_WIDTH  (HW_LCD_WIDTH / 8)
#define WC_SHARE_SCREEN_TILEMAP_HEIGHT (HW_LCD_HEIGHT / 8)
#define WC_FRONT_BACK_TILESET_SIZE     384
#define WC_FRONT_TILEMAP_WIDTH         (HW_LCD_WIDTH / 8)
#define WC_FRONT_TILEMAP_HEIGHT        (HW_LCD_HEIGHT / 8)
#define WC_BACK_TILEMAP_WIDTH          (HW_LCD_WIDTH / 8)
#define WC_BACK_TILEMAP_HEIGHT         (HW_LCD_HEIGHT / 8)
#define WC_APP_BG_TILESET_SIZE         16
#define WC_APP_BG_TILEMAP_WIDTH        (HW_LCD_WIDTH / 8)
#define WC_APP_BG_TILEMAP_HEIGHT       (HW_LCD_HEIGHT / 8)

enum WonderCardsAppWindow {
    WC_FRONT_TEXT_WONDER_CARD = 0,
    WC_FRONT_TEXT_DATE_RECEIVED,
    WC_FRONT_GIFT_STATUS,
    WC_FRONT_WONDERCARD_TITLE,
    WC_FRONT_RECEIVED_DATE,
    WC_BACK_DESCRIPTION,
    WC_BACK_SHARES_LEFT,
    MSG_BOX_TEXT_WONDER_CARD,
    MSG_BOX_WC_ACTIONS_MENU,
    MSG_BOX_CONFIRM_WC_DELETE,
    MSG_BOX_CONFIRM_WC_SHARE,
    WC_SHARING_TEXT_PAL_DISTRIBUTION_REGISTRATION,
    WC_SHARING_TEXT_CURRENT_ENTRIES,
    WC_SHARING_TEXT_SEND,
    WC_SHARING_TEXT_CANCEL,
    WC_SHARING_ENTRIES_COUNT,
    WC_SHARING_PLAYER_INFO,
    MSG_BOX_DISTRIBUTION_UNDER_WAY,
    MSG_BOX_DISTRIBUTION_SUCCESSFUL,
    NUM_WC_APP_WINDOWS,
};

enum WonderCardsAppState {
    WC_APP_STATE_LOAD_FROM_SAVE = 0,
    WC_APP_STATE_INIT_GRAPHICS,
    WC_APP_STATE_LOAD_GRAPHICS,
    WC_APP_STATE_SELECT_WONDERCARD,
    WC_APP_STATE_SHOW_WONDERCARD_ACTIONS,
    WC_APP_STATE_WAIT_FOR_MENU_CHOICE,
    WC_APP_STATE_START_FLIP_WC_TO_BACK,
    WC_APP_STATE_WAIT_WC_FLIP_TO_BACK_HALFWAY,
    WC_APP_STATE_SHOW_WONDERCARD_BACK,
    WC_APP_STATE_START_FLIP_WC_TO_FRONT,
    WC_APP_STATE_WAIT_WC_FLIP_TO_FRONT_HALFWAY,
    WC_APP_STATE_CLOSE_WINDOWS,
    WC_APP_STATE_WAIT_CONFIRM_DELETION,
    WC_APP_STATE_WAIT_CONFIRM_START_WIRELESS,
    WC_APP_STATE_ASK_START_WIRELESS_TO_SHARE_WC,
    WC_APP_STATE_START_TRANSITION_TO_WC_SHARE_SCREEN,
    WC_APP_STATE_SHOW_WC_SHARE_SCREEN,
    WC_APP_STATE_PREPARE_FOR_SHARING,
    WC_APP_STATE_WAIT_FOR_PLAYERS,
    WC_APP_STATE_RETURN_AFTER_COMM_MAN_EXIT,
    WC_APP_STATE_RETURN_TO_WC_ACTIONS,
    WC_APP_STATE_DISTRIBUTION_UNDERWAY,
    WC_APP_STATE_WAIT_FOR_COMM_MAN_EXIT,
    WC_APP_STATE_START_COMM_SYNC,
    WC_APP_STATE_WAIT_FOR_COMM_SYNC,
    WC_APP_STATE_DISTRIBUTION_SUCCESSFUL,
    WC_APP_STATE_NO_MORE_WONDERCARDS,
    WC_APP_STATE_WAIT_FOR_SCREEN_TRANSITION,
    WC_APP_STATE_EXIT,
    WC_APP_STATE_UNUSED,
    NUM_WC_APP_STATES,
};

enum WonderCardsAppScreen {
    WC_SCREEN_WONDERCARD_FRONT = 0,
    WC_SCREEN_WONDERCARD_BACK,
    WC_MESSAGE_BOX, // Not a separate screen, used for message boxes that shouldn't always be shown on each screen
    WC_SCREEN_WONDERCARD_SHARING,
};

enum WonderCardAction {
    WC_ACTION_INFO = 0,
    WC_ACTION_SHARE,
    WC_ACTION_TRASH,
    WC_ACTION_EXIT,
    NUM_WC_ACTIONS,
};

enum WonderCardShareBtn {
    WC_SHARE_BTN_SEND = 0,
    WC_SHARE_BTN_CANCEL,
};

enum WonderCardShareAction {
    WC_SHARE_ACTION_NONE = 0,
    WC_SHARE_ACTION_SEND,
    WC_SHARE_ACTION_EXIT,
    WC_SHARE_ACTION_PLAY_SOUND,
};

enum WonderCardFlipStage {
    WC_FLIP_STAGE_GROWING = 0,
    WC_FLIP_STAGE_SHRINKING,
};

typedef struct WonderCardsAppData WonderCardsAppData;

typedef BOOL (*WcAppWindowSetupFuncPtr)(WonderCardsAppData *, Window *, TextColor);
typedef enum WonderCardsAppState (*StateTransitionFuncPtr)(ApplicationManager *);
typedef void (*WcAppMainCallbackFuncPtr)(WonderCardsAppData *);

typedef struct WonderCardFlipAnimManager {
    u16 scrollsBuffers[2][HW_LCD_HEIGHT * 4];
    BufferManager *bufferManager;
    SysTask *sysTask;
    fx32 offsetStep;
    fx32 deltaOffsetStep;
    BOOL running;
    BOOL animStage;
} WonderCardFlipAnimManager;

typedef struct WonderCardsAppWindowTemplate {
    int screen;
    int tilemapLeft;
    int tilemapTop;
    int width;
    int height;
    int font;
    int textColor;
    union {
        enum FontAttribute fontAttribute;
        int colorIndex;
    } bgColor;
    u32 entryID;
    WcAppWindowSetupFuncPtr setup;
    int leftMarginSize;
    int topMarginSize;
} WonderCardsAppWindowTemplate;

typedef struct StateTransitionMenuOptionTemplate {
    int textEntryID;
    union {
        enum WonderCardsAppState targetState; //!< Used when the state transition is handled by the main function
        StateTransitionFuncPtr transitionFunc; //!< Used when some action needs to be performed outside of the main function before changing the state, typically showing a message box and/or menu
        u32 asU32;
    } stateChange;
} StateTransitionMenuOptionTemplate;

struct WonderCardsAppData {
    enum HeapID heapID;
    MysteryGiftAppData mysteryGiftAppData;
    BgConfig *bgConfig;
    StringTemplate *strTemplate;
    MessageLoader *msgLoader;

    // These two arrays have an extra element for some reason
    Window windows[NUM_WC_APP_WINDOWS + 1];
    int windowBasetiles[NUM_WC_APP_WINDOWS + 1];

    int messageBoxBaseTile;
    void *messageBoxTemplate;
    MysteryGift *mysteryGift;
    SaveData *saveData;
    Options *options;
    int msgBoxFrame;
    int unused_2C10;
    WonderCard *wonderCards[NUM_WONDERCARD_SLOTS];
    int selectedWondercardSlot;
    int currentScreen;
    ListMenu *listMenu;
    StringList *strList;
    Window messageBox;
    Window standardWindow;
    int nextWindowBasetile;
    int connectedPlayersCount;
    u32 unused_2C58[4];

    /*
     * The index for these is the network ID of the players you're sharing the WC with.
     * Since network ID 0 is the current player, there is a unused slot at index 0.
     */
    TrainerInfo *connTrainerInfos[1 + SHARE_MAX_PLAYERS];
    int orderNumbers[1 + SHARE_MAX_PLAYERS];

    int prevConnPlayersCount;
    int shouldSendWc;
    void (*unused_2C98)(void *);
    int numPlayerConnections;
    int queuedState;
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *spriteResourceCollections[SPRITE_RESOURCE_MAX];
    SpriteResource *spriteResources[SPRITE_RESOURCE_MAX];
    SpriteResourcesHeader spriteResourceHeader;
    Sprite *shareScreenBtnSprites[2];
    Sprite *selectedWcSprites[NUM_WONDERCARD_SPRITES];
    WonderCard currentWonderCard;
    WonderCardFlipAnimManager flipAnimMan;
    WcAppMainCallbackFuncPtr mainCallback;
    int shareScreenSelectedBtn;
    WaitDial *waitDial;
};

static enum WonderCardsAppState AskConfirmDeleteWc(ApplicationManager *appMan);
static enum WonderCardsAppState AskConfirmShareWc(ApplicationManager *appMan);
static enum WonderCardsAppState ReturnToWcActionsMenu(ApplicationManager *appMan);
static enum WonderCardsAppState DeleteWcAndOpenNextWcActionsMenu(ApplicationManager *appMan);

static BOOL DoNothing(WonderCardsAppData *appData, Window *window, TextColor color);
static BOOL PrintWondercardTitle(WonderCardsAppData *appData, Window *window, TextColor color);
static BOOL DetermineGiftStatus(WonderCardsAppData *appData, Window *window, TextColor color);
static BOOL SetupDateString(WonderCardsAppData *appData, Window *window, TextColor color);
static BOOL PrintWondercardDescription(WonderCardsAppData *appData, Window *window, TextColor color);
static BOOL SetupRemainingSharesCount(WonderCardsAppData *appData, Window *window, TextColor color);
static BOOL InitWondercardActionsMenu(WonderCardsAppData *appData, Window *window, TextColor color);
static BOOL InitConfirmWondercardDeleteMenu(WonderCardsAppData *appData, Window *window, TextColor color);
static BOOL InitConfirmWondercardShareMenu(WonderCardsAppData *appData, Window *window, TextColor color);
static BOOL SetupEntriesCount(WonderCardsAppData *appData, Window *window, TextColor color);

static void WonderCardsApp_CloseListMenu(WonderCardsAppData *appData);
static int UpdateConnectedPlayers(WonderCardsAppData *appData, Window *window);
static void UpdateConnectedPlayersCount(WonderCardsAppData *appData, Window *window, int count);
static void StopWirelessCommunication(WonderCardsAppData *appData, enum WonderCardsAppState *state, enum WonderCardsAppState nextState);
static int ShowWindowFromTemplateIndex(WonderCardsAppData *appData, Window *window, int windowTemplateIdx, int baseTile);
static void LoadWondercardGraphics(WonderCardsAppData *appData, enum WonderCardsAppScreen screen);
static int GetNextOccupiedWcSlot(WonderCardsAppData *appData, int currentSlot, int direction);
static void ShowWindowsForScreen(WonderCardsAppData *appData, BOOL unused, enum WonderCardsAppScreen screen);
static int PrepareSelectedWCForSharing(WonderCardsAppData *appData);
static void LoadPokemonSpritesForSelectedWc(WonderCardsAppData *appData);
static void ResetAllSprites(WonderCardsAppData *appData);
static int CountConnectedPlayers(WonderCardsAppData *appData);

static WonderCardsAppWindowTemplate sWonderCardsAppWindows[NUM_WC_APP_WINDOWS] = {
    [WC_FRONT_TEXT_WONDER_CARD] = {
        .screen = WC_SCREEN_WONDERCARD_FRONT,
        .tilemapLeft = 2,
        .tilemapTop = 2,
        .width = 12,
        .height = TEXT_LINES_TILES(1),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = MysteryGiftMenu_Text_WonderCard,
        .setup = DoNothing,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [WC_FRONT_TEXT_DATE_RECEIVED] = {
        .screen = WC_SCREEN_WONDERCARD_FRONT,
        .tilemapLeft = 6,
        .tilemapTop = 17,
        .width = 11,
        .height = TEXT_LINES_TILES(1),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(15, 2, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = MysteryGiftMenu_Text_DateReceived,
        .setup = DoNothing,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [WC_FRONT_GIFT_STATUS] = {
        // Gift status : pending, received or no gift in WC
        .screen = WC_SCREEN_WONDERCARD_FRONT,
        .tilemapLeft = 2,
        .tilemapTop = 9,
        .width = 28,
        .height = TEXT_LINES_TILES(2),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = NULL,
        .setup = DetermineGiftStatus,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [WC_FRONT_WONDERCARD_TITLE] = {
        .screen = WC_SCREEN_WONDERCARD_FRONT,
        .tilemapLeft = 2,
        .tilemapTop = 6,
        .width = 28,
        .height = TEXT_LINES_TILES(1),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(15, 2, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = NULL,
        .setup = PrintWondercardTitle,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [WC_FRONT_RECEIVED_DATE] = {
        .screen = WC_SCREEN_WONDERCARD_FRONT,
        .tilemapLeft = 18,
        .tilemapTop = 17,
        .width = 11,
        .height = TEXT_LINES_TILES(1),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = MysteryGiftMenu_Text_DateTemplate,
        .setup = SetupDateString,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [WC_BACK_DESCRIPTION] = {
        .screen = WC_SCREEN_WONDERCARD_BACK,
        .tilemapLeft = 2,
        .tilemapTop = 3,
        .width = 28,
        .height = TEXT_LINES_TILES(5),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = NULL,
        .setup = PrintWondercardDescription,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [WC_BACK_SHARES_LEFT] = {
        .screen = WC_SCREEN_WONDERCARD_BACK,
        .tilemapLeft = 2,
        .tilemapTop = 14,
        .width = 28,
        .height = TEXT_LINES_TILES(2),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = MysteryGiftMenu_Text_CanBeDistributedNTimes,
        .setup = SetupRemainingSharesCount,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [MSG_BOX_TEXT_WONDER_CARD] = {
        .screen = WC_MESSAGE_BOX,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 27,
        .height = TEXT_LINES_TILES(2),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .colorIndex = 0xF },
        .entryID = MysteryGiftMenu_Text_WonderCard,
        .setup = DoNothing,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [MSG_BOX_WC_ACTIONS_MENU] = {
        .screen = WC_MESSAGE_BOX,
        .tilemapLeft = 18,
        .tilemapTop = 9,
        .width = 12,
        .height = TEXT_LINES_TILES(4),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .colorIndex = 0x5 },
        .entryID = NULL,
        .setup = InitWondercardActionsMenu,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [MSG_BOX_CONFIRM_WC_DELETE] = {
        .screen = WC_MESSAGE_BOX,
        .tilemapLeft = 24,
        .tilemapTop = 13,
        .width = 6,
        .height = TEXT_LINES_TILES(2),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .colorIndex = 0x5 },
        .entryID = NULL,
        .setup = InitConfirmWondercardDeleteMenu,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [MSG_BOX_CONFIRM_WC_SHARE] = {
        .screen = WC_MESSAGE_BOX,
        .tilemapLeft = 24,
        .tilemapTop = 13,
        .width = 6,
        .height = TEXT_LINES_TILES(2),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .colorIndex = 0x5 },
        .entryID = NULL,
        .setup = InitConfirmWondercardShareMenu,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [WC_SHARING_TEXT_PAL_DISTRIBUTION_REGISTRATION] = {
        .screen = WC_SCREEN_WONDERCARD_SHARING,
        .tilemapLeft = 1,
        .tilemapTop = 1,
        .width = 25,
        .height = TEXT_LINES_TILES(1),
        .font = FONT_SYSTEM,
        .textColor = TEXT_COLOR(14, 15, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = MysteryGiftMenu_Text_PalDistributionRegitration,
        .setup = DoNothing,
        .leftMarginSize = 7,
        .topMarginSize = 0,
    },
    [WC_SHARING_TEXT_CURRENT_ENTRIES] = {
        .screen = WC_SCREEN_WONDERCARD_SHARING,
        .tilemapLeft = 23,
        .tilemapTop = 7,
        .width = 9,
        .height = TEXT_LINES_TILES(2),
        .font = FONT_SYSTEM,
        .textColor = TEXT_COLOR(14, 15, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = MysteryGiftMenu_Text_CurrentEntries,
        .setup = DoNothing,
        .leftMarginSize = 2,
        .topMarginSize = 0,
    },
    [WC_SHARING_TEXT_SEND] = {
        .screen = WC_SCREEN_WONDERCARD_SHARING,
        .tilemapLeft = 6,
        .tilemapTop = 20,
        .width = 6,
        .height = TEXT_LINES_TILES(1),
        .font = FONT_SYSTEM,
        .textColor = TEXT_COLOR(14, 15, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = MysteryGiftMenu_Text_Send,
        .setup = DoNothing,
        .leftMarginSize = CENTER_TEXT,
        .topMarginSize = 1,
    },
    [WC_SHARING_TEXT_CANCEL] = {
        .screen = WC_SCREEN_WONDERCARD_SHARING,
        .tilemapLeft = 20,
        .tilemapTop = 20,
        .width = 6,
        .height = TEXT_LINES_TILES(1),
        .font = FONT_SYSTEM,
        .textColor = TEXT_COLOR(14, 15, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = MysteryGiftMenu_Text_Cancel_WonderCards,
        .setup = DoNothing,
        .leftMarginSize = CENTER_TEXT,
        .topMarginSize = 1,
    },
    [WC_SHARING_ENTRIES_COUNT] = {
        .screen = WC_SCREEN_WONDERCARD_SHARING,
        .tilemapLeft = 25,
        .tilemapTop = 12,
        .width = 4,
        .height = TEXT_LINES_TILES(1),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = MysteryGiftMenu_Text_EntriesCountTemplate,
        .setup = SetupEntriesCount,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [WC_SHARING_PLAYER_INFO] = {
        // Name & TID for the players the WC will be shared with.
        .screen = WC_SCREEN_WONDERCARD_SHARING,
        .tilemapLeft = 2,
        .tilemapTop = 5,
        .width = 19,
        .height = TEXT_LINES_WITH_SPACING_TILES(4, 1),
        .font = FONT_SYSTEM,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .fontAttribute = -1 },
        .entryID = NULL,
        .setup = DoNothing,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [MSG_BOX_DISTRIBUTION_UNDER_WAY] = {
        .screen = WC_MESSAGE_BOX,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 27,
        .height = TEXT_LINES_TILES(2),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .colorIndex = 0xE },
        .entryID = MysteryGiftMenu_Text_GiftDistributionUnderWay,
        .setup = DoNothing,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
    [MSG_BOX_DISTRIBUTION_SUCCESSFUL] = {
        .screen = WC_MESSAGE_BOX,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 27,
        .height = TEXT_LINES_TILES(2),
        .font = FONT_MESSAGE,
        .textColor = TEXT_COLOR(1, 2, 0),
        .bgColor = { .colorIndex = 0xE },
        .entryID = MysteryGiftMenu_Text_GiftDistributionSuccessful,
        .setup = DoNothing,
        .leftMarginSize = 0,
        .topMarginSize = 0,
    },
};

static StateTransitionMenuOptionTemplate sWonderCardActions[] = {
    [WC_ACTION_INFO] = { MysteryGiftMenu_Text_Info, { .targetState = WC_APP_STATE_START_FLIP_WC_TO_BACK } },
    [WC_ACTION_SHARE] = { MysteryGiftMenu_Text_Share, { .transitionFunc = AskConfirmShareWc } },
    [WC_ACTION_TRASH] = { MysteryGiftMenu_Text_Trash, { .transitionFunc = AskConfirmDeleteWc } },
    [WC_ACTION_EXIT] = { MysteryGiftMenu_Text_Exit_WonderCards, { .targetState = WC_APP_STATE_CLOSE_WINDOWS } }
};

static StateTransitionMenuOptionTemplate sConfirmWondercardDeleteOptions[] = {
    { MysteryGiftMenu_Text_Yes_WonderCards, { .transitionFunc = DeleteWcAndOpenNextWcActionsMenu } },
    { MysteryGiftMenu_Text_No_WonderCards, { .transitionFunc = ReturnToWcActionsMenu } }
};

static StateTransitionMenuOptionTemplate sConfirmWondercardShareOptions[] = {
    { MysteryGiftMenu_Text_Yes_WonderCards, { .targetState = WC_APP_STATE_ASK_START_WIRELESS_TO_SHARE_WC } },
    { MysteryGiftMenu_Text_No_WonderCards, { .transitionFunc = ReturnToWcActionsMenu } }
};

static StateTransitionMenuOptionTemplate sConfirmStartWirelessOptions[] = {
    { MysteryGiftMenu_Text_Yes_WonderCards, { .targetState = WC_APP_STATE_START_TRANSITION_TO_WC_SHARE_SCREEN } },
    { MysteryGiftMenu_Text_No_WonderCards, { .transitionFunc = ReturnToWcActionsMenu } }
};

static ListMenuTemplate sWonderCardsAppListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = MainMenuUtil_ListMenuCursorCB,
    .printCallback = NULL,
    .window = NULL,
    .count = 0,
    .maxDisplay = 4,
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

static void LoadWcShareScreenButtonsGraphics(WonderCardsAppData *appData)
{
    ResetAllSprites(appData);
    MainMenuUtil_InitCharPlttTransferBuffers();
    MainMenuUtil_InitSpriteLoader();
    MainMenuUtil_LoadSprite(NARC_INDEX_GRAPHIC__MYSTERY, wonder_card_share_buttons_NCGR_lz, wonder_card_share_buttons_NCLR, wonder_card_share_buttons_cell_NCER_lz, wonder_card_share_buttons_anim_NANR_lz, DS_SCREEN_MAIN);
}

static void ResetAllSprites(WonderCardsAppData *appData)
{
    if (appData->shareScreenBtnSprites[0]) {
        Sprite_Delete(appData->shareScreenBtnSprites[0]);
    }

    if (appData->shareScreenBtnSprites[1]) {
        Sprite_Delete(appData->shareScreenBtnSprites[1]);
    }

    appData->shareScreenBtnSprites[0] = appData->shareScreenBtnSprites[1] = NULL;

    if (appData->selectedWcSprites[0]) {
        Sprite_Delete(appData->selectedWcSprites[0]);
    }

    if (appData->selectedWcSprites[1]) {
        Sprite_Delete(appData->selectedWcSprites[1]);
    }

    if (appData->selectedWcSprites[2]) {
        Sprite_Delete(appData->selectedWcSprites[2]);
    }

    appData->selectedWcSprites[0] = appData->selectedWcSprites[1] = appData->selectedWcSprites[2] = NULL;
    MainMenuUtil_FreeSprites();
}

static void ShowWcShareButtons(WonderCardsAppData *appData)
{
    appData->shareScreenSelectedBtn = WC_SHARE_BTN_SEND;
    appData->shareScreenBtnSprites[WC_SHARE_BTN_SEND] = MainMenuUtil_InitSprite(DS_SCREEN_MAIN, appData->shareScreenBtnSprites[WC_SHARE_BTN_SEND], 72, WONDERCARD_HEIGHT, 1);
    Sprite_SetExplicitPriority(appData->shareScreenBtnSprites[WC_SHARE_BTN_SEND], 2);

    appData->shareScreenBtnSprites[WC_SHARE_BTN_CANCEL] = MainMenuUtil_InitSprite(DS_SCREEN_MAIN, appData->shareScreenBtnSprites[WC_SHARE_BTN_CANCEL], 184, WONDERCARD_HEIGHT, 0);
    Sprite_SetExplicitPriority(appData->shareScreenBtnSprites[WC_SHARE_BTN_CANCEL], 2);
}

static void EraseStandardWindowIfInUse(Window *window, u8 skipTransfer)
{
    if (Window_IsInUse(window) == TRUE) {
        Window_EraseStandardFrame(window, skipTransfer);
    }
}

static void EraseMessageBoxIfInUse(Window *window, u8 skipTransfer)
{
    if (Window_IsInUse(window) == TRUE) {
        Window_EraseMessageBox(window, skipTransfer);
    }
}

static void MakeStateChangeListMenuFromEntryTemplates(WonderCardsAppData *appData, StateTransitionMenuOptionTemplate *entries, int numEntries, Window *window, int startCursorPos)
{
    if (appData->strList) {
        StringList_Free(appData->strList);
    }

    if (appData->listMenu) {
        ListMenu_Free(appData->listMenu, NULL, NULL);
    }

    appData->strList = StringList_New(numEntries, HEAP_ID_WONDER_CARDS_APP);
    appData->msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MYSTERY_GIFT_MENU, HEAP_ID_WONDER_CARDS_APP);

    for (int i = 0; i < numEntries; i++) {
        StringList_AddFromMessageBank(appData->strList, appData->msgLoader, entries[i].textEntryID, entries[i].stateChange.asU32);
    }

    MessageLoader_Free(appData->msgLoader);

    ListMenuTemplate listMenuTemplate = sWonderCardsAppListMenuTemplate;

    listMenuTemplate.choices = appData->strList;
    listMenuTemplate.count = numEntries;
    listMenuTemplate.window = window;

    appData->listMenu = ListMenu_New(&listMenuTemplate, 0, startCursorPos, HEAP_ID_WONDER_CARDS_APP);
}

static void PrintTextEntryToWindow(Window *window, int textEntryID)
{
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MYSTERY_GIFT_MENU, HEAP_ID_WONDER_CARDS_APP);
    StringTemplate *strTemplate = StringTemplate_Default(HEAP_ID_WONDER_CARDS_APP);

    Window_FillTilemap(window, Font_GetAttribute(FONT_MESSAGE, FONTATTR_BG_COLOR));

    String *string = MessageUtil_ExpandedString(strTemplate, msgLoader, textEntryID, HEAP_ID_WONDER_CARDS_APP);
    Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Window_CopyToVRAM(window);

    String_Free(string);
    MessageLoader_Free(msgLoader);
    StringTemplate_Free(strTemplate);
}

static void LoadWcShareScreenBackground(BgConfig *bgConfig)
{
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, wonder_cards_text_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(15), PALETTE_SIZE_BYTES, HEAP_ID_WONDER_CARDS_APP);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, wonder_card_share_bg_tiles_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(12), PALETTE_SIZE_BYTES, HEAP_ID_WONDER_CARDS_APP);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, wonder_card_share_bg_tiles_NCGR_lz, bgConfig, BG_LAYER_MAIN_1, 0, WC_SHARE_SCREEN_TILESET_SIZE * TILE_SIZE_4BPP, TRUE, HEAP_ID_WONDER_CARDS_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, wonder_card_share_bg_NSCR_lz, bgConfig, BG_LAYER_MAIN_1, 0, WC_SHARE_SCREEN_TILEMAP_HEIGHT * WC_SHARE_SCREEN_TILEMAP_WIDTH * 2, TRUE, HEAP_ID_WONDER_CARDS_APP);
    Bg_ChangeTilemapRectPalette(bgConfig, BG_LAYER_MAIN_1, 0, 0, WC_SHARE_SCREEN_TILEMAP_WIDTH, WC_SHARE_SCREEN_TILEMAP_HEIGHT, PLTT_12);
    Bg_CopyTilemapBufferToVRAM(bgConfig, BG_LAYER_MAIN_1);
}

static enum WonderCardsAppState AskConfirmShareWc(ApplicationManager *appMan)
{
    WonderCardsAppData *appData = ApplicationManager_Data(appMan);

    WonderCardsApp_CloseListMenu(appData);
    PrintTextEntryToWindow(&appData->messageBox, MysteryGiftMenu_Text_WouldYouLikeToShareThisGift);
    ShowWindowFromTemplateIndex(appData, &appData->standardWindow, MSG_BOX_CONFIRM_WC_SHARE, appData->nextWindowBasetile);

    return WC_APP_STATE_WAIT_CONFIRM_START_WIRELESS;
}

static enum WonderCardsAppState AskConfirmDeleteWc(ApplicationManager *appMan)
{
    WonderCardsAppData *appData = ApplicationManager_Data(appMan);

    WonderCardsApp_CloseListMenu(appData);

    if (MysteryGift_CheckWcHasPgtSaved(appData->mysteryGift, appData->selectedWondercardSlot) == TRUE) {
        PrintTextEntryToWindow(&appData->messageBox, MysteryGiftMenu_Text_HaventReceivedGiftYet);
    } else {
        PrintTextEntryToWindow(&appData->messageBox, MysteryGiftMenu_Text_ThrowCardAway);
    }

    ShowWindowFromTemplateIndex(appData, &appData->standardWindow, MSG_BOX_CONFIRM_WC_DELETE, appData->nextWindowBasetile);
    return WC_APP_STATE_WAIT_CONFIRM_DELETION;
}

static enum WonderCardsAppState DeleteWcAndOpenNextWcActionsMenu(ApplicationManager *appMan)
{
    WonderCardsAppData *appData = ApplicationManager_Data(appMan);

    WonderCardsApp_CloseListMenu(appData);
    PrintTextEntryToWindow(&appData->messageBox, MysteryGiftMenu_Text_DiscardingDontTurnOff);

    appData->waitDial = Window_AddWaitDial(&appData->messageBox, BASE_TILE_MESSAGE_BOX_FRAME);

    if (MysteryGift_CheckWcHasPgtSaved(appData->mysteryGift, appData->selectedWondercardSlot) == TRUE) {
        MysteryGift_FreeWcErasePgt(appData->mysteryGift, appData->selectedWondercardSlot);
    } else {
        MysteryGift_FreeWcSlot(appData->mysteryGift, appData->selectedWondercardSlot);
    }

    SaveData_Save(appData->saveData);
    DestroyWaitDial(appData->waitDial);

    if (MysteryGift_CheckHasWonderCards(appData->mysteryGift) == FALSE) {
        return WC_APP_STATE_NO_MORE_WONDERCARDS;
    }

    appData->selectedWondercardSlot = GetNextOccupiedWcSlot(appData, appData->selectedWondercardSlot, DIRECTION_NEXT);

    PrintTextEntryToWindow(&appData->messageBox, MysteryGiftMenu_Text_WonderCard);
    ShowWindowFromTemplateIndex(appData, &appData->standardWindow, MSG_BOX_WC_ACTIONS_MENU, appData->nextWindowBasetile);
    ShowWindowsForScreen(appData, 1, WC_SCREEN_WONDERCARD_FRONT);

    return WC_APP_STATE_WAIT_FOR_MENU_CHOICE;
}

static enum WonderCardsAppState ReturnToWcActionsMenu(ApplicationManager *appMan)
{
    WonderCardsAppData *appData = ApplicationManager_Data(appMan);

    WonderCardsApp_CloseListMenu(appData);
    PrintTextEntryToWindow(&appData->messageBox, MysteryGiftMenu_Text_WonderCard);
    ShowWindowFromTemplateIndex(appData, &appData->standardWindow, MSG_BOX_WC_ACTIONS_MENU, appData->nextWindowBasetile);

    return WC_APP_STATE_WAIT_FOR_MENU_CHOICE;
}

static void WonderCardsApp_CloseListMenu(WonderCardsAppData *appData)
{
    StringList_Free(appData->strList);
    appData->strList = NULL;
    ListMenu_Free(appData->listMenu, NULL, NULL);
    appData->listMenu = NULL;
    EraseStandardWindowIfInUse(&appData->standardWindow, FALSE);
    Window_ClearAndCopyToVRAM(&appData->standardWindow);
    Window_Remove(&appData->standardWindow);
}

static BOOL DoNothing(WonderCardsAppData *appData, Window *window, TextColor color)
{
    return TRUE;
}

static BOOL PrintWondercardTitle(WonderCardsAppData *appData, Window *windwow, TextColor color)
{
    String *string = String_Init(WONDERCARD_TITLE_LENGTH + 1, appData->heapID);

    String_CopyNumChars(string, appData->wonderCards[appData->selectedWondercardSlot]->eventHeader.title, WONDERCARD_TITLE_LENGTH);
    Text_AddPrinterWithParamsAndColor(windwow, FONT_MESSAGE, string, 0, 0, TEXT_SPEED_NO_TRANSFER, color, NULL);
    String_Free(string);

    return TRUE;
}

static BOOL DetermineGiftStatus(WonderCardsAppData *appData, Window *window, TextColor color)
{
    WonderCard *wonderCard = appData->wonderCards[appData->selectedWondercardSlot];
    int stringEntryID;

    if (wonderCard->eventHeader.savePgt == FALSE) {
        stringEntryID = MysteryGiftMenu_Text_NoGiftAttached;
    } else {
        if (appData->mysteryGift == NULL || MysteryGift_CheckWcHasPgtSaved(appData->mysteryGift, appData->selectedWondercardSlot) == TRUE) {
            stringEntryID = MysteryGiftMenu_Text_PleasePickUpInPokeMart;
        } else {
            stringEntryID = MysteryGiftMenu_Text_AlreadyReceivedBefore;
        }
    }

    String *string = MessageUtil_ExpandedString(appData->strTemplate, appData->msgLoader, stringEntryID, appData->heapID);

    Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, string, 0, 0, TEXT_SPEED_NO_TRANSFER, color, NULL);
    String_Free(string);

    return TRUE;
}

static BOOL SetupDateString(WonderCardsAppData *appData, Window *window, TextColor color)
{
    RTCDate date;

    RTC_ConvertDayToDate(&date, appData->wonderCards[appData->selectedWondercardSlot]->receivedDate);

    StringTemplate_SetNumber(appData->strTemplate, 0, date.year + 2000, 4, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_SetMonthName(appData->strTemplate, 1, date.month);
    StringTemplate_SetNumber(appData->strTemplate, 2, date.day, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);

    return TRUE;
}

static BOOL PrintWondercardDescription(WonderCardsAppData *appData, Window *window, TextColor color)
{
    String *string = String_Init(WONDERCARD_DESCRIPTION_LENGTH + 1, HEAP_ID_WONDER_CARDS_APP);

    String_CopyNumChars(string, appData->wonderCards[appData->selectedWondercardSlot]->description, WONDERCARD_DESCRIPTION_LENGTH);
    Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, string, 0, 0, TEXT_SPEED_NO_TRANSFER, color, NULL);
    String_Free(string);

    return FALSE;
}

static BOOL SetupRemainingSharesCount(WonderCardsAppData *appData, Window *window, TextColor color)
{
    if (appData->wonderCards[appData->selectedWondercardSlot]->sharesLeft == SHARE_UNLIMITED) {
        String *string = MessageUtil_ExpandedString(appData->strTemplate, appData->msgLoader, MysteryGiftMenu_Text_CanBeSharedAsManyFriendsAsYouLike, HEAP_ID_WONDER_CARDS_APP);
        Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, string, 0, 0, TEXT_SPEED_NO_TRANSFER, color, NULL);
        String_Free(string);
        return FALSE;
    } else if (appData->wonderCards[appData->selectedWondercardSlot]->sharesLeft) {
        StringTemplate_SetNumber(appData->strTemplate, 0, appData->wonderCards[appData->selectedWondercardSlot]->sharesLeft, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        return TRUE;
    } else {
        return FALSE;
    }
}

static BOOL InitWondercardActionsMenu(WonderCardsAppData *appData, Window *window, TextColor unused)
{
    StateTransitionMenuOptionTemplate entries[NUM_WC_ACTIONS];
    WonderCardsAppWindowTemplate *windowTemplate;
    int numOptions = 0;

    entries[numOptions++] = sWonderCardActions[WC_ACTION_INFO];

    if (appData->wonderCards[appData->selectedWondercardSlot]->sharesLeft) {
        entries[numOptions++] = sWonderCardActions[WC_ACTION_SHARE];
    }

    entries[numOptions++] = sWonderCardActions[WC_ACTION_TRASH];
    entries[numOptions++] = sWonderCardActions[WC_ACTION_EXIT];

    windowTemplate = appData->messageBoxTemplate;

    Window_ClearAndCopyToVRAM(window);
    Window_Remove(window);
    Window_Add(appData->bgConfig, window, BG_LAYER_MAIN_2, windowTemplate->tilemapLeft, windowTemplate->tilemapTop + TEXT_LINES_TILES(NUM_WC_ACTIONS - numOptions), windowTemplate->width, windowTemplate->height - TEXT_LINES_TILES(NUM_WC_ACTIONS - numOptions), PLTT_15, appData->messageBoxBaseTile);
    MakeStateChangeListMenuFromEntryTemplates(appData, entries, numOptions, window, 0);

    return TRUE;
}

static BOOL InitConfirmWondercardDeleteMenu(WonderCardsAppData *appData, Window *window, TextColor unused)
{
    MakeStateChangeListMenuFromEntryTemplates(appData, sConfirmWondercardDeleteOptions, NELEMS(sConfirmWondercardDeleteOptions), window, 1);
    return TRUE;
}

static BOOL InitConfirmWondercardShareMenu(WonderCardsAppData *appData, Window *window, TextColor unused)
{
    MakeStateChangeListMenuFromEntryTemplates(appData, sConfirmWondercardShareOptions, NELEMS(sConfirmWondercardShareOptions), window, 0);
    return TRUE;
}

static BOOL AskConfirmStartWireless(WonderCardsAppData *appData, Window *window, TextColor unused)
{
    PrintTextEntryToWindow(&appData->messageBox, MysteryGiftMenu_Text_WirelessCommunicationsWillBeLaunched);
    MakeStateChangeListMenuFromEntryTemplates(appData, sConfirmStartWirelessOptions, NELEMS(sConfirmStartWirelessOptions), window, 0);

    return TRUE;
}

static BOOL SetupEntriesCount(WonderCardsAppData *appData, Window *window, TextColor unused)
{
    StringTemplate_SetNumber(appData->strTemplate, 0, 0, 1, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    return TRUE;
}

static void DoScreenTransitionToState(WonderCardsAppData *appData, enum FadeType fadeType, enum WonderCardsAppState nextState, enum WonderCardsAppState *state)
{
    StartScreenFade(FADE_BOTH_SCREENS, fadeType, fadeType, COLOR_BLACK, 6, 1, HEAP_ID_WONDER_CARDS_APP);

    if (state) {
        *state = WC_APP_STATE_WAIT_FOR_SCREEN_TRANSITION;
    }

    appData->queuedState = nextState;
}

static void ShowWindowsForScreen(WonderCardsAppData *appData, BOOL unused, enum WonderCardsAppScreen screen)
{
    // forward declarations required to match
    int i, baseTile;

    WonderCardsAppWindowTemplate *windowTemplates = sWonderCardsAppWindows;

    appData->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MYSTERY_GIFT_MENU, appData->heapID);
    appData->strTemplate = StringTemplate_Default(appData->heapID);
    appData->currentScreen = screen;

    LoadWondercardGraphics(appData, screen);

    for (i = 0; i < NELEMS(sWonderCardsAppWindows); i++) {
        if (windowTemplates[i].screen != screen && windowTemplates[i].screen != WC_MESSAGE_BOX) {
            if (appData->windows[i].bgConfig) {
                Window_ClearAndCopyToVRAM(&appData->windows[i]);
                Window_Remove(&appData->windows[i]);
            }
        }
    }

    baseTile = BASE_TILE_WINDOWS_START;

    for (i = 0; i < NELEMS(sWonderCardsAppWindows); i++) {
        if (windowTemplates[i].screen == screen) {
            if (appData->windows[i].bgConfig == NULL) {
                appData->windowBasetiles[i] = baseTile;
                Window_Add(appData->bgConfig, &appData->windows[i], BG_LAYER_MAIN_0, windowTemplates[i].tilemapLeft, windowTemplates[i].tilemapTop, windowTemplates[i].width, windowTemplates[i].height, PLTT_15, baseTile);
            }

            Window_FillTilemap(&appData->windows[i], Font_GetAttribute(windowTemplates[i].font, windowTemplates[i].bgColor.fontAttribute));
            TextColor color = windowTemplates[i].textColor;

            if (windowTemplates[i].setup(appData, &appData->windows[i], color) == TRUE) {
                if (windowTemplates[i].entryID) {
                    String *string = MessageUtil_ExpandedString(appData->strTemplate, appData->msgLoader, windowTemplates[i].entryID, appData->heapID);

                    {
                        u32 yOffset = (windowTemplates[i].leftMarginSize == CENTER_TEXT) ? Font_CalcCenterAlignment(windowTemplates[i].font, string, 0, windowTemplates[i].width * TILE_WIDTH_PIXELS) : windowTemplates[i].leftMarginSize;
                        Text_AddPrinterWithParamsAndColor(&appData->windows[i], windowTemplates[i].font, string, yOffset, windowTemplates[i].topMarginSize, TEXT_SPEED_NO_TRANSFER, color, NULL);
                    }

                    String_Free(string);
                }
            }

            Window_CopyToVRAM(&appData->windows[i]);
            baseTile += windowTemplates[i].width * windowTemplates[i].height;
        }
    }

    MessageLoader_Free(appData->msgLoader);
    StringTemplate_Free(appData->strTemplate);

    if (screen == WC_SCREEN_WONDERCARD_FRONT) {
        LoadPokemonSpritesForSelectedWc(appData);
    }
}

static int ShowWindowFromTemplateIndex(WonderCardsAppData *appData, Window *window, int windowTemplateIdx, int baseTile)
{
    WonderCardsAppWindowTemplate *windowTemplate = &sWonderCardsAppWindows[windowTemplateIdx];

    if (window->bgConfig == NULL) {
        Window_Add(appData->bgConfig, window, BG_LAYER_MAIN_2, windowTemplate->tilemapLeft, windowTemplate->tilemapTop, windowTemplate->width, windowTemplate->height, PLTT_15, baseTile);
    }

    Window_FillTilemap(window, windowTemplate->bgColor.colorIndex);

    if (windowTemplate->entryID) {
        appData->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MYSTERY_GIFT_MENU, HEAP_ID_WONDER_CARDS_APP);
        appData->strTemplate = StringTemplate_Default(HEAP_ID_WONDER_CARDS_APP);
    }

    appData->messageBoxBaseTile = baseTile;
    appData->messageBoxTemplate = windowTemplate;

    windowTemplate->setup(appData, window, TEXT_COLOR(1, 2, 0));

    if (windowTemplate->entryID) {
        String *string = MessageUtil_ExpandedString(appData->strTemplate, appData->msgLoader, windowTemplate->entryID, HEAP_ID_WONDER_CARDS_APP);

        Text_AddPrinterWithParamsAndColor(window, windowTemplate->font, string, 0, 0, TEXT_SPEED_NO_TRANSFER, windowTemplate->textColor, NULL);
        String_Free(string);
        MessageLoader_Free(appData->msgLoader);
        StringTemplate_Free(appData->strTemplate);
    }

    if (window == &appData->messageBox) {
        Window_DrawMessageBoxWithScrollCursor(window, FALSE, BASE_TILE_MESSAGE_BOX_FRAME, PLTT_10);
    } else {
        Window_DrawStandardFrame(window, FALSE, BASE_TILE_FIELD_WINDOW_FRAME, PLTT_14);
    }

    return baseTile + windowTemplate->width * windowTemplate->height;
}

static int GetNextOccupiedWcSlot(WonderCardsAppData *appData, int current, int direction)
{
    int initial = current;

    while (TRUE) {
        current += direction;

        if (current == NUM_WONDERCARD_SLOTS) {
            current = 0;
        }

        if (current == -1) {
            current = NUM_WONDERCARD_SLOTS - 1;
        }

        if (initial == current) {
            break;
        }

        if (MysteryGift_CheckIsWcSlotOccupied(appData->mysteryGift, current)) {
            break;
        }
    }

    return current;
}

static void LoadTilemapBufferFromNarc(WonderCardsAppData *appData, u32 narcMemberIdx, u32 bgLayer, u32 size)
{
    NNSG2dScreenData *screenData;
    void *nscr = LoadMemberFromNARC(NARC_INDEX_GRAPHIC__MYSTERY, narcMemberIdx, TRUE, appData->heapID, TRUE);

    NNS_G2dGetUnpackedScreenData(nscr, &screenData);

    Bg_LoadTilemapBuffer(appData->bgConfig, bgLayer, screenData->rawData, size);
    Heap_Free(nscr);
}

static void LoadWondercardGraphics(WonderCardsAppData *appData, enum WonderCardsAppScreen screen)
{
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, wonder_card_tiles_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(0), 8 * PALETTE_SIZE_BYTES, appData->heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, wonder_card_tiles_NCGR_lz, appData->bgConfig, BG_LAYER_MAIN_1, 0, WC_FRONT_BACK_TILESET_SIZE * TILE_SIZE_4BPP, TRUE, appData->heapID);

    switch (screen) {
    case WC_SCREEN_WONDERCARD_FRONT:
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, wonder_card_front_NSCR_lz, appData->bgConfig, BG_LAYER_MAIN_1, 0, WC_FRONT_TILEMAP_WIDTH * WC_FRONT_TILEMAP_HEIGHT * 2, TRUE, appData->heapID);
        break;
    case WC_SCREEN_WONDERCARD_BACK:
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, wonder_card_back_NSCR_lz, appData->bgConfig, BG_LAYER_MAIN_1, 0, WC_BACK_TILEMAP_WIDTH * WC_BACK_TILEMAP_HEIGHT * 2, TRUE, appData->heapID);
        break;
    default:
        break;
    }

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_tiles_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(11), PALETTE_SIZE_BYTES, appData->heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_tiles_NCGR_lz, appData->bgConfig, BG_LAYER_MAIN_3, 0, WC_APP_BG_TILESET_SIZE * TILE_SIZE_4BPP, TRUE, appData->heapID);

    LoadTilemapBufferFromNarc(appData, mystery_gift_bg_NSCR_lz, BG_LAYER_MAIN_3, WC_APP_BG_TILEMAP_WIDTH * WC_APP_BG_TILEMAP_HEIGHT * 2);

    Bg_ChangeTilemapRectPalette(appData->bgConfig, BG_LAYER_MAIN_3, 0, 0, WC_APP_BG_TILEMAP_WIDTH, WC_APP_BG_TILEMAP_HEIGHT, PLTT_11);
    Bg_CopyTilemapBufferToVRAM(appData->bgConfig, BG_LAYER_MAIN_3);
}

static void ProcessStateTransitionMenuInput(ApplicationManager *appMan, enum WonderCardsAppState *state, StateTransitionFuncPtr onCancelStateTransition)
{
    enum WonderCardsAppState nextState;
    WonderCardsAppData *appData = ApplicationManager_Data(appMan);
    static StateTransitionFuncPtr optionStateTransitionFunc;

    u32 input = ListMenu_ProcessInput(appData->listMenu);

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        break;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        if (onCancelStateTransition) {
            nextState = onCancelStateTransition(appMan);

            if (nextState != -1) {
                *state = nextState;
            }
        }
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        if (input) {
            if (input < NUM_WC_APP_STATES) {
                *state = input;
            } else {
                optionStateTransitionFunc = (StateTransitionFuncPtr)input;
                nextState = optionStateTransitionFunc(appMan);

                if (nextState != -1) {
                    *state = nextState;
                }
            }
        }
        break;
    }
}

static void LoadPokemonSpritesForSelectedWc(WonderCardsAppData *appData)
{
    int spriteX, i; // forward declarations required to match

    if (appData->selectedWcSprites[0] == NULL && appData->selectedWcSprites[1] == NULL && appData->selectedWcSprites[2] == NULL) {
        if (MainMenuUtil_CheckSpriteLoaderInit() == TRUE) {
            ResetAllSprites(appData);
        }

        MainMenuUtil_InitCharPlttTransferBuffers();
        MainMenuUtil_InitSpriteLoader();
        MainMenuUtil_LoadSprite(NARC_INDEX_GRAPHIC__MYSTERY, gba_migration_sprites_NCGR_lz, gba_migration_sprites_NCLR, gba_migration_sprites_cell_NCER_lz, gba_migration_sprites_anim_NANR_lz, DS_SCREEN_MAIN);

        Graphics_LoadPalette(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), PAL_LOAD_MAIN_OBJ, PLTT_OFFSET(3), 0, appData->heapID);
    }

    enum Species species = SPECIES_BULBASAUR;
    spriteX = 178;

    for (i = 0; i < NUM_WONDERCARD_SPRITES; i++, spriteX += 25) {
        species = appData->wonderCards[appData->selectedWondercardSlot]->spritesSpecies[i];

        if (species == SPECIES_NONE) {
            if (appData->selectedWcSprites[i]) {
                Sprite_SetDrawFlag(appData->selectedWcSprites[i], FALSE);
            }

            continue;
        }

        NNSG2dCharacterData *charData;

        appData->selectedWcSprites[i] = MainMenuUtil_InitSprite(DS_SCREEN_MAIN, appData->selectedWcSprites[i], spriteX, 16, 10 + i);
        u8 *ncgrBuffer = Graphics_GetCharData(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconSpriteIndex(species, FALSE, HEAP_ID_SYSTEM), FALSE, &charData, appData->heapID);

        DC_FlushRange(charData->pRawData, (4 * 4 * TILE_SIZE_4BPP));
        GX_LoadOBJ(charData->pRawData, (0x64 + i * 4 * 4) * TILE_SIZE_4BPP, (4 * 4 * TILE_SIZE_4BPP));

        Sprite_SetExplicitPalette(appData->selectedWcSprites[i], PokeIconPaletteIndex(species, 0, 0) + 3);
        Heap_Free(ncgrBuffer);
    }
}

static BOOL WonderCardsApp_Init(ApplicationManager *appMan, int *unused)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_WONDER_CARDS_APP, HEAP_SIZE_WONDER_CARDS_APP);

    WonderCardsAppData *appData = ApplicationManager_NewData(appMan, sizeof(WonderCardsAppData), HEAP_ID_WONDER_CARDS_APP);
    memset(appData, 0, sizeof(WonderCardsAppData));

    appData->bgConfig = BgConfig_New(HEAP_ID_WONDER_CARDS_APP);
    appData->heapID = HEAP_ID_WONDER_CARDS_APP;

    SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
    SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);

    appData->selectedWondercardSlot = NUM_WONDERCARD_SLOTS - 1;
    appData->numPlayerConnections = 1;

    MainMenuUtil_Init(HEAP_ID_WONDER_CARDS_APP);
    Heap_Create(HEAP_ID_SYSTEM, HEAP_ID_91, 0x300);

    return TRUE;
}

static void StartDMAForFlipAnim(SysTask *sysTask, WonderCardFlipAnimManager *animMan)
{
    BufferManager_StopDMA();
    BufferManager_StartDMA(BufferManager_GetReadBuffer(animMan->bufferManager), (void *)REG_BG0HOFS_ADDR, SCROLL_REGISTER_SIZE * 4, BUFFER_MANAGER_DMA_TYPE_32BIT); // Write to the horizontal and vertical scroll registers for background layers 0 and 1 after each scaline
}

static void StartFlipAnim(WonderCardsAppData *appData, enum WonderCardFlipStage stage, fx32 startOffsetStep, fx32 startDOfsStep)
{
    WonderCardFlipAnimManager *animMan = &appData->flipAnimMan;

    animMan->animStage = stage;
    animMan->offsetStep = startOffsetStep;
    animMan->deltaOffsetStep = startDOfsStep;

    if (animMan->bufferManager == NULL) {
        animMan->bufferManager = BufferManager_New(HEAP_ID_WONDER_CARDS_APP, animMan->scrollsBuffers[0], animMan->scrollsBuffers[1]);
    }

    if (animMan->sysTask == NULL) {
        animMan->sysTask = SysTask_ExecuteOnVBlank((SysTaskFunc)StartDMAForFlipAnim, animMan, 1024);
    }

    animMan->running = TRUE;
}

static void CancelFlipAnim(WonderCardsAppData *appData)
{
    WonderCardFlipAnimManager *animMan = &appData->flipAnimMan;

    if (animMan->bufferManager) {
        BufferManager_Delete(animMan->bufferManager);
    }

    if (animMan->sysTask) {
        SysTask_Done(animMan->sysTask);
    }

    animMan->bufferManager = NULL;
    animMan->sysTask = NULL;

    BufferManager_StopDMA();
}

static BOOL RunFlipAnimFrame(WonderCardsAppData *appData)
{
    int scanline, offset; // forward declarations required to match

    WonderCardFlipAnimManager *flipAnimMan = &appData->flipAnimMan;
    fx32 offsetFx32 = (WONDERCARD_HEIGHT / 2) * FX32_ONE;

    if (flipAnimMan->running == FALSE) {
        return TRUE;
    }

    if (flipAnimMan->animStage == WC_FLIP_STAGE_SHRINKING) {
        flipAnimMan->offsetStep += flipAnimMan->deltaOffsetStep;
        flipAnimMan->deltaOffsetStep += flipAnimMan->deltaOffsetStep;

        if (flipAnimMan->offsetStep / FX32_ONE > 1000) {
            flipAnimMan->running = FALSE;
            offsetFx32 = WONDERCARD_HEIGHT;
            flipAnimMan->offsetStep = 0;
            flipAnimMan->deltaOffsetStep = 0;
        }
    } else {
        flipAnimMan->offsetStep -= flipAnimMan->deltaOffsetStep;
        flipAnimMan->deltaOffsetStep /= 2;

        if (flipAnimMan->deltaOffsetStep < FX32_ONE / 4) {
            flipAnimMan->running = FALSE;
            flipAnimMan->offsetStep = 1 * FX32_ONE;
            flipAnimMan->deltaOffsetStep = 0;
        }
    }

    u16 *buffer = BufferManager_GetWriteBuffer(flipAnimMan->bufferManager);

    for (scanline = WONDERCARD_HEIGHT / 2; scanline < WONDERCARD_HEIGHT; scanline++) {
        offset = offsetFx32 / FX32_ONE;

        if (offset < 0) {
            offset = 0;
        }

        if (offset > WONDERCARD_HEIGHT) {
            offset = WONDERCARD_HEIGHT;
        }

        // Set the vertical scroll offsets for background layers 0 and 1 for each scanline (registers REG_BG[01]VOFS)
        buffer[scanline * 4 + 1] = buffer[scanline * 4 + 3] = (0 - scanline + offset);
        buffer[(WONDERCARD_HEIGHT - scanline) * 4 + 1] = buffer[(WONDERCARD_HEIGHT - scanline) * 4 + 3] = (0 - (WONDERCARD_HEIGHT - scanline) + (WONDERCARD_HEIGHT - offset));

        offsetFx32 += flipAnimMan->offsetStep;
    }

    DC_FlushRange(buffer, sizeof(flipAnimMan->scrollsBuffers[0]));
    BufferManager_SwapBuffers(flipAnimMan->bufferManager);

    return FALSE;
}

static void WonderCardsAppCallbackSaveGame(WonderCardsAppData *appData)
{
    int saveStatus = MainMenuUtil_SaveState();

    if (saveStatus == SAVE_RESULT_OK || saveStatus == SAVE_RESULT_CORRUPT) {
        Sound_PlayEffect(SEQ_SE_DP_SAVE);
        appData->mainCallback = NULL;
    }
}

static void UpdateShareCount(WonderCardsAppData *appData)
{
    GF_ASSERT(appData->selectedWondercardSlot < NUM_WONDERCARD_SLOTS);
    SaveData_Checksum(SAVE_TABLE_ENTRY_MYSTERY_GIFT);

    if (appData->wonderCards[appData->selectedWondercardSlot]->timesShared != SHARE_UNLIMITED) {
        appData->wonderCards[appData->selectedWondercardSlot]->timesShared++;
    }

    if (appData->wonderCards[appData->selectedWondercardSlot]->sharesLeft != SHARE_UNLIMITED) {
        appData->wonderCards[appData->selectedWondercardSlot]->sharesLeft--;
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_MYSTERY_GIFT);
    MainMenuUtil_InitSaving(appData->saveData);

    appData->mainCallback = WonderCardsAppCallbackSaveGame;
}

static void HandleWCShareScreenInput(WonderCardsAppData *appData, int playerCount, enum WonderCardsAppState *state)
{
    enum WonderCardShareBtn selectedButton = appData->shareScreenSelectedBtn;

    if (JOY_NEW(PAD_KEY_RIGHT) && appData->shareScreenSelectedBtn != WC_SHARE_BTN_CANCEL) {
        appData->shareScreenSelectedBtn = WC_SHARE_BTN_CANCEL;
    }

    if (JOY_NEW(PAD_KEY_LEFT) && appData->shareScreenSelectedBtn != WC_SHARE_BTN_SEND) {
        appData->shareScreenSelectedBtn = WC_SHARE_BTN_SEND;
    }

    if (selectedButton != appData->shareScreenSelectedBtn) {
        Sprite_SetAnim(appData->shareScreenBtnSprites[WC_SHARE_BTN_SEND], appData->shareScreenSelectedBtn == WC_SHARE_BTN_SEND ? 1 : 0);
        Sprite_SetAnim(appData->shareScreenBtnSprites[WC_SHARE_BTN_CANCEL], appData->shareScreenSelectedBtn == WC_SHARE_BTN_SEND ? 0 : 1);
    }

    enum WonderCardShareAction nextAction = WC_SHARE_ACTION_NONE;

    if (JOY_NEW(PAD_BUTTON_B)) {
        nextAction = WC_SHARE_ACTION_EXIT;
    } else if (JOY_NEW(PAD_BUTTON_A) && playerCount && appData->shareScreenSelectedBtn == WC_SHARE_BTN_SEND) {
        nextAction = WC_SHARE_ACTION_SEND;
    } else if (JOY_NEW(PAD_BUTTON_A) && appData->shareScreenSelectedBtn == WC_SHARE_BTN_CANCEL) {
        nextAction = WC_SHARE_ACTION_EXIT;
    } else if (JOY_NEW(PAD_BUTTON_A) && playerCount == 0) { // "SEND" pressed, no player connected
        nextAction = WC_SHARE_ACTION_PLAY_SOUND;
    }

    if (nextAction == WC_SHARE_ACTION_SEND) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        CommTiming_StartSync(0xAB);

        appData->shouldSendWc = TRUE;
        *state = WC_APP_STATE_DISTRIBUTION_UNDERWAY;
        ShowWindowFromTemplateIndex(appData, &appData->messageBox, MSG_BOX_DISTRIBUTION_UNDER_WAY, 640);
        appData->waitDial = Window_AddWaitDial(&appData->messageBox, BASE_TILE_MESSAGE_BOX_FRAME);
    }

    if (nextAction == WC_SHARE_ACTION_EXIT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        StopWirelessCommunication(appData, state, WC_APP_STATE_RETURN_AFTER_COMM_MAN_EXIT);
    }

    if (nextAction == WC_SHARE_ACTION_PLAY_SOUND) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}

static int WonderCardsApp_Main(ApplicationManager *appMan, enum WonderCardsAppState *state)
{
    WonderCardsAppData *appData = ApplicationManager_Data(appMan);

    switch (*state) {
    case WC_APP_STATE_LOAD_FROM_SAVE:
        appData->saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
        appData->mysteryGift = SaveData_GetMysteryGift(appData->saveData);
        appData->options = SaveData_GetOptions(appData->saveData);
        appData->msgBoxFrame = Options_Frame(appData->options);

        appData->wonderCards[0] = MysteryGift_TryGetWonderCard(appData->mysteryGift, 0);
        appData->wonderCards[1] = MysteryGift_TryGetWonderCard(appData->mysteryGift, 1);
        appData->wonderCards[2] = MysteryGift_TryGetWonderCard(appData->mysteryGift, 2);

        appData->selectedWondercardSlot = GetNextOccupiedWcSlot(appData, appData->selectedWondercardSlot, DIRECTION_NEXT);
        *state = WC_APP_STATE_INIT_GRAPHICS;
        break;
    case WC_APP_STATE_INIT_GRAPHICS:
        ov97_02232054();
        ov97_02232074(appData->bgConfig);
        *state = WC_APP_STATE_LOAD_GRAPHICS;
        break;
    case WC_APP_STATE_LOAD_GRAPHICS:
        Text_ResetAllPrinters();
        LoadWondercardGraphics(appData, WC_SCREEN_WONDERCARD_FRONT);
        Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(15), HEAP_ID_WONDER_CARDS_APP);
        LoadStandardWindowGraphics(appData->bgConfig, BG_LAYER_MAIN_0, BASE_TILE_SYSTEM_WINDOW_FRAME, PLTT_13, STANDARD_WINDOW_SYSTEM, HEAP_ID_WONDER_CARDS_APP);
        LoadStandardWindowGraphics(appData->bgConfig, BG_LAYER_MAIN_0, BASE_TILE_FIELD_WINDOW_FRAME, PLTT_14, STANDARD_WINDOW_FIELD, HEAP_ID_WONDER_CARDS_APP);
        LoadMessageBoxGraphics(appData->bgConfig, BG_LAYER_MAIN_0, BASE_TILE_MESSAGE_BOX_FRAME, PLTT_10, appData->msgBoxFrame, HEAP_ID_WONDER_CARDS_APP);

        ShowWindowsForScreen(appData, 1, WC_SCREEN_WONDERCARD_FRONT);
        DoScreenTransitionToState(appData, FADE_TYPE_BRIGHTNESS_IN, WC_APP_STATE_SELECT_WONDERCARD, state);
        break;
    case WC_APP_STATE_SELECT_WONDERCARD: {
        int selectedWcSlot = appData->selectedWondercardSlot;

        if (JOY_NEW(PAD_KEY_UP)) {
            selectedWcSlot = GetNextOccupiedWcSlot(appData, appData->selectedWondercardSlot, DIRECTION_PREVIOUS);
        } else if (JOY_NEW(PAD_KEY_DOWN)) {
            selectedWcSlot = GetNextOccupiedWcSlot(appData, appData->selectedWondercardSlot, DIRECTION_NEXT);
        } else if (JOY_NEW(PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            DoScreenTransitionToState(appData, FADE_TYPE_BRIGHTNESS_OUT, WC_APP_STATE_EXIT, state);
        } else if (JOY_NEW(PAD_BUTTON_A)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *state = WC_APP_STATE_SHOW_WONDERCARD_ACTIONS;
        }

        if (appData->selectedWondercardSlot != selectedWcSlot) {
            Sound_PlayEffect(SEQ_SE_DP_CARD2);
            appData->selectedWondercardSlot = selectedWcSlot;
            ShowWindowsForScreen(appData, 1, WC_SCREEN_WONDERCARD_FRONT);
        }
        break;
    }
    case WC_APP_STATE_SHOW_WONDERCARD_ACTIONS:
        appData->nextWindowBasetile = ShowWindowFromTemplateIndex(appData, &appData->messageBox, MSG_BOX_TEXT_WONDER_CARD, 640);
        ShowWindowFromTemplateIndex(appData, &appData->standardWindow, MSG_BOX_WC_ACTIONS_MENU, appData->nextWindowBasetile);
        *state = WC_APP_STATE_WAIT_FOR_MENU_CHOICE;
        break;
    case WC_APP_STATE_WAIT_FOR_MENU_CHOICE:
        ProcessStateTransitionMenuInput(appMan, state, NULL);

        if (JOY_NEW(PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *state = WC_APP_STATE_CLOSE_WINDOWS;
        }
        break;
    case WC_APP_STATE_START_FLIP_WC_TO_BACK:
        Sound_PlayEffect(SEQ_SE_DP_CARD2);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, FALSE);
        EraseMessageBoxIfInUse(&appData->messageBox, FALSE);
        EraseStandardWindowIfInUse(&appData->standardWindow, FALSE);
        StartFlipAnim(appData, WC_FLIP_STAGE_SHRINKING, 1 * FX32_ONE, 0.025 * FX32_ONE);
        *state = WC_APP_STATE_WAIT_WC_FLIP_TO_BACK_HALFWAY;
        break;
    case WC_APP_STATE_WAIT_WC_FLIP_TO_BACK_HALFWAY:
        if (RunFlipAnimFrame(appData)) {
            ShowWindowsForScreen(appData, 1, WC_SCREEN_WONDERCARD_BACK);
            StartFlipAnim(appData, WC_FLIP_STAGE_GROWING, 1800 * FX32_ONE, 900 * FX32_ONE);
            *state = WC_APP_STATE_SHOW_WONDERCARD_BACK;
        }
        break;
    case WC_APP_STATE_SHOW_WONDERCARD_BACK:
        RunFlipAnimFrame(appData);

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_CARD2);
            StartFlipAnim(appData, WC_FLIP_STAGE_SHRINKING, 1 * FX32_ONE, 0.025 * FX32_ONE);
            *state = WC_APP_STATE_START_FLIP_WC_TO_FRONT;
        }
        break;
    case WC_APP_STATE_START_FLIP_WC_TO_FRONT:
        if (RunFlipAnimFrame(appData)) {
            ShowWindowsForScreen(appData, 1, WC_SCREEN_WONDERCARD_FRONT);
            StartFlipAnim(appData, WC_FLIP_STAGE_GROWING, 1800 * FX32_ONE, 900 * FX32_ONE);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, FALSE);
            *state = WC_APP_STATE_WAIT_WC_FLIP_TO_FRONT_HALFWAY;
        }
        break;
    case WC_APP_STATE_WAIT_WC_FLIP_TO_FRONT_HALFWAY:
        if (RunFlipAnimFrame(appData)) {
            Window_DrawMessageBoxWithScrollCursor(&appData->messageBox, FALSE, BASE_TILE_MESSAGE_BOX_FRAME, PLTT_10);
            Window_DrawStandardFrame(&appData->standardWindow, FALSE, BASE_TILE_FIELD_WINDOW_FRAME, PLTT_14);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
            CancelFlipAnim(appData);
            *state = WC_APP_STATE_WAIT_FOR_MENU_CHOICE;
        }
        break;
    case WC_APP_STATE_CLOSE_WINDOWS:
        WonderCardsApp_CloseListMenu(appData);
        EraseMessageBoxIfInUse(&appData->messageBox, FALSE);
        Window_ClearAndCopyToVRAM(&appData->messageBox);
        Window_Remove(&appData->messageBox);
        *state = WC_APP_STATE_SELECT_WONDERCARD;
        break;
    case WC_APP_STATE_WAIT_CONFIRM_DELETION:
        ProcessStateTransitionMenuInput(appMan, state, ReturnToWcActionsMenu);
        break;
    case WC_APP_STATE_WAIT_CONFIRM_START_WIRELESS:
        ProcessStateTransitionMenuInput(appMan, state, ReturnToWcActionsMenu);
        break;
    case WC_APP_STATE_ASK_START_WIRELESS_TO_SHARE_WC:
        AskConfirmStartWireless(appData, &appData->standardWindow, TEXT_COLOR(1, 2, 0));
        *state = WC_APP_STATE_WAIT_CONFIRM_START_WIRELESS;
        break;
    case WC_APP_STATE_START_TRANSITION_TO_WC_SHARE_SCREEN:
        DoScreenTransitionToState(appData, FADE_TYPE_BRIGHTNESS_OUT, WC_APP_STATE_SHOW_WC_SHARE_SCREEN, state);
        break;
    case WC_APP_STATE_SHOW_WC_SHARE_SCREEN:
        WonderCardsApp_CloseListMenu(appData);
        EraseMessageBoxIfInUse(&appData->messageBox, FALSE);
        Window_ClearAndCopyToVRAM(&appData->messageBox);
        Window_Remove(&appData->messageBox);
        ShowWindowsForScreen(appData, 0, WC_SCREEN_WONDERCARD_SHARING);
        LoadWcShareScreenBackground(appData->bgConfig);
        LoadWcShareScreenButtonsGraphics(appData);
        ShowWcShareButtons(appData);
        *state = WC_APP_STATE_PREPARE_FOR_SHARING;
        break;
    case WC_APP_STATE_PREPARE_FOR_SHARING:
        PrepareSelectedWCForSharing(appData);
        sub_02039734();
        DoScreenTransitionToState(appData, FADE_TYPE_BRIGHTNESS_IN, WC_APP_STATE_WAIT_FOR_PLAYERS, state);
        break;
    case WC_APP_STATE_WAIT_FOR_PLAYERS: {
        int connectedPlayersCount = 0;

        if (CommSys_IsPlayerConnected(0)) {
            sub_02034150(&appData->mysteryGiftAppData.eventData.header);

            connectedPlayersCount = UpdateConnectedPlayers(appData, &appData->windows[WC_SHARING_PLAYER_INFO]);

            if (connectedPlayersCount == 0 && appData->prevConnPlayersCount) {
                Window_FillTilemap(&appData->windows[WC_SHARING_PLAYER_INFO], 0);
                Window_CopyToVRAM(&appData->windows[WC_SHARING_PLAYER_INFO]);
                appData->prevConnPlayersCount = 0;
            }

            UpdateConnectedPlayersCount(appData, &appData->windows[WC_SHARING_ENTRIES_COUNT], connectedPlayersCount);
            appData->prevConnPlayersCount = connectedPlayersCount;
        }

        HandleWCShareScreenInput(appData, connectedPlayersCount, state);
        break;
    }
    case WC_APP_STATE_RETURN_AFTER_COMM_MAN_EXIT:
        DoScreenTransitionToState(appData, FADE_TYPE_BRIGHTNESS_OUT, WC_APP_STATE_RETURN_TO_WC_ACTIONS, state);
        break;
    case WC_APP_STATE_RETURN_TO_WC_ACTIONS:
        ResetAllSprites(appData);
        EraseMessageBoxIfInUse(&appData->messageBox, FALSE);
        EraseStandardWindowIfInUse(&appData->standardWindow, FALSE);
        ShowWindowsForScreen(appData, 1, WC_SCREEN_WONDERCARD_FRONT);
        Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(15), HEAP_ID_WONDER_CARDS_APP);
        DoScreenTransitionToState(appData, FADE_TYPE_BRIGHTNESS_IN, WC_APP_STATE_SHOW_WONDERCARD_ACTIONS, state);
        break;
    case WC_APP_STATE_WAIT_FOR_COMM_MAN_EXIT:
        if (CommMan_IsInitialized() == FALSE) {
            *state = appData->queuedState;
        }
        break;
    case WC_APP_STATE_DISTRIBUTION_UNDERWAY:
        if (--appData->shouldSendWc == FALSE) {
            MainMenuUtil_EncryptWonderCard(&appData->mysteryGiftAppData.eventData, &appData->currentWonderCard, appData->heapID);
            ov97_0222D1F0((const void *)&appData->currentWonderCard, sizeof(WonderCard));
            UpdateShareCount(appData);
            *state = WC_APP_STATE_START_COMM_SYNC;
        }
        break;
    case WC_APP_STATE_START_COMM_SYNC:
        if (MainMenuUtil_GetSavingStatus() == MAIN_MENU_UTIL_SAVING_IDLE) {
            CommTiming_StartSync(0x93);
            *state = WC_APP_STATE_WAIT_FOR_COMM_SYNC;
        }
        break;
    case WC_APP_STATE_WAIT_FOR_COMM_SYNC:
        if (CountConnectedPlayers(appData) == 0 || CommTiming_IsSyncState(0x93) == TRUE) {
            MainMenuUtil_ContinueSaving();
            ShowWindowFromTemplateIndex(appData, &appData->messageBox, MSG_BOX_DISTRIBUTION_SUCCESSFUL, 640);
            DestroyWaitDial(appData->waitDial);
            StopWirelessCommunication(appData, state, WC_APP_STATE_DISTRIBUTION_SUCCESSFUL);
        }
        break;
    case WC_APP_STATE_DISTRIBUTION_SUCCESSFUL:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            *state = WC_APP_STATE_RETURN_AFTER_COMM_MAN_EXIT;
        }
        break;
    case WC_APP_STATE_NO_MORE_WONDERCARDS:
        DoScreenTransitionToState(appData, FADE_TYPE_BRIGHTNESS_OUT, WC_APP_STATE_EXIT, state);
        break;
    case WC_APP_STATE_WAIT_FOR_SCREEN_TRANSITION:
        if (IsScreenFadeDone()) {
            *state = appData->queuedState;
        }
        break;
    case WC_APP_STATE_EXIT:
        ResetAllSprites(appData);
        CancelFlipAnim(appData);
        return TRUE;
        break;
    case WC_APP_STATE_UNUSED:
        break;
    default:
        // Should never be reached
        break;
    }

    if (appData->spriteList != NULL) {
        SpriteList_Update(appData->spriteList);
    }

    MainMenuUtil_UpdateSprites();

    if (appData->mainCallback) {
        appData->mainCallback(appData);
    }

    return FALSE;
}

static int PrepareSelectedWCForSharing(WonderCardsAppData *appData)
{
    WonderCard *wonderCard = appData->wonderCards[appData->selectedWondercardSlot];

    memcpy(&appData->mysteryGiftAppData.eventData.wonderCard, wonderCard, sizeof(WonderCard));
    memcpy(&appData->mysteryGiftAppData.eventData.header, &wonderCard->eventHeader, sizeof(MysteryGiftEventHeader));

    appData->mysteryGiftAppData.eventData.wonderCard.sharesLeft = 0;
    appData->mysteryGiftAppData.eventData.header.shareable = FALSE;
    appData->mysteryGiftAppData.eventData.header.fromSharing = TRUE;

    ov97_0222D1C4(&appData->mysteryGiftAppData, appData->saveData, 15);

    return NULL;
}

static int PopEarliestReturnNetId(int *orderNums)
{
    int *minPtr = orderNums;
    int min = *orderNums;
    int minPos = 0;

    if (orderNums[1] < min) {
        min = orderNums[1], minPos = 1, minPtr = &orderNums[1];
    }

    if (orderNums[2] < min) {
        min = orderNums[2], minPos = 2, minPtr = &orderNums[2];
    }

    if (orderNums[3] < min) {
        min = orderNums[3], minPos = 3, minPtr = &orderNums[3];
    }

    *minPtr = EMPTY_ORDER_SLOT;
    return minPos + 1;
}

static int CountConnectedPlayers(WonderCardsAppData *appData)
{
    int i; // forward declaration required to match

    int connectedPlayers = 0;

    for (i = 1; i < SHARE_MAX_PLAYERS + 1; i++) {
        if (CommInfo_TrainerInfo(i)) {
            connectedPlayers++;
        }
    }

    return connectedPlayers;
}

static int UpdateConnectedPlayers(WonderCardsAppData *appData, Window *window)
{
    // forward declarations required to match
    int i;
    String *string;

    int numConnectedPlayers = 0;
    int numSlotsChanged = 0;

    for (i = 1; i < SHARE_MAX_PLAYERS + 1; i++) {
        TrainerInfo *tmpTrainerInfo = CommInfo_TrainerInfo(i);

        if (tmpTrainerInfo == NULL) {
            if (appData->connTrainerInfos[i]) {
                numSlotsChanged++;
            }

            appData->connTrainerInfos[i] = NULL;
            appData->orderNumbers[i] = EMPTY_ORDER_SLOT;
        } else if (appData->connTrainerInfos[i] != tmpTrainerInfo) {
            numSlotsChanged++;
            numConnectedPlayers++;
            appData->connTrainerInfos[i] = tmpTrainerInfo;
            appData->orderNumbers[i] = appData->numPlayerConnections++;
        } else {
            numConnectedPlayers++;
        }
    }

    if (numSlotsChanged == 0) {
        return numConnectedPlayers;
    }

    int orderNumbers[SHARE_MAX_PLAYERS];
    int connectedPlayersNetIds[SHARE_MAX_PLAYERS];

    orderNumbers[0] = appData->orderNumbers[1], orderNumbers[1] = appData->orderNumbers[2], orderNumbers[2] = appData->orderNumbers[3], orderNumbers[3] = appData->orderNumbers[4];
    connectedPlayersNetIds[0] = PopEarliestReturnNetId(orderNumbers);
    connectedPlayersNetIds[1] = PopEarliestReturnNetId(orderNumbers);
    connectedPlayersNetIds[2] = PopEarliestReturnNetId(orderNumbers);
    connectedPlayersNetIds[3] = PopEarliestReturnNetId(orderNumbers);

    StringTemplate *strTemplate = StringTemplate_Default(HEAP_ID_WONDER_CARDS_APP);
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MYSTERY_GIFT_MENU, HEAP_ID_WONDER_CARDS_APP);
    int trainerInfoYOffset = 0;

    Window_FillTilemap(window, 0);

    for (i = 0; i < numConnectedPlayers; i++) {
        TrainerInfo *tmpTrainerInfo = CommInfo_TrainerInfo(connectedPlayersNetIds[i]);

        if (tmpTrainerInfo) {
            StringTemplate_SetPlayerName(strTemplate, 0, tmpTrainerInfo);
            string = MessageUtil_ExpandedString(strTemplate, msgLoader, MysteryGiftMenu_Text_TrainerNameTemplate, HEAP_ID_WONDER_CARDS_APP);

            if (TrainerInfo_Gender(tmpTrainerInfo) == GENDER_MALE) {
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, trainerInfoYOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(5, 6, 0), NULL);
            } else {
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, trainerInfoYOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
            }

            String_Free(string);
            StringTemplate_SetNumber(strTemplate, 0, TrainerInfo_ID(tmpTrainerInfo) & 0xFFFF, 5, PADDING_MODE_ZEROES, CHARSET_MODE_EN);

            string = MessageUtil_ExpandedString(strTemplate, msgLoader, MysteryGiftMenu_Text_TrainerIdTemplate, HEAP_ID_WONDER_CARDS_APP);

            Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 80, trainerInfoYOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(14, 15, 0), NULL);
            String_Free(string);

            trainerInfoYOffset += TEXT_LINES(1) + 8;
        }
    }

    if (numConnectedPlayers) {
        Window_CopyToVRAM(window);
    }

    MessageLoader_Free(msgLoader);
    StringTemplate_Free(strTemplate);

    return numConnectedPlayers;
}

static void UpdateConnectedPlayersCount(WonderCardsAppData *appData, Window *window, int newCount)
{
    String *string;

    appData->connectedPlayersCount = newCount;
    appData->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MYSTERY_GIFT_MENU, HEAP_ID_WONDER_CARDS_APP);
    appData->strTemplate = StringTemplate_Default(HEAP_ID_WONDER_CARDS_APP);

    Window_FillTilemap(window, 0);
    StringTemplate_SetNumber(appData->strTemplate, 0, appData->connectedPlayersCount, 1, PADDING_MODE_SPACES, CHARSET_MODE_EN);

    string = MessageUtil_ExpandedString(appData->strTemplate, appData->msgLoader, MysteryGiftMenu_Text_EntriesCountTemplate, HEAP_ID_WONDER_CARDS_APP);

    Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Window_CopyToVRAM(window);

    String_Free(string);
    MessageLoader_Free(appData->msgLoader);
    StringTemplate_Free(appData->strTemplate);
}

static void StopWirelessCommunication(WonderCardsAppData *appData, enum WonderCardsAppState *state, enum WonderCardsAppState nextState)
{
    ov97_0222D2DC();
    NetworkIcon_Destroy();
    appData->queuedState = nextState;
    *state = WC_APP_STATE_WAIT_FOR_COMM_MAN_EXIT;
}

extern const ApplicationManagerTemplate gMysteryGiftAppTemplate;

static BOOL WonderCardsApp_Exit(ApplicationManager *appMan, int *unused)
{
    WonderCardsAppData *appData = ApplicationManager_Data(appMan);

    for (int i = 0; i < NELEMS(sWonderCardsAppWindows); i++) {
        if (appData->windows[i].bgConfig) {
            Window_ClearAndCopyToVRAM(&appData->windows[i]);
            Window_Remove(&appData->windows[i]);
        }
    }

    if (appData->messageBox.bgConfig) {
        Window_ClearAndCopyToVRAM(&appData->messageBox);
        Window_Remove(&appData->messageBox);
    }

    if (appData->standardWindow.bgConfig) {
        Window_ClearAndCopyToVRAM(&appData->standardWindow);
        Window_Remove(&appData->standardWindow);
    }

    Bg_FreeTilemapBuffer(appData->bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(appData->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(appData->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(appData->bgConfig, BG_LAYER_MAIN_3);
    Heap_Free(appData->bgConfig);
    EnqueueApplication(FS_OVERLAY_ID(main_menu), &gMysteryGiftAppTemplate);
    Heap_Destroy(HEAP_ID_91);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_WONDER_CARDS_APP);

    return TRUE;
}

const ApplicationManagerTemplate gWonderCardsAppTemplate = {
    WonderCardsApp_Init,
    (OverlayFunc)WonderCardsApp_Main, // Erase enum type information for the second argument
    WonderCardsApp_Exit,
    FS_OVERLAY_ID_NONE
};

void WonderCardsApp_ShowWondercard(BgConfig *bgConfig, WonderCard *wonderCard, enum HeapID heapID)
{
    ov97_02232074(bgConfig);

    WonderCardsAppData *appData = Heap_AllocAtEnd(heapID, sizeof(WonderCardsAppData));
    memset(appData, 0, sizeof(WonderCardsAppData));

    appData->bgConfig = bgConfig;
    appData->heapID = heapID;

    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(15), appData->heapID);

    appData->wonderCards[0] = wonderCard;
    appData->selectedWondercardSlot = 0;

    ShowWindowsForScreen(appData, 1, WC_SCREEN_WONDERCARD_FRONT);
    Heap_Free(appData);
}
