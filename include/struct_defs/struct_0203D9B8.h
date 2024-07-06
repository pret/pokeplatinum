#ifndef POKEPLATINUM_STRUCT_0203D9B8_H
#define POKEPLATINUM_STRUCT_0203D9B8_H

#include "struct_decls/struct_0202AB28_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_020989DC.h"

#include "bag.h"
#include "game_options.h"
#include "trainer_info.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u16 unk_06;
    UnkStruct_0202AB28 *unk_08;
    TrainerInfo *unk_0C;
    Party *unk_10;
    Bag *unk_14;
    Options *unk_18;
    UnkStruct_020989DC unk_1C[100];
} UnkStruct_0203D9B8;

#endif // POKEPLATINUM_STRUCT_0203D9B8_H
