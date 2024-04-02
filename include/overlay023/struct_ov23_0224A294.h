#ifndef POKEPLATINUM_STRUCT_OV23_0224A294_H
#define POKEPLATINUM_STRUCT_OV23_0224A294_H

#include "struct_decls/sys_task.h"
#include "trainer_info.h"
#include "field/field_system_decl.h"
#include "struct_defs/struct_02057B48.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "overlay023/struct_ov23_0224991C_decl.h"
#include "overlay023/struct_ov23_0224A294_sub1.h"
#include "overlay023/struct_ov23_0224ABC4.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

typedef struct {
    u32 unk_00;
    UnkStruct_ov23_0224991C * unk_04;
    UnkStruct_0205E884 * unk_08[8];
    UnkStruct_ov101_021D5D90 * unk_28[8];
    u8 unk_48[8];
    SysTask * unk_50;
    FieldSystem * fieldSys;
    UnkStruct_ov23_0224A294_sub1 unk_58;
    u8 unk_5A[8];
    CommPlayerLocation playerLocationServer[8];
    CommPlayerLocation playerLocation[8];
    u8 unk_E2[8];
    u8 unk_EA[8];
    u8 unk_F2[8];
    u8 unk_FA[8];
    s8 unk_102[8];
    u8 unk_10A[8];
    u8 unk_112[8];
    u8 unk_11A[8];
    u8 unk_122[8];
    u8 unk_12A[8];
    u8 unk_132[8];
    u8 unk_13A[8];
    u8 unk_142[8];
    UnkStruct_ov23_0224ABC4 unk_14A[8 + 1];
    TrainerInfo * unk_27C[5];
    TrainerInfo * unk_290[8];
    u16 unk_2B0;
    u16 unk_2B2;
    u8 unk_2B4[4];
    u8 unk_2B8;
    u8 unk_2B9;
    u8 unk_2BA;
    u8 unk_2BB;
    u8 unk_2BC;
    u8 unk_2BD;
    u8 unk_2BE;
    u8 unk_2BF;
    u8 unk_2C0;
    u8 unk_2C1;
    u8 unk_2C2;
    u8 unk_2C3;
} CommPlayerData;

#endif // POKEPLATINUM_STRUCT_OV23_0224A294_H
