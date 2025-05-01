#ifndef POKEPLATINUM_STRUCT_OV65_02234E50_H
#define POKEPLATINUM_STRUCT_OV65_02234E50_H

#include <nnsys.h>

#include "struct_decls/font_oam.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "string_template.h"
#include "touch_screen_actions.h"

typedef struct {
    StringTemplate *unk_00;
    void *unk_04;
    NNSG2dScreenData *unk_08;
    void *unk_0C[7];
    NNSG2dScreenData *unk_28[7];
    void *unk_44;
    NNSG2dScreenData *unk_48;
    TouchScreenActions *unk_4C;
    u8 unk_50[32];
    u8 unk_70;
    u8 unk_71;
    u8 unk_72;
    u8 unk_73;
    s8 unk_74;
    u8 unk_75;
    u8 unk_76;
    u8 unk_77;
    BOOL unk_78;
    Window unk_7C[8];
    Window unk_FC[8][2];
    Window unk_1FC;
    SpriteResource *unk_20C[4];
    Sprite *unk_21C[3];
    CharTransferAllocation unk_228;
    FontOAM *unk_234;
    u32 unk_238;
    u32 unk_23C;
    u32 unk_240;
    TouchScreenActions *unk_244;
} UnkStruct_ov65_02234E50;

#endif // POKEPLATINUM_STRUCT_OV65_02234E50_H
