#ifndef POKEPLATINUM_STRUCT_OV16_02264408_H
#define POKEPLATINUM_STRUCT_OV16_02264408_H

#include "struct_decls/sprite_decl.h"
#include "struct_defs/chatot_cry.h"

#include "battle/struct_ov16_0223E0C8.h"
#include "battle/struct_ov16_02264408_sub1.h"

#include "bg_window.h"
#include "palette.h"
#include "sprite_system.h"

typedef struct {
    SpriteSystem *unk_00;
    BgConfig *unk_04;
    PaletteData *unk_08;
    UnkStruct_ov16_0223E0C8 *unk_0C[4];
    u8 unk_1C[4];
    Sprite *unk_20[4];
    u32 unk_30;
    u16 unk_34[4];
    u8 unk_3C[4];
    u8 unk_40[4];
    u8 unk_44[4];
    u32 unk_48[4];
    u32 unk_4C[4];
    int unk_50;
    UnkStruct_ov16_02264408_sub1 unk_54;
    ChatotCry *unk_6C;
    u8 *unk_70;
    u16 *unk_74;
} UnkStruct_ov16_02264408;

#endif // POKEPLATINUM_STRUCT_OV16_02264408_H
