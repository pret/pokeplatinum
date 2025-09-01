#ifndef POKEPLATINUM_UNDERGROUND_ITEM_LIST_MENU_H
#define POKEPLATINUM_UNDERGROUND_ITEM_LIST_MENU_H

#include "struct_defs/underground.h"

#include "colored_arrow.h"
#include "heap.h"
#include "list_menu.h"
#include "string_list.h"

typedef void (*MoveItemCallback)(Underground *underground, int origSlot, int slotToMoveAfter);

typedef struct UndergroundItemListMenu {
    MoveItemCallback moveItemCallback;
    Underground *underground;
    StringList *choices;
    ListMenu *listMenu;
    ColoredArrow *arrow;
    u16 initialListPos;
    u16 initialCursorPos;
    u16 listPos;
    u16 cursorPos;
    u8 movingItems;
    u8 heapID;
    u8 isGoodsPC;
    u16 trueCursorPos;
} UndergroundItemListMenu;

UndergroundItemListMenu *UndergroundItemListMenu_New(ListMenuTemplate *template, u16 startListPos, u16 startCursorPos, u8 heapID, MoveItemCallback moveItemCallback, Underground *underground, BOOL isGoodsPC);
u32 UndergroundItemListMenu_ProcessInput(UndergroundItemListMenu *menu);
void UndergroundItemListMenu_Free(UndergroundItemListMenu *menu, u16 *outListPos, u16 *outCursorPos);

#endif // POKEPLATINUM_UNDERGROUND_ITEM_LIST_MENU_H
