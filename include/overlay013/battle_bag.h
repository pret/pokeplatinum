#ifndef POKEPLATINUM_BATTLE_BAG_H
#define POKEPLATINUM_BATTLE_BAG_H

#include "struct_decls/battle_system.h"
#include "struct_decls/struct_0200C440_decl.h"

#include "battle/struct_ov16_0226DEEC_decl.h"
#include "overlay013/battle_sub_menu_cursor.h"

#include "bag.h"
#include "bg_window.h"
#include "message.h"
#include "palette.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"

enum BattleBagScreen {
    BATTLE_BAG_SCREEN_MENU = 0,
    BATTLE_BAG_SCREEN_POCKET_MENU,
    BATTLE_BAG_SCREEN_USE_ITEM,
};

enum BattleBagMenuScreenButton {
    BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_HP_POCKET = 0,
    BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET,
    BATTLE_BAG_MENU_SCREEN_BUTTON_POKE_BALLS_POCKET,
    BATTLE_BAG_MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET,
    BATTLE_BAG_MENU_SCREEN_BUTTON_LAST_USED_ITEM,
    BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL,
};

enum BattleBagPocketMenuScreenButton {
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1 = 0,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_2,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_3,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_4,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_6,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_PREV_PAGE,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL,
};

enum BattleBagUseItemScreenButton {
    BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE = 0,
    BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL,
};

enum ButtonState {
    BUTTON_STATE_UNPRESSED = 0,
    BUTTON_STATE_PRESSING,
    BUTTON_STATE_PRESSED,
    BUTTON_STATE_DISABLED, // WARN: This state MUST be the last in the sequence!

    BUTTON_STATE_MAX,
    BUTTON_STATE_MAX_CANNOT_DISABLE = BUTTON_STATE_DISABLED,
};

#define MENU_POCKET_BUTTON_WIDTH  16
#define MENU_POCKET_BUTTON_HEIGHT 9
#define MENU_POCKET_BUTTON_SIZE   (MENU_POCKET_BUTTON_WIDTH * MENU_POCKET_BUTTON_HEIGHT)

#define USE_ITEM_BUTTON_WIDTH  26
#define USE_ITEM_BUTTON_HEIGHT 5
#define USE_ITEM_BUTTON_SIZE   (USE_ITEM_BUTTON_WIDTH * USE_ITEM_BUTTON_HEIGHT)

#define CANCEL_BUTTON_WIDTH  5
#define CANCEL_BUTTON_HEIGHT 5
#define CANCEL_BUTTON_SIZE   (CANCEL_BUTTON_WIDTH * CANCEL_BUTTON_HEIGHT)

#define POCKET_ITEM_BUTTON_WIDTH  16
#define POCKET_ITEM_BUTTON_HEIGHT 6
#define POCKET_ITEM_BUTTON_SIZE   (POCKET_ITEM_BUTTON_WIDTH * POCKET_ITEM_BUTTON_HEIGHT)

#define POCKET_MENU_PAGE_BUTTON_WIDTH  5
#define POCKET_MENU_PAGE_BUTTON_HEIGHT 5
#define POCKET_MENU_PAGE_BUTTON_SIZE   (POCKET_MENU_PAGE_BUTTON_WIDTH * POCKET_MENU_PAGE_BUTTON_HEIGHT)

#define MENU_POCKET_ICON_WIDTH  4
#define MENU_POCKET_ICON_HEIGHT 4
#define MENU_POCKET_ICON_SIZE   (MENU_POCKET_ICON_WIDTH * MENU_POCKET_ICON_HEIGHT)

typedef struct BattleBagContext {
    BattleSystem *battleSystem;
    TrainerInfo *trainerInfo;
    Bag *bag;
    u32 heapID;
    s32 battler;
    BOOL isInCatchTutorial;
    u32 embargoRemainingTurns;
    u16 selectedBattleBagItem;
    u8 selectedBattleBagPocket;
    u8 lastUsedItemPocket;
    u16 lastUsedItem;
    u8 hasTwoOpponents;
    u8 opponentHidden; // Has used fly, bounce, dig, etc
    u8 opponentSubstituted;
    u8 isCursorEnabled;
    u8 battleBagExited;
    u8 pocketCurrentPagePositions[BATTLE_POCKET_MAX];
    u8 pocketCurrentPages[BATTLE_POCKET_MAX];
} BattleBagContext;

typedef struct BattleBag {
    BattleBagContext *context;
    BgConfig *background;
    PaletteData *palette;
    UnkStruct_0200C440 *unk_0C;
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
    Strbuf *strbuf;
    Window messageBoxWindow;
    Window *windows;
    u8 numWindows;
    u8 useAltPocketMenuWindows;
    u8 textPrinterID;
    BattleSubMenuCursor *cursor;
    UnkStruct_ov16_0226DEEC *catchTutorialCursor;
    BagItem items[BATTLE_POCKET_MAX][BATTLE_POCKET_SIZE];
    SpriteManager *spriteManager;
    ManagedSprite *pocketItemSprites[BATTLE_POCKET_ITEMS_PER_PAGE];
    u16 menuPocketButtonData[BUTTON_STATE_MAX_CANNOT_DISABLE][MENU_POCKET_BUTTON_SIZE];
    u16 useItemButtonData[BUTTON_STATE_MAX][USE_ITEM_BUTTON_SIZE];
    u16 cancelButtonData[BUTTON_STATE_MAX_CANNOT_DISABLE][CANCEL_BUTTON_SIZE];
    u16 pocketItemButtonData[BUTTON_STATE_MAX][POCKET_ITEM_BUTTON_SIZE];
    u16 pocketPrevPageButtonData[BUTTON_STATE_MAX][POCKET_MENU_PAGE_BUTTON_SIZE];
    u16 pocketNextPageButtonData[BUTTON_STATE_MAX][POCKET_MENU_PAGE_BUTTON_SIZE];
    u16 menuScreenRecoverHPPocketIconData[BUTTON_STATE_MAX_CANNOT_DISABLE][MENU_POCKET_ICON_SIZE];
    u16 menuScreenRecoverStatusPocketIconData[BUTTON_STATE_MAX_CANNOT_DISABLE][MENU_POCKET_ICON_SIZE];
    u16 menuScreenPokeBallsPocketIconData[BUTTON_STATE_MAX_CANNOT_DISABLE][MENU_POCKET_ICON_SIZE];
    u16 menuScreenBattleItemsIconData[BUTTON_STATE_MAX_CANNOT_DISABLE][MENU_POCKET_ICON_SIZE];
    u8 pressedButtonState;
    u8 Unused1;
    u8 pressedButton;
    u8 isAButtonPressed : 4;
    u8 Unused2 : 4;
    u8 Unused3[8];
    u8 currentState;
    u8 queuedState;
    u8 currentScreen;
    u8 currentBattlePocket;
    s8 queuedBattlePocketPageChange;
    u8 numBattlePocketItems[BATTLE_POCKET_MAX];
    u8 numBattlePocketPages[BATTLE_POCKET_MAX];
    u8 catchTutorialState;
    u8 catchTutorialTickCount; // Doesn't seem to be used for anything
} BattleBag;

void BattleBagTask_Start(BattleBagContext *context);
int BattleBagTask_GetSelectedPartySlot(BattleBag *battleBag);

#endif // POKEPLATINUM_BATTLE_BAG_H
