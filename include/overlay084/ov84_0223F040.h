#ifndef POKEPLATINUM_OV84_0223F040_H
#define POKEPLATINUM_OV84_0223F040_H

#include "overlay084/struct_ov84_0223B5A0.h"

#include "bag.h"
#include "bg_window.h"

void BagInterface_CreateWindows(BagInterfaceManager *param0);
void BagInterface_DeleteWindows(Window *param0);
void BagInterface_LoadPocketNames(BagInterfaceManager *param0);
void BagInterface_FreePocketNames(BagInterfaceManager *param0);
void BagInterface_MaybeClearPocketNameBox(BagInterfaceManager *param0);
void BagInterface_PrintCurrentAndNextPocketNames(BagInterfaceManager *param0);
void BagInterface_DrawPocketIndicatorIcon(BagInterfaceManager *param0, u8 param1, u8 param2);
void BagInterface_DrawPocketIndicatorIcons(BagInterfaceManager *param0);
void BagInterface_PrintItemDescription(BagInterfaceManager *param0, u16 param1);
void BagInterface_PrintTMHMMoveData(BagInterfaceManager *param0, u16 param1);
void BagInterface_LoadItemCountStrings(BagInterfaceManager *param0);
void BagInterface_FreeItemCountStrings(BagInterfaceManager *param0);
void BagInterface_PrintItemCount(BagInterfaceManager *param0, u16 param1, u16 param2, u32 param3);
void ov84_0223F8D0(BagInterfaceManager *param0, BagItem *param1, u32 param2);
void ov84_0223F94C(BagInterfaceManager *param0, BagItem *param1, u32 param2);
void ov84_0223F9F0(BagInterfaceManager *param0, u32 param1);
void ov84_0223FA44(BagInterfaceManager *param0, u32 param1);
void BagInterface_LoadItemActionStrings(BagInterfaceManager *param0);
void BagInterface_FreeItemActionStrings(BagInterfaceManager *param0);
void ov84_0223FB70(BagInterfaceManager *param0, u8 *param1, u8 param2);
void ov84_0223FD84(BagInterfaceManager *param0);
void PrintMovingItemTooltip(BagInterfaceManager *param0);
void ov84_0223FE94(BagInterfaceManager *param0);
void ov84_0223FF44(BagInterfaceManager *param0);
void ov84_0223FFC0(BagInterfaceManager *param0);
void ov84_0223FFF0(BagInterfaceManager *param0);
u8 BagInterface_PrintMessageBoxText(BagInterfaceManager *param0);
void ov84_02240120(BagInterfaceManager *param0);
void ov84_02240148(BagInterfaceManager *param0, u8 param1);
void ov84_02240248(BagInterfaceManager *param0, u8 param1);
void BagInterface_DrawPoffinCountMsgBox(BagInterfaceManager *param0);

#endif // POKEPLATINUM_OV84_0223F040_H
