#ifndef POKEPLATINUM_STRUCT_0207CB08_H
#define POKEPLATINUM_STRUCT_0207CB08_H

#include "bag.h"
#include "savedata.h"

typedef struct BagInterfacePocketInfo {
    BagItem *items;
    u16 cursorPos;
    u16 cursorScroll;
    u8 pocketType;
    u8 listItemsCount;
    u8 padding_0A[2];
} BagInterfacePocketInfo;

typedef struct BagInterfaceArguments {
    SaveData *saveData;
    BagInterfacePocketInfo accessiblePockets[POCKET_MAX];
    u8 currPocketIdx;
    u8 context;
    u16 selectedItem;
    u16 exitCode;
    u8 padding_6A[2];
    BagCursor *bagCursor;
    void *unk_70;
    u8 unk_74;
    u8 unk_75;
    u16 unk_76_0 : 1;
    u16 mapLoadType : 15;
} BagInterfaceArguments;

#endif // POKEPLATINUM_STRUCT_0207CB08_H
