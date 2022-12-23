#ifndef POKEPLATINUM_STRUCT_OV62_022349A8_SUB3_H
#define POKEPLATINUM_STRUCT_OV62_022349A8_SUB3_H

#include "overlay062/struct_ov62_022349A8_sub3_sub1.h"
#include "overlay062/struct_ov62_022349A8_sub3_sub2.h"
#include "overlay062/struct_ov62_022349A8_sub3_sub3.h"
#include "overlay062/struct_ov62_022349A8_sub3_sub4.h"
#include "overlay062/struct_ov62_022349A8_sub3_sub5.h"
#include "overlay062/struct_ov62_0223D518_sub1.h"

typedef struct {
    union {
        UnkStruct_ov62_022349A8_sub3_sub1 unk_00_val1;
        UnkStruct_ov62_022349A8_sub3_sub2 unk_00_val2;
        UnkStruct_ov62_0223D518_sub1 unk_00_val3;
        UnkStruct_ov62_022349A8_sub3_sub3 * unk_00_val4;
        UnkStruct_ov62_022349A8_sub3_sub4 unk_00_val5;
        UnkStruct_ov62_022349A8_sub3_sub5 unk_00_val6;
    };
    union {
        struct {
            u8 unk_00;
            u8 unk_01;
            u8 unk_02[2];
        } val1;
        struct {
            u16 unk_00;
            u16 unk_02;
        } val2;
        struct {
            u64 unk_00;
        } val3;
    } unk_21C;
} UnkStruct_ov62_022349A8_sub3;

#endif // POKEPLATINUM_STRUCT_OV62_022349A8_SUB3_H
