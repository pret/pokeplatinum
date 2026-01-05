#ifndef POKEPLATINUM_STRUCT_02029C88_DECL_H
#define POKEPLATINUM_STRUCT_02029C88_DECL_H

#include "struct_defs/photo_accessory.h"
#include "struct_defs/photo_pokemon.h"

typedef struct UnkStruct_02029C88_t {
    u32 integrity;
    u32 unk_04;
    PhotoPokemon photoMon;
    u32 unk_40;
    PhotoAccessory accessories[20];
    u8 unk_94;
} UnkStruct_02029C88;

#endif // POKEPLATINUM_STRUCT_02029C88_DECL_H
