#ifndef POKEPLATINUM_STRUCT_OV16_02264650_1_H
#define POKEPLATINUM_STRUCT_OV16_02264650_1_H

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/battle_system.h"
#include "battle/struct_ov16_02268520.h"

typedef struct {
    BattleSystem * unk_00;
    UnkStruct_ov16_02268520 * unk_04;
    CellActorData * unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    s16 unk_10;
    u16 unk_12_0 : 1;
    u16 unk_12_1 : 15;
    int unk_14;
    int unk_18;
    int unk_1C;
} UnkStruct_ov16_02264650_1;

#endif // POKEPLATINUM_STRUCT_OV16_02264650_1_H
