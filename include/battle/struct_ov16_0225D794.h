#ifndef POKEPLATINUM_STRUCT_OV16_0225D794_H
#define POKEPLATINUM_STRUCT_OV16_0225D794_H

#include "struct_decls/battle_system.h"

#include "battle/struct_ov16_0225D840.h"
#include "overlay013/battle_bag_battle_info.h"

typedef struct {
    BattleSystem *unk_00;
    BattleBagBattleInfo *unk_04;
    UnkStruct_ov16_0225D840 *unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    u8 unk_11;
    u16 unk_12;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
    u8 unk_18[4][6];
    u8 unk_30[4];
} UnkStruct_ov16_0225D794;

#endif // POKEPLATINUM_STRUCT_OV16_0225D794_H
