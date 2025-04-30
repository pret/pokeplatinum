#ifndef POKEPLATINUM_STRUCT_OV62_02246BF4_SUB2_H
#define POKEPLATINUM_STRUCT_OV62_02246BF4_SUB2_H

#include "bg_window.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"

typedef struct {
    NARC *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    BgConfig *unk_0C;
    PaletteData *unk_10;
    TouchScreenActions *unk_14;
    TouchScreenRect unk_18[24];
    BOOL unk_78;
} UnkStruct_ov62_02246BF4_sub2;

#endif // POKEPLATINUM_STRUCT_OV62_02246BF4_SUB2_H
