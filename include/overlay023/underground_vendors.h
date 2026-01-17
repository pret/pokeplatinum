#ifndef POKEPLATINUM_UNDERGROUND_VENDORS_H
#define POKEPLATINUM_UNDERGROUND_VENDORS_H

#include "field/field_system_decl.h"
#include "overlay023/underground_menu.h"

int UndergroundVendors_ReturnFFFE(void *unused);
void *UndergroundVendors_ReturnNull(BOOL unused0, FieldSystem *unused1, int unused2);
int UndergroundVendors_PrintNPCMessage(int bankEntry);
void UndergroundVendors_EraseMessageBoxWindow(void);
void UndergroundVendors_SetTreasureNameForPrinter(int index, int treasureID);
void UndergroundVendors_SetTrapNameForPrinter(int index, int trapID);
void UndergroundVendors_SetGoodNameForPrinter(int index, int goodID);
void UndergroundMenu_PrintMenuDescription(UndergroundMenu *menu, int bankEntry);
void UndergroundMenu_RemoveDescriptionWindow(UndergroundMenu *menu);
void UndergroundMenu_RemoveDescriptionWindowInstant(UndergroundMenu *menu);
void UndergroundVendors_StartShopMenuTask(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_UNDERGROUND_VENDORS_H
