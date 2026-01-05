#ifndef POKEPLATINUM_STRUCT_OV61_0222AE80_H
#define POKEPLATINUM_STRUCT_OV61_0222AE80_H

#include "struct_defs/sentence.h"

#include "overlay061/struct_ov61_0222AE80_sub1.h"
#include "overlay061/struct_ov61_0222AE80_sub2.h"
#include "overlay062/struct_ov62_02239DA4_sub1.h"

typedef struct {
    u32 integrity;
    UnkStruct_ov61_0222AE80_sub1 unk_04;
    u32 unk_24;
    Sentence title;
    UnkStruct_ov61_0222AE80_sub2 unk_30[10];
    u8 unk_58;
    u8 unk_59;
    u8 unk_5A[2];
    UnkStruct_ov62_02239DA4_sub1 unk_5C;
} UnkStruct_ov61_0222AE80;

#endif // POKEPLATINUM_STRUCT_OV61_0222AE80_H
