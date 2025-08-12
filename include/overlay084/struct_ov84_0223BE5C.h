#ifndef POKEPLATINUM_STRUCT_OV84_0223BE5C_H
#define POKEPLATINUM_STRUCT_OV84_0223BE5C_H

#include "bag.h"

typedef struct {
    BagItem *items;
    u16 cursorPos;
    u16 cursorScroll;
    u8 pocketType;
    u8 listItemsCount;
    u8 padding_0A[2];
} BagInterfacePocketInfo;

#endif // POKEPLATINUM_STRUCT_OV84_0223BE5C_H
