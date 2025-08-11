#ifndef POKEPLATINUM_STRUCT_02089688_SUB1_H
#define POKEPLATINUM_STRUCT_02089688_SUB1_H

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012744_decl.h"

#include "bg_window.h"
#include "char_transfer.h"
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
    TouchScreenRect unk_18[28];
    BOOL unk_88;
    UnkStruct_02012744 *unk_8C;
    FontOAM *unk_90[2];
    CharTransferAllocation unk_98[2];
    Window unk_B0;
} UnkStruct_02089688_sub1;

#endif // POKEPLATINUM_STRUCT_02089688_SUB1_H
