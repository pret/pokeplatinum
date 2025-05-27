#ifndef POKEPLATINUM_BATTLE_BAG_TASK_H
#define POKEPLATINUM_BATTLE_BAG_TASK_H

#include "struct_decls/struct_0200C440_decl.h"

#include "battle/struct_ov16_0226DEEC_decl.h"
#include "overlay013/battle_bag_battle_info.h"
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

typedef struct BattleBagTask {
    BattleBagBattleInfo *battleInfo;
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
    UnkStruct_ov16_0226DEEC *unk_38;
    BagItem battleBagItems[BATTLE_POCKET_MAX][BATTLE_POCKET_SIZE];
    SpriteManager *spriteManager;
    ManagedSprite *unk_310[6];
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
} BattleBagTask;

void BattleBagTask_Start(BattleBagBattleInfo *battleInfo);
int GetSelectedPartySlot(BattleBagTask *battleBagTask);

#endif // POKEPLATINUM_BATTLE_BAG_TASK_H
