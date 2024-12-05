#ifndef POKEPLATINUM_COMMUNICATION_SYSTEM_H
#define POKEPLATINUM_COMMUNICATION_SYSTEM_H

#include <nitro/math.h>

#define MAX_CONNECTED_PLAYERS 8

BOOL CommSys_InitServer(BOOL param0, BOOL param1, int param2, BOOL param3);
BOOL CommSys_InitClient(BOOL param0, BOOL param1, int param2);
void CommSys_SwitchTransitionTypeToParallel(void);
void CommSys_SwitchTransitionTypeToServerClient(void);
BOOL CommSys_TransitionTypeIsParallel(void);
void CommSys_Delete(void);
BOOL sub_02034984(u16 param0);
BOOL CommSys_Update(void);
void CommSys_Reset(void);
void CommSys_ResetDS(void);
void CommSys_ResetBattleClient(void);
void sub_0203509C(u16 param0, u16 *param1, u16 param2);
void sub_020351F8(u16 param0, u16 *buffer, u16 param2);
void sub_020352C0(u16 param0, u16 *param1, u16 param2);
void sub_02035664(void);
void sub_02035678(void);
void sub_0203568C(void);
void sub_0203572C(void);
void sub_02035938(u8 param0);
BOOL CommSys_SendDataHuge(int cmd, const void *data, int param2);
BOOL CommSys_SendData(int cmd, const void *data, int param2);
BOOL sub_02035A3C(int cmd, const void *data, int param2);
BOOL CommSys_SendDataServer(int cmd, const void *data, int param2);
BOOL sub_02035B48(int cmd, const void *data);
int CommSys_SendRingRemainingSize(void);
BOOL CommSys_IsPlayerConnected(u16 param0);
int CommSys_ConnectedCount(void);
BOOL CommSys_IsInitialized(void);
void CommSys_SetSendSpeed(u8 param0);
u8 CommSys_RecvSpeed(int param0);
u16 sub_02035E84(int param0);
void CommSys_EnableSendMovementData(void);
void CommSys_DisableSendMovementData(void);
BOOL CommSys_IsSendingMovementData(void);
BOOL CommSys_WriteToQueueServer(int cmd, const void *data, int param2);
BOOL CommSys_WriteToQueue(int cmd, const void *data, int param2);
void sub_02036008(int unused0, int unused1, void *param2, void *unused3);
void sub_02036030(int unused0, int unused1, void *param2, void *unused3);
void sub_02036058(int unused0, int unused1, void *param2, void *unused3);
u16 CommSys_CurNetId(void);
BOOL CommSys_SendDataFixedSize(int cmd, const void *data);
BOOL Link_Message(int cmd);
BOOL sub_020360E8(void);
BOOL CommSys_CheckError(void);
u16 sub_02036128(u16 param0);
int CommType_MaxPlayers(int param0);
int CommType_MinPlayers(int param0);
void CommSys_SetAlone(BOOL param0);
BOOL CommSys_IsAlone(void);
void sub_0203619C(int param0, int param1, void *param2, void *param3);
void CommSys_Seed(MATHRandContext32 *param0);
BOOL sub_02036254(int param0);
BOOL sub_0203626C(int param0);
BOOL sub_02036284(void);
BOOL sub_0203629C(void);
void CommSys_SetWifiConnected(BOOL param0);
BOOL CommSys_WifiConnected(void);
void sub_020362DC(int param0, int param1);
int sub_020362F4(int networkId);
BOOL sub_02036314(void);
void sub_0203632C(BOOL param0);
void sub_02036378(BOOL param0);
BOOL sub_020363A0(void);
void sub_020363BC(void);
void CommSys_StartShutdown(void);

#endif // POKEPLATINUM_COMMUNICATION_SYSTEM_H
