#ifndef POKEPLATINUM_STRUCT_OV104_02235208_H
#define POKEPLATINUM_STRUCT_OV104_02235208_H

#include "party.h"
#include "savedata.h"

typedef struct {
    SaveData *saveData;
    u8 unk_04;
    u8 unk_05;
    u16 unk_06;
    u8 *unk_08;
    Party *unk_0C;
    void *unk_10;
    u16 *unk_14;
    u16 unk_18;
    u8 padding_1A[6];
} UnkStruct_ov104_02235208;

#endif // POKEPLATINUM_STRUCT_OV104_02235208_H
