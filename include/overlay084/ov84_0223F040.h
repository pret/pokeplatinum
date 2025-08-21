#ifndef POKEPLATINUM_OV84_0223F040_H
#define POKEPLATINUM_OV84_0223F040_H

#include "overlay084/ov84_0223B5A0.h"

#include "bag.h"
#include "bg_window.h"

u8 BagInterface_PrintStrBufferToWideMsgBox(BagInterface *interface);
void BagInterface_CreateWindows(BagInterface *interface);
void BagInterface_DeleteWindows(Window *window);
void BagInterface_LoadPocketNames(BagInterface *interface);
void BagInterface_FreePocketNames(BagInterface *interface);
void BagInterface_MaybeClearPocketNameBox(BagInterface *interface);
void BagInterface_PrintPocketNames(BagInterface *interface);
void BagInterface_DrawPocketIndicatorIcon(BagInterface *interface, u8 pocketIndex, u8 focused);
void BagInterface_DrawPocketIndicatorIcons(BagInterface *interface);
void BagInterface_PrintItemDescription(BagInterface *interface, u16 item);
void BagInterface_PrintTMHMMoveStats(BagInterface *interface, u16 item);
void BagInterface_LoadItemCountStrings(BagInterface *interface);
void BagInterface_FreeItemCountStrings(BagInterface *interface);
void BagInterface_PrintItemCount(BagInterface *interface, u16 count, u16 yOffset, u32 color);
void BagInterface_PrintTMHMNumber(BagInterface *interface, BagItem *itemSlot, u32 yOffset);
void BagInterface_PrintBerryNumber(BagInterface *interface, BagItem *itemSlot, u32 yOffset);
void BagInterface_PrintCloseBagEntry(BagInterface *interface, u32 yOffset);
void BagInterface_DrawRegisteredIcon(BagInterface *interface, u32 yOffset);
void BagInterface_LoadItemActionStrings(BagInterface *interface);
void BagInterface_FreeItemActionStrings(BagInterface *interface);
void BagInterface_ShowItemActionsMenu(BagInterface *interface, u8 *actions, u8 numActions);
void BagInterface_CloseItemActionsMenu(BagInterface *interface);
void BagInterface_PrintMovingItemMessage(BagInterface *interface);
void BagInterface_ShowItemTrashWindows(BagInterface *interface);
void BagInterface_PrintItemTrashCount(BagInterface *interface);
void BagInterface_CloseItemTrashWindows(BagInterface *interface);
void BagInterface_PrintConfirmItemTrashMsg(BagInterface *interface);
void BagInterface_ShowYesNoMenu(BagInterface *interface);
void BagInterface_PrintSellCountAndValue(BagInterface *interface, u8 skipFrame);
void BagInterface_PrintMoney(BagInterface *interface, u8 skipLabel);
void BagInterface_DrawPoffinCountMsgBox(BagInterface *interface);

#endif // POKEPLATINUM_OV84_0223F040_H
