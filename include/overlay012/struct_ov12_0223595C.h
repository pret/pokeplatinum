#ifndef POKEPLATINUM_STRUCT_OV12_0223595C_H
#define POKEPLATINUM_STRUCT_OV12_0223595C_H

#include "overlay012/battle_anim_system.h"

#include "bg_window.h"
#include "palette.h"
#include "sprite_system.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    BattleAnimSystem *unk_04;
    SpriteSystem *unk_08;
    SpriteManager *unk_0C;
    SpriteManager *unk_10;
    BgConfig *unk_14;
    PaletteData *unk_18;
} UnkStruct_ov12_0223595C;

#endif // POKEPLATINUM_STRUCT_OV12_0223595C_H
