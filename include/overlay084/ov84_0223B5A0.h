#ifndef POKEPLATINUM_OV84_0223B5A0_H
#define POKEPLATINUM_OV84_0223B5A0_H

#include "bag.h"
#include "bag_context.h"
#include "bg_window.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "trainer_info.h"

typedef struct BagController BagController;

typedef int (*ItemActionFuncPtr)(BagController *param0);

typedef struct BagPocketSelector {
    u8 nextPocketIdx;
    u8 nextPocketDirection;
    u8 animStage;
    u8 animFrame;
    u8 pocketChangeState;
    u8 pocketChangeFrame;
    u8 pressedPocketBtnIdx;
    u8 unk_07_0 : 4;
    u8 unk_07_4 : 3;
    u8 unk_07_7 : 1;
} BagPocketSelector;

typedef struct BagPocketHighlight {
    u8 isMoving;
    u8 direction;
    u8 padding_02;
    u8 currentStep;
    fx32 positions[8];
} BagPocketHighlight;

struct BagController {
    BgConfig *bgConfig;
    Window windows[11];
    Window itemActionsWindow;
    BagContext *bagCtx;
    Bag *bag;
    TrainerInfo *trainerInfo;
    Options *options;
    NARC *bagGraphicsNARC;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteMan;
    ManagedSprite *sprites[12];
    FontSpecialCharsContext *specialChars;
    MessageLoader *bagStringsLoader;
    StringTemplate *strTemplate;
    MessageLoader *itemNamesLoader;
    MessageLoader *moveNamesLoader;
    Strbuf *itemActionStrings[12];
    StringList *itemActionChoices;
    Menu *menu;
    ListMenu *itemList;
    StringList *itemListEntries;
    Strbuf *itemNames[LARGEST_POCKET_SIZE];
    Strbuf *strBuffer;
    Strbuf *itemCountX;
    Strbuf *itemCountNumberFmt;
    Strbuf *pocketNames[POCKET_MAX];
    u8 numPockets;
    u8 trainerGender;
    u8 msgBoxPrinterID;
    u8 pocketSelectorIconsX;
    u8 pocketSelectorIconsSpacing;
    BagPocketSelector pocketSelector;
    u8 padding_431[35];
    BagPocketHighlight pocketHighlight;
    u8 nextPocket;
    u8 hideDescription;
    u8 isMovingItem;
    u8 movedItemPos;
    u32 movedItemID;
    u8 pocketSelectorArrowsAnimStep;
    u8 pocketSelectorArrowsAnimTimer;
    u8 cursorSoundIdx;
    u8 itemUseTaskState;
    u32 itemUseCallback;
    s16 selectedItemCount;
    u16 selectedItemOwnedCount;
    u32 soldItemPrice;
    u8 ballButtonAnimStep;
    u8 ballButtonAnimFrame;
    u8 isScrollingWithBall;
    u8 padding_493;
    s32 queuedScrollRemainder;
    s16 queuedScroll;
    s16 ballRotation;
    u8 padding_49C[2];
    u16 previousTouchX;
    u16 previousTouchY;
    u8 padding_4A2[2];
};

int ov84_0223B5A0(ApplicationManager *appMan, int *param1);
int ov84_0223B76C(ApplicationManager *appMan, int *param1);
int ov84_0223B900(ApplicationManager *appMan, int *param1);
u16 ov84_0223BE5C(BagController *param0, u16 param1, u16 param2);
const u32 ov84_0223D84C(u32 param0);

#endif // POKEPLATINUM_OV84_0223B5A0_H
