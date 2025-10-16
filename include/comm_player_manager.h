#ifndef POKEPLATINUM_COMM_PLAYER_MANAGER_H
#define POKEPLATINUM_COMM_PLAYER_MANAGER_H

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_defs/struct_02057B48.h"

#include "field/field_system_decl.h"
#include "overlay023/struct_ov23_0224991C_decl.h"
#include "overlay023/struct_ov23_0224A294_sub1.h"
#include "overlay023/struct_ov23_0224ABC4.h"

#include "communication_system.h"
#include "overworld_anim_manager.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

enum PauseBit {
    PAUSE_BIT_0 = 1,
    PAUSE_BIT_1 = 1 << 1,
    PAUSE_BIT_2 = 1 << 2,
    PAUSE_BIT_3 = 1 << 3,
    PAUSE_BIT_TRAPS = 1 << 4,
    PAUSE_BIT_5 = 1 << 5,
    PAUSE_BIT_6 = 1 << 6,
    PAUSE_BIT_RADAR = 1 << 7,
};

enum Emote {
    EMOTE_NONE = 0,
    EMOTE_FLAG,
    EMOTE_EXCLAMATION,
    EMOTE_OK,
};

typedef struct CommPlayerManager {
    u32 pauseBits;
    UnkStruct_ov23_0224991C *unk_04;
    PlayerAvatar *playerAvatar[MAX_CONNECTED_PLAYERS];
    OverworldAnimManager *unk_28[MAX_CONNECTED_PLAYERS];
    u8 isActive[MAX_CONNECTED_PLAYERS];
    SysTask *task;
    FieldSystem *fieldSystem;
    UnkStruct_ov23_0224A294_sub1 unk_58;
    u8 unk_5A[MAX_CONNECTED_PLAYERS];
    CommPlayerLocation playerLocationServer[MAX_CONNECTED_PLAYERS];
    CommPlayerLocation playerLocation[MAX_CONNECTED_PLAYERS];
    u8 unk_E2[MAX_CONNECTED_PLAYERS];
    u8 unk_EA[MAX_CONNECTED_PLAYERS];
    u8 unk_F2[MAX_CONNECTED_PLAYERS];
    u8 emote[MAX_CONNECTED_PLAYERS];
    s8 slideAnimationDir[MAX_CONNECTED_PLAYERS];
    u8 slideTilesLeft[MAX_CONNECTED_PLAYERS];
    u8 slideDir[MAX_CONNECTED_PLAYERS];
    u8 alteredMovementStepsLeft[MAX_CONNECTED_PLAYERS];
    u8 holeMovementsLeft[MAX_CONNECTED_PLAYERS];
    u8 hurlTrapTriggered[MAX_CONNECTED_PLAYERS];
    u8 movementChanged[MAX_CONNECTED_PLAYERS];
    u8 moveTimerServer[MAX_CONNECTED_PLAYERS];
    u8 moveTimer[MAX_CONNECTED_PLAYERS];
    UnkStruct_ov23_0224ABC4 unk_14A[8 + 1];
    TrainerInfo *unk_27C[5];
    TrainerInfo *unk_290[MAX_CONNECTED_PLAYERS];
    u16 unk_2B0;
    u16 unk_2B2;
    u8 unk_2B4[4];
    u8 unk_2B8;
    u8 unk_2B9;
    u8 unk_2BA;
    u8 sendAllPos;
    u8 isFieldSystemActive;
    u8 isResetting;
    u8 isUnderground;
    u8 unk_2BF;
    u8 forceDirTimer;
    u8 unk_2C1;
    u8 unk_2C2;
    u8 unk_2C3;
} CommPlayerManager;

CommPlayerManager *CommPlayerMan_Get(void);
BOOL CommPlayerMan_Init(void *dest, FieldSystem *fieldSystem, BOOL isUnderground);
void CommPlayerMan_Reset(void);
void CommPlayerMan_Restart(void);
void CommPlayerMan_Delete(BOOL deletePlayerData);
void CommPlayerMan_Reinit(void);
void CommPlayerMan_Stop(void);
void CommPlayer_InitPersonal(void);
void CommPlayer_CopyPersonal(int netJd);
void CommPlayer_SendXZPos(BOOL param0, int x, int z);
void CommPlayer_SendPos(BOOL param0);
void CommPlayer_SendPosServer(BOOL param0);
u32 CommPlayer_Size(void);
void CommPlayer_Destroy(u8 netId, BOOL param1, BOOL param2);
BOOL sub_02057FAC(void);
void sub_02057FC4(BOOL param0);
void sub_02058018(int netId, int param1, void *param2, void *unused);
void sub_0205805C(FieldSystem *fieldSystem, BOOL param1);
BOOL CommPlayer_CheckNPCCollision(int x, int z);
void CommPlayer_RecvLocation(int netId, int unused0, void *src, void *unused1);
void CommPlayer_RecvDelete(int unused0, int unused1, void *src, void *unused2);
int CommPacketSizeOf_RecvLocation(void);
void CommPlayer_RecvLocationAndInit(int netId, int size, void *src, void *unused);
void CommPlayer_StartSlide(int netId, int dir, BOOL isHurlTrap);
void CommPlayer_StopSlide(int netId);
void CommPlayer_EndCurrentSlide(int netId);
void CommPlayer_StartSlideAnimation(int netId, int dir, BOOL unused);
void CommPlayer_StopSlideAnimation(int netId);
int CommPacketSizeOf_RecvLocationAndInit(void);
BOOL sub_02058C40(void);
BOOL CommPlayer_IsActive(int netId);
int CommPlayer_XPos(int netId);
int CommPlayer_ZPos(int netId);
int sub_02058D48(int netId);
int sub_02058D68(int netId);
int CommPlayer_GetXInFrontOfPlayer(int netId);
int CommPlayer_GetZInFrontOfPlayer(int netId);
int CommPlayer_GetXServer(int netId);
int CommPlayer_GetZServer(int netId);
int sub_02058EA0(int netId);
int sub_02058EC0(int netId);
int CommPlayer_GetXInFrontOfPlayerServer(int netId);
int CommPlayer_GetZInFrontOfPlayerServer(int netId);
int CommPlayer_Dir(int netId);
int CommPlayer_DirServer(int netId);
void CommPlayer_LookTowardsServer(int netIdTarget, int netIdSet);
void CommPlayer_LookTowards(int netIdTarget, int netIdSet);
int CommPlayerMan_GetLinkNetIDAtLocation(int xPos, int zPos);
void sub_02059058(int netId, BOOL param1);
BOOL sub_02059094(int netId);
BOOL sub_020590C4(void);
void sub_02059180(int netId, int unused0, void *src, void *unused3);
void CommPlayer_SetBattleDir(void);
BOOL sub_0205928C(void);
int CommPlayer_GetOppositeDir(int dir);
void CommPlayerMan_SetPlayerAlteredMovement(int netId, int duration);
void CommPlayerMan_EndPlayerAlteredMovement(int netId);
void CommPlayerMan_PutPlayerInHole(int netId, int movementsToEscape);
void CommPlayerMan_RemovePlayerFromHole(int netId);
int CommPlayer_GetMovementTimer(int netId);
int CommPlayer_GetMovementTimerServer(int netId);
void CommPlayer_SetDir(int dir);
void CommPlayer_SetDirClient(int netId, int dir);
int CommPlayer_DirClient(int netId);
void CommPlayerMan_PauseFieldSystemWithContextBit(int contextBit);
void CommPlayerMan_ResumeFieldSystemWithContextBit(int contextBit);
void sub_020594EC(void);
void CommPlayerMan_PauseFieldSystem(void);
void CommPlayerMan_ResumeFieldSystem(void);
void sub_02059524(void);
void sub_02059570(void);
void CommPlayerMan_ForcePos(void);
void CommPlayerMan_ForceDir(void);
void sub_02059638(BOOL param0);

#endif // POKEPLATINUM_COMM_PLAYER_MANAGER_H
