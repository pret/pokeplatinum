#ifndef POKEPLATINUM_OV84_0223F040_H
#define POKEPLATINUM_OV84_0223F040_H

#include "overlay084/ov84_0223B5A0.h"

#include "bag.h"
#include "bg_window.h"

u8 BagInterface_PrintStrBufferToWideMsgBox(BagInterface *param0);
void BagInterface_CreateWindows(BagInterface *param0);
void BagInterface_DeleteWindows(Window *param0);
void BagInterface_LoadPocketNames(BagInterface *param0);
void BagInterface_FreePocketNames(BagInterface *param0);
void BagInterface_MaybeClearPocketNameBox(BagInterface *param0);
void BagInterface_PrintPocketNames(BagInterface *param0);
void BagInterface_DrawPocketIndicatorIcon(BagInterface *param0, u8 param1, u8 param2);
void BagInterface_DrawPocketIndicatorIcons(BagInterface *param0);
void BagInterface_PrintItemDescription(BagInterface *param0, u16 param1);
void BagInterface_PrintTMHMMoveInfo(BagInterface *param0, u16 param1);
void BagInterface_LoadItemCountStrings(BagInterface *param0);
void BagInterface_FreeItemCountStrings(BagInterface *param0);
void BagInterface_PrintItemCount(BagInterface *param0, u16 param1, u16 param2, u32 param3);
void BagInterface_PrintTMHMNumber(BagInterface *param0, BagItem *param1, u32 param2);
void BagInterface_PrintBerryNumber(BagInterface *param0, BagItem *param1, u32 param2);
void BagInterface_PrintCloseBagEntry(BagInterface *param0, u32 param1);
void BagInterface_DrawRegisteredIcon(BagInterface *param0, u32 param1);
void BagInterface_LoadItemActionStrings(BagInterface *param0);
void BagInterface_FreeItemActionStrings(BagInterface *param0);
void BagInterface_ShowItemActionsMenu(BagInterface *param0, u8 *param1, u8 param2);
void BagInterface_CloseItemActionsMenu(BagInterface *param0);
void BagInterface_PrintMovingItemMessage(BagInterface *param0);
void BagInterface_ShowItemTrashWindows(BagInterface *param0);
void BagInterface_PrintItemTrashCount(BagInterface *param0);
void BagInterface_CloseItemTrashWindows(BagInterface *param0);
void BagInterface_PrintConfirmItemTrashMsg(BagInterface *param0);
void BagInterface_ShowYesNoMenu(BagInterface *param0);
void BagInterface_PrintSellCountAndValue(BagInterface *param0, u8 param1);
void BagInterface_PrintMoney(BagInterface *param0, u8 param1);
void BagInterface_DrawPoffinCountMsgBox(BagInterface *param0);

#endif // POKEPLATINUM_OV84_0223F040_H
