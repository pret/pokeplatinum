#ifndef POKEPLATINUM_STRUCT_OV87_021D12C0_H
#define POKEPLATINUM_STRUCT_OV87_021D12C0_H

#include "overlay087/struct_ov87_021D1640.h"

#include "enums.h"
#include <nitro/rtc.h>

typedef struct {
    int unk_00;
    RTCDate unk_04;
    int unk_14;
    int unk_18;
    UnkEnum_ov87_021D12C0 unk_1C;
    UnkStruct_ov87_021D1640 unk_20[6];
} UnkStruct_ov87_021D12C0;

#endif // POKEPLATINUM_STRUCT_OV87_021D12C0_H
