#ifndef POKEPLATINUM_STRUCT_0202A750_DEF_H
#define POKEPLATINUM_STRUCT_0202A750_DEF_H

#include "struct_defs/sentence.h"

typedef struct UnkStruct_0202A138_t {
    u32 unk_00;
    u32 unk_04;
    u16 unk_08;
    u16 unk_0A[11];
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

typedef struct UnkStruct_02029C68_t {
    u32 unk_00;
    UnkStruct_0202A138 unk_04;
    u32 unk_3C;
    Sentence unk_40;
    UnkStruct_0202A150 unk_48[10];
    u8 unk_70;
    u8 unk_71;
} UnkStruct_02029C68;

typedef struct UnkStruct_02029C88_t {
    u32 unk_00;
    u32 unk_04;
    UnkStruct_0202A138 unk_08;
    u32 unk_40;
    UnkStruct_0202A150 unk_44[20];
    u8 unk_94;
} UnkStruct_02029C88;

typedef struct UnkStruct_02029D04_t {
    u32 unk_00[8];
    u32 unk_20[2];
    u32 unk_28[6];
} FashionCase;

typedef struct ImageClips {
    UnkStruct_02029C68 unk_00[11];
    UnkStruct_02029C88 unk_4C8[5];
    FashionCase fashionCase;
} ImageClips;

#endif // POKEPLATINUM_STRUCT_0202A750_DEF_H
