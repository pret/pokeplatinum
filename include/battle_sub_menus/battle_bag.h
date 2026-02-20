#ifndef POKEPLATINUM_BATTLE_BAG_H
#define POKEPLATINUM_BATTLE_BAG_H

#include "struct_decls/battle_system.h"

#include "battle/struct_ov16_0226DEEC_decl.h"
#include "battle_sub_menus/battle_sub_menu_buttons_defs.h"
#include "battle_sub_menus/battle_sub_menu_cursor.h"

#include "bag.h"
#include "bg_window.h"
#include "font_special_chars.h"
#include "message.h"
#include "palette.h"
#include "sprite_system.h"
#include "string_gf.h"
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

#define MENU_POCKET_BUTTON_WIDTH_TILES  16
#define MENU_POCKET_BUTTON_HEIGHT_TILES 9
#define MENU_POCKET_BUTTON_SIZE_TILES   (MENU_POCKET_BUTTON_WIDTH_TILES * MENU_POCKET_BUTTON_HEIGHT_TILES)

#define POCKET_ITEM_BUTTON_WIDTH_TILES  16
#define POCKET_ITEM_BUTTON_HEIGHT_TILES 6
#define POCKET_ITEM_BUTTON_SIZE_TILES   (POCKET_ITEM_BUTTON_WIDTH_TILES * POCKET_ITEM_BUTTON_HEIGHT_TILES)

#define MENU_POCKET_ICON_WIDTH_TILES  4
#define MENU_POCKET_ICON_HEIGHT_TILES 4
#define MENU_POCKET_ICON_SIZE_TILES   (MENU_POCKET_ICON_WIDTH_TILES * MENU_POCKET_ICON_HEIGHT_TILES)

typedef struct BattleBagContext {
    BattleSystem *battleSys;
    TrainerInfo *trainerInfo;
    Bag *bag;
    enum HeapID heapID;
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

#define NUM_BATTLE_BAG_SPRITES BATTLE_POCKET_ITEMS_PER_PAGE

typedef struct BattleBag {
    BattleBagContext *context;
    BgConfig *background;
    PaletteData *palette;
    FontSpecialCharsContext *unused1;
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
    String *string;
    Window messageBoxWindow;
    Window *windows;
    u8 numWindows;
    u8 useAltPocketMenuWindows;
    u8 textPrinterID;
    BattleSubMenuCursor *cursor;
    UnkStruct_ov16_0226DEEC *catchTutorialCursor;
    BagItem items[BATTLE_POCKET_MAX][BATTLE_POCKET_SIZE];
    SpriteManager *spriteManager;
    ManagedSprite *sprites[NUM_BATTLE_BAG_SPRITES];
    u16 menuPocketButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX_CANNOT_DISABLE][MENU_POCKET_BUTTON_SIZE_TILES];
    u16 useItemButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX][BATTLE_SUB_MENU_CONFIRM_BUTTON_SIZE_TILES];
    u16 cancelButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX_CANNOT_DISABLE][BATTLE_SUB_MENU_CANCEL_BUTTON_SIZE_TILES];
    u16 pocketItemButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX][POCKET_ITEM_BUTTON_SIZE_TILES];
    u16 pocketPrevPageButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX][BATTLE_SUB_MENU_PREV_NEXT_BUTTON_SIZE_TILES];
    u16 pocketNextPageButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX][BATTLE_SUB_MENU_PREV_NEXT_BUTTON_SIZE_TILES];
    u16 menuScreenRecoverHPPocketIconData[BATTLE_SUB_MENU_BUTTON_STATE_MAX_CANNOT_DISABLE][MENU_POCKET_ICON_SIZE_TILES];
    u16 menuScreenRecoverStatusPocketIconData[BATTLE_SUB_MENU_BUTTON_STATE_MAX_CANNOT_DISABLE][MENU_POCKET_ICON_SIZE_TILES];
    u16 menuScreenPokeBallsPocketIconData[BATTLE_SUB_MENU_BUTTON_STATE_MAX_CANNOT_DISABLE][MENU_POCKET_ICON_SIZE_TILES];
    u16 menuScreenBattleItemsIconData[BATTLE_SUB_MENU_BUTTON_STATE_MAX_CANNOT_DISABLE][MENU_POCKET_ICON_SIZE_TILES];
    u8 pressedButtonState;
    u8 unused2;
    u8 pressedButton;
    u8 isAButtonPressed : 4;
    u8 unused3 : 4;
    u8 unused4[8];
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
