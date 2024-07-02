#ifndef POKEPLATINUM_STRUCT_OV22_02256BAC_H
#define POKEPLATINUM_STRUCT_OV22_02256BAC_H

#include "struct_decls/struct_02006C24_decl.h"
#include "sprite_resource.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_02095C60.h"

#include "cell_actor.h"
#include "game_options.h"

typedef struct {
    BGL *unk_00;
    CellActorCollection *unk_04;
    SpriteResourceCollection **unk_08;
    const Options *unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    UnkStruct_02095C60 *unk_20;
    NARC *unk_24;
} UnkStruct_ov22_02256BAC;

#endif // POKEPLATINUM_STRUCT_OV22_02256BAC_H
