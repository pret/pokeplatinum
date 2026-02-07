#ifndef POKEPLATINUM_STRUCT_OV16_0225EA80_H
#define POKEPLATINUM_STRUCT_OV16_0225EA80_H

#include "struct_decls/battle_system.h"

#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_02265BBC.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/struct_ball_rotation_decl.h"
#include "battle_anim/struct_ov12_02223764.h"
#include "battle_anim/struct_ov12_02235FE0_decl.h"

typedef struct {
    BattleSystem *battleSys;
    BattlerData *unk_04;
    UnkStruct_ov12_02235FE0 *unk_08;
    BallRotation *unk_0C;
    UnkStruct_ov12_02223764 *unk_10;
    PokemonSpriteTemplate unk_14;
    BattleAnimSystem *unk_24;
    MoveAnimation unk_28;
    u8 unk_80;
    u8 unk_81;
    u8 unk_82;
    u8 unk_83;
    u8 unk_84;
    u8 unk_85;
    u16 unk_86;
    int unk_88;
    u8 unk_8C;
    u8 unk_8D;
    u16 unk_8E;
    s8 unk_90;
    s8 unk_91;
    u8 unk_92;
    u8 unk_93;
    u16 unk_94;
    u8 unk_96;
    u8 unk_97;
    int unk_98;
} UnkStruct_ov16_0225EA80;

#endif // POKEPLATINUM_STRUCT_OV16_0225EA80_H
