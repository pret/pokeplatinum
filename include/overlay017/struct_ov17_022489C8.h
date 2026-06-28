#ifndef POKEPLATINUM_STRUCT_OV17_022489C8_H
#define POKEPLATINUM_STRUCT_OV17_022489C8_H

#include "battle_anim/struct_ov12_02235FE0_decl.h"
#include "battle_anim/struct_ov12_02236030.h"

#include "pokemon.h"

typedef struct {
    BallCapsuleConfig unk_00;
    BallCapsuleSealEffect *unk_0C;
    Pokemon *mon;
    u8 state;
    u8 unk_15;
} UnkStruct_ov17_022489C8;

#endif // POKEPLATINUM_STRUCT_OV17_022489C8_H
