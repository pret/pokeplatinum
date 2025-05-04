#ifndef POKEPLATINUM_STRUCT_OV21_021D22F8_H
#define POKEPLATINUM_STRUCT_OV21_021D22F8_H

#include <nitro/fx/fx.h>

#include "applications/pokedex/pokedex_text_manager.h"

#include "sprite.h"
#include "sprite_resource.h"

typedef struct {
    Sprite *unk_00;
    Sprite *unk_04;
    PokedexTextData *unk_08;
    SpriteResource *unk_0C[4];
    VecFx32 unk_1C;
    int unk_28;
    u32 unk_2C;
} UnkStruct_ov21_021D22F8;

#endif // POKEPLATINUM_STRUCT_OV21_021D22F8_H
