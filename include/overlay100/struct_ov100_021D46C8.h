#ifndef POKEPLATINUM_STRUCT_OV100_021D46C8_H
#define POKEPLATINUM_STRUCT_OV100_021D46C8_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "overlay100/struct_ov100_021D36CC.h"
#include "overlay100/struct_ov100_021D46C8_sub1.h"
#include "overlay100/struct_ov100_021D4890.h"
#include "overlay100/struct_ov100_021D4F9C_decl.h"

#include "bg_window.h"
#include "camera.h"
#include "g3d_pipeline_state.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"

typedef struct {
    NARC *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    BgConfig *unk_0C;
    PaletteData *unk_10;
    G3DPipelineState *unk_14;
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
