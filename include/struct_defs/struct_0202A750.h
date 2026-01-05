#ifndef POKEPLATINUM_STRUCT_0202A750_DEF_H
#define POKEPLATINUM_STRUCT_0202A750_DEF_H

#include "constants/string.h"
#include "struct_defs/fashion_case.h"
#include "struct_defs/sentence.h"

#define SAVED_PHOTOS_COUNT 11

typedef struct UnkStruct_0202A138_t {
    u32 personality;
    u32 otID;
    u16 species;
    u16 nickname[MON_NAME_LEN + 1];
    u16 trainerName[8];
    s8 zPos;
    u8 xPos;
    u8 yPos;
    u8 form;
    u8 trainerGender;
} PhotoPokemon;

typedef struct UnkStruct_0202A150_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    s8 unk_03;
} UnkStruct_0202A150;

typedef struct DressUpPhoto_t {
    u32 integrity;
    PhotoPokemon photoMon;
    u32 unk_3C;
    Sentence title;
    UnkStruct_0202A150 unk_48[10];
    u8 unk_70;
    u8 language;
} DressUpPhoto;

typedef struct UnkStruct_02029C88_t {
    u32 unk_00;
    u32 unk_04;
    PhotoPokemon photoMon;
    u32 unk_40;
    UnkStruct_0202A150 unk_44[20];
    u8 unk_94;
} UnkStruct_02029C88;

typedef struct ImageClips {
    DressUpPhoto savedPhotos[SAVED_PHOTOS_COUNT];
    UnkStruct_02029C88 unk_4C8[5];
    FashionCase fashionCase;
} ImageClips;

#endif // POKEPLATINUM_STRUCT_0202A750_DEF_H
