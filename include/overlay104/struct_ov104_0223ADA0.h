#ifndef POKEPLATINUM_STRUCT_OV104_0223ADA0_H
#define POKEPLATINUM_STRUCT_OV104_0223ADA0_H

#include "struct_decls/sys_task.h"
#include "struct_defs/struct_0202FF58.h"
#include "struct_decls/struct_party_decl.h"
#include "unk_020244AC.h"
#include "overlay104/struct_ov104_0223A348.h"
#include "overlay104/struct_ov104_0223A348_sub2.h"

typedef struct {
    int unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u16 unk_08;
    u8 unk_0A;
    u8 unk_0B;
    u16 unk_0C;
    u16 unk_0E;
    u32 unk_10;
    int unk_14;
    u16 unk_18[14];
    UnkStruct_ov104_0223A348 unk_34[2];
    u16 unk_254[6];
    u8 unk_260[6];
    u32 unk_268[6];
    UnkStruct_ov104_0223A348_sub2 unk_280[6];
    u16 unk_3D0;
    u16 unk_3D2[4];
    u8 unk_3DA[4];
    u32 unk_3E0[4];
    UnkStruct_ov104_0223A348_sub2 unk_3F0[4];
    u16 unk_4D0;
    Party * unk_4D4;
    Party * unk_4D8;
    u16 unk_4DC[6];
    u16 unk_4E8[6];
    UnkStruct_0202FF58 * unk_4F4;
    SaveData * unk_4F8;
    void * unk_4FC;
    SysTask * unk_500;
    u16 unk_504[60];
    u8 unk_57C;
    u8 unk_57D;
    u16 unk_57E;
    u16 unk_580;
    u16 unk_582;
    u16 unk_584[6];
    u8 unk_590[6];
    u32 unk_598[6];
    UnkStruct_ov104_0223A348_sub2 unk_5B0[6];
    u16 unk_700;
    u8 unk_702;
    u32 unk_704;
} UnkStruct_ov104_0223ADA0;

#endif // POKEPLATINUM_STRUCT_OV104_0223ADA0_H
