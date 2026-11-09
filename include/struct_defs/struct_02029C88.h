#ifndef POKEPLATINUM_STRUCT_02029C88_DECL_H
#define POKEPLATINUM_STRUCT_02029C88_DECL_H

#include "struct_defs/photo_accessory.h"
#include "struct_defs/photo_pokemon.h"

#define CONTEST_PHOTO_ACCESSORY_COUNT 20

typedef struct ContestPhoto {
    u32 integrity;
    u32 contestRank;
    PhotoPokemon photoMon;
    u32 accessoryFlags;
    PhotoAccessory accessories[CONTEST_PHOTO_ACCESSORY_COUNT];
    u8 backdrop;
} ContestPhoto;

#endif // POKEPLATINUM_STRUCT_02029C88_DECL_H
