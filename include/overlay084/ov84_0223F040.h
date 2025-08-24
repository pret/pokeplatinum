#ifndef POKEPLATINUM_OV84_0223F040_H
#define POKEPLATINUM_OV84_0223F040_H

#include "overlay084/ov84_0223B5A0.h"

#include "bag.h"
#include "bg_window.h"

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

void BagUI_CreateWindows(BagController *controller);
void BagUI_DeleteWindows(Window windows[NUM_BAG_UI_WINDOWS]);
void BagUI_LoadPocketNames(BagController *controller);
void BagUI_FreePocketNames(BagController *controller);
void BagUI_ClearPocketNameBox(BagController *controller);
void BagUI_PrintPocketNames(BagController *controller);
void BagUI_DrawPocketSelectorIcon(BagController *controller, u8 pocketIndex, u8 focused);
void BagUI_DrawPocketSelectorIcons(BagController *controller);
void BagUI_PrintItemDescription(BagController *controller, u16 item);
void BagUI_PrintTMHMMoveStats(BagController *controller, u16 item);
void BagUI_LoadItemCountStrings(BagController *controller);
void BagUI_FreeItemCountStrings(BagController *controller);
void BagUI_PrintItemCount(BagController *controller, u16 count, u16 yOffset, u32 color);
void BagUI_PrintTMHMNumber(BagController *controller, BagItem *itemSlot, u32 yOffset);
void BagUI_PrintBerryNumber(BagController *controller, BagItem *itemSlot, u32 yOffset);
void BagUI_PrintCloseBagEntry(BagController *controller, u32 yOffset);
void BagUI_DrawRegisteredIcon(BagController *controller, u32 yOffset);
void BagUI_LoadItemActionStrings(BagController *controller);
void BagUI_FreeItemActionStrings(BagController *controller);
void BagUI_ShowItemActionsMenu(BagController *controller, u8 *actions, u8 numActions);
void BagUI_CloseItemActionsMenu(BagController *controller);
void BagUI_PrintMovingItemMsg(BagController *controller);
void BagUI_ShowItemTrashWindows(BagController *controller);
void BagUI_PrintItemTrashCount(BagController *controller);
void BagUI_CloseItemTrashWindows(BagController *controller);
void BagUI_PrintConfirmItemTrashMsg(BagController *controller);
u8 BagUI_PrintStrBufferToWideMsgBox(BagController *controller);
void BagUI_ShowYesNoMenu(BagController *controller);
void BagUI_PrintSellCountAndValue(BagController *controller, u8 skipFrame);
void BagUI_PrintMoney(BagController *controller, u8 skipLabel);
void BagUI_DrawPoffinCountMsgBox(BagController *controller);

#endif // POKEPLATINUM_OV84_0223F040_H
