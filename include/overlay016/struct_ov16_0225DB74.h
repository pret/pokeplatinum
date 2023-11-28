#ifndef POKEPLATINUM_STRUCT_OV16_0225DB74_H
#define POKEPLATINUM_STRUCT_OV16_0225DB74_H

#include "struct_decls/sprite_decl.h"
#include "struct_decls/battle_system.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"
#include "overlay016/struct_ov16_02265BBC.h"

typedef struct {
    BattleSystem * unk_00;
    BattlerData * unk_04;
    Sprite * unk_08;
    UnkStruct_ov16_02265BBC unk_0C;
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
