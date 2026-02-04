#ifndef POKEPLATINUM_STRUCT_OV16_0225E4E8_H
#define POKEPLATINUM_STRUCT_OV16_0225E4E8_H

#include "struct_decls/battle_system.h"

#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_02268520.h"

#include "pokemon_sprite.h"

typedef struct {
    BattleSystem *battleSys;
    BattlerData *unk_04;
    PokemonSprite *unk_08;
    UnkStruct_ov16_02268520 *unk_0C;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    s16 unk_14;
    u16 unk_16;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    u8 unk_2C;
    u8 unk_2D[3];
} UnkStruct_ov16_0225E4E8;

#endif // POKEPLATINUM_STRUCT_OV16_0225E4E8_H
