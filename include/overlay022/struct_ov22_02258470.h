#ifndef POKEPLATINUM_STRUCT_OV22_02258470_H
#define POKEPLATINUM_STRUCT_OV22_02258470_H

#include "overlay022/struct_ov22_02254DE0.h"
#include "overlay022/struct_ov22_0225899C.h"
#include "overlay022/struct_ov22_02259484.h"

#include "bg_window.h"
#include "software_sprite.h"

typedef struct {
    SoftwareSpriteManager *unk_00;
    SoftwareSpriteChars **unk_04;
    SoftwareSpritePalette **unk_08;
    u8 *unk_0C;
    BgConfig *unk_10;
    UnkStruct_ov22_02254DE0 *unk_14;
    UnkStruct_ov22_02259484 *unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    UnkStruct_ov22_0225899C *unk_28;
} UnkStruct_ov22_02258470;

#endif // POKEPLATINUM_STRUCT_OV22_02258470_H
