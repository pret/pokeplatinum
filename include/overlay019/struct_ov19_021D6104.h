#ifndef POKEPLATINUM_STRUCT_OV19_021D6104_H
#define POKEPLATINUM_STRUCT_OV19_021D6104_H

#include "touch_screen.h"

typedef struct UnkStruct_ov19_021D6104_t {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    u32 unk_18;
    BOOL unk_1C;
    u16 unk_20;
    u8 padding_22[2];
    int unk_24;
    TouchScreenHitTable unk_28;
    TouchScreenHitTable unk_2C;
    int (* unk_30)(struct UnkStruct_ov19_021D6104_t *, BOOL, BOOL);
} UnkStruct_ov19_021D6104;

#endif // POKEPLATINUM_STRUCT_OV19_021D6104_H
