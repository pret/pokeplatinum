#ifndef POKEPLATINUM_STRUCT_OV71_0223D238_H
#define POKEPLATINUM_STRUCT_OV71_0223D238_H

#include <nnsys.h>

#include "struct_defs/struct_0200C738.h"

#include "cell_actor.h"
#include "sprite_resource.h"

typedef struct {
    CellActorCollection *unk_00;
    UnkStruct_0200C738 unk_04;
    SpriteResourceCollection *unk_190[4];
    SpriteResource *unk_1A0[2][4];
    CellActor *unk_1C0[25];
    void *unk_224[8];
    NNSG2dPaletteData *unk_244[8];
} UnkStruct_ov71_0223D238;

#endif // POKEPLATINUM_STRUCT_OV71_0223D238_H
