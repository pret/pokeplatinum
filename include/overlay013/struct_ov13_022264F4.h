#ifndef POKEPLATINUM_STRUCT_OV13_022264F4_H
#define POKEPLATINUM_STRUCT_OV13_022264F4_H

#include "struct_decls/battle_system.h"

#include "bag.h"
#include "trainer_info.h"

typedef struct {
    BattleSystem *unk_00;
    TrainerInfo *unk_04;
    Bag *unk_08;
    u32 heapID;
    s32 unk_10;
    u32 unk_14;
    u32 unk_18;
    u16 unk_1C;
    u8 unk_1E;
    u8 unk_1F;
    u16 unk_20;
    u8 unk_22;
    u8 unk_23;
    u8 unk_24;
    u8 unk_25;
    u8 unk_26;
    u8 unk_27[5];
    u8 unk_2C[5];
} UnkStruct_ov13_022264F4;

#endif // POKEPLATINUM_STRUCT_OV13_022264F4_H
