#ifndef POKEPLATINUM_STRUCT_OV22_02257964_SUB2_H
#define POKEPLATINUM_STRUCT_OV22_02257964_SUB2_H

#include "struct_defs/struct_020298D8.h"

#include "overlay022/struct_ov22_02254DE0.h"
#include "overlay022/struct_ov22_022597BC.h"

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
    UnkStruct_ov22_022597BC unk_1C;
    int unk_48;
    UnkStruct_020298D8 unk_4C;
} UnkStruct_ov22_02257964_sub2;

#endif // POKEPLATINUM_STRUCT_OV22_02257964_SUB2_H
