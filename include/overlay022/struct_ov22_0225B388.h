#ifndef POKEPLATINUM_STRUCT_OV22_0225B388_H
#define POKEPLATINUM_STRUCT_OV22_0225B388_H

#include "overlay022/struct_ov22_02254DE0.h"
#include "overlay022/struct_ov22_02259484.h"

#include "bg_window.h"
#include "software_sprite.h"

typedef struct {
    SoftwareSpriteManager *unk_00;
    SoftwareSpriteChars **unk_04;
    SoftwareSpritePalette **unk_08;
    u8 *unk_0C;
    PokemonSpriteManager *unk_10;
    BgConfig *unk_14;
    UnkStruct_ov22_02254DE0 *unk_18;
    UnkStruct_ov22_02259484 *unk_1C;
    int unk_20;
} UnkStruct_ov22_0225B388;

#endif // POKEPLATINUM_STRUCT_OV22_0225B388_H
