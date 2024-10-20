#ifndef POKEPLATINUM_STRUCT_OV100_021D46C8_H
#define POKEPLATINUM_STRUCT_OV100_021D46C8_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/struct_0207C690.h"

#include "overlay100/struct_ov100_021D36CC.h"
#include "overlay100/struct_ov100_021D46C8_sub1.h"
#include "overlay100/struct_ov100_021D4890.h"
#include "overlay100/struct_ov100_021D4F9C_decl.h"

#include "bg_window.h"
#include "camera.h"
#include "message.h"

typedef struct {
    NARC *unk_00;
    SpriteRenderer *unk_04;
    SpriteGfxHandler *unk_08;
    BGL *unk_0C;
    PaletteData *unk_10;
    GenericPointerData *unk_14;
    Camera *camera;
    NNSFndAllocator unk_1C;
    MessageLoader *unk_2C;
    Window unk_30;
    int unk_40;
    VecFx32 unk_44;
    UnkStruct_ov100_021D46C8_sub1 unk_50;
    UnkStruct_ov100_021D4F9C *unk_54;
    UnkStruct_ov100_021D4890 unk_58;
    UnkStruct_ov100_021D36CC unk_AC;
    u8 unk_C0;
    u8 unk_C1;
    u8 unk_C2;
} UnkStruct_ov100_021D46C8;

#endif // POKEPLATINUM_STRUCT_OV100_021D46C8_H
