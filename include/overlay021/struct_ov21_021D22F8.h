#ifndef POKEPLATINUM_STRUCT_OV21_021D22F8_H
#define POKEPLATINUM_STRUCT_OV21_021D22F8_H

#include <nitro/fx/fx.h>

#include "sprite_resource.h"

#include "overlay021/struct_ov21_021D4CA0.h"

#include "cell_actor.h"

typedef struct {
    CellActor *unk_00;
    CellActor *unk_04;
    UnkStruct_ov21_021D4CA0 *unk_08;
    SpriteResource *unk_0C[4];
    VecFx32 unk_1C;
    int unk_28;
    u32 unk_2C;
} UnkStruct_ov21_021D22F8;

#endif // POKEPLATINUM_STRUCT_OV21_021D22F8_H
