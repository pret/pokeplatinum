#include "overlay013/battle_bag_buttons.h"

#include "overlay013/battle_bag.h"
#include "overlay013/battle_bag_text.h"
#include "overlay013/battle_bag_utils.h"

#include "bg_window.h"
#include "heap.h"
#include "sprite_system.h"

#define BATTLE_BAG_POCKET_MENU_SCREEN_ALT_BUTTON_OFFSET 17

#define USE_ITEM_BUTTON_DATA_Y_OFFSET              27
#define CANCEL_BUTTON_DATA_Y_OFFSET                57
#define POCKET_ITEM_BUTTON_DATA_X_OFFSET           16
#define POCKET_MENU_PREV_PAGE_BUTTON_DATA_Y_OFFSET 47
#define POCKET_MENU_NEXT_PAGE_BUTTON_DATA_Y_OFFSET 52
#define MENU_POCKET_ICON_DATA_X_OFFSET             20
#define MENU_POCKET_ICON_DATA_Y_OFFSET             47

#define SPRITE_Y_POSITION_DEFAULT  2
#define SPRITE_Y_POSITION_PRESSING -4

#define WINDOW_SCROLL_DEFAULT    2
#define WINDOW_SCROLL_PRESSING   4
#define MAX_SCROLLABLE_WINDOWS   8
#define WINDOWS_ARRAY_TERMINATOR 255

enum Button {
    BUTTON_MENU_SCREEN_RECOVER_HP_POCKET = BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_HP_POCKET,
    BUTTON_MENU_SCREEN_RECOVER_STATUS_POCKET = BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET,
    BUTTON_MENU_SCREEN_POKE_BALLS_POCKET = BATTLE_BAG_MENU_SCREEN_BUTTON_POKE_BALLS_POCKET,
    BUTTON_MENU_SCREEN_BATTLE_ITEMS_POCKET = BATTLE_BAG_MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET,
    BUTTON_MENU_SCREEN_LAST_USED_ITEM = BATTLE_BAG_MENU_SCREEN_BUTTON_LAST_USED_ITEM,
    BUTTON_MENU_SCREEN_CANCEL = BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL,
    BUTTON_POCKET_MENU_SCREEN_ITEM_1 = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1,
    BUTTON_POCKET_MENU_SCREEN_ITEM_2 = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_2,
    BUTTON_POCKET_MENU_SCREEN_ITEM_3 = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_3,
    BUTTON_POCKET_MENU_SCREEN_ITEM_4 = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_4,
    BUTTON_POCKET_MENU_SCREEN_ITEM_5 = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5,
    BUTTON_POCKET_MENU_SCREEN_ITEM_6 = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_6,
    BUTTON_POCKET_MENU_SCREEN_PREV_PAGE = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_PREV_PAGE,
    BUTTON_POCKET_MENU_SCREEN_NEXT_PAGE = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE,
    BUTTON_POCKET_MENU_SCREEN_CANCEL = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL,
    BUTTON_USE_ITEM_SCREEN_USE = BATTLE_BAG_USE_ITEM_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE,
    BUTTON_USE_ITEM_SCREEN_CANCEL = BATTLE_BAG_USE_ITEM_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL,
    BUTTON_POCKET_MENU_SCREEN_ALT_ITEM_1 = BATTLE_BAG_POCKET_MENU_SCREEN_ALT_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1,
    BUTTON_POCKET_MENU_SCREEN_ALT_ITEM_2 = BATTLE_BAG_POCKET_MENU_SCREEN_ALT_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_2,
    BUTTON_POCKET_MENU_SCREEN_ALT_ITEM_3 = BATTLE_BAG_POCKET_MENU_SCREEN_ALT_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_3,
    BUTTON_POCKET_MENU_SCREEN_ALT_ITEM_4 = BATTLE_BAG_POCKET_MENU_SCREEN_ALT_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_4,
    BUTTON_POCKET_MENU_SCREEN_ALT_ITEM_5 = BATTLE_BAG_POCKET_MENU_SCREEN_ALT_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5,
    BUTTON_POCKET_MENU_SCREEN_ALT_ITEM_6 = BATTLE_BAG_POCKET_MENU_SCREEN_ALT_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_6,
};

typedef struct ButtonDimensions {
    u8 xCoord;
    u8 yCoord;
    u8 width;
    u8 height;
} ButtonDimensions;

static void LoadButtonData(u16 *buttonData, u16 *screenData, u8 xOffset, u8 yOffset, u8 width, u8 height);

static const ButtonDimensions sButtonDimensions[] = {
    [BUTTON_MENU_SCREEN_RECOVER_HP_POCKET] = { .xCoord = 0, .yCoord = 1, .width = MENU_POCKET_BUTTON_WIDTH, .height = MENU_POCKET_BUTTON_HEIGHT },
    [BUTTON_MENU_SCREEN_RECOVER_STATUS_POCKET] = { .xCoord = 0, .yCoord = 10, .width = MENU_POCKET_BUTTON_WIDTH, .height = MENU_POCKET_BUTTON_HEIGHT },
    [BUTTON_MENU_SCREEN_POKE_BALLS_POCKET] = { .xCoord = 16, .yCoord = 1, .width = MENU_POCKET_BUTTON_WIDTH, .height = MENU_POCKET_BUTTON_HEIGHT },
    [BUTTON_MENU_SCREEN_BATTLE_ITEMS_POCKET] = { .xCoord = 16, .yCoord = 10, .width = MENU_POCKET_BUTTON_WIDTH, .height = MENU_POCKET_BUTTON_HEIGHT },
    [BUTTON_MENU_SCREEN_LAST_USED_ITEM] = { .xCoord = 0, .yCoord = 19, .width = USE_ITEM_BUTTON_WIDTH, .height = USE_ITEM_BUTTON_HEIGHT },
    [BUTTON_MENU_SCREEN_CANCEL] = { .xCoord = 27, .yCoord = 19, .width = CANCEL_BUTTON_WIDTH, .height = CANCEL_BUTTON_HEIGHT },
    [BUTTON_POCKET_MENU_SCREEN_ITEM_1] = { .xCoord = 32, .yCoord = 1, .width = POCKET_ITEM_BUTTON_WIDTH, .height = POCKET_ITEM_BUTTON_HEIGHT },
    [BUTTON_POCKET_MENU_SCREEN_ITEM_2] = { .xCoord = 48, .yCoord = 1, .width = POCKET_ITEM_BUTTON_WIDTH, .height = POCKET_ITEM_BUTTON_HEIGHT },
    [BUTTON_POCKET_MENU_SCREEN_ITEM_3] = { .xCoord = 32, .yCoord = 7, .width = POCKET_ITEM_BUTTON_WIDTH, .height = POCKET_ITEM_BUTTON_HEIGHT },
    [BUTTON_POCKET_MENU_SCREEN_ITEM_4] = { .xCoord = 48, .yCoord = 7, .width = POCKET_ITEM_BUTTON_WIDTH, .height = POCKET_ITEM_BUTTON_HEIGHT },
    [BUTTON_POCKET_MENU_SCREEN_ITEM_5] = { .xCoord = 32, .yCoord = 13, .width = POCKET_ITEM_BUTTON_WIDTH, .height = POCKET_ITEM_BUTTON_HEIGHT },
    [BUTTON_POCKET_MENU_SCREEN_ITEM_6] = { .xCoord = 48, .yCoord = 13, .width = POCKET_ITEM_BUTTON_WIDTH, .height = POCKET_ITEM_BUTTON_HEIGHT },
    [BUTTON_POCKET_MENU_SCREEN_PREV_PAGE] = { .xCoord = 32, .yCoord = 19, .width = POCKET_MENU_PAGE_BUTTON_WIDTH, .height = POCKET_MENU_PAGE_BUTTON_HEIGHT },
    [BUTTON_POCKET_MENU_SCREEN_NEXT_PAGE] = { .xCoord = 37, .yCoord = 19, .width = POCKET_MENU_PAGE_BUTTON_WIDTH, .height = POCKET_MENU_PAGE_BUTTON_HEIGHT },
    [BUTTON_POCKET_MENU_SCREEN_CANCEL] = { .xCoord = 59, .yCoord = 19, .width = CANCEL_BUTTON_WIDTH, .height = CANCEL_BUTTON_HEIGHT },
    [BUTTON_USE_ITEM_SCREEN_USE] = { .xCoord = 0, .yCoord = 51, .width = USE_ITEM_BUTTON_WIDTH, .height = USE_ITEM_BUTTON_HEIGHT },
    [BUTTON_USE_ITEM_SCREEN_CANCEL] = { .xCoord = 27, .yCoord = 51, .width = CANCEL_BUTTON_WIDTH, .height = CANCEL_BUTTON_HEIGHT }
};

static const u8 sMenuRecoverHPPocketButtonWindows[] = {
    BATTLE_BAG_MENU_WINDOW_HP_PP_RESTORE,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sMenuRecoverStatusPocketButtonWindows[] = {
    BATTLE_BAG_MENU_WINDOW_STATUS_HEALERS,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sMenuPokeBallsPocketButtonWindows[] = {
    BATTLE_BAG_MENU_WINDOW_POKE_BALLS,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sMenuBattleItemsPocketButtonWindows[] = {
    BATTLE_BAG_MENU_WINDOW_BATTLE_ITEMS,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sMenuLastUsedItemButtonWindows[] = {
    BATTLE_BAG_MENU_WINDOW_LAST_USED_ITEM,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sPocketMenuScreenItem1ButtonWindows[] = {
    BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_1_NAME,
    BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_1_AMOUNT,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sPocketMenuScreenItem2ButtonWindows[] = {
    BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_2_NAME,
    BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_2_AMOUNT,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sPocketMenuScreenItem3ButtonWindows[] = {
    BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_3_NAME,
    BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_3_AMOUNT,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sPocketMenuScreenItem4ButtonWindows[] = {
    BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_4_NAME,
    BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_4_AMOUNT,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sPocketMenuScreenItem5ButtonWindows[] = {
    BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_5_NAME,
    BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_5_AMOUNT,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sPocketMenuScreenItem6ButtonWindows[] = {
    BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_6_NAME,
    BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_6_AMOUNT,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sPocketMenuScreenAltItem1ButtonWindows[] = {
    BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_1_NAME,
    BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_1_AMOUNT,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sPocketMenuScreenAltItem2ButtonWindows[] = {
    BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_2_NAME,
    BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_2_AMOUNT,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sPocketMenuScreenAltItem3ButtonWindows[] = {
    BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_3_NAME,
    BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_3_AMOUNT,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sPocketMenuScreenAltItem4ButtonWindows[] = {
    BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_4_NAME,
    BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_4_AMOUNT,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sPocketMenuScreenAltItem5ButtonWindows[] = {
    BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_5_NAME,
    BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_5_AMOUNT,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sPocketMenuScreenAltItem6ButtonWindows[] = {
    BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_6_NAME,
    BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_6_AMOUNT,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 sUseItemScreenUseButtonWindows[] = {
    BATTLE_BAG_USE_ITEM_MENU_WINDOW_ITEM_USE,
    WINDOWS_ARRAY_TERMINATOR
};

static const u8 *const sScrollableWindows[] = {
    [BUTTON_MENU_SCREEN_RECOVER_HP_POCKET] = sMenuRecoverHPPocketButtonWindows,
    [BUTTON_MENU_SCREEN_RECOVER_STATUS_POCKET] = sMenuRecoverStatusPocketButtonWindows,
    [BUTTON_MENU_SCREEN_POKE_BALLS_POCKET] = sMenuPokeBallsPocketButtonWindows,
    [BUTTON_MENU_SCREEN_BATTLE_ITEMS_POCKET] = sMenuBattleItemsPocketButtonWindows,
    [BUTTON_MENU_SCREEN_LAST_USED_ITEM] = sMenuLastUsedItemButtonWindows,
    [BUTTON_MENU_SCREEN_CANCEL] = NULL,
    [BUTTON_POCKET_MENU_SCREEN_ITEM_1] = sPocketMenuScreenItem1ButtonWindows,
    [BUTTON_POCKET_MENU_SCREEN_ITEM_2] = sPocketMenuScreenItem2ButtonWindows,
    [BUTTON_POCKET_MENU_SCREEN_ITEM_3] = sPocketMenuScreenItem3ButtonWindows,
    [BUTTON_POCKET_MENU_SCREEN_ITEM_4] = sPocketMenuScreenItem4ButtonWindows,
    [BUTTON_POCKET_MENU_SCREEN_ITEM_5] = sPocketMenuScreenItem5ButtonWindows,
    [BUTTON_POCKET_MENU_SCREEN_ITEM_6] = sPocketMenuScreenItem6ButtonWindows,
    [BUTTON_POCKET_MENU_SCREEN_PREV_PAGE] = NULL,
    [BUTTON_POCKET_MENU_SCREEN_NEXT_PAGE] = NULL,
    [BUTTON_POCKET_MENU_SCREEN_CANCEL] = NULL,
    [BUTTON_USE_ITEM_SCREEN_USE] = sUseItemScreenUseButtonWindows,
    [BUTTON_USE_ITEM_SCREEN_CANCEL] = NULL,
    [BUTTON_POCKET_MENU_SCREEN_ALT_ITEM_1] = sPocketMenuScreenAltItem1ButtonWindows,
    [BUTTON_POCKET_MENU_SCREEN_ALT_ITEM_2] = sPocketMenuScreenAltItem2ButtonWindows,
    [BUTTON_POCKET_MENU_SCREEN_ALT_ITEM_3] = sPocketMenuScreenAltItem3ButtonWindows,
    [BUTTON_POCKET_MENU_SCREEN_ALT_ITEM_4] = sPocketMenuScreenAltItem4ButtonWindows,
    [BUTTON_POCKET_MENU_SCREEN_ALT_ITEM_5] = sPocketMenuScreenAltItem5ButtonWindows,
    [BUTTON_POCKET_MENU_SCREEN_ALT_ITEM_6] = sPocketMenuScreenAltItem6ButtonWindows
};

void BattleBagButtons_InitializeButtonData(BattleBag *battleBag, u16 *screenData)
{
    LoadButtonData(battleBag->menuPocketButtonData[BUTTON_STATE_UNPRESSED], screenData, 0, 0, MENU_POCKET_BUTTON_WIDTH, MENU_POCKET_BUTTON_HEIGHT);
    LoadButtonData(battleBag->menuPocketButtonData[BUTTON_STATE_PRESSING], screenData, 0, MENU_POCKET_BUTTON_HEIGHT, MENU_POCKET_BUTTON_WIDTH, MENU_POCKET_BUTTON_HEIGHT);
    LoadButtonData(battleBag->menuPocketButtonData[BUTTON_STATE_PRESSED], screenData, 0, MENU_POCKET_BUTTON_HEIGHT * 2, MENU_POCKET_BUTTON_WIDTH, MENU_POCKET_BUTTON_HEIGHT);

    LoadButtonData(battleBag->useItemButtonData[BUTTON_STATE_UNPRESSED], screenData, 0, USE_ITEM_BUTTON_DATA_Y_OFFSET, USE_ITEM_BUTTON_WIDTH, USE_ITEM_BUTTON_HEIGHT);
    LoadButtonData(battleBag->useItemButtonData[BUTTON_STATE_PRESSING], screenData, 0, USE_ITEM_BUTTON_DATA_Y_OFFSET + USE_ITEM_BUTTON_HEIGHT, USE_ITEM_BUTTON_WIDTH, USE_ITEM_BUTTON_HEIGHT);
    LoadButtonData(battleBag->useItemButtonData[BUTTON_STATE_PRESSED], screenData, 0, USE_ITEM_BUTTON_DATA_Y_OFFSET + USE_ITEM_BUTTON_HEIGHT * 2, USE_ITEM_BUTTON_WIDTH, USE_ITEM_BUTTON_HEIGHT);
    LoadButtonData(battleBag->useItemButtonData[BUTTON_STATE_DISABLED], screenData, 0, USE_ITEM_BUTTON_DATA_Y_OFFSET + USE_ITEM_BUTTON_HEIGHT * 2, USE_ITEM_BUTTON_WIDTH, USE_ITEM_BUTTON_HEIGHT);

    LoadButtonData(battleBag->cancelButtonData[BUTTON_STATE_UNPRESSED], screenData, 0, CANCEL_BUTTON_DATA_Y_OFFSET, CANCEL_BUTTON_WIDTH, CANCEL_BUTTON_HEIGHT);
    LoadButtonData(battleBag->cancelButtonData[BUTTON_STATE_PRESSING], screenData, CANCEL_BUTTON_WIDTH, CANCEL_BUTTON_DATA_Y_OFFSET, CANCEL_BUTTON_WIDTH, CANCEL_BUTTON_HEIGHT);
    LoadButtonData(battleBag->cancelButtonData[BUTTON_STATE_PRESSED], screenData, CANCEL_BUTTON_WIDTH * 2, CANCEL_BUTTON_DATA_Y_OFFSET, CANCEL_BUTTON_WIDTH, CANCEL_BUTTON_HEIGHT);

    LoadButtonData(battleBag->pocketItemButtonData[BUTTON_STATE_UNPRESSED], screenData, POCKET_ITEM_BUTTON_DATA_X_OFFSET, 0, POCKET_ITEM_BUTTON_WIDTH, POCKET_ITEM_BUTTON_HEIGHT);
    LoadButtonData(battleBag->pocketItemButtonData[BUTTON_STATE_PRESSING], screenData, POCKET_ITEM_BUTTON_DATA_X_OFFSET, POCKET_ITEM_BUTTON_HEIGHT, POCKET_ITEM_BUTTON_WIDTH, POCKET_ITEM_BUTTON_HEIGHT);
    LoadButtonData(battleBag->pocketItemButtonData[BUTTON_STATE_PRESSED], screenData, POCKET_ITEM_BUTTON_DATA_X_OFFSET, POCKET_ITEM_BUTTON_HEIGHT * 2, POCKET_ITEM_BUTTON_WIDTH, POCKET_ITEM_BUTTON_HEIGHT);
    LoadButtonData(battleBag->pocketItemButtonData[BUTTON_STATE_DISABLED], screenData, POCKET_ITEM_BUTTON_DATA_X_OFFSET, POCKET_ITEM_BUTTON_HEIGHT * 3, POCKET_ITEM_BUTTON_WIDTH, POCKET_ITEM_BUTTON_HEIGHT);

    LoadButtonData(battleBag->pocketPrevPageButtonData[BUTTON_STATE_UNPRESSED], screenData, 0, POCKET_MENU_PREV_PAGE_BUTTON_DATA_Y_OFFSET, POCKET_MENU_PAGE_BUTTON_WIDTH, POCKET_MENU_PAGE_BUTTON_HEIGHT);
    LoadButtonData(battleBag->pocketPrevPageButtonData[BUTTON_STATE_PRESSING], screenData, POCKET_MENU_PAGE_BUTTON_WIDTH, POCKET_MENU_PREV_PAGE_BUTTON_DATA_Y_OFFSET, POCKET_MENU_PAGE_BUTTON_WIDTH, POCKET_MENU_PAGE_BUTTON_HEIGHT);
    LoadButtonData(battleBag->pocketPrevPageButtonData[BUTTON_STATE_PRESSED], screenData, POCKET_MENU_PAGE_BUTTON_WIDTH * 2, POCKET_MENU_PREV_PAGE_BUTTON_DATA_Y_OFFSET, POCKET_MENU_PAGE_BUTTON_WIDTH, POCKET_MENU_PAGE_BUTTON_HEIGHT);
    LoadButtonData(battleBag->pocketPrevPageButtonData[BUTTON_STATE_DISABLED], screenData, POCKET_MENU_PAGE_BUTTON_WIDTH * 3, POCKET_MENU_PREV_PAGE_BUTTON_DATA_Y_OFFSET, POCKET_MENU_PAGE_BUTTON_WIDTH, POCKET_MENU_PAGE_BUTTON_HEIGHT);

    LoadButtonData(battleBag->pocketNextPageButtonData[BUTTON_STATE_UNPRESSED], screenData, 0, POCKET_MENU_NEXT_PAGE_BUTTON_DATA_Y_OFFSET, POCKET_MENU_PAGE_BUTTON_WIDTH, POCKET_MENU_PAGE_BUTTON_HEIGHT);
    LoadButtonData(battleBag->pocketNextPageButtonData[BUTTON_STATE_PRESSING], screenData, POCKET_MENU_PAGE_BUTTON_WIDTH, POCKET_MENU_NEXT_PAGE_BUTTON_DATA_Y_OFFSET, POCKET_MENU_PAGE_BUTTON_WIDTH, POCKET_MENU_PAGE_BUTTON_HEIGHT);
    LoadButtonData(battleBag->pocketNextPageButtonData[BUTTON_STATE_PRESSED], screenData, POCKET_MENU_PAGE_BUTTON_WIDTH * 2, POCKET_MENU_NEXT_PAGE_BUTTON_DATA_Y_OFFSET, POCKET_MENU_PAGE_BUTTON_WIDTH, POCKET_MENU_PAGE_BUTTON_HEIGHT);
    LoadButtonData(battleBag->pocketNextPageButtonData[BUTTON_STATE_DISABLED], screenData, POCKET_MENU_PAGE_BUTTON_WIDTH * 3, POCKET_MENU_NEXT_PAGE_BUTTON_DATA_Y_OFFSET, POCKET_MENU_PAGE_BUTTON_WIDTH, POCKET_MENU_PAGE_BUTTON_HEIGHT);

    LoadButtonData(battleBag->menuScreenRecoverHPPocketIconData[BUTTON_STATE_UNPRESSED], screenData, MENU_POCKET_ICON_DATA_X_OFFSET, MENU_POCKET_ICON_DATA_Y_OFFSET, MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_HEIGHT);
    LoadButtonData(battleBag->menuScreenRecoverHPPocketIconData[BUTTON_STATE_PRESSING], screenData, MENU_POCKET_ICON_DATA_X_OFFSET + MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_DATA_Y_OFFSET, MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_HEIGHT);
    LoadButtonData(battleBag->menuScreenRecoverHPPocketIconData[BUTTON_STATE_PRESSED], screenData, MENU_POCKET_ICON_DATA_X_OFFSET + MENU_POCKET_ICON_WIDTH * 2, MENU_POCKET_ICON_DATA_Y_OFFSET, MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_HEIGHT);

    LoadButtonData(battleBag->menuScreenRecoverStatusPocketIconData[BUTTON_STATE_UNPRESSED], screenData, MENU_POCKET_ICON_DATA_X_OFFSET, MENU_POCKET_ICON_DATA_Y_OFFSET + MENU_POCKET_ICON_HEIGHT, MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_HEIGHT);
    LoadButtonData(battleBag->menuScreenRecoverStatusPocketIconData[BUTTON_STATE_PRESSING], screenData, MENU_POCKET_ICON_DATA_X_OFFSET + MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_DATA_Y_OFFSET + MENU_POCKET_ICON_HEIGHT, MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_HEIGHT);
    LoadButtonData(battleBag->menuScreenRecoverStatusPocketIconData[BUTTON_STATE_PRESSED], screenData, MENU_POCKET_ICON_DATA_X_OFFSET + MENU_POCKET_ICON_WIDTH * 2, MENU_POCKET_ICON_DATA_Y_OFFSET + MENU_POCKET_ICON_HEIGHT, MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_HEIGHT);

    LoadButtonData(battleBag->menuScreenPokeBallsPocketIconData[BUTTON_STATE_UNPRESSED], screenData, MENU_POCKET_ICON_DATA_X_OFFSET, MENU_POCKET_ICON_DATA_Y_OFFSET + MENU_POCKET_ICON_HEIGHT * 2, MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_HEIGHT);
    LoadButtonData(battleBag->menuScreenPokeBallsPocketIconData[BUTTON_STATE_PRESSING], screenData, MENU_POCKET_ICON_DATA_X_OFFSET + MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_DATA_Y_OFFSET + MENU_POCKET_ICON_HEIGHT * 2, MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_HEIGHT);
    LoadButtonData(battleBag->menuScreenPokeBallsPocketIconData[BUTTON_STATE_PRESSED], screenData, MENU_POCKET_ICON_DATA_X_OFFSET + MENU_POCKET_ICON_WIDTH * 2, MENU_POCKET_ICON_DATA_Y_OFFSET + MENU_POCKET_ICON_HEIGHT * 2, MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_HEIGHT);

    LoadButtonData(battleBag->menuScreenBattleItemsIconData[BUTTON_STATE_UNPRESSED], screenData, MENU_POCKET_ICON_DATA_X_OFFSET, MENU_POCKET_ICON_DATA_Y_OFFSET + MENU_POCKET_ICON_HEIGHT * 3, MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_HEIGHT);
    LoadButtonData(battleBag->menuScreenBattleItemsIconData[BUTTON_STATE_PRESSING], screenData, MENU_POCKET_ICON_DATA_X_OFFSET + MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_DATA_Y_OFFSET + MENU_POCKET_ICON_HEIGHT * 3, MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_HEIGHT);
    LoadButtonData(battleBag->menuScreenBattleItemsIconData[BUTTON_STATE_PRESSED], screenData, MENU_POCKET_ICON_DATA_X_OFFSET + MENU_POCKET_ICON_WIDTH * 2, MENU_POCKET_ICON_DATA_Y_OFFSET + MENU_POCKET_ICON_HEIGHT * 3, MENU_POCKET_ICON_WIDTH, MENU_POCKET_ICON_HEIGHT);
}

static void LoadButtonData(u16 *buttonData, u16 *screenData, u8 xOffset, u8 yOffset, u8 width, u8 height)
{
    u16 i, l;

    for (i = 0; i < height; i++) {
        for (l = 0; l < width; l++) {
            buttonData[i * width + l] = screenData[(yOffset + i) * TILE_SIZE_4BPP + xOffset + l];
        }
    }
}

static u16 *RetrieveRawButtonData(BattleBag *battleBag, u8 button, u8 buttonState)
{
    switch (button) {
    case BUTTON_MENU_SCREEN_RECOVER_HP_POCKET:
    case BUTTON_MENU_SCREEN_RECOVER_STATUS_POCKET:
    case BUTTON_MENU_SCREEN_POKE_BALLS_POCKET:
    case BUTTON_MENU_SCREEN_BATTLE_ITEMS_POCKET:
        return battleBag->menuPocketButtonData[buttonState];
    case BUTTON_MENU_SCREEN_LAST_USED_ITEM:
        return battleBag->useItemButtonData[buttonState];
    case BUTTON_MENU_SCREEN_CANCEL:
    case BUTTON_POCKET_MENU_SCREEN_CANCEL:
    case BUTTON_USE_ITEM_SCREEN_CANCEL:
        return battleBag->cancelButtonData[buttonState];
    case BUTTON_POCKET_MENU_SCREEN_ITEM_1:
    case BUTTON_POCKET_MENU_SCREEN_ITEM_2:
    case BUTTON_POCKET_MENU_SCREEN_ITEM_3:
    case BUTTON_POCKET_MENU_SCREEN_ITEM_4:
    case BUTTON_POCKET_MENU_SCREEN_ITEM_5:
    case BUTTON_POCKET_MENU_SCREEN_ITEM_6:
        return battleBag->pocketItemButtonData[buttonState];
    case BUTTON_POCKET_MENU_SCREEN_PREV_PAGE:
        return battleBag->pocketPrevPageButtonData[buttonState];
    case BUTTON_POCKET_MENU_SCREEN_NEXT_PAGE:
        return battleBag->pocketNextPageButtonData[buttonState];
    case BUTTON_USE_ITEM_SCREEN_USE:
        return battleBag->useItemButtonData[buttonState];
    }

    return NULL;
}

static u16 GetButtonColor(BattleBag *battleBag, u8 button, u8 buttonState, u8 screen)
{
    if (buttonState == BUTTON_STATE_DISABLED) {
        return 5;
    }

    switch (button) {
    case BUTTON_MENU_SCREEN_RECOVER_HP_POCKET:
    case BUTTON_MENU_SCREEN_RECOVER_STATUS_POCKET:
    case BUTTON_MENU_SCREEN_POKE_BALLS_POCKET:
    case BUTTON_MENU_SCREEN_BATTLE_ITEMS_POCKET:
        return 0;
    case BUTTON_MENU_SCREEN_LAST_USED_ITEM:
        return 3;
    case BUTTON_MENU_SCREEN_CANCEL:
    case BUTTON_POCKET_MENU_SCREEN_CANCEL:
    case BUTTON_USE_ITEM_SCREEN_CANCEL:
    case BUTTON_POCKET_MENU_SCREEN_PREV_PAGE:
    case BUTTON_POCKET_MENU_SCREEN_NEXT_PAGE:
        return 2;
    case BUTTON_POCKET_MENU_SCREEN_ITEM_1:
    case BUTTON_POCKET_MENU_SCREEN_ITEM_2:
    case BUTTON_POCKET_MENU_SCREEN_ITEM_3:
    case BUTTON_POCKET_MENU_SCREEN_ITEM_4:
    case BUTTON_POCKET_MENU_SCREEN_ITEM_5:
    case BUTTON_POCKET_MENU_SCREEN_ITEM_6:
        return 8 + battleBag->currentBattlePocket;
    case BUTTON_USE_ITEM_SCREEN_USE:
        if (screen == BATTLE_BAG_SCREEN_USE_ITEM) {
            return 8 + battleBag->currentBattlePocket;
        } else {
            return 1;
        }
    }

    return 0;
}

static void AddIconDataToButtonData(BattleBag *battleBag, u16 *buttonData, u8 button, u8 buttonState)
{
    u16 *iconData;
    u16 i, l;

    if (button == BUTTON_MENU_SCREEN_RECOVER_HP_POCKET) {
        iconData = battleBag->menuScreenRecoverHPPocketIconData[buttonState];
    } else if (button == BUTTON_MENU_SCREEN_RECOVER_STATUS_POCKET) {
        iconData = battleBag->menuScreenRecoverStatusPocketIconData[buttonState];
    } else if (button == BUTTON_MENU_SCREEN_POKE_BALLS_POCKET) {
        iconData = battleBag->menuScreenPokeBallsPocketIconData[buttonState];
    } else if (button == BUTTON_MENU_SCREEN_BATTLE_ITEMS_POCKET) {
        iconData = battleBag->menuScreenBattleItemsIconData[buttonState];
    } else {
        return;
    }

    for (i = 0; i < MENU_POCKET_ICON_HEIGHT; i++) {
        for (l = 0; l < MENU_POCKET_ICON_WIDTH; l++) {
            buttonData[MENU_POCKET_BUTTON_WIDTH * i + ((MENU_POCKET_BUTTON_WIDTH - MENU_POCKET_ICON_WIDTH) / 2) + l] = iconData[MENU_POCKET_ICON_WIDTH * i + l];
        }
    }
}

static void RetrieveButtonData(BattleBag *battleBag, u16 *buttonData, u8 button, u8 buttonState, u8 screen)
{
    u16 i;
    u16 *rawButtonData = RetrieveRawButtonData(battleBag, button, buttonState);
    u16 colorData = GetButtonColor(battleBag, button, buttonState, screen) << 12;

    for (i = 0; i < sButtonDimensions[button].width * sButtonDimensions[button].height; i++) {
        buttonData[i] = colorData | (rawButtonData[i] & 0xfff);
    }

    AddIconDataToButtonData(battleBag, buttonData, button, buttonState);
}

static void DrawButton(BattleBag *battleBag, u8 button, u8 buttonState, u8 screen)
{
    u16 *buttonData = Heap_Alloc(battleBag->context->heapID, sButtonDimensions[button].width * sButtonDimensions[button].height * sizeof(u16));

    RetrieveButtonData(battleBag, buttonData, button, buttonState, screen);

    Bg_LoadToTilemapRect(battleBag->background, BG_LAYER_SUB_2, buttonData, sButtonDimensions[button].xCoord, sButtonDimensions[button].yCoord, sButtonDimensions[button].width, sButtonDimensions[button].height);
    Bg_ScheduleTilemapTransfer(battleBag->background, BG_LAYER_SUB_2);
    Heap_Free(buttonData);
}

static void UpdateWindowScroll(BattleBag *battleBag, u8 button, u8 buttonState)
{
    const u8 *windowsToScroll;
    u16 i;
    u8 scrollDirection, scrollDistance;

    if (button >= BUTTON_POCKET_MENU_SCREEN_ITEM_1 && button <= BUTTON_POCKET_MENU_SCREEN_ITEM_6 && battleBag->useAltPocketMenuWindows == FALSE) {
        windowsToScroll = sScrollableWindows[BATTLE_BAG_POCKET_MENU_SCREEN_ALT_BUTTON_OFFSET + button - BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET];
    } else {
        windowsToScroll = sScrollableWindows[button];
    }

    if (windowsToScroll == NULL) {
        return;
    }

    switch (buttonState) {
    case BUTTON_STATE_UNPRESSED:
    case BUTTON_STATE_PRESSED:
        scrollDirection = SCROLL_DIRECTION_DOWN;
        scrollDistance = WINDOW_SCROLL_DEFAULT;
        break;
    case BUTTON_STATE_PRESSING:
        scrollDirection = SCROLL_DIRECTION_UP;
        scrollDistance = WINDOW_SCROLL_PRESSING;
        break;
    }

    for (i = 0; i < MAX_SCROLLABLE_WINDOWS; i++) {
        if (windowsToScroll[i] == WINDOWS_ARRAY_TERMINATOR) {
            break;
        }

        Window_Scroll(&battleBag->windows[windowsToScroll[i]], scrollDirection, scrollDistance, 0);
        Window_ScheduleCopyToVRAM(&battleBag->windows[windowsToScroll[i]]);
    }
}

static void UpdateSpritePositions(BattleBag *battleBag, u8 button, u8 buttonState)
{
    ManagedSprite *sprite;
    u8 i;

    if (button >= BUTTON_POCKET_MENU_SCREEN_ITEM_1 && button <= BUTTON_POCKET_MENU_SCREEN_ITEM_6) {
        sprite = battleBag->pocketItemSprites[button - BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET];
    } else if (button == BUTTON_MENU_SCREEN_LAST_USED_ITEM) {
        for (i = 0; i < BATTLE_POCKET_ITEMS_PER_PAGE; i++) {
            sprite = battleBag->pocketItemSprites[i];

            if (ManagedSprite_GetDrawFlag(sprite) != FALSE) {
                break;
            }
        }
    } else {
        return;
    }

    switch (buttonState) {
    case BUTTON_STATE_UNPRESSED:
    case BUTTON_STATE_PRESSED:
        ManagedSprite_OffsetPositionXY(sprite, 0, SPRITE_Y_POSITION_DEFAULT);
        break;
    case BUTTON_STATE_PRESSING:
        ManagedSprite_OffsetPositionXY(sprite, 0, SPRITE_Y_POSITION_PRESSING);
        break;
    }
}

void BattleBagButtons_PressButton(BattleBag *battleBag, u8 pressedButton, u8 unused)
{
    battleBag->pressedButtonState = BUTTON_STATE_UNPRESSED;
    battleBag->Unused1 = 0;
    battleBag->pressedButton = pressedButton;
    battleBag->Unused2 = unused;
    battleBag->isAButtonPressed = TRUE;
}

void BattleBagButtons_Tick(BattleBag *battleBag)
{
    if (battleBag->isAButtonPressed == FALSE) {
        return;
    }

    switch (battleBag->pressedButtonState) {
    case BUTTON_STATE_UNPRESSED:
        DrawButton(battleBag, battleBag->pressedButton, BUTTON_STATE_PRESSING, battleBag->currentScreen);
        UpdateWindowScroll(battleBag, battleBag->pressedButton, BUTTON_STATE_PRESSING);
        UpdateSpritePositions(battleBag, battleBag->pressedButton, BUTTON_STATE_PRESSING);
        battleBag->Unused1 = 0;
        battleBag->pressedButtonState = BUTTON_STATE_PRESSING;
        break;
    case BUTTON_STATE_PRESSING:
        DrawButton(battleBag, battleBag->pressedButton, BUTTON_STATE_PRESSED, battleBag->currentScreen);
        UpdateWindowScroll(battleBag, battleBag->pressedButton, BUTTON_STATE_PRESSED);
        UpdateSpritePositions(battleBag, battleBag->pressedButton, BUTTON_STATE_PRESSED);
        battleBag->Unused1 = 0;
        battleBag->pressedButtonState = BUTTON_STATE_PRESSED;
        break;
    case BUTTON_STATE_PRESSED:
        DrawButton(battleBag, battleBag->pressedButton, BUTTON_STATE_UNPRESSED, battleBag->currentScreen);
        UpdateWindowScroll(battleBag, battleBag->pressedButton, BUTTON_STATE_UNPRESSED);
        UpdateSpritePositions(battleBag, battleBag->pressedButton, BUTTON_STATE_UNPRESSED);
        battleBag->Unused1 = 0;
        battleBag->pressedButtonState = BUTTON_STATE_UNPRESSED;
        battleBag->isAButtonPressed = FALSE;
        break;
    }
}

void BattleBagButtons_InitializeButtons(BattleBag *battleBag, u8 screen)
{
    switch (screen) {
    case BATTLE_BAG_SCREEN_MENU:
        DrawButton(battleBag, BUTTON_MENU_SCREEN_RECOVER_HP_POCKET, BUTTON_STATE_UNPRESSED, screen);
        DrawButton(battleBag, BUTTON_MENU_SCREEN_RECOVER_STATUS_POCKET, BUTTON_STATE_UNPRESSED, screen);
        DrawButton(battleBag, BUTTON_MENU_SCREEN_POKE_BALLS_POCKET, BUTTON_STATE_UNPRESSED, screen);
        DrawButton(battleBag, BUTTON_MENU_SCREEN_BATTLE_ITEMS_POCKET, BUTTON_STATE_UNPRESSED, screen);

        if (battleBag->context->lastUsedItem == ITEM_NONE) {
            DrawButton(battleBag, BUTTON_MENU_SCREEN_LAST_USED_ITEM, BUTTON_STATE_DISABLED, screen);
        } else {
            DrawButton(battleBag, BUTTON_MENU_SCREEN_LAST_USED_ITEM, BUTTON_STATE_UNPRESSED, screen);
        }

        DrawButton(battleBag, BUTTON_MENU_SCREEN_CANCEL, BUTTON_STATE_UNPRESSED, screen);
        break;
    case BATTLE_BAG_SCREEN_POCKET_MENU: {
        for (u32 i = 0; i < BATTLE_POCKET_ITEMS_PER_PAGE; i++) {
            if (BattleBag_GetItem(battleBag, i) == ITEM_NONE) {
                DrawButton(battleBag, BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + i, BUTTON_STATE_DISABLED, screen);
            } else {
                DrawButton(battleBag, BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + i, BUTTON_STATE_UNPRESSED, screen);
            }
        }
    }

        if (battleBag->numBattlePocketPages[battleBag->currentBattlePocket] == 0) {
            DrawButton(battleBag, BUTTON_POCKET_MENU_SCREEN_PREV_PAGE, BUTTON_STATE_DISABLED, screen);
            DrawButton(battleBag, BUTTON_POCKET_MENU_SCREEN_NEXT_PAGE, BUTTON_STATE_DISABLED, screen);
        } else {
            DrawButton(battleBag, BUTTON_POCKET_MENU_SCREEN_PREV_PAGE, BUTTON_STATE_UNPRESSED, screen);
            DrawButton(battleBag, BUTTON_POCKET_MENU_SCREEN_NEXT_PAGE, BUTTON_STATE_UNPRESSED, screen);
        }

        DrawButton(battleBag, BUTTON_POCKET_MENU_SCREEN_CANCEL, BUTTON_STATE_UNPRESSED, screen);
        break;
    case BATTLE_BAG_SCREEN_USE_ITEM:
        DrawButton(battleBag, BUTTON_USE_ITEM_SCREEN_USE, BUTTON_STATE_UNPRESSED, screen);
        DrawButton(battleBag, BUTTON_USE_ITEM_SCREEN_CANCEL, BUTTON_STATE_UNPRESSED, screen);
    }
}
