#ifndef POKEPLATINUM_STRUCT_020556C4_H
#define POKEPLATINUM_STRUCT_020556C4_H

#include "struct_defs/struct_020556C4_sub1.h"

typedef struct {
    int historyPointer;
    u8 currentMapX;
    u8 currentMapZ;
    OverworldMapHistoryItem items[6];
} OverworldMapHistory;

#endif // POKEPLATINUM_STRUCT_020556C4_H
