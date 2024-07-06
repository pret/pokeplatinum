#ifndef POKEPLATINUM_STRUCT_OV16_0225D9A8_H
#define POKEPLATINUM_STRUCT_OV16_0225D9A8_H

#include "struct_decls/battle_system.h"
#include "struct_decls/sprite_decl.h"

#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_02265BBC.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"

typedef struct {
    BattleSystem *unk_00;
    BattlerData *unk_04;
    Sprite *unk_08;
    UnkStruct_ov12_0221FCDC *unk_0C;
    UnkStruct_ov16_02265BBC unk_10;
    u8 unk_68;
    u8 unk_69;
    u8 unk_6A;
    u8 unk_6B;
    u8 unk_6C;
    u8 unk_6D[3];
} UnkStruct_ov16_0225D9A8;

#endif // POKEPLATINUM_STRUCT_OV16_0225D9A8_H
