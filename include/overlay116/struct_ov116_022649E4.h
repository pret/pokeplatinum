#ifndef POKEPLATINUM_STRUCT_OV116_022649E4_H
#define POKEPLATINUM_STRUCT_OV116_022649E4_H

#include <nnsys.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/struct_0207C690.h"

#include "overlay116/struct_ov116_022649E4_sub1.h"

#include "bg_window.h"
#include "camera.h"

typedef struct {
    NARC *unk_00;
    NARC *unk_04;
    SpriteRenderer *unk_08;
    SpriteGfxHandler *unk_0C;
    BgConfig *unk_10;
    PaletteData *unk_14;
    GenericPointerData *unk_18;
    Camera *camera;
    u8 padding_20[4];
    NNSFndAllocator unk_24;
    UnkStruct_ov116_022649E4_sub1 unk_2C;
} UnkStruct_ov116_022649E4;

#endif // POKEPLATINUM_STRUCT_OV116_022649E4_H
