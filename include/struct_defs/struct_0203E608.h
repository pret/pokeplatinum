#ifndef POKEPLATINUM_STRUCT_0203E608_H
#define POKEPLATINUM_STRUCT_0203E608_H

#include "savedata.h"

typedef struct {
    SaveData *saveData;
    u8 dummy;
    u8 unused[3];
    u16 wonItems[3];
    u16 wonItemsCount[3];
    u16 dummy2;
    u16 unused2;
} ScratchOffCardsAppArgs;

#endif // POKEPLATINUM_STRUCT_0203E608_H
