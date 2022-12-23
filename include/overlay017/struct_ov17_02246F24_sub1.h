#ifndef POKEPLATINUM_STRUCT_OV17_02246F24_SUB1_H
#define POKEPLATINUM_STRUCT_OV17_02246F24_SUB1_H

#include "overlay017/struct_ov17_0224290C.h"
#include "overlay017/struct_ov17_022463C4.h"
#include "overlay017/struct_ov17_02246540.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04[3][4];
    UnkStruct_ov17_02246540 unk_10;
    UnkStruct_ov17_022463C4 unk_C6;
    union {
        UnkStruct_ov17_0224290C unk_D6_val1;
    };
} UnkStruct_ov17_02246F24_sub1;

#endif // POKEPLATINUM_STRUCT_OV17_02246F24_SUB1_H
