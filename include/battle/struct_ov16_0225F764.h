#ifndef POKEPLATINUM_STRUCT_OV16_0225F764_H
#define POKEPLATINUM_STRUCT_OV16_0225F764_H

#include "struct_decls/battle_system.h"

#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_02265BBC.h"
#include "battle_anim/struct_ball_rotation_decl.h"

#include "pokemon_sprite.h"

typedef struct {
    BattleSystem *battleSys;
    BattlerData *unk_04;
    PokemonSprite *unk_08;
    BallRotation *unk_0C;
    MoveAnimation unk_10;
    u8 unk_68;
    u8 unk_69;
    u8 unk_6A;
    u8 unk_6B;
    u8 unk_6C;
    u8 unk_6D;
    u16 unk_6E;
    int unk_70;
} UnkStruct_ov16_0225F764;

#endif // POKEPLATINUM_STRUCT_OV16_0225F764_H
