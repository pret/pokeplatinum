#ifndef POKEPLATINUM_STRUCT_OV16_0225DB74_H
#define POKEPLATINUM_STRUCT_OV16_0225DB74_H

#include "struct_decls/battle_system.h"

#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_02265BBC.h"

#include "pokemon_sprite.h"

typedef struct {
    BattleSystem *battleSys;
    BattlerData *unk_04;
    PokemonSprite *unk_08;
    MoveAnimation unk_0C;
    u8 unk_64;
    u8 unk_65;
    u8 unk_66;
    u8 unk_67;
    u16 unk_68;
    u8 unk_6A;
    u8 unk_6B;
    u32 unk_6C;
    u16 unk_70;
    u16 unk_72;
} UnkStruct_ov16_0225DB74;

#endif // POKEPLATINUM_STRUCT_OV16_0225DB74_H
