#ifndef POKEPLATINUM_STRUCT_OV104_0223597C_H
#define POKEPLATINUM_STRUCT_OV104_0223597C_H

#include "party.h"

#include "savedata.h"

typedef struct {
    SaveData *unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08[4];
    u8 unk_0C[4];
    u8 unk_10[4];
    u8 unk_14[4];
    Party *unk_18;
    Party *unk_1C;
    u16 unk_20;
    u8 padding[2];
    void *unk_24;
    u16 unk_28;
    u8 padding2[6];
} UnkStruct_ov104_0223597C;

#endif // POKEPLATINUM_STRUCT_OV104_0223597C_H
