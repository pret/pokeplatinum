#ifndef POKEPLATINUM_STRUCT_OV104_0223BA10_H
#define POKEPLATINUM_STRUCT_OV104_0223BA10_H

#include "struct_decls/struct_020302DC_decl.h"

#include "overlay104/struct_ov104_0223A348.h"
#include "overlay104/struct_ov104_0223A348_sub2.h"

#include "party.h"
#include "savedata.h"

typedef struct {
    int unk_00;
    SaveData *saveData;
    UnkStruct_020302DC *unk_08;
    void *unk_0C;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    u16 unk_14;
    u16 unk_16;
    u32 unk_18;
    int unk_1C;
    u16 unk_20;
    u16 unk_22;
    u8 unk_24[3];
    u8 unk_27;
    Party *unk_28;
    Party *unk_2C;
    u16 unk_30[14];
    UnkStruct_ov104_0223A348 unk_4C[2];
    u16 unk_26C[4];
    u8 unk_274[4];
    u32 unk_278[4];
    UnkStruct_ov104_0223A348_sub2 unk_288[4];
    u16 unk_368;
    u16 unk_36A[3];
    u8 unk_370[4];
    u8 unk_374[4];
    u8 unk_378[4];
    u8 unk_37C[4];
    u16 unk_380[6];
    u16 unk_38C[4];
    u16 unk_394[4][4];
    u8 unk_3B4[4];
    u16 unk_3B8[4];
    u16 unk_3C0[40];
    u8 unk_410[512];
    u8 unk_610[2][512];
    u8 unk_A10;
    u8 unk_A11;
    u16 unk_A12;
    u16 unk_A14;
    u16 unk_A16;
    u8 unk_A18;
    u8 unk_A19;
    u8 unk_A1A;
    u8 unk_A1B;
    u16 unk_A1C;
    u16 *unk_A20;
    u32 unk_A24;
} UnkStruct_ov104_0223BA10;

#endif // POKEPLATINUM_STRUCT_OV104_0223BA10_H
