#ifndef POKEPLATINUM_STRUCT_0202A750_DEF_H
#define POKEPLATINUM_STRUCT_0202A750_DEF_H

#include "constants/string.h"
#include "struct_defs/fashion_case.h"
#include "struct_defs/sentence.h"

#define SAVED_PHOTOS_COUNT 11

typedef struct UnkStruct_0202A138_t {
    u32 unk_00;
    u32 unk_04;
    u16 unk_08;
    u16 unk_0A[MON_NAME_LEN + 1];
    u16 unk_20[8];
    s8 unk_30;
    u8 unk_31;
    u8 unk_32;
    u8 unk_33;
    u8 unk_34;
} UnkStruct_0202A138;

typedef struct UnkStruct_0202A150_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    s8 unk_03;
} UnkStruct_0202A150;

typedef struct DressUpPhoto_t {
    u32 integrity;
    UnkStruct_0202A138 unk_04;
    u32 unk_3C;
    Sentence unk_40;
    UnkStruct_0202A150 unk_48[10];
    u8 unk_70;
    u8 language;
} DressUpPhoto;

typedef struct UnkStruct_02029C88_t {
    u32 unk_00;
    u32 unk_04;
    UnkStruct_0202A138 unk_08;
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
