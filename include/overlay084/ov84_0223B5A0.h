#ifndef POKEPLATINUM_OV84_0223B5A0_H
#define POKEPLATINUM_OV84_0223B5A0_H

#include "struct_decls/struct_0207CB08_decl.h"

#include "overlay084/struct_ov84_0223C920.h"

#include "bag.h"
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

enum BagInterfaceState {
    BAG_INTERFACE_STATE_WAIT_INITIAL_SCREEN_FADE = 0,
    BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL,
    BAG_INTERFACE_STATE_2,
    BAG_INTERFACE_STATE_MOVING_ITEM,
    BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_ACTION,
    BAG_INTERFACE_STATE_5,
    BAG_INTERFACE_STATE_6,
    BAG_INTERFACE_STATE_7,
    BAG_INTERFACE_STATE_8,
    BAG_INTERFACE_STATE_9,
    BAG_INTERFACE_STATE_10,
    BAG_INTERFACE_STATE_11,
    BAG_INTERFACE_STATE_12,
    BAG_INTERFACE_STATE_13,
    BAG_INTERFACE_STATE_SELECT_ITEM_TO_GIVE,
    BAG_INTERFACE_STATE_15,
    BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL,
    BAG_INTERFACE_STATE_17,
    BAG_INTERFACE_STATE_18,
    BAG_INTERFACE_STATE_19,
    BAG_INTERFACE_STATE_20,
    BAG_INTERFACE_STATE_21,
    BAG_INTERFACE_STATE_22,
    BAG_INTERFACE_STATE_SELECT_ITEM_BERRY_CARE,
    BAG_INTERFACE_STATE_EXIT,
};

enum BagInterfaceContext {
    BAG_CONTEXT_FROM_START_MENU = 0,
    BAG_CONTEXT_GIVE_TO_MON,
    BAG_CONTEXT_SELL_ITEMS,
    BAG_CONTEXT_GARDENING,
    BAG_CONTEXT_POFFIN_SINGLEPLAYER,
    BAG_CONTEXT_POFFIN_MULTIPLAYER,
};

enum BagInterfaceExitCode {
    BAG_EXIT_CODE_0 = 0,
    BAG_EXIT_CODE_1,
    BAG_EXIT_CODE_2,
    BAG_EXIT_CODE_3,
    BAG_EXIT_CODE_4,
    BAG_EXIT_CODE_5,
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

enum BagInterfaceSprite {
    BAG_SPRITE_BAG = 0,
    BAG_SPRITE_POCKET_HIGHLIGHT,
    BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW,
    BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW,
    BAG_SPRITE_ITEM_HIGHLIGHT,
    BAG_SPRITE_ITEM_SORTING_POS,
    BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE,
    BAG_SPRITE_ITEM,
    BAG_SPRITE_ITEM_COUNT_ARROW_UP,
    BAG_SPRITE_ITEM_COUNT_ARROW_DOWN,
    BAG_SPRITE_MOVE_TYPE,
    BAG_SPRITE_MOVE_CATEGORY,
    NUM_BAG_INTERFACE_SPRITES,
};

enum BagInterfaceWindow {
    BAG_INTERFACE_WINDOW_ITEM_LIST = 0,
    BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION,
    BAG_INTERFACE_WINDOW_POCKET_NAMES,
    BAG_INTERFACE_WINDOW_MSG_BOX,
    BAG_INTERFACE_WINDOW_MSG_BOX_NARROW,
    BAG_INTERFACE_WINDOW_POCKET_INDICATOR,
    BAG_INTERFACE_WINDOW_MSG_BOX_WIDE,
    BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE,
    BAG_INTERFACE_WINDOW_MONEY,
    BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT,
    BAG_INTERFACE_WINDOW_POFFIN_COUNT,
    NUM_BAG_INTERFACE_WINDOWS,
};

enum ItemSlotProperty {
    ITEM_SLOT_ITEM = 0,
    ITEM_SLOT_QUANTITY,
};

typedef struct BagInterfaceManager BagInterfaceManager;

typedef int (*ItemActionFuncPtr)(BagInterfaceManager *param0);

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 padding_02;
    u8 unk_03;
    fx32 unk_04[8];
} UnkStruct_ov84_0223B5A0_sub1;

struct BagInterfaceManager {
    BgConfig *bgConfig;
    Window windows[NUM_BAG_INTERFACE_WINDOWS];
    Window itemActionsWindow;
    BagInterfaceArguments *appArguments;
    Bag *bag;
    TrainerInfo *trainerInfo;
    Options *options;
    NARC *bagGraphicsNARC;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteMan;
    ManagedSprite *sprites[NUM_BAG_INTERFACE_SPRITES];
    FontSpecialCharsContext *specialChars;
    MessageLoader *bagStringsLoader;
    StringTemplate *strTemplate;
    MessageLoader *itemNamesLoader;
    MessageLoader *moveNamesLoader;
    Strbuf *itemActionStrings[NUM_ITEM_ACTIONS];
    StringList *itemActionsStringList;
    Menu *itemActionsMenu;
    ListMenu *itemsListMenu;
    StringList *itemsListMenuStringList;
    Strbuf *itemNamesBuffers[165];
    Strbuf *msgBoxText;
    Strbuf *itemCountX;
    Strbuf *itemCountNumberFmt;
    Strbuf *pocketNames[POCKET_MAX];
    u8 numPockets;
    u8 trainerGender;
    u8 msgBoxPrinter;
    u8 pocketIndicatorLeftX;
    u8 pocketIndicatorSpacing;
    UnkStruct_ov84_0223C920 unk_429;
    u8 padding_431[35];
    UnkStruct_ov84_0223B5A0_sub1 unk_454;
    u8 nextPocketIdx;
    u8 unk_479;
    u8 movingItem;
    u8 movingItemIndex;
    u32 movingItemID;
    u8 pocketIndicatorArrowsAnimCyclePos;
    u8 pocketIndicatorArrowsAnimTimer;
    u8 unk_482;
    u8 unk_483;
    u32 unk_484;
    s16 selectedItemCount;
    u16 unk_48A;
    u32 soldItemPrice;
    u8 pokeballButtonAnimStep;
    u8 pokeballButtonAnimFrameCount;
    u8 scrollingBall;
    u8 padding_493;
    s32 scrollRemainder;
    s16 queuedScroll;
    s16 pokeballRotation;
    u8 padding_49C[2];
    u16 previousTouchX;
    u16 previousTouchY;
    u8 padding_4A2[2];
};

extern const ApplicationManagerTemplate gBagApplicationTemplate;

int BagInterface_Init(ApplicationManager *appMan, int *state);
int BagInterface_Main(ApplicationManager *appMan, int *state);
int BagInterface_Exit(ApplicationManager *appMan, int *state);
u16 BagInterface_GetItemSlotProperty(BagInterfaceManager *param0, u16 param1, u16 param2);
const u32 GetItemActionFunc(u32 param0);

#endif // POKEPLATINUM_OV84_0223B5A0_H
