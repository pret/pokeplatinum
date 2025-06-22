#ifndef POKEPLATINUM_STRUCT_OV22_02256BAC_H
#define POKEPLATINUM_STRUCT_OV22_02256BAC_H

#include "struct_defs/struct_02095C60.h"

#include "bg_window.h"
#include "game_options.h"
#include "narc.h"
#include "sprite.h"
#include "sprite_resource.h"

typedef struct {
    BgConfig *unk_00;
    SpriteList *unk_04;
    SpriteResourceCollection **unk_08;
    const Options *options;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    UnkStruct_02095C60 *unk_20;
    NARC *unk_24;
} UnkStruct_ov22_02256BAC;

#endif // POKEPLATINUM_STRUCT_OV22_02256BAC_H
