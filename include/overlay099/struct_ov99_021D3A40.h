#ifndef POKEPLATINUM_STRUCT_OV99_021D3A40_H
#define POKEPLATINUM_STRUCT_OV99_021D3A40_H

#include "overlay099/struct_ov99_021D2C08.h"
#include "overlay099/struct_ov99_021D2E28.h"
#include "overlay099/struct_ov99_021D340C.h"
#include "overlay099/struct_ov99_021D3B2C.h"
#include "overlay099/struct_ov99_021D3C18.h"
#include "overlay099/struct_ov99_021D3DE0.h"

typedef struct {
    int unk_00;
    s16 unk_04;
    s16 unk_06;
    union {
        UnkStruct_ov99_021D2C08 unk_08_val1;
        UnkStruct_ov99_021D2E28 unk_08_val2;
        UnkStruct_ov99_021D340C unk_08_val3;
        UnkStruct_ov99_021D3B2C unk_08_val4;
        UnkStruct_ov99_021D3C18 unk_08_val5;
        UnkStruct_ov99_021D3DE0 unk_08_val6;
    };
} UnkStruct_ov99_021D3A40;

#endif // POKEPLATINUM_STRUCT_OV99_021D3A40_H
