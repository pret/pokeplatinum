#ifndef POKEPLATINUM_COMMUNICATION_INFORMATION_H
#define POKEPLATINUM_COMMUNICATION_INFORMATION_H

#include <dwc.h>

#include "battle_regulation.h"
#include "savedata.h"
#include "trainer_info.h"

void CommInfo_Init(SaveData *saveData, const BattleRegulation *regulation);
void CommInfo_Delete(void);
BOOL CommInfo_IsInitialized(void);
void CommInfo_SendBattleRegulation(void);
int CommPlayerInfo_Size(void);
void CommunicatitonInformaion_FinishReading(int unused0, int unused1, void *unused2, void *unused3);
BOOL CommInfo_IsDataFinishedReading(void);
void CommInfo_RecvPlayerDataArray(int netId, int unused1, void *src, void *unused3);
void CommInfo_RecvPlayerData(int netId, int unused1, void *src, void *unused3);
BOOL CommInfo_ServerSendArray(void);
BOOL CommInfo_IsReceivingData(void);
void CommInfo_InitPlayer(int netId);
BOOL sub_02032DC4(int netId);
BOOL sub_02032DE0(int netId);
BOOL sub_02032E00(int netId);
void sub_02032E1C(int netId);
void CommInfo_SetReceiveEnd(int netId);
int CommInfo_NewNetworkId(void);
int CommInfo_CountReceived(void);
BOOL sub_02032E90(void);
TrainerInfo *CommInfo_TrainerInfo(int netId);
DWCFriendData *CommInfo_DWCFriendData(int netId);
int sub_02032F40(int param0);
u16 *sub_02032F54(int netId);
int CommInfo_PlayerCountry(int netId);
int CommInfo_PlayerRegion(int netId);
int sub_02032FC0(int param0);
BOOL CommInfo_CheckBattleRegulation(void);
void CommInfo_SavePlayerRecord(SaveData *saveData);
void sub_020331B4(SaveData *saveData, int param1);
void CommInfo_SetTradeResult(SaveData *saveData, int val);
void CommInfo_SetPersonalTrainerInfo(TrainerInfo *trainerInfo);

#endif // POKEPLATINUM_COMMUNICATION_INFORMATION_H
