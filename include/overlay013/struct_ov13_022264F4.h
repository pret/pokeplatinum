#ifndef POKEPLATINUM_STRUCT_OV13_022264F4_H
#define POKEPLATINUM_STRUCT_OV13_022264F4_H

#include "struct_decls/battle_system.h"

#include "bag.h"
#include "trainer_info.h"

typedef struct {
    BattleSystem *unk_00;
    TrainerInfo *unk_04;
    Bag *bag;
    u32 heapID;
    s32 unk_10;
    u32 unk_14;
    u32 unk_18;
    u16 unk_1C;
    u8 unk_1E;
    u8 lastUsedItemPocket;
    u16 lastUsedItem;
    u8 unk_22;
    u8 unk_23;
    u8 unk_24;
    u8 unk_25;
    u8 unk_26;
    u8 pocketCurrentPagePositions[5];
    u8 pocketCurrentPages[5];
} UnkStruct_ov13_022264F4;

#endif // POKEPLATINUM_STRUCT_OV13_022264F4_H
