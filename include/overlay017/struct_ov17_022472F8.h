#ifndef POKEPLATINUM_STRUCT_OV17_022472F8_H
#define POKEPLATINUM_STRUCT_OV17_022472F8_H

#include "constants/contests.h"

#include "overlay017/struct_ov17_02246540.h"

typedef struct {
    u8 unk_00;
    u8 unk_01[4];
    u8 unk_05;
    u16 moveIDs[CONTEST_NUM_PARTICIPANTS];
    u8 unk_0E[CONTEST_NUM_PARTICIPANTS];
    s16 unk_12[CONTEST_NUM_PARTICIPANTS];
    s16 unk_1A[4];
    s8 unk_22[3];
    u16 unk_26[4];
    UnkStruct_ov17_02246540 unk_30;
} UnkStruct_ov17_022472F8;

#endif // POKEPLATINUM_STRUCT_OV17_022472F8_H
