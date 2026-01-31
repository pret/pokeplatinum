#ifndef POKEPLATINUM_STRUCT_DRESS_UP_PHOTO_H
#define POKEPLATINUM_STRUCT_DRESS_UP_PHOTO_H

#include "struct_defs/photo_accessory.h"
#include "struct_defs/photo_pokemon.h"
#include "struct_defs/sentence.h"

#define PHOTO_ACCESSORY_COUNT 10

typedef struct DressUpPhoto {
    u32 integrity;
    PhotoPokemon photoMon;
    u32 unk_3C;
    Sentence title;
    PhotoAccessory accessories[PHOTO_ACCESSORY_COUNT];
    u8 unk_70;
    u8 language;
} DressUpPhoto;

#endif // POKEPLATINUM_STRUCT_DRESS_UP_PHOTO_H
