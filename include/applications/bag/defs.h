#ifndef POKEPLATINUM_APPLICATIONS_BAG_DEFS_H
#define POKEPLATINUM_APPLICATIONS_BAG_DEFS_H

#include "bag.h"
#include "bag_context.h"
#include "bg_window.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "trainer_info.h"

#define BAG_UI_NUM_VISIBLE_ITEMS 9

enum BagUISprite {
    BAG_SPRITE_BAG = 0,
    BAG_SPRITE_POCKET_HIGHLIGHT,
    BAG_SPRITE_POCKET_SELECTOR_LEFT_ARROW,
    BAG_SPRITE_POCKET_SELECTOR_RIGHT_ARROW,
    BAG_SPRITE_ITEM_HIGHLIGHT,
    BAG_SPRITE_MOVING_ITEM_POS_BAR,
    BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE,
    BAG_SPRITE_ITEM,
    BAG_SPRITE_ITEM_COUNT_ARROW_UP,
    BAG_SPRITE_ITEM_COUNT_ARROW_DOWN,
    BAG_SPRITE_MOVE_TYPE,
    BAG_SPRITE_MOVE_CATEGORY,
    NUM_BAG_UI_SPRITES,
};

enum BagUIItemCountArrowsPosition {
    BAG_ITEM_COUNT_ARROWS_POS_TRASH = 0,
    BAG_ITEM_COUNT_ARROWS_POS_SELL,
};

enum BagUIWindow {
    BAG_UI_WINDOW_ITEM_LIST = 0,
    BAG_UI_WINDOW_ITEM_DESCRIPTION,
    BAG_UI_WINDOW_POCKET_NAMES,
    BAG_UI_WINDOW_MSG_BOX,
    BAG_UI_WINDOW_MSG_BOX_NARROW,
    BAG_UI_WINDOW_POCKET_INDICATOR,
    BAG_UI_WINDOW_MSG_BOX_WIDE,
    BAG_UI_WINDOW_SELL_COUNT_VALUE,
    BAG_UI_WINDOW_MONEY,
    BAG_UI_WINDOW_THROW_AWAY_COUNT,
    BAG_UI_WINDOW_POFFIN_COUNT,
    NUM_BAG_UI_WINDOWS,
};

enum ItemAction {
    ITEM_ACTION_USE = 0,
    ITEM_ACTION_WALK,
    ITEM_ACTION_CHECK,
    ITEM_ACTION_PLANT,
    ITEM_ACTION_OPEN,
    ITEM_ACTION_TRASH,
    ITEM_ACTION_REGISTER,
    ITEM_ACTION_DESELECT,
    ITEM_ACTION_GIVE,
    ITEM_ACTION_CHECK_TAG,
    ITEM_ACTION_CONFIRM,
    ITEM_ACTION_CANCEL,
    NUM_ITEM_ACTIONS
};

enum BagApplicationItemSlotParam {
    BAG_APP_ITEM_SLOT_PARAM_ITEM,
    BAG_APP_ITEM_SLOT_PARAM_QUANTITY
};

typedef struct BagController BagController;

typedef int (*ItemActionFuncPtr)(BagController *param0);
typedef int (*ItemUseCallback)(BagController *);

typedef struct BagPocketSelector {
    u8 nextPocket;
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
    Window windows[NUM_BAG_UI_WINDOWS];
    Window itemActionsWindow;
    BagContext *bagCtx;
    Bag *bag;
    TrainerInfo *trainerInfo;
    Options *options;
    NARC *bagGraphicsNARC;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteMan;
    ManagedSprite *sprites[NUM_BAG_UI_SPRITES];
    FontSpecialCharsContext *specialChars;
    MessageLoader *bagStringsLoader;
    StringTemplate *strTemplate;
    MessageLoader *itemNamesLoader;
    MessageLoader *moveNamesLoader;
    String *itemActionStrings[NUM_ITEM_ACTIONS];
    StringList *itemActionChoices;
    Menu *menu;
    ListMenu *itemList;
    StringList *itemListEntries;
    String *itemNames[LARGEST_POCKET_SIZE];
    String *stringBuffer;
    String *itemCountX;
    String *itemCountNumberFmt;
    String *pocketNames[POCKET_MAX];
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
    ItemUseCallback itemUseCallback;
    s16 selectedItemCount;
    u16 selectedItemCountLimit;
    u32 soldItemPrice;
    u8 dialButtonAnimStep;
    u8 dialButtonAnimFrame;
    u8 isTouchingDial;
    u8 padding_493;
    s32 queuedScrollRemainder;
    s16 queuedScroll;
    s16 dialRotation;
    u8 padding_49C[2];
    u16 previousTouchX;
    u16 previousTouchY;
    u8 padding_4A2[2];
};

#endif
