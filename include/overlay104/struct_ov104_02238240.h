#ifndef POKEPLATINUM_STRUCT_OV104_02238240_H
#define POKEPLATINUM_STRUCT_OV104_02238240_H

#include "party.h"
#include "savedata.h"

typedef struct {
    SaveData *saveData;
    u8 unk_04;
    u8 padding_05[2];
    u8 unk_07;
    int *unk_08;
    u8 *unk_0C;
    u8 *unk_10;
    u16 *unk_14;
    u16 unk_18;
    u8 padding_1A[2];
    u16 unk_1C;
    u16 unk_1E;
    u8 padding_20[16];
    Party *unk_30;
    Party *unk_34;
    u16 unk_38;
    u8 padding_3A[2];
    void *unk_3C;
    u8 padding_3E[2];
    u8 unk_40;
    u8 padding_41[3];
} UnkStruct_ov104_02238240;

#endif // POKEPLATINUM_STRUCT_OV104_02238240_H
