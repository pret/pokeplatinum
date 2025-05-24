#ifndef POKEPLATINUM_STRUCT_OV104_02234130_H
#define POKEPLATINUM_STRUCT_OV104_02234130_H

#include "party.h"
#include "savedata.h"

typedef struct {
    SaveData *saveData;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 padding_07;
    Party *unk_08;
    Party *unk_0C;
    u16 unk_10[6];
    void *unk_1C;
    u8 padding_20[4];
} UnkStruct_ov104_02234130;

#endif // POKEPLATINUM_STRUCT_OV104_02234130_H
