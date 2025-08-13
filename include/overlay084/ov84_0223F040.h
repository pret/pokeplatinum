#ifndef POKEPLATINUM_OV84_0223F040_H
#define POKEPLATINUM_OV84_0223F040_H

#include "overlay084/ov84_0223B5A0.h"

#include "bag.h"
#include "bg_window.h"

u8 BagInterface_PrintStrBufferToWideMsgBox(BagInterfaceManager *param0);
void BagInterface_CreateWindows(BagInterfaceManager *param0);
void BagInterface_DeleteWindows(Window *param0);
void BagInterface_LoadPocketNames(BagInterfaceManager *param0);
void BagInterface_FreePocketNames(BagInterfaceManager *param0);
void BagInterface_MaybeClearPocketNameBox(BagInterfaceManager *param0);
void BagInterface_PrintPocketNames(BagInterfaceManager *param0);
void BagInterface_DrawPocketIndicatorIcon(BagInterfaceManager *param0, u8 param1, u8 param2);
void BagInterface_DrawPocketIndicatorIcons(BagInterfaceManager *param0);
void BagInterface_PrintItemDescription(BagInterfaceManager *param0, u16 param1);
void BagInterface_PrintTMHMMoveInfo(BagInterfaceManager *param0, u16 param1);
void BagInterface_LoadItemCountStrings(BagInterfaceManager *param0);
void BagInterface_FreeItemCountStrings(BagInterfaceManager *param0);
void BagInterface_PrintItemCount(BagInterfaceManager *param0, u16 param1, u16 param2, u32 param3);
void BagInterface_PrintTMHMNumber(BagInterfaceManager *param0, BagItem *param1, u32 param2);
void BagInterface_PrintBerryNumber(BagInterfaceManager *param0, BagItem *param1, u32 param2);
void BagInterface_PrintCloseBagEntry(BagInterfaceManager *param0, u32 param1);
void BagInterface_DrawRegisteredIcon(BagInterfaceManager *param0, u32 param1);
void BagInterface_LoadItemActionStrings(BagInterfaceManager *param0);
void BagInterface_FreeItemActionStrings(BagInterfaceManager *param0);
void BagInterface_ShowItemActionsMenu(BagInterfaceManager *param0, u8 *param1, u8 param2);
void BagInterface_CloseItemActionsMenu(BagInterfaceManager *param0);
void BagInterface_PrintMovingItemMessage(BagInterfaceManager *param0);
void BagInterface_ShowItemTrashWindows(BagInterfaceManager *param0);
void BagInterface_PrintItemTrashCount(BagInterfaceManager *param0);
void BagInterface_CloseItemTrashWindows(BagInterfaceManager *param0);
void BagInterface_PrintConfirmItemTrashMsg(BagInterfaceManager *param0);
void BagInterface_ShowYesNoMenu(BagInterfaceManager *param0);
void BagInterface_PrintSellCountAndValue(BagInterfaceManager *param0, u8 param1);
void BagInterface_PrintMoney(BagInterfaceManager *param0, u8 param1);
void BagInterface_DrawPoffinCountMsgBox(BagInterfaceManager *param0);

#endif // POKEPLATINUM_OV84_0223F040_H
