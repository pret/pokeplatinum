#ifndef POKEPLATINUM_STRUCT_OV104_0223B5C0_H
#define POKEPLATINUM_STRUCT_OV104_0223B5C0_H

#include "struct_decls/struct_02030114_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay104/struct_ov104_0223A348.h"
#include "overlay104/struct_ov104_0223A348_sub2.h"

typedef struct {
    int unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u16 unk_08;
    u16 unk_0A;
    fx32 unk_0C;
    u32 unk_10;
    int unk_14;
    u16 unk_18[20];
    UnkStruct_ov104_0223A348 unk_40[2];
    u8 unk_260[2];
    Party * unk_264;
    u16 unk_268[20];
    UnkStruct_ov104_0223A348_sub2 unk_290[20];
    u16 unk_6F0;
    u16 unk_6F2;
    u8 unk_6F4;
    u8 unk_6F5;
    UnkStruct_02030114 * unk_6F8;
    UnkStruct_021C0794 * unk_6FC;
    void * unk_700;
    u8 unk_704[4][9];
    u16 unk_728[2];
    u16 unk_72C[44];
    u8 unk_784[512];
    u8 unk_984[2][512];
    u16 unk_D84[2];
    u8 unk_D88;
    Pokemon * unk_D8C;
    u8 unk_D90;
    u32 unk_D94;
} UnkStruct_ov104_0223B5C0;

#endif // POKEPLATINUM_STRUCT_OV104_0223B5C0_H
