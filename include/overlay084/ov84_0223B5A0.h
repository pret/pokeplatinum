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

#define BAG_UI_NUM_VISIBLE_ITEMS 9

enum BagInterfaceMode {
    BAG_MODE_NORMAL = 0,
    BAG_MODE_GIVE_TO_MON,
    BAG_MODE_SELL_ITEMS,
    BAG_MODE_GARDENING,
    BAG_MODE_POFFIN_SINGLEPLAYER,
    BAG_MODE_POFFIN_MULTIPLAYER,
};

enum BagInterfaceExitCode {
    BAG_EXIT_CODE_USE_ITEM = 0,
    BAG_EXIT_CODE_SHOW_BERRY_DATA,
    BAG_EXIT_CODE_GIVE_ITEM,
    BAG_EXIT_CODE_POFFIN_BERRY_CHOSEN,
    BAG_EXIT_CODE_GIVE_FROM_MON_MENU,
    BAG_EXIT_CODE_DONE,
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
    Strbuf *itemActionStrings[NUM_ITEM_ACTIONS];
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

int BagApplication_Init(ApplicationManager *appMan, int *state);
int BahApplication_Main(ApplicationManager *appMan, int *state);
int BagApplication_Exit(ApplicationManager *appMan, int *state);
u16 BagInterface_GetItemSlotParam(BagController *controller, u16 slotIndex, u16 itemParam);
const u32 BagApplication_GetItemActionFunc(enum ItemAction action);

#endif // POKEPLATINUM_OV84_0223B5A0_H
