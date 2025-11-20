#ifndef POKEPLATINUM_STRUCT_0202F41C_H
#define POKEPLATINUM_STRUCT_0202F41C_H

#include "struct_defs/struct_0202F298_sub1.h"

#include "battle_regulation.h"

typedef struct UnkStruct_0202F41C_t {
    u16 unk_00[12];
    u8 unk_18[12];
    u16 unk_24;
    u8 unk_26;
    u8 unk_27;
    BattleRegulation battleRegulation;
    u16 unk_48;
    u8 unk_4A[14];
    u64 unk_58;
    UnkStruct_0202F298_sub1 unk_60;
} UnkStruct_0202F41C;

#endif // POKEPLATINUM_STRUCT_0202F41C_H
