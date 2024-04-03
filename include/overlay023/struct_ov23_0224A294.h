#ifndef POKEPLATINUM_STRUCT_OV23_0224A294_H
#define POKEPLATINUM_STRUCT_OV23_0224A294_H

#include "struct_decls/sys_task.h"
#include "trainer_info.h"
#include "field/field_system_decl.h"
#include "struct_defs/struct_02057B48.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "communication_system.h"
#include "overlay023/struct_ov23_0224991C_decl.h"
#include "overlay023/struct_ov23_0224A294_sub1.h"
#include "overlay023/struct_ov23_0224ABC4.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

typedef struct {
    u32 unk_00;
    UnkStruct_ov23_0224991C * unk_04;
    PlayerAvatar * playerAvatar[MAX_CONNECTED_PLAYERS];
    UnkStruct_ov101_021D5D90 * unk_28[MAX_CONNECTED_PLAYERS];
    u8 unk_48[MAX_CONNECTED_PLAYERS];
    SysTask * task;
    FieldSystem * fieldSys;
    UnkStruct_ov23_0224A294_sub1 unk_58;
    u8 unk_5A[MAX_CONNECTED_PLAYERS];
    CommPlayerLocation playerLocationServer[MAX_CONNECTED_PLAYERS];
    CommPlayerLocation playerLocation[MAX_CONNECTED_PLAYERS];
    u8 unk_E2[MAX_CONNECTED_PLAYERS];
    u8 unk_EA[MAX_CONNECTED_PLAYERS];
    u8 unk_F2[MAX_CONNECTED_PLAYERS];
    u8 unk_FA[MAX_CONNECTED_PLAYERS];
    s8 unk_102[MAX_CONNECTED_PLAYERS];
    u8 unk_10A[MAX_CONNECTED_PLAYERS];
    u8 unk_112[MAX_CONNECTED_PLAYERS];
    u8 unk_11A[MAX_CONNECTED_PLAYERS];
    u8 unk_122[MAX_CONNECTED_PLAYERS];
    u8 unk_12A[MAX_CONNECTED_PLAYERS];
    u8 unk_132[MAX_CONNECTED_PLAYERS];
    u8 unk_13A[MAX_CONNECTED_PLAYERS];
    u8 unk_142[MAX_CONNECTED_PLAYERS];
    UnkStruct_ov23_0224ABC4 unk_14A[8 + 1];
    TrainerInfo * unk_27C[5];
    TrainerInfo * unk_290[MAX_CONNECTED_PLAYERS];
    u16 unk_2B0;
    u16 unk_2B2;
    u8 unk_2B4[4];
    u8 unk_2B8;
    u8 unk_2B9;
    u8 unk_2BA;
    u8 unk_2BB;
    u8 unk_2BC;
    u8 isResetting;
    u8 isUnderground;
    u8 unk_2BF;
    u8 forceDirTimer;
    u8 unk_2C1;
    u8 unk_2C2;
    u8 unk_2C3;
} CommPlayer;

#endif // POKEPLATINUM_STRUCT_OV23_0224A294_H
