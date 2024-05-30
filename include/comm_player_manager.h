#ifndef POKEPLATINUM_COMM_PLAYER_MANAGER_H
#define POKEPLATINUM_COMM_PLAYER_MANAGER_H

#include "field/field_system_decl.h"
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

typedef struct CommPlayerManager {
    u32 unk_00;
    UnkStruct_ov23_0224991C * unk_04;
    PlayerAvatar * playerAvatar[MAX_CONNECTED_PLAYERS];
    UnkStruct_ov101_021D5D90 * unk_28[MAX_CONNECTED_PLAYERS];
    u8 isActive[MAX_CONNECTED_PLAYERS];
    SysTask * task;
    FieldSystem * fieldSystem;
    UnkStruct_ov23_0224A294_sub1 unk_58;
    u8 unk_5A[MAX_CONNECTED_PLAYERS];
    CommPlayerLocation playerLocationServer[MAX_CONNECTED_PLAYERS];
    CommPlayerLocation playerLocation[MAX_CONNECTED_PLAYERS];
    u8 unk_E2[MAX_CONNECTED_PLAYERS];
    u8 unk_EA[MAX_CONNECTED_PLAYERS];
    u8 unk_F2[MAX_CONNECTED_PLAYERS];
    u8 unk_FA[MAX_CONNECTED_PLAYERS];
    s8 blowDir[MAX_CONNECTED_PLAYERS];
    u8 unk_10A[MAX_CONNECTED_PLAYERS];
    u8 unk_112[MAX_CONNECTED_PLAYERS];
    u8 unk_11A[MAX_CONNECTED_PLAYERS];
    u8 unk_122[MAX_CONNECTED_PLAYERS];
    u8 unk_12A[MAX_CONNECTED_PLAYERS];
    u8 movementChanged[MAX_CONNECTED_PLAYERS];
    u8 moveTimerServer[MAX_CONNECTED_PLAYERS];
    u8 moveTimer[MAX_CONNECTED_PLAYERS];
    UnkStruct_ov23_0224ABC4 unk_14A[8 + 1];
    TrainerInfo * unk_27C[5];
    TrainerInfo * unk_290[MAX_CONNECTED_PLAYERS];
    u16 unk_2B0;
    u16 unk_2B2;
    u8 unk_2B4[4];
    u8 unk_2B8;
    u8 unk_2B9;
    u8 unk_2BA;
    u8 sendAllPos;
    u8 unk_2BC;
    u8 isResetting;
    u8 isUnderground;
    u8 unk_2BF;
    u8 forceDirTimer;
    u8 unk_2C1;
    u8 unk_2C2;
    u8 unk_2C3;
} CommPlayerManager;

CommPlayerManager * CommPlayerMan_Get(void);
BOOL CommPlayerMan_Init(void * param0, FieldSystem * fieldSystem, BOOL param2);
void CommPlayerMan_Reset(void);
void CommPlayerMan_Restart(void);
void CommPlayerMan_Delete(BOOL param0);
void CommPlayerMan_Reinit(void);
void CommPlayerMan_Stop(void);
void CommPlayer_InitPersonal(void);
void CommPlayer_CopyPersonal(int param0);
void CommPlayer_SendXZPos(BOOL param0, int param1, int param2);
void CommPlayer_SendPos(BOOL param0);
void CommPlayer_SendPosServer(BOOL param0);
u32 CommPlayer_Size(void);
void CommPlayer_Destroy(u8 param0, BOOL param1, BOOL param2);
BOOL sub_02057FAC(void);
void sub_02057FC4(BOOL param0);
void sub_02058018(int param0, int param1, void * param2, void * param3);
void sub_0205805C(FieldSystem * fieldSystem, BOOL param1);
BOOL CommPlayer_CheckNPCCollision(int param0, int param1);
void CommPlayer_RecvLocation(int param0, int param1, void * param2, void * param3);
void CommPlayer_RecvDelete(int param0, int param1, void * param2, void * param3);
int sub_020585A4(void);
void CommPlayer_RecvLocationAndInit(int param0, int param1, void * param2, void * param3);
void sub_02058B0C(int param0, int param1, BOOL param2);
void sub_02058B7C(int param0);
void sub_02058B94(int param0);
void CommPlayer_StartBlowAnimation(int param0, int param1, BOOL param2);
void CommPlayer_StopBlowAnimation(int param0);
int sub_02058C3C(void);
BOOL sub_02058C40(void);
BOOL CommPlayer_IsActive(int param0);
int CommPlayer_XPos(int param0);
int CommPlayer_ZPos(int param0);
int sub_02058D48(int param0);
int sub_02058D68(int param0);
int sub_02058D88(int param0);
int sub_02058DC0(int param0);
int CommPlayer_GetXServer(int param0);
int CommPlayer_GetZServer(int param0);
int sub_02058EA0(int param0);
int sub_02058EC0(int param0);
int CommPlayer_AddXServer(int param0);
int CommPlayer_AddZServer(int param0);
int CommPlayer_Dir(int param0);
int CommPlayer_DirServer(int param0);
void CommPlayer_LookTowardsServer(int param0, int param1);
void CommPlayer_LookTowards(int param0, int param1);
int sub_0205900C(int param0, int param1);
void sub_02059058(int param0, BOOL param1);
BOOL sub_02059094(int param0);
BOOL sub_020590C4(void);
void sub_02059180(int param0, int param1, void * param2, void * param3);
void CommPlayer_SetBattleDir(void);
BOOL sub_0205928C(void);
int CommPlayer_GetOppositeDir(int param0);
void sub_02059354(int param0, int param1);
void sub_02059378(int param0);
void sub_02059390(int param0, int param1);
void sub_020593B4(int param0);
int CommPlayer_GetMovementTimer(int param0);
int CommPlayer_GetMovementTimerServer(int param0);
void CommPlayer_SetDir(int param0);
void CommPlayer_SetDirClient(int param0, int param1);
int CommPlayer_DirClient(int param0);
void sub_02059464(int param0);
void sub_0205948C(int param0);
void sub_020594EC(void);
void sub_020594FC(void);
void sub_02059514(void);
void sub_02059524(void);
void sub_02059570(void);
void CommPlayerMan_ForcePos(void);
void CommPlayerMan_ForceDir(void);
void sub_02059638(BOOL param0);

#endif // POKEPLATINUM_COMM_PLAYER_MANAGER_H
