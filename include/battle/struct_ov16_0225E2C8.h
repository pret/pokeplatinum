#ifndef POKEPLATINUM_STRUCT_OV16_0225E2C8_H
#define POKEPLATINUM_STRUCT_OV16_0225E2C8_H

#include "struct_decls/battle_system.h"
#include "struct_defs/battler_data.h"

#include "pokemon_sprite.h"

typedef struct {
    BattleSystem *battleSys;
    BattlerData *battlerData;
    PokemonSprite *unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F[1];
} UnkStruct_ov16_0225E2C8;

#endif // POKEPLATINUM_STRUCT_OV16_0225E2C8_H
