#ifndef POKEPLATINUM_APPLICATIONS_BAG_WINDOWS_H
#define POKEPLATINUM_APPLICATIONS_BAG_WINDOWS_H

#include "applications/bag/defs.h"

#include "bag.h"
#include "bg_window.h"

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

#endif // POKEPLATINUM_APPLICATIONS_BAG_WINDOWS_H
