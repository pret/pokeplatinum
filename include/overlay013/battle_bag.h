#ifndef POKEPLATINUM_BATTLE_BAG_H
#define POKEPLATINUM_BATTLE_BAG_H

#include "struct_decls/struct_0200C440_decl.h"

#include "battle/struct_ov16_0226DEEC_decl.h"
#include "overlay013/battle_bag_context.h"
#include "overlay013/battle_sub_menu_cursor.h"

#include "bag.h"
#include "bg_window.h"
#include "message.h"
#include "palette.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"

enum BattleBagScreen {
    BATTLE_BAG_SCREEN_MENU = 0,
    BATTLE_BAG_SCREEN_POCKET_MENU,
    BATTLE_BAG_SCREEN_USE_ITEM,
};

enum BattleBagMenuScreenButton {
    BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_HP_POCKET = 0,
    BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET,
    BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_POKE_BALLS_POCKET,
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
    u8 unk_31;
    u8 textPrinterID;
    BattleSubMenuCursor *cursor;
    UnkStruct_ov16_0226DEEC *catchTutorialCursor;
    BagItem items[BATTLE_POCKET_MAX][BATTLE_POCKET_SIZE];
    SpriteManager *spriteManager;
    ManagedSprite *pocketItemSprites[BATTLE_POCKET_ITEMS_PER_PAGE];
    u16 unk_328[3][144];
    u16 unk_688[4][130];
    u16 unk_A98[3][25];
    u16 unk_B2E[4][96];
    u16 unk_E2E[4][25];
    u16 unk_EF6[4][25];
    u16 unk_FBE[3][16];
    u16 unk_101E[3][16];
    u16 unk_107E[3][16];
    u16 unk_10DE[3][16];
    u8 unk_113E;
    u8 unk_113F; // Seems unused
    u8 unk_1140;
    u8 unk_1141_0 : 4; // Seems unused
    u8 unk_1141_4 : 4; // Seems unused
    u8 unk_1142[8]; // Seems unused
    u8 currentState;
    u8 queuedState;
    u8 currentScreen;
    u8 currentBattlePocket;
    s8 queuedBattlePocketPageChange;
    u8 numBattlePocketItems[BATTLE_POCKET_MAX];
    u8 numBattlePocketPages[BATTLE_POCKET_MAX];
    u8 catchTutorialState;
    u8 catchTutorialTickCount; // Seems unused
} BattleBag;

void BattleBagTask_Start(BattleBagContext *context);
int BattleBagTask_GetSelectedPartySlot(BattleBag *battleBag);

#endif // POKEPLATINUM_BATTLE_BAG_H
